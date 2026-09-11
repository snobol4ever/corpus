                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnsub_table_miss_semantics.icn"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
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
                        sub              rsp, 2992
                        mov              qword ptr [rsp + 2984], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 2848
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        .section         .rodata
.Licn_trace_nm0:        .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm0]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_0_247:         mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
main_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              r11, 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_144_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_144_0:    .quad            .Lline_mark_α_144_0_s
.Lline_mark_α_144_0_s:  .string          "bench_icnsub_table_miss_semantics.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n3_lit_integer_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rbp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_147_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n4_line_mark_α
.Llit_integer_α_147_0:  .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_line_mark_bx, @function
n4_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_line_mark_α:         mov              r11, 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n5_call_icon_α
                        .size            n4_line_mark_bx, .-n4_line_mark_bx
                        .type            n5_call_icon_bx, @function
n5_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_icon_α:         mov              r11, 5
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn151:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn151]
                        lea              rsi, [rbp + 2752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    n7_line_mark_α
                                                                              jmp   n6_assign_α
n5_call_icon_β:         mov              r11, 5;                              jmp   n7_line_mark_α
                        .size            n5_call_icon_bx, .-n5_call_icon_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx;         jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_line_mark_α:         mov              r11, 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n8_var_ref_α
                        .size            n7_line_mark_bx, .-n7_line_mark_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n9_lit_string_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rbp + 2640], 2            # result
                        mov              dword ptr [rbp + 2644], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_157_0]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n10_subscript_α
.Llit_string_α_157_0:   .quad            .Llit_string_α_157_0_s
.Llit_string_α_157_0_s: .string          "alpha"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_subscript_bx, @function
n10_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:        mov              r11, 10
                        mov              rdi, qword ptr [rbp + 2624]
                        mov              rsi, qword ptr [rbp + 2632]
                        mov              rdx, qword ptr [rbp + 2640]
                        mov              rcx, qword ptr [rbp + 2648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_line_mark_α
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx;         jmp   n11_lit_integer_α
                        .size            n10_subscript_bx, .-n10_subscript_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rbp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n12_assign_var_α
.Llit_integer_α_159_0:  .quad            11
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_assign_var_bx, @function
n12_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:       mov              r11, 12
                        mov              rdi, qword ptr [rbp + 2672]
                        mov              rsi, qword ptr [rbp + 2680]
                        mov              rdx, qword ptr [rbp + 2704]
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_line_mark_α
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx;         jmp   n13_line_mark_α
                        .size            n12_assign_var_bx, .-n12_assign_var_bx
                        .type            n13_line_mark_bx, @function
n13_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_line_mark_α:        mov              r11, 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n14_var_ref_α
                        .size            n13_line_mark_bx, .-n13_line_mark_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n15_lit_string_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rbp + 2528], 2            # result
                        mov              dword ptr [rbp + 2532], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_165_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n16_subscript_α
.Llit_string_α_165_0:   .quad            .Llit_string_α_165_0_s
.Llit_string_α_165_0_s: .string          "beta"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_subscript_bx, @function
n16_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_subscript_α:        mov              r11, 16
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              rdx, qword ptr [rbp + 2528]
                        mov              rcx, qword ptr [rbp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n19_line_mark_α
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n17_lit_integer_α
                        .size            n16_subscript_bx, .-n16_subscript_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rbp + 2592], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_167_0]
                        mov              qword ptr [rbp + 2600], rax;         jmp   n18_assign_var_α
.Llit_integer_α_167_0:  .quad            22
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_assign_var_bx, @function
n18_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_var_α:       mov              r11, 18
                        mov              rdi, qword ptr [rbp + 2560]
                        mov              rsi, qword ptr [rbp + 2568]
                        mov              rdx, qword ptr [rbp + 2592]
                        mov              rcx, qword ptr [rbp + 2600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n19_line_mark_α
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n19_line_mark_α
                        .size            n18_assign_var_bx, .-n18_assign_var_bx
                        .type            n19_line_mark_bx, @function
n19_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_line_mark_α:        mov              r11, 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n20_var_ref_α
                        .size            n19_line_mark_bx, .-n19_line_mark_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n21_lit_integer_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rbp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n22_subscript_α
.Llit_integer_α_173_0:  .quad            7
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_subscript_bx, @function
n22_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_subscript_α:        mov              r11, 22
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 2432]
                        mov              rcx, qword ptr [rbp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_line_mark_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n23_lit_integer_α
                        .size            n22_subscript_bx, .-n22_subscript_bx
                        .type            n23_lit_integer_bx, @function
n23_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rbp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_175_0]
                        mov              qword ptr [rbp + 2488], rax;         jmp   n24_assign_var_α
.Llit_integer_α_175_0:  .quad            77
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_assign_var_bx, @function
n24_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_var_α:       mov              r11, 24
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        mov              rdx, qword ptr [rbp + 2480]
                        mov              rcx, qword ptr [rbp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_line_mark_α
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n25_line_mark_α
                        .size            n24_assign_var_bx, .-n24_assign_var_bx
                        .type            n25_line_mark_bx, @function
n25_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_line_mark_α:        mov              r11, 25
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n26_var_ref_α
                        .size            n25_line_mark_bx, .-n25_line_mark_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n27_lit_integer_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rbp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n28_subscript_α
.Llit_integer_α_181_0:  .quad            18446744073709551613
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_subscript_bx, @function
n28_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_subscript_α:        mov              r11, 28
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              rdx, qword ptr [rbp + 2336]
                        mov              rcx, qword ptr [rbp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_line_mark_α
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n29_lit_integer_α
                        .size            n28_subscript_bx, .-n28_subscript_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rbp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rbp + 2392], rax;         jmp   n30_assign_var_α
.Llit_integer_α_183_0:  .quad            33
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_assign_var_bx, @function
n30_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_var_α:       mov              r11, 30
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_line_mark_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n31_line_mark_α
                        .size            n30_assign_var_bx, .-n30_assign_var_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_line_mark_α:        mov              r11, 31
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n32_var_ref_α
                        .size            n31_line_mark_bx, .-n31_line_mark_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n33_lit_integer_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rbp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n34_subscript_α
.Llit_integer_α_189_0:  .quad            0
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_subscript_bx, @function
n34_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_subscript_α:        mov              r11, 34
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        mov              rdx, qword ptr [rbp + 2240]
                        mov              rcx, qword ptr [rbp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n37_line_mark_α
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n35_lit_integer_α
                        .size            n34_subscript_bx, .-n34_subscript_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rbp + 2288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_191_0]
                        mov              qword ptr [rbp + 2296], rax;         jmp   n36_assign_var_α
.Llit_integer_α_191_0:  .quad            99
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_assign_var_bx, @function
n36_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_var_α:       mov              r11, 36
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n37_line_mark_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n37_line_mark_α
                        .size            n36_assign_var_bx, .-n36_assign_var_bx
                        .type            n37_line_mark_bx, @function
n37_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_line_mark_α:        mov              r11, 37
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n38_var_ref_α
                        .size            n37_line_mark_bx, .-n37_line_mark_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rbp + 2128], 2            # result
                        mov              dword ptr [rbp + 2132], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_197_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n40_subscript_α
.Llit_string_α_197_0:   .quad            .Llit_string_α_197_0_s
.Llit_string_α_197_0_s: .string          "alpha"
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_subscript_bx, @function
n40_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        mov              r11, 40
                        mov              rdi, qword ptr [rbp + 2112]
                        mov              rsi, qword ptr [rbp + 2120]
                        mov              rdx, qword ptr [rbp + 2128]
                        mov              rcx, qword ptr [rbp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n43_line_mark_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n41_lit_integer_α
                        .size            n40_subscript_bx, .-n40_subscript_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      mov              r11, 41
                        mov              qword ptr [rbp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_199_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n42_assign_var_α
.Llit_integer_α_199_0:  .quad            111
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_assign_var_bx, @function
n42_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_var_α:       mov              r11, 42
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2192]
                        mov              rcx, qword ptr [rbp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n43_line_mark_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n43_line_mark_α
                        .size            n42_assign_var_bx, .-n42_assign_var_bx
                        .type            n43_line_mark_bx, @function
n43_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_line_mark_α:        mov              r11, 43
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n44_var_ref_α
                        .size            n43_line_mark_bx, .-n43_line_mark_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n45_lit_string_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_lit_string_bx, @function
n45_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_205_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n46_subscript_α
.Llit_string_α_205_0:   .quad            .Llit_string_α_205_0_s
.Llit_string_α_205_0_s: .string          "alpha"
                        .size            n45_lit_string_bx, .-n45_lit_string_bx
                        .type            n46_subscript_bx, @function
n46_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_subscript_α:        mov              r11, 46
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n47_lit_string_α
                        .size            n46_subscript_bx, .-n46_subscript_bx
                        .type            n47_lit_string_bx, @function
n47_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rbp + 1472], 2            # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_207_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n48_var_ref_α
.Llit_string_α_207_0:   .quad            .Llit_string_α_207_0_s
.Llit_string_α_207_0_s: .string          " "
                        .size            n47_lit_string_bx, .-n47_lit_string_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n49_lit_string_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rbp + 1520], 2            # result
                        mov              dword ptr [rbp + 1524], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_210_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n50_subscript_α
.Llit_string_α_210_0:   .quad            .Llit_string_α_210_0_s
.Llit_string_α_210_0_s: .string          "beta"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              r11, 50
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n51_lit_string_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_212_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n52_var_ref_α
.Llit_string_α_212_0:   .quad            .Llit_string_α_212_0_s
.Llit_string_α_212_0_s: .string          " "
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n53_lit_integer_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              r11, 53
                        mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_215_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n54_subscript_α
.Llit_integer_α_215_0:  .quad            7
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_subscript_bx, @function
n54_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:        mov              r11, 54
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
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n55_lit_string_α
                        .size            n54_subscript_bx, .-n54_subscript_bx
                        .type            n55_lit_string_bx, @function
n55_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 55
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_217_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n56_var_ref_α
.Llit_string_α_217_0:   .quad            .Llit_string_α_217_0_s
.Llit_string_α_217_0_s: .string          " "
                        .size            n55_lit_string_bx, .-n55_lit_string_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n57_lit_integer_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              r11, 57
                        mov              qword ptr [rbp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n58_subscript_α
.Llit_integer_α_220_0:  .quad            18446744073709551613
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_subscript_bx, @function
n58_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_subscript_α:        mov              r11, 58
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
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n59_lit_string_α
                        .size            n58_subscript_bx, .-n58_subscript_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rbp + 1728], 2            # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_222_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n60_var_ref_α
.Llit_string_α_222_0:   .quad            .Llit_string_α_222_0_s
.Llit_string_α_222_0_s: .string          " "
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_var_ref_bx, @function
n60_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n61_lit_integer_α
                        .size            n60_var_ref_bx, .-n60_var_ref_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              r11, 61
                        mov              qword ptr [rbp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_225_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n62_subscript_α
.Llit_integer_α_225_0:  .quad            0
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_subscript_bx, @function
n62_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:        mov              r11, 62
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
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n63_lit_string_α
                        .size            n62_subscript_bx, .-n62_subscript_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_227_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n64_var_ref_α
.Llit_string_α_227_0:   .quad            .Llit_string_α_227_0_s
.Llit_string_α_227_0_s: .string          " "
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n65_lit_string_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rbp + 1856], 2            # result
                        mov              dword ptr [rbp + 1860], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_230_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n66_subscript_α
.Llit_string_α_230_0:   .quad            .Llit_string_α_230_0_s
.Llit_string_α_230_0_s: .string          "missing"
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_subscript_bx, @function
n66_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_subscript_α:        mov              r11, 66
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n67_lit_string_α
                        .size            n66_subscript_bx, .-n66_subscript_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rbp + 1904], 2            # result
                        mov              dword ptr [rbp + 1908], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_232_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n68_var_ref_α
.Llit_string_α_232_0:   .quad            .Llit_string_α_232_0_s
.Llit_string_α_232_0_s: .string          " "
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n69_lit_integer_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      mov              r11, 69
                        mov              qword ptr [rbp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_235_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n70_subscript_α
.Llit_integer_α_235_0:  .quad            12345
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_subscript_bx, @function
n70_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_subscript_α:        mov              r11, 70
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              rsi, qword ptr [rbp + 1944]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n71_deref_α
                        .size            n70_subscript_bx, .-n70_subscript_bx
                        .type            n71_deref_bx, @function
n71_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_deref_α:            mov              r11, 71
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n72_deref_α
                        .size            n71_deref_bx, .-n71_deref_bx
                        .type            n72_deref_bx, @function
n72_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_deref_α:            mov              r11, 72
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n73_deref_α
                        .size            n72_deref_bx, .-n72_deref_bx
                        .type            n73_deref_bx, @function
n73_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_deref_α:            mov              r11, 73
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n74_deref_α
                        .size            n73_deref_bx, .-n73_deref_bx
                        .type            n74_deref_bx, @function
n74_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:            mov              r11, 74
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n75_deref_α
                        .size            n74_deref_bx, .-n74_deref_bx
                        .type            n75_deref_bx, @function
n75_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            mov              r11, 75
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n76_deref_α
                        .size            n75_deref_bx, .-n75_deref_bx
                        .type            n76_deref_bx, @function
n76_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_deref_α:            mov              r11, 76
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx;         jmp   n77_deref_α
                        .size            n76_deref_bx, .-n76_deref_bx
                        .type            n77_deref_bx, @function
n77_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_deref_α:            mov              r11, 77
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n78_line_mark_α
                        .size            n77_deref_bx, .-n77_deref_bx
                        .type            n78_line_mark_bx, @function
n78_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_line_mark_α:        mov              r11, 78
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n79_call_icon_α
                        .size            n78_line_mark_bx, .-n78_line_mark_bx
                        .type            n79_call_icon_bx, @function
n79_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_icon_α:        mov              r11, 79
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lcall_icon_α_rkfn247:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn247]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    n80_line_mark_α
                                                                              jmp   n80_line_mark_α
n79_call_icon_β:        mov              r11, 79;                             jmp   n80_line_mark_α
                        .size            n79_call_icon_bx, .-n79_call_icon_bx
                        .type            n80_line_mark_bx, @function
n80_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_line_mark_α:        mov              r11, 80
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n81_lit_integer_α
                        .size            n80_line_mark_bx, .-n80_line_mark_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              r11, 81
                        mov              qword ptr [rbp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_250_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n82_assign_α
.Llit_integer_α_250_0:  .quad            0
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 82
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n83_line_mark_α
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_line_mark_bx, @function
n83_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_line_mark_α:        mov              r11, 83
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n84_lit_integer_α
                        .size            n83_line_mark_bx, .-n83_line_mark_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              r11, 84
                        mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_254_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n85_lit_integer_α
.Llit_integer_α_254_0:  .quad            1
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              r11, 85
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_255_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n86_to_α
.Llit_integer_α_255_0:  .quad            5000
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_to_bx, @function
n86_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_to_α:               mov              r11, 86
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n98_line_mark_α
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], 3
                        mov              qword ptr [rbp + 872], rax
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n98_line_mark_α
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], 3
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 848], rax
.Lto_α_257_0:           mov              rax, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 888]
                        cmp              rax, rcx;                            jg    n98_line_mark_α
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax;          jmp   n87_assign_α
n86_to_β:               mov              r11, 86
                        inc              qword ptr [rbp + 848];               jo    n98_line_mark_α
                                                                              jmp   .Lto_α_257_0
                        .size            n86_to_bx, .-n86_to_bx
                        .type            n87_assign_bx, @function
n87_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              r11, 87
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n88_bound_α
                        .size            n87_assign_bx, .-n87_assign_bx
                        .type            n88_bound_bx, @function
n88_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_bound_α:            mov              r11, 88
                        mov              qword ptr [rbp + 896], rsp;          jmp   n89_var_ref_α
                        .size            n88_bound_bx, .-n88_bound_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n90_var_ref_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n91_deref_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_deref_bx, @function
n91_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_deref_α:            mov              r11, 91
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n92_line_mark_α
                        .size            n91_deref_bx, .-n91_deref_bx
                        .type            n92_line_mark_bx, @function
n92_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_line_mark_α:        mov              r11, 92
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n93_call_icon_α
                        .size            n92_line_mark_bx, .-n92_line_mark_bx
                        .type            n93_call_icon_bx, @function
n93_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_icon_α:        mov              r11, 93
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lcall_icon_α_rkfn269:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn269]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    n97_unmark_α
                                                                              jmp   n94_subscript_α
n93_call_icon_β:        mov              r11, 93;                             jmp   n97_unmark_α
                        .size            n93_call_icon_bx, .-n93_call_icon_bx
                        .type            n94_subscript_bx, @function
n94_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_subscript_α:        mov              r11, 94
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n95_var_α
                        .size            n94_subscript_bx, .-n94_subscript_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              mov              r11, 95
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n96_assign_var_α
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_assign_var_bx, @function
n96_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_var_α:       mov              r11, 96
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n97_unmark_α
                        .size            n96_assign_var_bx, .-n96_assign_var_bx
                        .type            n97_unmark_bx, @function
n97_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_unmark_α:           mov              r11, 97
                        mov              rsp, qword ptr [rbp + 896];          jmp   n86_to_β
                        .size            n97_unmark_bx, .-n97_unmark_bx
                        .type            n98_line_mark_bx, @function
n98_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_line_mark_α:        mov              r11, 98
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n99_lit_integer_α
                        .size            n98_line_mark_bx, .-n98_line_mark_bx
                        .type            n99_lit_integer_bx, @function
n99_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      mov              r11, 99
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_278_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00001_lit_integer_α
.Llit_integer_α_278_0:  .quad            1
                        .size            n99_lit_integer_bx, .-n99_lit_integer_bx
                        .type            n00001_lit_integer_bx, @function
n00001_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_lit_integer_α:     mov              r11, 100
                        mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_279_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00002_to_α
.Llit_integer_α_279_0:  .quad            5000
                        .size            n00001_lit_integer_bx, .-n00001_lit_integer_bx
                        .type            n00002_to_bx, @function
n00002_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_to_α:              mov              r11, 101
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00003_line_mark_α
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], 3
                        mov              qword ptr [rbp + 536], rax
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00003_line_mark_α
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], 3
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 512], rax
.Lto_α_281_0:           mov              rax, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 552]
                        cmp              rax, rcx;                            jg    n00003_line_mark_α
                        mov              qword ptr [rbp + 496], 3
                        mov              qword ptr [rbp + 504], rax;          jmp   n00004_assign_α
n00002_to_β:              mov              r11, 101
                        inc              qword ptr [rbp + 512];               jo    n00003_line_mark_α
                                                                              jmp   .Lto_α_281_0
                        .size            n00002_to_bx, .-n00002_to_bx
                        .type            n00004_assign_bx, @function
n00004_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_assign_α:          mov              r11, 102
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n00005_bound_α
                        .size            n00004_assign_bx, .-n00004_assign_bx
                        .type            n00005_bound_bx, @function
n00005_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_bound_α:           mov              r11, 103
                        mov              qword ptr [rbp + 560], rsp;          jmp   n00006_var_α
                        .size            n00005_bound_bx, .-n00005_bound_bx
                        .type            n00006_var_bx, @function
n00006_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_var_α:             mov              r11, 104
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00007_var_ref_α
                        .size            n00006_var_bx, .-n00006_var_bx
                        .type            n00007_var_ref_bx, @function
n00007_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n00008_var_ref_α
                        .size            n00007_var_ref_bx, .-n00007_var_ref_bx
                        .type            n00008_var_ref_bx, @function
n00008_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00009_deref_α
                        .size            n00008_var_ref_bx, .-n00008_var_ref_bx
                        .type            n00009_deref_bx, @function
n00009_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_deref_α:           mov              r11, 107
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_unmark_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00011_line_mark_α
                        .size            n00009_deref_bx, .-n00009_deref_bx
                        .type            n00011_line_mark_bx, @function
n00011_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_line_mark_α:       mov              r11, 108
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n00012_call_icon_α
                        .size            n00011_line_mark_bx, .-n00011_line_mark_bx
                        .type            n00012_call_icon_bx, @function
n00012_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_call_icon_α:       mov              r11, 109
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lcall_icon_α_rkfn295:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn295]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    n00010_unmark_α
                                                                              jmp   n00013_subscript_α
n00012_call_icon_β:       mov              r11, 109;                            jmp   n00010_unmark_α
                        .size            n00012_call_icon_bx, .-n00012_call_icon_bx
                        .type            n00013_subscript_bx, @function
n00013_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_subscript_α:       mov              r11, 110
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_unmark_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n00014_deref_α
                        .size            n00013_subscript_bx, .-n00013_subscript_bx
                        .type            n00014_deref_bx, @function
n00014_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_deref_α:           mov              r11, 111
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_unmark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n00015_coerce_numeric_α
                        .size            n00014_deref_bx, .-n00014_deref_bx
                        .type            n00015_coerce_numeric_bx, @function
n00015_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_coerce_numeric_α:  mov              r11, 112
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_299_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_299_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_299_0
.Lcoerce_numeric_α_299_1:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00016_coerce_numeric_α
.Lcoerce_numeric_α_299_0:
                        lea              rdi, [rbp + 2848]
                        lea              rsi, [rbp + 800]
                        lea              rdx, [rbp + 640]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 640]
                        cmp              al, 104;                             je    n00010_unmark_α
                                                                              jmp   n00016_coerce_numeric_α
                        .size            n00015_coerce_numeric_bx, .-n00015_coerce_numeric_bx
                        .type            n00016_coerce_numeric_bx, @function
n00016_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_coerce_numeric_α:  mov              r11, 113
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_301_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
.Lcoerce_numeric_α_301_1:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 632], rax;          jmp   n00017_binop_α
.Lcoerce_numeric_α_301_0:
                        lea              rdi, [rbp + 800]
                        lea              rsi, [rbp + 2848]
                        lea              rdx, [rbp + 624]
                        mov              rcx, 281479288455270
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 624]
                        cmp              al, 104;                             je    n00010_unmark_α
                                                                              jmp   n00017_binop_α
                        .size            n00016_coerce_numeric_bx, .-n00016_coerce_numeric_bx
                        .type            n00017_binop_bx, @function
n00017_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_binop_α:           mov              r11, 114
                        mov              eax, dword ptr [rbp + 640]
                        mov              ecx, dword ptr [rbp + 624]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_302_2
                        mov              rax, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 632]
                        add              rax, rdx;                            jo    .Lbinop_α_302_0
                        mov              qword ptr [rbp + 608], 3
                        mov              qword ptr [rbp + 616], rax;          jmp   .Lbinop_α_302_7
.Lbinop_α_302_2:        and              edx, 1;                              jz    .Lbinop_α_302_0
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdi, qword ptr [rbp + 632]
                        cmp              al, 5;                               je    .Lbinop_α_302_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_302_4
.Lbinop_α_302_3:        movq             xmm0, rsi
.Lbinop_α_302_4:        cmp              cl, 5;                               je    .Lbinop_α_302_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_302_6
.Lbinop_α_302_5:        movq             xmm1, rdi
.Lbinop_α_302_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_302_0
                        mov              qword ptr [rbp + 608], 5
                        mov              qword ptr [rbp + 616], rax
.Lbinop_α_302_7:                                                              jmp   n00018_assign_α
.Lbinop_α_302_0:        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_unmark_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00018_assign_α
                        .size            n00017_binop_bx, .-n00017_binop_bx
                        .type            n00018_assign_bx, @function
n00018_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_assign_α:          mov              r11, 115
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n00010_unmark_α
                        .size            n00018_assign_bx, .-n00018_assign_bx
                        .type            n00010_unmark_bx, @function
n00010_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_unmark_α:          mov              r11, 116
                        mov              rsp, qword ptr [rbp + 560];          jmp   n00002_to_β
                        .size            n00010_unmark_bx, .-n00010_unmark_bx
                        .type            n00003_line_mark_bx, @function
n00003_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_line_mark_α:       mov              r11, 117
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00019_var_ref_α
                        .size            n00003_line_mark_bx, .-n00003_line_mark_bx
                        .type            n00019_var_ref_bx, @function
n00019_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00020_deref_α
                        .size            n00019_var_ref_bx, .-n00019_var_ref_bx
                        .type            n00020_deref_bx, @function
n00020_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_deref_α:           mov              r11, 119
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00021_line_mark_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n00022_line_mark_α
                        .size            n00020_deref_bx, .-n00020_deref_bx
                        .type            n00022_line_mark_bx, @function
n00022_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_line_mark_α:       mov              r11, 120
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00023_call_icon_α
                        .size            n00022_line_mark_bx, .-n00022_line_mark_bx
                        .type            n00023_call_icon_bx, @function
n00023_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_call_icon_α:       mov              r11, 121
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn314:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn314]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n00021_line_mark_α
                                                                              jmp   n00021_line_mark_α
n00023_call_icon_β:       mov              r11, 121;                            jmp   n00021_line_mark_α
                        .size            n00023_call_icon_bx, .-n00023_call_icon_bx
                        .type            n00021_line_mark_bx, @function
n00021_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_line_mark_α:       mov              r11, 122
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n00024_lit_integer_α
                        .size            n00021_line_mark_bx, .-n00021_line_mark_bx
                        .type            n00024_lit_integer_bx, @function
n00024_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_lit_integer_α:     mov              r11, 123
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_317_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00025_lit_integer_α
.Llit_integer_α_317_0:  .quad            1
                        .size            n00024_lit_integer_bx, .-n00024_lit_integer_bx
                        .type            n00025_lit_integer_bx, @function
n00025_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_lit_integer_α:     mov              r11, 124
                        mov              qword ptr [rbp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_318_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n00026_to_α
.Llit_integer_α_318_0:  .quad            5000
                        .size            n00025_lit_integer_bx, .-n00025_lit_integer_bx
                        .type            n00026_to_bx, @function
n00026_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_to_α:              mov              r11, 125
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00027_line_mark_α
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
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00027_line_mark_α
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 144], rax
.Lto_α_320_0:           mov              rax, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 184]
                        cmp              rax, rcx;                            jg    n00027_line_mark_α
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax;          jmp   n00028_assign_α
n00026_to_β:              mov              r11, 125
                        inc              qword ptr [rbp + 144];               jo    n00027_line_mark_α
                                                                              jmp   .Lto_α_320_0
                        .size            n00026_to_bx, .-n00026_to_bx
                        .type            n00028_assign_bx, @function
n00028_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n00029_bound_α
                        .size            n00028_assign_bx, .-n00028_assign_bx
                        .type            n00029_bound_bx, @function
n00029_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_bound_α:           mov              r11, 127
                        mov              qword ptr [rbp + 192], rsp;          jmp   n00030_var_α
                        .size            n00029_bound_bx, .-n00029_bound_bx
                        .type            n00030_var_bx, @function
n00030_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00031_var_ref_α
                        .size            n00030_var_bx, .-n00030_var_bx
                        .type            n00031_var_ref_bx, @function
n00031_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00032_var_α
                        .size            n00031_var_ref_bx, .-n00031_var_ref_bx
                        .type            n00032_var_bx, @function
n00032_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_α:             mov              r11, 130
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 328], rax;          jmp   n00033_subscript_α
                        .size            n00032_var_bx, .-n00032_var_bx
                        .type            n00033_subscript_bx, @function
n00033_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_subscript_α:       mov              r11, 131
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00034_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00035_deref_α
                        .size            n00033_subscript_bx, .-n00033_subscript_bx
                        .type            n00035_deref_bx, @function
n00035_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_deref_α:           mov              r11, 132
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00034_unmark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00036_coerce_numeric_α
                        .size            n00035_deref_bx, .-n00035_deref_bx
                        .type            n00036_coerce_numeric_bx, @function
n00036_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_coerce_numeric_α:  mov              r11, 133
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_333_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_333_0
                        mov              eax, dword ptr [rbp + 352]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_333_0
.Lcoerce_numeric_α_333_1:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00037_coerce_numeric_α
.Lcoerce_numeric_α_333_0:
                        lea              rdi, [rbp + 2848]
                        lea              rsi, [rbp + 352]
                        lea              rdx, [rbp + 272]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 272]
                        cmp              al, 104;                             je    n00034_unmark_α
                                                                              jmp   n00037_coerce_numeric_α
                        .size            n00036_coerce_numeric_bx, .-n00036_coerce_numeric_bx
                        .type            n00037_coerce_numeric_bx, @function
n00037_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_coerce_numeric_α:  mov              r11, 134
                        mov              eax, dword ptr [rbp + 352]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_335_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_335_0
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_335_0
.Lcoerce_numeric_α_335_1:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00038_binop_α
.Lcoerce_numeric_α_335_0:
                        lea              rdi, [rbp + 352]
                        lea              rsi, [rbp + 2848]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 281479288455270
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 104;                             je    n00034_unmark_α
                                                                              jmp   n00038_binop_α
                        .size            n00037_coerce_numeric_bx, .-n00037_coerce_numeric_bx
                        .type            n00038_binop_bx, @function
n00038_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_binop_α:           mov              r11, 135
                        mov              eax, dword ptr [rbp + 272]
                        mov              ecx, dword ptr [rbp + 256]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_336_2
                        mov              rax, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 264]
                        add              rax, rdx;                            jo    .Lbinop_α_336_0
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax;          jmp   .Lbinop_α_336_7
.Lbinop_α_336_2:        and              edx, 1;                              jz    .Lbinop_α_336_0
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdi, qword ptr [rbp + 264]
                        cmp              al, 5;                               je    .Lbinop_α_336_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_336_4
.Lbinop_α_336_3:        movq             xmm0, rsi
.Lbinop_α_336_4:        cmp              cl, 5;                               je    .Lbinop_α_336_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_336_6
.Lbinop_α_336_5:        movq             xmm1, rdi
.Lbinop_α_336_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_336_0
                        mov              qword ptr [rbp + 240], 5
                        mov              qword ptr [rbp + 248], rax
.Lbinop_α_336_7:                                                              jmp   n00039_assign_α
.Lbinop_α_336_0:        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00034_unmark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00039_assign_α
                        .size            n00038_binop_bx, .-n00038_binop_bx
                        .type            n00039_assign_bx, @function
n00039_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_assign_α:          mov              r11, 136
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n00034_unmark_α
                        .size            n00039_assign_bx, .-n00039_assign_bx
                        .type            n00034_unmark_bx, @function
n00034_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_unmark_α:          mov              r11, 137
                        mov              rsp, qword ptr [rbp + 192];          jmp   n00026_to_β
                        .size            n00034_unmark_bx, .-n00034_unmark_bx
                        .type            n00027_line_mark_bx, @function
n00027_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_line_mark_α:       mov              r11, 138
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00040_var_ref_α
                        .size            n00027_line_mark_bx, .-n00027_line_mark_bx
                        .type            n00040_var_ref_bx, @function
n00040_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00041_deref_α
                        .size            n00040_var_ref_bx, .-n00040_var_ref_bx
                        .type            n00041_deref_bx, @function
n00041_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_deref_α:           mov              r11, 140
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00042_line_mark_α
                        .size            n00041_deref_bx, .-n00041_deref_bx
                        .type            n00042_line_mark_bx, @function
n00042_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_line_mark_α:       mov              r11, 141
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00043_call_icon_α
                        .size            n00042_line_mark_bx, .-n00042_line_mark_bx
                        .type            n00043_call_icon_bx, @function
n00043_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_call_icon_α:       mov              r11, 142
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn348:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn348]
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
n00043_call_icon_β:       mov              r11, 142;                            jmp   main_ω
                        .size            n00043_call_icon_bx, .-n00043_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_347_248
                        .section         .rodata
.Licn_trace_nm349:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm349]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_347_248:       mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_347_249
                        .section         .rodata
.Licn_trace_nm350:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm350]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_347_249:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "write"
.Lstartup_ign2:         .string          "string"
.Lstartup_ign3:         .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign2]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign3]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_iln00044_0:    .string          "t"
.Lstartup_iln00044_1:    .string          "i"
.Lstartup_iln00044_2:    .string          "s"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00044_0
                        .quad            .Lstartup_iln00044_1
                        .quad            .Lstartup_iln00044_2
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            2880
                        .long            2864
                        .long            2848
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ilnames9000]
                        mov              edx, 3
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_iloffs9000]
                        mov              edx, 3
                        call             rt_proc_set_local_offs@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
