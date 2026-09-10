                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_coo/corpus/benchmarks/icon/bench_icnsub_table_miss_semantics.icn"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2976
                        mov              qword ptr [rsp + 2968], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 2832
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rbp + 2816], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_138_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n1_lit_string_α
.Llit_integer_α_138_0:  .quad            7
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 2800], 2            # result
                        mov              dword ptr [rbp + 2804], 77
                        mov              rax, qword ptr [rip + .Llit_string_α_139_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n2_call_α
.Llit_string_α_139_0:   .quad            .Llit_string_α_139_0_s
.Llit_string_α_139_0_s: .string          "/home/claude_coo/corpus/benchmarks/icon/bench_icnsub_table_miss_semantics.icn"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lcall_α_bynamefn3:     .string          "ICN$LINE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefn3]
                        lea              rsi, [rbp + 2752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524476
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    n3_line_mark_α
                                                                              jmp   n3_line_mark_α
n2_call_β:              mov              r11, 3;                              jmp   n3_line_mark_α
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              r11, 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n4_lit_integer_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rbp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_143_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n5_call_icon_α
.Llit_integer_α_143_0:  .quad            0
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_call_icon_bx, @function
n5_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_icon_α:         mov              r11, 6
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lcall_icon_α_rkfn145:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn145]
                        lea              rsi, [rbp + 2672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              al, 104;                             je    n7_line_mark_α
                                                                              jmp   n6_assign_α
n5_call_icon_β:         mov              r11, 6;                              jmp   n7_line_mark_α
                        .size            n5_call_icon_bx, .-n5_call_icon_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_line_mark_α:         mov              r11, 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n8_var_ref_α
                        .size            n7_line_mark_bx, .-n7_line_mark_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n9_lit_string_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rbp + 2560], 2            # result
                        mov              dword ptr [rbp + 2564], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_151_0]
                        mov              qword ptr [rbp + 2568], rax;         jmp   n10_subscript_α
.Llit_string_α_151_0:   .quad            .Llit_string_α_151_0_s
.Llit_string_α_151_0_s: .string          "alpha"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_subscript_bx, @function
n10_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:        mov              r11, 11
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        mov              rdx, qword ptr [rbp + 2560]
                        mov              rcx, qword ptr [rbp + 2568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_line_mark_α
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n11_lit_integer_α
                        .size            n10_subscript_bx, .-n10_subscript_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_153_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n12_assign_var_α
.Llit_integer_α_153_0:  .quad            11
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_assign_var_bx, @function
n12_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:       mov              r11, 13
                        mov              rdi, qword ptr [rbp + 2592]
                        mov              rsi, qword ptr [rbp + 2600]
                        mov              rdx, qword ptr [rbp + 2624]
                        mov              rcx, qword ptr [rbp + 2632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_line_mark_α
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n13_line_mark_α
                        .size            n12_assign_var_bx, .-n12_assign_var_bx
                        .type            n13_line_mark_bx, @function
n13_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_line_mark_α:        mov              r11, 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n14_var_ref_α
                        .size            n13_line_mark_bx, .-n13_line_mark_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n15_lit_string_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 2448], 2            # result
                        mov              dword ptr [rbp + 2452], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_159_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n16_subscript_α
.Llit_string_α_159_0:   .quad            .Llit_string_α_159_0_s
.Llit_string_α_159_0_s: .string          "beta"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_subscript_bx, @function
n16_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_subscript_α:        mov              r11, 17
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2448]
                        mov              rcx, qword ptr [rbp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n19_line_mark_α
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n17_lit_integer_α
                        .size            n16_subscript_bx, .-n16_subscript_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              r11, 18
                        mov              qword ptr [rbp + 2512], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_161_0]
                        mov              qword ptr [rbp + 2520], rax;         jmp   n18_assign_var_α
.Llit_integer_α_161_0:  .quad            22
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_assign_var_bx, @function
n18_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_var_α:       mov              r11, 19
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdx, qword ptr [rbp + 2512]
                        mov              rcx, qword ptr [rbp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n19_line_mark_α
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx;         jmp   n19_line_mark_α
                        .size            n18_assign_var_bx, .-n18_assign_var_bx
                        .type            n19_line_mark_bx, @function
n19_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_line_mark_α:        mov              r11, 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n20_var_ref_α
                        .size            n19_line_mark_bx, .-n19_line_mark_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n21_lit_integer_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rbp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_167_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n22_subscript_α
.Llit_integer_α_167_0:  .quad            7
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_subscript_bx, @function
n22_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_subscript_α:        mov              r11, 23
                        mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              rdx, qword ptr [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_line_mark_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n23_lit_integer_α
                        .size            n22_subscript_bx, .-n22_subscript_bx
                        .type            n23_lit_integer_bx, @function
n23_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      mov              r11, 24
                        mov              qword ptr [rbp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rbp + 2408], rax;         jmp   n24_assign_var_α
.Llit_integer_α_169_0:  .quad            77
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_assign_var_bx, @function
n24_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_var_α:       mov              r11, 25
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2400]
                        mov              rcx, qword ptr [rbp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_line_mark_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n25_line_mark_α
                        .size            n24_assign_var_bx, .-n24_assign_var_bx
                        .type            n25_line_mark_bx, @function
n25_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_line_mark_α:        mov              r11, 26
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n26_var_ref_α
                        .size            n25_line_mark_bx, .-n25_line_mark_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n27_lit_integer_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              r11, 28
                        mov              qword ptr [rbp + 2256], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_175_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n28_subscript_α
.Llit_integer_α_175_0:  .quad            18446744073709551613
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_subscript_bx, @function
n28_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_subscript_α:        mov              r11, 29
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_line_mark_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n29_lit_integer_α
                        .size            n28_subscript_bx, .-n28_subscript_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              r11, 30
                        mov              qword ptr [rbp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_177_0]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n30_assign_var_α
.Llit_integer_α_177_0:  .quad            33
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_assign_var_bx, @function
n30_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_var_α:       mov              r11, 31
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2304]
                        mov              rcx, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_line_mark_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n31_line_mark_α
                        .size            n30_assign_var_bx, .-n30_assign_var_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_line_mark_α:        mov              r11, 32
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n32_var_ref_α
                        .size            n31_line_mark_bx, .-n31_line_mark_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n33_lit_integer_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rbp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n34_subscript_α
.Llit_integer_α_183_0:  .quad            0
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_subscript_bx, @function
n34_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_subscript_α:        mov              r11, 35
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n37_line_mark_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n35_lit_integer_α
                        .size            n34_subscript_bx, .-n34_subscript_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              r11, 36
                        mov              qword ptr [rbp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n36_assign_var_α
.Llit_integer_α_185_0:  .quad            99
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_assign_var_bx, @function
n36_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_var_α:       mov              r11, 37
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n37_line_mark_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n37_line_mark_α
                        .size            n36_assign_var_bx, .-n36_assign_var_bx
                        .type            n37_line_mark_bx, @function
n37_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_line_mark_α:        mov              r11, 38
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n38_var_ref_α
                        .size            n37_line_mark_bx, .-n37_line_mark_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_191_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n40_subscript_α
.Llit_string_α_191_0:   .quad            .Llit_string_α_191_0_s
.Llit_string_α_191_0_s: .string          "alpha"
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_subscript_bx, @function
n40_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        mov              r11, 41
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n43_line_mark_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n41_lit_integer_α
                        .size            n40_subscript_bx, .-n40_subscript_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n42_assign_var_α
.Llit_integer_α_193_0:  .quad            111
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_assign_var_bx, @function
n42_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_var_α:       mov              r11, 43
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n43_line_mark_α
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n43_line_mark_α
                        .size            n42_assign_var_bx, .-n42_assign_var_bx
                        .type            n43_line_mark_bx, @function
n43_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_line_mark_α:        mov              r11, 44
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n44_var_ref_α
                        .size            n43_line_mark_bx, .-n43_line_mark_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n45_lit_string_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_lit_string_bx, @function
n45_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_199_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n46_subscript_α
.Llit_string_α_199_0:   .quad            .Llit_string_α_199_0_s
.Llit_string_α_199_0_s: .string          "alpha"
                        .size            n45_lit_string_bx, .-n45_lit_string_bx
                        .type            n46_subscript_bx, @function
n46_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_subscript_α:        mov              r11, 47
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1344]
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n47_lit_string_α
                        .size            n46_subscript_bx, .-n46_subscript_bx
                        .type            n47_lit_string_bx, @function
n47_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_201_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n48_var_ref_α
.Llit_string_α_201_0:   .quad            .Llit_string_α_201_0_s
.Llit_string_α_201_0_s: .string          " "
                        .size            n47_lit_string_bx, .-n47_lit_string_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n49_lit_string_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rbp + 1440], 2            # result
                        mov              dword ptr [rbp + 1444], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_204_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n50_subscript_α
.Llit_string_α_204_0:   .quad            .Llit_string_α_204_0_s
.Llit_string_α_204_0_s: .string          "beta"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              r11, 51
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n51_lit_string_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rbp + 1488], 2            # result
                        mov              dword ptr [rbp + 1492], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_206_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n52_var_ref_α
.Llit_string_α_206_0:   .quad            .Llit_string_α_206_0_s
.Llit_string_α_206_0_s: .string          " "
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n53_lit_integer_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              r11, 54
                        mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_209_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n54_subscript_α
.Llit_integer_α_209_0:  .quad            7
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_subscript_bx, @function
n54_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:        mov              r11, 55
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n55_lit_string_α
                        .size            n54_subscript_bx, .-n54_subscript_bx
                        .type            n55_lit_string_bx, @function
n55_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_211_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n56_var_ref_α
.Llit_string_α_211_0:   .quad            .Llit_string_α_211_0_s
.Llit_string_α_211_0_s: .string          " "
                        .size            n55_lit_string_bx, .-n55_lit_string_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n57_lit_integer_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              r11, 58
                        mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_214_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n58_subscript_α
.Llit_integer_α_214_0:  .quad            18446744073709551613
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_subscript_bx, @function
n58_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_subscript_α:        mov              r11, 59
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1616]
                        mov              rcx, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n59_lit_string_α
                        .size            n58_subscript_bx, .-n58_subscript_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_216_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n60_var_ref_α
.Llit_string_α_216_0:   .quad            .Llit_string_α_216_0_s
.Llit_string_α_216_0_s: .string          " "
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_var_ref_bx, @function
n60_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n61_lit_integer_α
                        .size            n60_var_ref_bx, .-n60_var_ref_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              r11, 62
                        mov              qword ptr [rbp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_219_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n62_subscript_α
.Llit_integer_α_219_0:  .quad            0
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_subscript_bx, @function
n62_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:        mov              r11, 63
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n63_lit_string_α
                        .size            n62_subscript_bx, .-n62_subscript_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rbp + 1728], 2            # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_221_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n64_var_ref_α
.Llit_string_α_221_0:   .quad            .Llit_string_α_221_0_s
.Llit_string_α_221_0_s: .string          " "
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n65_lit_string_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 66
                        mov              qword ptr [rbp + 1776], 2            # result
                        mov              dword ptr [rbp + 1780], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_224_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n66_subscript_α
.Llit_string_α_224_0:   .quad            .Llit_string_α_224_0_s
.Llit_string_α_224_0_s: .string          "missing"
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_subscript_bx, @function
n66_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_subscript_α:        mov              r11, 67
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n67_lit_string_α
                        .size            n66_subscript_bx, .-n66_subscript_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rbp + 1824], 2            # result
                        mov              dword ptr [rbp + 1828], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_226_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n68_var_ref_α
.Llit_string_α_226_0:   .quad            .Llit_string_α_226_0_s
.Llit_string_α_226_0_s: .string          " "
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n69_lit_integer_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      mov              r11, 70
                        mov              qword ptr [rbp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n70_subscript_α
.Llit_integer_α_229_0:  .quad            12345
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_subscript_bx, @function
n70_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_subscript_α:        mov              r11, 71
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n71_deref_α
                        .size            n70_subscript_bx, .-n70_subscript_bx
                        .type            n71_deref_bx, @function
n71_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_deref_α:            mov              r11, 72
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n72_deref_α
                        .size            n71_deref_bx, .-n71_deref_bx
                        .type            n72_deref_bx, @function
n72_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_deref_α:            mov              r11, 73
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n73_deref_α
                        .size            n72_deref_bx, .-n72_deref_bx
                        .type            n73_deref_bx, @function
n73_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_deref_α:            mov              r11, 74
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n74_deref_α
                        .size            n73_deref_bx, .-n73_deref_bx
                        .type            n74_deref_bx, @function
n74_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:            mov              r11, 75
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n75_deref_α
                        .size            n74_deref_bx, .-n74_deref_bx
                        .type            n75_deref_bx, @function
n75_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            mov              r11, 76
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n76_deref_α
                        .size            n75_deref_bx, .-n75_deref_bx
                        .type            n76_deref_bx, @function
n76_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_deref_α:            mov              r11, 77
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n77_deref_α
                        .size            n76_deref_bx, .-n76_deref_bx
                        .type            n77_deref_bx, @function
n77_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_deref_α:            mov              r11, 78
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_line_mark_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n78_call_icon_α
                        .size            n77_deref_bx, .-n77_deref_bx
                        .type            n78_call_icon_bx, @function
n78_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_icon_α:        mov              r11, 79
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn239:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn239]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n79_line_mark_α
                                                                              jmp   n79_line_mark_α
n78_call_icon_β:        mov              r11, 79;                             jmp   n79_line_mark_α
                        .size            n78_call_icon_bx, .-n78_call_icon_bx
                        .type            n79_line_mark_bx, @function
n79_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_line_mark_α:        mov              r11, 80
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n80_lit_integer_α
                        .size            n79_line_mark_bx, .-n79_line_mark_bx
                        .type            n80_lit_integer_bx, @function
n80_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      mov              r11, 81
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_242_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n81_assign_α
.Llit_integer_α_242_0:  .quad            0
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_assign_bx, @function
n81_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 82
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx;         jmp   n82_line_mark_α
                        .size            n81_assign_bx, .-n81_assign_bx
                        .type            n82_line_mark_bx, @function
n82_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_line_mark_α:        mov              r11, 83
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n83_lit_integer_α
                        .size            n82_line_mark_bx, .-n82_line_mark_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              r11, 84
                        mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n84_lit_integer_α
.Llit_integer_α_246_0:  .quad            1
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              r11, 85
                        mov              qword ptr [rbp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_247_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n85_to_α
.Llit_integer_α_247_0:  .quad            5000
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_to_bx, @function
n85_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_to_α:               mov              r11, 86
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n96_line_mark_α
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], 3
                        mov              qword ptr [rbp + 824], rax
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n96_line_mark_α
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 800], rax
.Lto_α_249_0:           mov              rax, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 840]
                        cmp              rax, rcx;                            jg    n96_line_mark_α
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax;          jmp   n86_assign_α
n85_to_β:               mov              r11, 86
                        inc              qword ptr [rbp + 800];               jo    n96_line_mark_α
                                                                              jmp   .Lto_α_249_0
                        .size            n85_to_bx, .-n85_to_bx
                        .type            n86_assign_bx, @function
n86_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              r11, 87
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n87_bound_α
                        .size            n86_assign_bx, .-n86_assign_bx
                        .type            n87_bound_bx, @function
n87_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_bound_α:            mov              r11, 88
                        mov              qword ptr [rbp + 848], rsp;          jmp   n88_var_ref_α
                        .size            n87_bound_bx, .-n87_bound_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n89_var_ref_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n90_deref_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_deref_bx, @function
n90_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_deref_α:            mov              r11, 91
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n95_unmark_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n91_call_icon_α
                        .size            n90_deref_bx, .-n90_deref_bx
                        .type            n91_call_icon_bx, @function
n91_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_icon_α:        mov              r11, 92
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lcall_icon_α_rkfn259:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn259]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    n95_unmark_α
                                                                              jmp   n92_subscript_α
n91_call_icon_β:        mov              r11, 92;                             jmp   n95_unmark_α
                        .size            n91_call_icon_bx, .-n91_call_icon_bx
                        .type            n92_subscript_bx, @function
n92_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_subscript_α:        mov              r11, 93
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n95_unmark_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n93_var_α
                        .size            n92_subscript_bx, .-n92_subscript_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              mov              r11, 94
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n94_assign_var_α
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_assign_var_bx, @function
n94_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_var_α:       mov              r11, 95
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n95_unmark_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n95_unmark_α
                        .size            n94_assign_var_bx, .-n94_assign_var_bx
                        .type            n95_unmark_bx, @function
n95_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_unmark_α:           mov              r11, 96
                        mov              rsp, qword ptr [rbp + 848];          jmp   n85_to_β
                        .size            n95_unmark_bx, .-n95_unmark_bx
                        .type            n96_line_mark_bx, @function
n96_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_line_mark_α:        mov              r11, 97
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n97_lit_integer_α
                        .size            n96_line_mark_bx, .-n96_line_mark_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              r11, 98
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_268_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n98_lit_integer_α
.Llit_integer_α_268_0:  .quad            1
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              r11, 99
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_269_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n99_to_α
.Llit_integer_α_269_0:  .quad            5000
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_to_bx, @function
n99_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_to_α:               mov              r11, 100
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00001_line_mark_α
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], 3
                        mov              qword ptr [rbp + 504], rax
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00001_line_mark_α
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], 3
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 480], rax
.Lto_α_271_0:           mov              rax, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 520]
                        cmp              rax, rcx;                            jg    n00001_line_mark_α
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax;          jmp   n00002_assign_α
n99_to_β:               mov              r11, 100
                        inc              qword ptr [rbp + 480];               jo    n00001_line_mark_α
                                                                              jmp   .Lto_α_271_0
                        .size            n99_to_bx, .-n99_to_bx
                        .type            n00002_assign_bx, @function
n00002_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n00003_bound_α
                        .size            n00002_assign_bx, .-n00002_assign_bx
                        .type            n00003_bound_bx, @function
n00003_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_bound_α:           mov              r11, 102
                        mov              qword ptr [rbp + 528], rsp;          jmp   n00004_var_α
                        .size            n00003_bound_bx, .-n00003_bound_bx
                        .type            n00004_var_bx, @function
n00004_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 632], rax;          jmp   n00005_var_ref_α
                        .size            n00004_var_bx, .-n00004_var_bx
                        .type            n00005_var_ref_bx, @function
n00005_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00006_var_ref_α
                        .size            n00005_var_ref_bx, .-n00005_var_ref_bx
                        .type            n00006_var_ref_bx, @function
n00006_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00007_deref_α
                        .size            n00006_var_ref_bx, .-n00006_var_ref_bx
                        .type            n00007_deref_bx, @function
n00007_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_deref_α:           mov              r11, 106
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00008_unmark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n00009_call_icon_α
                        .size            n00007_deref_bx, .-n00007_deref_bx
                        .type            n00009_call_icon_bx, @function
n00009_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_call_icon_α:       mov              r11, 107
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lcall_icon_α_rkfn283:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn283]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n00008_unmark_α
                                                                              jmp   n00010_subscript_α
n00009_call_icon_β:       mov              r11, 107;                            jmp   n00008_unmark_α
                        .size            n00009_call_icon_bx, .-n00009_call_icon_bx
                        .type            n00010_subscript_bx, @function
n00010_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_subscript_α:       mov              r11, 108
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00008_unmark_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n00011_deref_α
                        .size            n00010_subscript_bx, .-n00010_subscript_bx
                        .type            n00011_deref_bx, @function
n00011_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_deref_α:           mov              r11, 109
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00008_unmark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00012_coerce_numeric_α
                        .size            n00011_deref_bx, .-n00011_deref_bx
                        .type            n00012_coerce_numeric_bx, @function
n00012_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_coerce_numeric_α:  mov              r11, 110
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_287_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_287_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_287_0
.Lcoerce_numeric_α_287_1:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00013_coerce_numeric_α
.Lcoerce_numeric_α_287_0:
                        lea              rdi, [rbp + 2832]
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 608]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 608]
                        cmp              al, 104;                             je    n00008_unmark_α
                                                                              jmp   n00013_coerce_numeric_α
                        .size            n00012_coerce_numeric_bx, .-n00012_coerce_numeric_bx
                        .type            n00013_coerce_numeric_bx, @function
n00013_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_coerce_numeric_α:  mov              r11, 111
                        mov              eax, dword ptr [rbp + 752]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_289_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_289_0
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_289_0
.Lcoerce_numeric_α_289_1:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00014_binop_α
.Lcoerce_numeric_α_289_0:
                        lea              rdi, [rbp + 752]
                        lea              rsi, [rbp + 2832]
                        lea              rdx, [rbp + 592]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 104;                             je    n00008_unmark_α
                                                                              jmp   n00014_binop_α
                        .size            n00013_coerce_numeric_bx, .-n00013_coerce_numeric_bx
                        .type            n00014_binop_bx, @function
n00014_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_binop_α:           mov              r11, 112
                        mov              eax, dword ptr [rbp + 608]
                        mov              ecx, dword ptr [rbp + 592]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_290_2
                        mov              rax, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 600]
                        add              rax, rdx;                            jo    .Lbinop_α_290_0
                        mov              qword ptr [rbp + 576], 3
                        mov              qword ptr [rbp + 584], rax;          jmp   .Lbinop_α_290_7
.Lbinop_α_290_2:        and              edx, 1;                              jz    .Lbinop_α_290_0
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdi, qword ptr [rbp + 600]
                        cmp              al, 5;                               je    .Lbinop_α_290_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_290_4
.Lbinop_α_290_3:        movq             xmm0, rsi
.Lbinop_α_290_4:        cmp              cl, 5;                               je    .Lbinop_α_290_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_290_6
.Lbinop_α_290_5:        movq             xmm1, rdi
.Lbinop_α_290_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_290_0
                        mov              qword ptr [rbp + 576], 5
                        mov              qword ptr [rbp + 584], rax
.Lbinop_α_290_7:                                                              jmp   n00015_assign_α
.Lbinop_α_290_0:        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00008_unmark_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00015_assign_α
                        .size            n00014_binop_bx, .-n00014_binop_bx
                        .type            n00015_assign_bx, @function
n00015_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_assign_α:          mov              r11, 113
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx;         jmp   n00008_unmark_α
                        .size            n00015_assign_bx, .-n00015_assign_bx
                        .type            n00008_unmark_bx, @function
n00008_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_unmark_α:          mov              r11, 114
                        mov              rsp, qword ptr [rbp + 528];          jmp   n99_to_β
                        .size            n00008_unmark_bx, .-n00008_unmark_bx
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_line_mark_α:       mov              r11, 115
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00016_var_ref_α
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00016_var_ref_bx, @function
n00016_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2832]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00017_deref_α
                        .size            n00016_var_ref_bx, .-n00016_var_ref_bx
                        .type            n00017_deref_bx, @function
n00017_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_deref_α:           mov              r11, 117
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00018_line_mark_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00019_call_icon_α
                        .size            n00017_deref_bx, .-n00017_deref_bx
                        .type            n00019_call_icon_bx, @function
n00019_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_call_icon_α:       mov              r11, 118
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lcall_icon_α_rkfn300:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn300]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    n00018_line_mark_α
                                                                              jmp   n00018_line_mark_α
n00019_call_icon_β:       mov              r11, 118;                            jmp   n00018_line_mark_α
                        .size            n00019_call_icon_bx, .-n00019_call_icon_bx
                        .type            n00018_line_mark_bx, @function
n00018_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_line_mark_α:       mov              r11, 119
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n00020_lit_integer_α
                        .size            n00018_line_mark_bx, .-n00018_line_mark_bx
                        .type            n00020_lit_integer_bx, @function
n00020_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_integer_α:     mov              r11, 120
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_303_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n00021_lit_integer_α
.Llit_integer_α_303_0:  .quad            1
                        .size            n00020_lit_integer_bx, .-n00020_lit_integer_bx
                        .type            n00021_lit_integer_bx, @function
n00021_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_304_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00022_to_α
.Llit_integer_α_304_0:  .quad            5000
                        .size            n00021_lit_integer_bx, .-n00021_lit_integer_bx
                        .type            n00022_to_bx, @function
n00022_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_to_α:              mov              r11, 122
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00023_line_mark_α
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00023_line_mark_α
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lto_α_306_0:           mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n00023_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n00024_assign_α
n00022_to_β:              mov              r11, 122
                        inc              qword ptr [rbp + 128];               jo    n00023_line_mark_α
                                                                              jmp   .Lto_α_306_0
                        .size            n00022_to_bx, .-n00022_to_bx
                        .type            n00024_assign_bx, @function
n00024_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_assign_α:          mov              r11, 123
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n00025_bound_α
                        .size            n00024_assign_bx, .-n00024_assign_bx
                        .type            n00025_bound_bx, @function
n00025_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_bound_α:           mov              r11, 124
                        mov              qword ptr [rbp + 176], rsp;          jmp   n00026_var_α
                        .size            n00025_bound_bx, .-n00025_bound_bx
                        .type            n00026_var_bx, @function
n00026_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_α:             mov              r11, 125
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00027_var_ref_α
                        .size            n00026_var_bx, .-n00026_var_bx
                        .type            n00027_var_ref_bx, @function
n00027_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00028_var_α
                        .size            n00027_var_ref_bx, .-n00027_var_ref_bx
                        .type            n00028_var_bx, @function
n00028_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00029_subscript_α
                        .size            n00028_var_bx, .-n00028_var_bx
                        .type            n00029_subscript_bx, @function
n00029_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_subscript_α:       mov              r11, 128
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00030_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00031_deref_α
                        .size            n00029_subscript_bx, .-n00029_subscript_bx
                        .type            n00031_deref_bx, @function
n00031_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_deref_α:           mov              r11, 129
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00030_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00032_coerce_numeric_α
                        .size            n00031_deref_bx, .-n00031_deref_bx
                        .type            n00032_coerce_numeric_bx, @function
n00032_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_coerce_numeric_α:  mov              r11, 130
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_319_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_319_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_319_0
.Lcoerce_numeric_α_319_1:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00033_coerce_numeric_α
.Lcoerce_numeric_α_319_0:
                        lea              rdi, [rbp + 2832]
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 104;                             je    n00030_unmark_α
                                                                              jmp   n00033_coerce_numeric_α
                        .size            n00032_coerce_numeric_bx, .-n00032_coerce_numeric_bx
                        .type            n00033_coerce_numeric_bx, @function
n00033_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_coerce_numeric_α:  mov              r11, 131
                        mov              eax, dword ptr [rbp + 336]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_321_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_321_0
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_321_0
.Lcoerce_numeric_α_321_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00034_binop_α
.Lcoerce_numeric_α_321_0:
                        lea              rdi, [rbp + 336]
                        lea              rsi, [rbp + 2832]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n00030_unmark_α
                                                                              jmp   n00034_binop_α
                        .size            n00033_coerce_numeric_bx, .-n00033_coerce_numeric_bx
                        .type            n00034_binop_bx, @function
n00034_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_binop_α:           mov              r11, 132
                        mov              eax, dword ptr [rbp + 256]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_322_2
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        add              rax, rdx;                            jo    .Lbinop_α_322_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_322_7
.Lbinop_α_322_2:        and              edx, 1;                              jz    .Lbinop_α_322_0
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdi, qword ptr [rbp + 248]
                        cmp              al, 5;                               je    .Lbinop_α_322_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_322_4
.Lbinop_α_322_3:        movq             xmm0, rsi
.Lbinop_α_322_4:        cmp              cl, 5;                               je    .Lbinop_α_322_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_322_6
.Lbinop_α_322_5:        movq             xmm1, rdi
.Lbinop_α_322_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_322_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_322_7:                                                              jmp   n00035_assign_α
.Lbinop_α_322_0:        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00030_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00035_assign_α
                        .size            n00034_binop_bx, .-n00034_binop_bx
                        .type            n00035_assign_bx, @function
n00035_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_assign_α:          mov              r11, 133
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx;         jmp   n00030_unmark_α
                        .size            n00035_assign_bx, .-n00035_assign_bx
                        .type            n00030_unmark_bx, @function
n00030_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_unmark_α:          mov              r11, 134
                        mov              rsp, qword ptr [rbp + 176];          jmp   n00022_to_β
                        .size            n00030_unmark_bx, .-n00030_unmark_bx
                        .type            n00023_line_mark_bx, @function
n00023_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_line_mark_α:       mov              r11, 135
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00036_var_ref_α
                        .size            n00023_line_mark_bx, .-n00023_line_mark_bx
                        .type            n00036_var_ref_bx, @function
n00036_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2832]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00037_deref_α
                        .size            n00036_var_ref_bx, .-n00036_var_ref_bx
                        .type            n00037_deref_bx, @function
n00037_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_deref_α:           mov              r11, 137
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00038_call_icon_α
                        .size            n00037_deref_bx, .-n00037_deref_bx
                        .type            n00038_call_icon_bx, @function
n00038_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_call_icon_α:       mov              r11, 138
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn332:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn332]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00038_call_icon_β:       mov              r11, 138;                            jmp   main_ω
                        .size            n00038_call_icon_bx, .-n00038_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_331_248
                        .section         .rodata
.Licn_trace_nm333:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm333]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_331_248:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_331_249
                        .section         .rodata
.Licn_trace_nm334:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm334]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_331_249:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
