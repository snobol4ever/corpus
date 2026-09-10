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
                        sub              rsp, 2896
                        mov              qword ptr [rsp + 2888], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 2752
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
                        mov              rcx, qword ptr [rip + .Lline_mark_α_138_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_138_0:    .quad            .Lline_mark_α_138_0_s
.Lline_mark_α_138_0_s:  .string          "bench_icnsub_table_miss_semantics.icn"
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
                        mov              qword ptr [rbp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n4_call_icon_α
.Llit_integer_α_141_0:  .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_call_icon_bx, @function
n4_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_icon_α:         mov              r11, 4
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lcall_icon_α_rkfn143:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn143]
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
                        cmp              al, 104;                             je    n6_line_mark_α
                                                                              jmp   n5_assign_α
n4_call_icon_β:         mov              r11, 4;                              jmp   n6_line_mark_α
                        .size            n4_call_icon_bx, .-n4_call_icon_bx
                        .type            n5_assign_bx, @function
n5_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n6_line_mark_α
                        .size            n5_assign_bx, .-n5_assign_bx
                        .type            n6_line_mark_bx, @function
n6_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_line_mark_α:         mov              r11, 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n7_var_ref_α
                        .size            n6_line_mark_bx, .-n6_line_mark_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n8_lit_string_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 2560], 2            # result
                        mov              dword ptr [rbp + 2564], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_149_0]
                        mov              qword ptr [rbp + 2568], rax;         jmp   n9_subscript_α
.Llit_string_α_149_0:   .quad            .Llit_string_α_149_0_s
.Llit_string_α_149_0_s: .string          "alpha"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_subscript_bx, @function
n9_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_subscript_α:         mov              r11, 9
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
                        cmp              al, 104;                             je    n12_line_mark_α
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n10_lit_integer_α
                        .size            n9_subscript_bx, .-n9_subscript_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 10
                        mov              qword ptr [rbp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_151_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n11_assign_var_α
.Llit_integer_α_151_0:  .quad            11
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_assign_var_bx, @function
n11_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_var_α:       mov              r11, 11
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
                        cmp              al, 104;                             je    n12_line_mark_α
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n12_line_mark_α
                        .size            n11_assign_var_bx, .-n11_assign_var_bx
                        .type            n12_line_mark_bx, @function
n12_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_line_mark_α:        mov              r11, 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n13_var_ref_α
                        .size            n12_line_mark_bx, .-n12_line_mark_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n14_lit_string_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rbp + 2448], 2            # result
                        mov              dword ptr [rbp + 2452], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_157_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n15_subscript_α
.Llit_string_α_157_0:   .quad            .Llit_string_α_157_0_s
.Llit_string_α_157_0_s: .string          "beta"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_subscript_bx, @function
n15_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_subscript_α:        mov              r11, 15
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
                        cmp              al, 104;                             je    n18_line_mark_α
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n16_lit_integer_α
                        .size            n15_subscript_bx, .-n15_subscript_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rbp + 2512], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rbp + 2520], rax;         jmp   n17_assign_var_α
.Llit_integer_α_159_0:  .quad            22
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_assign_var_bx, @function
n17_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_var_α:       mov              r11, 17
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
                        cmp              al, 104;                             je    n18_line_mark_α
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx;         jmp   n18_line_mark_α
                        .size            n17_assign_var_bx, .-n17_assign_var_bx
                        .type            n18_line_mark_bx, @function
n18_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_line_mark_α:        mov              r11, 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n19_var_ref_α
                        .size            n18_line_mark_bx, .-n18_line_mark_bx
                        .type            n19_var_ref_bx, @function
n19_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n20_lit_integer_α
                        .size            n19_var_ref_bx, .-n19_var_ref_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rbp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_165_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n21_subscript_α
.Llit_integer_α_165_0:  .quad            7
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_subscript_bx, @function
n21_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_subscript_α:        mov              r11, 21
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
                        cmp              al, 104;                             je    n24_line_mark_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n22_lit_integer_α
                        .size            n21_subscript_bx, .-n21_subscript_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rbp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_167_0]
                        mov              qword ptr [rbp + 2408], rax;         jmp   n23_assign_var_α
.Llit_integer_α_167_0:  .quad            77
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_assign_var_bx, @function
n23_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_var_α:       mov              r11, 23
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
                        cmp              al, 104;                             je    n24_line_mark_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n24_line_mark_α
                        .size            n23_assign_var_bx, .-n23_assign_var_bx
                        .type            n24_line_mark_bx, @function
n24_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_line_mark_α:        mov              r11, 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n25_var_ref_α
                        .size            n24_line_mark_bx, .-n24_line_mark_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n26_lit_integer_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rbp + 2256], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n27_subscript_α
.Llit_integer_α_173_0:  .quad            18446744073709551613
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_subscript_bx, @function
n27_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_subscript_α:        mov              r11, 27
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
                        cmp              al, 104;                             je    n30_line_mark_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n28_lit_integer_α
                        .size            n27_subscript_bx, .-n27_subscript_bx
                        .type            n28_lit_integer_bx, @function
n28_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              r11, 28
                        mov              qword ptr [rbp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_175_0]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n29_assign_var_α
.Llit_integer_α_175_0:  .quad            33
                        .size            n28_lit_integer_bx, .-n28_lit_integer_bx
                        .type            n29_assign_var_bx, @function
n29_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_var_α:       mov              r11, 29
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
                        cmp              al, 104;                             je    n30_line_mark_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n30_line_mark_α
                        .size            n29_assign_var_bx, .-n29_assign_var_bx
                        .type            n30_line_mark_bx, @function
n30_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_line_mark_α:        mov              r11, 30
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n31_var_ref_α
                        .size            n30_line_mark_bx, .-n30_line_mark_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n32_lit_integer_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_lit_integer_bx, @function
n32_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rbp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n33_subscript_α
.Llit_integer_α_181_0:  .quad            0
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_subscript_bx, @function
n33_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_subscript_α:        mov              r11, 33
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
                        cmp              al, 104;                             je    n36_line_mark_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n34_lit_integer_α
                        .size            n33_subscript_bx, .-n33_subscript_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rbp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n35_assign_var_α
.Llit_integer_α_183_0:  .quad            99
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_assign_var_bx, @function
n35_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_var_α:       mov              r11, 35
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
                        cmp              al, 104;                             je    n36_line_mark_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n36_line_mark_α
                        .size            n35_assign_var_bx, .-n35_assign_var_bx
                        .type            n36_line_mark_bx, @function
n36_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_line_mark_α:        mov              r11, 36
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n37_var_ref_α
                        .size            n36_line_mark_bx, .-n36_line_mark_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n38_lit_string_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_lit_string_bx, @function
n38_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_189_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n39_subscript_α
.Llit_string_α_189_0:   .quad            .Llit_string_α_189_0_s
.Llit_string_α_189_0_s: .string          "alpha"
                        .size            n38_lit_string_bx, .-n38_lit_string_bx
                        .type            n39_subscript_bx, @function
n39_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_subscript_α:        mov              r11, 39
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
                        cmp              al, 104;                             je    n42_line_mark_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n40_lit_integer_α
                        .size            n39_subscript_bx, .-n39_subscript_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              r11, 40
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_191_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n41_assign_var_α
.Llit_integer_α_191_0:  .quad            111
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_assign_var_bx, @function
n41_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_var_α:       mov              r11, 41
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
                        cmp              al, 104;                             je    n42_line_mark_α
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n42_line_mark_α
                        .size            n41_assign_var_bx, .-n41_assign_var_bx
                        .type            n42_line_mark_bx, @function
n42_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_line_mark_α:        mov              r11, 42
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n43_var_ref_α
                        .size            n42_line_mark_bx, .-n42_line_mark_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n44_lit_string_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_lit_string_bx, @function
n44_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_197_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n45_subscript_α
.Llit_string_α_197_0:   .quad            .Llit_string_α_197_0_s
.Llit_string_α_197_0_s: .string          "alpha"
                        .size            n44_lit_string_bx, .-n44_lit_string_bx
                        .type            n45_subscript_bx, @function
n45_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_subscript_α:        mov              r11, 45
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n46_lit_string_α
                        .size            n45_subscript_bx, .-n45_subscript_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_199_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n47_var_ref_α
.Llit_string_α_199_0:   .quad            .Llit_string_α_199_0_s
.Llit_string_α_199_0_s: .string          " "
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n48_lit_string_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_lit_string_bx, @function
n48_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rbp + 1440], 2            # result
                        mov              dword ptr [rbp + 1444], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_202_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n49_subscript_α
.Llit_string_α_202_0:   .quad            .Llit_string_α_202_0_s
.Llit_string_α_202_0_s: .string          "beta"
                        .size            n48_lit_string_bx, .-n48_lit_string_bx
                        .type            n49_subscript_bx, @function
n49_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:        mov              r11, 49
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n50_lit_string_α
                        .size            n49_subscript_bx, .-n49_subscript_bx
                        .type            n50_lit_string_bx, @function
n50_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rbp + 1488], 2            # result
                        mov              dword ptr [rbp + 1492], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_204_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n51_var_ref_α
.Llit_string_α_204_0:   .quad            .Llit_string_α_204_0_s
.Llit_string_α_204_0_s: .string          " "
                        .size            n50_lit_string_bx, .-n50_lit_string_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n52_lit_integer_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 52
                        mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_207_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n53_subscript_α
.Llit_integer_α_207_0:  .quad            7
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_subscript_bx, @function
n53_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_subscript_α:        mov              r11, 53
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n54_lit_string_α
                        .size            n53_subscript_bx, .-n53_subscript_bx
                        .type            n54_lit_string_bx, @function
n54_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              r11, 54
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_209_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n55_var_ref_α
.Llit_string_α_209_0:   .quad            .Llit_string_α_209_0_s
.Llit_string_α_209_0_s: .string          " "
                        .size            n54_lit_string_bx, .-n54_lit_string_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n56_lit_integer_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              r11, 56
                        mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_212_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n57_subscript_α
.Llit_integer_α_212_0:  .quad            18446744073709551613
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_subscript_bx, @function
n57_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_subscript_α:        mov              r11, 57
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n58_lit_string_α
                        .size            n57_subscript_bx, .-n57_subscript_bx
                        .type            n58_lit_string_bx, @function
n58_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_214_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n59_var_ref_α
.Llit_string_α_214_0:   .quad            .Llit_string_α_214_0_s
.Llit_string_α_214_0_s: .string          " "
                        .size            n58_lit_string_bx, .-n58_lit_string_bx
                        .type            n59_var_ref_bx, @function
n59_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n60_lit_integer_α
                        .size            n59_var_ref_bx, .-n59_var_ref_bx
                        .type            n60_lit_integer_bx, @function
n60_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              r11, 60
                        mov              qword ptr [rbp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_217_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n61_subscript_α
.Llit_integer_α_217_0:  .quad            0
                        .size            n60_lit_integer_bx, .-n60_lit_integer_bx
                        .type            n61_subscript_bx, @function
n61_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:        mov              r11, 61
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n62_lit_string_α
                        .size            n61_subscript_bx, .-n61_subscript_bx
                        .type            n62_lit_string_bx, @function
n62_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 62
                        mov              qword ptr [rbp + 1728], 2            # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_219_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n63_var_ref_α
.Llit_string_α_219_0:   .quad            .Llit_string_α_219_0_s
.Llit_string_α_219_0_s: .string          " "
                        .size            n62_lit_string_bx, .-n62_lit_string_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n64_lit_string_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_lit_string_bx, @function
n64_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rbp + 1776], 2            # result
                        mov              dword ptr [rbp + 1780], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_222_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n65_subscript_α
.Llit_string_α_222_0:   .quad            .Llit_string_α_222_0_s
.Llit_string_α_222_0_s: .string          "missing"
                        .size            n64_lit_string_bx, .-n64_lit_string_bx
                        .type            n65_subscript_bx, @function
n65_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:        mov              r11, 65
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n66_lit_string_α
                        .size            n65_subscript_bx, .-n65_subscript_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 66
                        mov              qword ptr [rbp + 1824], 2            # result
                        mov              dword ptr [rbp + 1828], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_224_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n67_var_ref_α
.Llit_string_α_224_0:   .quad            .Llit_string_α_224_0_s
.Llit_string_α_224_0_s: .string          " "
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n68_lit_integer_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      mov              r11, 68
                        mov              qword ptr [rbp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_227_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n69_subscript_α
.Llit_integer_α_227_0:  .quad            12345
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_subscript_bx, @function
n69_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_subscript_α:        mov              r11, 69
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n70_deref_α
                        .size            n69_subscript_bx, .-n69_subscript_bx
                        .type            n70_deref_bx, @function
n70_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_deref_α:            mov              r11, 70
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n71_deref_α
                        .size            n70_deref_bx, .-n70_deref_bx
                        .type            n71_deref_bx, @function
n71_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_deref_α:            mov              r11, 71
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n72_deref_α
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n73_deref_α
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n74_deref_α
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n75_deref_α
                        .size            n74_deref_bx, .-n74_deref_bx
                        .type            n75_deref_bx, @function
n75_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            mov              r11, 75
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n76_deref_α
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
                        cmp              al, 104;                             je    n78_line_mark_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n77_call_icon_α
                        .size            n76_deref_bx, .-n76_deref_bx
                        .type            n77_call_icon_bx, @function
n77_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_icon_α:        mov              r11, 77
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
.Lcall_icon_α_rkfn237:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn237]
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
                        cmp              al, 104;                             je    n78_line_mark_α
                                                                              jmp   n78_line_mark_α
n77_call_icon_β:        mov              r11, 77;                             jmp   n78_line_mark_α
                        .size            n77_call_icon_bx, .-n77_call_icon_bx
                        .type            n78_line_mark_bx, @function
n78_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_line_mark_α:        mov              r11, 78
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n79_lit_integer_α
                        .size            n78_line_mark_bx, .-n78_line_mark_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      mov              r11, 79
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_240_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n80_assign_α
.Llit_integer_α_240_0:  .quad            0
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_assign_bx, @function
n80_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx;         jmp   n81_line_mark_α
                        .size            n80_assign_bx, .-n80_assign_bx
                        .type            n81_line_mark_bx, @function
n81_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_line_mark_α:        mov              r11, 81
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n82_lit_integer_α
                        .size            n81_line_mark_bx, .-n81_line_mark_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              r11, 82
                        mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n83_lit_integer_α
.Llit_integer_α_244_0:  .quad            1
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              r11, 83
                        mov              qword ptr [rbp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_245_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n84_to_α
.Llit_integer_α_245_0:  .quad            5000
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_to_bx, @function
n84_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_to_α:               mov              r11, 84
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n95_line_mark_α
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
                        test             eax, eax;                            jz    n95_line_mark_α
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
.Lto_α_247_0:           mov              rax, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 840]
                        cmp              rax, rcx;                            jg    n95_line_mark_α
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax;          jmp   n85_assign_α
n84_to_β:               mov              r11, 84
                        inc              qword ptr [rbp + 800];               jo    n95_line_mark_α
                                                                              jmp   .Lto_α_247_0
                        .size            n84_to_bx, .-n84_to_bx
                        .type            n85_assign_bx, @function
n85_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 85
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n86_bound_α
                        .size            n85_assign_bx, .-n85_assign_bx
                        .type            n86_bound_bx, @function
n86_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_bound_α:            mov              r11, 86
                        mov              qword ptr [rbp + 848], rsp;          jmp   n87_var_ref_α
                        .size            n86_bound_bx, .-n86_bound_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n88_var_ref_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n89_deref_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_deref_bx, @function
n89_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_deref_α:            mov              r11, 89
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n94_unmark_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n90_call_icon_α
                        .size            n89_deref_bx, .-n89_deref_bx
                        .type            n90_call_icon_bx, @function
n90_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_icon_α:        mov              r11, 90
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lcall_icon_α_rkfn257:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn257]
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
                        cmp              al, 104;                             je    n94_unmark_α
                                                                              jmp   n91_subscript_α
n90_call_icon_β:        mov              r11, 90;                             jmp   n94_unmark_α
                        .size            n90_call_icon_bx, .-n90_call_icon_bx
                        .type            n91_subscript_bx, @function
n91_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        mov              r11, 91
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
                        cmp              al, 104;                             je    n94_unmark_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n92_var_α
                        .size            n91_subscript_bx, .-n91_subscript_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 92
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n93_assign_var_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_assign_var_bx, @function
n93_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_var_α:       mov              r11, 93
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
                        cmp              al, 104;                             je    n94_unmark_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n94_unmark_α
                        .size            n93_assign_var_bx, .-n93_assign_var_bx
                        .type            n94_unmark_bx, @function
n94_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_unmark_α:           mov              r11, 94
                        mov              rsp, qword ptr [rbp + 848];          jmp   n84_to_β
                        .size            n94_unmark_bx, .-n94_unmark_bx
                        .type            n95_line_mark_bx, @function
n95_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_line_mark_α:        mov              r11, 95
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n96_lit_integer_α
                        .size            n95_line_mark_bx, .-n95_line_mark_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              r11, 96
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_266_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n97_lit_integer_α
.Llit_integer_α_266_0:  .quad            1
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              r11, 97
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_267_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n98_to_α
.Llit_integer_α_267_0:  .quad            5000
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_to_bx, @function
n98_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_to_α:               mov              r11, 98
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
.Lto_α_269_0:           mov              rax, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 520]
                        cmp              rax, rcx;                            jg    n00001_line_mark_α
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax;          jmp   n99_assign_α
n98_to_β:               mov              r11, 98
                        inc              qword ptr [rbp + 480];               jo    n00001_line_mark_α
                                                                              jmp   .Lto_α_269_0
                        .size            n98_to_bx, .-n98_to_bx
                        .type            n99_assign_bx, @function
n99_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              r11, 99
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n00002_bound_α
                        .size            n99_assign_bx, .-n99_assign_bx
                        .type            n00002_bound_bx, @function
n00002_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_bound_α:           mov              r11, 100
                        mov              qword ptr [rbp + 528], rsp;          jmp   n00003_var_α
                        .size            n00002_bound_bx, .-n00002_bound_bx
                        .type            n00003_var_bx, @function
n00003_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_var_α:             mov              r11, 101
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 632], rax;          jmp   n00004_var_ref_α
                        .size            n00003_var_bx, .-n00003_var_bx
                        .type            n00004_var_ref_bx, @function
n00004_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00005_var_ref_α
                        .size            n00004_var_ref_bx, .-n00004_var_ref_bx
                        .type            n00005_var_ref_bx, @function
n00005_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00006_deref_α
                        .size            n00005_var_ref_bx, .-n00005_var_ref_bx
                        .type            n00006_deref_bx, @function
n00006_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_deref_α:           mov              r11, 104
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00007_unmark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n00008_call_icon_α
                        .size            n00006_deref_bx, .-n00006_deref_bx
                        .type            n00008_call_icon_bx, @function
n00008_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_call_icon_α:       mov              r11, 105
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lcall_icon_α_rkfn281:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn281]
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
                        cmp              al, 104;                             je    n00007_unmark_α
                                                                              jmp   n00009_subscript_α
n00008_call_icon_β:       mov              r11, 105;                            jmp   n00007_unmark_α
                        .size            n00008_call_icon_bx, .-n00008_call_icon_bx
                        .type            n00009_subscript_bx, @function
n00009_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_subscript_α:       mov              r11, 106
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
                        cmp              al, 104;                             je    n00007_unmark_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n00010_deref_α
                        .size            n00009_subscript_bx, .-n00009_subscript_bx
                        .type            n00010_deref_bx, @function
n00010_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_deref_α:           mov              r11, 107
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00007_unmark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00011_coerce_numeric_α
                        .size            n00010_deref_bx, .-n00010_deref_bx
                        .type            n00011_coerce_numeric_bx, @function
n00011_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_coerce_numeric_α:  mov              r11, 108
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_285_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_285_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_285_0
.Lcoerce_numeric_α_285_1:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00012_coerce_numeric_α
.Lcoerce_numeric_α_285_0:
                        lea              rdi, [rbp + 2752]
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 608]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 608]
                        cmp              al, 104;                             je    n00007_unmark_α
                                                                              jmp   n00012_coerce_numeric_α
                        .size            n00011_coerce_numeric_bx, .-n00011_coerce_numeric_bx
                        .type            n00012_coerce_numeric_bx, @function
n00012_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_coerce_numeric_α:  mov              r11, 109
                        mov              eax, dword ptr [rbp + 752]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_287_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_287_0
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_287_0
.Lcoerce_numeric_α_287_1:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00013_binop_α
.Lcoerce_numeric_α_287_0:
                        lea              rdi, [rbp + 752]
                        lea              rsi, [rbp + 2752]
                        lea              rdx, [rbp + 592]
                        mov              rcx, 281479288455270
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 104;                             je    n00007_unmark_α
                                                                              jmp   n00013_binop_α
                        .size            n00012_coerce_numeric_bx, .-n00012_coerce_numeric_bx
                        .type            n00013_binop_bx, @function
n00013_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_binop_α:           mov              r11, 110
                        mov              eax, dword ptr [rbp + 608]
                        mov              ecx, dword ptr [rbp + 592]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_288_2
                        mov              rax, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 600]
                        add              rax, rdx;                            jo    .Lbinop_α_288_0
                        mov              qword ptr [rbp + 576], 3
                        mov              qword ptr [rbp + 584], rax;          jmp   .Lbinop_α_288_7
.Lbinop_α_288_2:        and              edx, 1;                              jz    .Lbinop_α_288_0
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdi, qword ptr [rbp + 600]
                        cmp              al, 5;                               je    .Lbinop_α_288_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_288_4
.Lbinop_α_288_3:        movq             xmm0, rsi
.Lbinop_α_288_4:        cmp              cl, 5;                               je    .Lbinop_α_288_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_288_6
.Lbinop_α_288_5:        movq             xmm1, rdi
.Lbinop_α_288_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_288_0
                        mov              qword ptr [rbp + 576], 5
                        mov              qword ptr [rbp + 584], rax
.Lbinop_α_288_7:                                                              jmp   n00014_assign_α
.Lbinop_α_288_0:        mov              rdi, qword ptr [rbp + 608]
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
                        cmp              al, 104;                             je    n00007_unmark_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00014_assign_α
                        .size            n00013_binop_bx, .-n00013_binop_bx
                        .type            n00014_assign_bx, @function
n00014_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx;         jmp   n00007_unmark_α
                        .size            n00014_assign_bx, .-n00014_assign_bx
                        .type            n00007_unmark_bx, @function
n00007_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_unmark_α:          mov              r11, 112
                        mov              rsp, qword ptr [rbp + 528];          jmp   n98_to_β
                        .size            n00007_unmark_bx, .-n00007_unmark_bx
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_line_mark_α:       mov              r11, 113
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00015_var_ref_α
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00015_var_ref_bx, @function
n00015_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00016_deref_α
                        .size            n00015_var_ref_bx, .-n00015_var_ref_bx
                        .type            n00016_deref_bx, @function
n00016_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_deref_α:           mov              r11, 115
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_line_mark_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00018_call_icon_α
                        .size            n00016_deref_bx, .-n00016_deref_bx
                        .type            n00018_call_icon_bx, @function
n00018_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_call_icon_α:       mov              r11, 116
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lcall_icon_α_rkfn298:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn298]
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
                        cmp              al, 104;                             je    n00017_line_mark_α
                                                                              jmp   n00017_line_mark_α
n00018_call_icon_β:       mov              r11, 116;                            jmp   n00017_line_mark_α
                        .size            n00018_call_icon_bx, .-n00018_call_icon_bx
                        .type            n00017_line_mark_bx, @function
n00017_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_line_mark_α:       mov              r11, 117
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n00019_lit_integer_α
                        .size            n00017_line_mark_bx, .-n00017_line_mark_bx
                        .type            n00019_lit_integer_bx, @function
n00019_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_301_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n00020_lit_integer_α
.Llit_integer_α_301_0:  .quad            1
                        .size            n00019_lit_integer_bx, .-n00019_lit_integer_bx
                        .type            n00020_lit_integer_bx, @function
n00020_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_integer_α:     mov              r11, 119
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_302_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00021_to_α
.Llit_integer_α_302_0:  .quad            5000
                        .size            n00020_lit_integer_bx, .-n00020_lit_integer_bx
                        .type            n00021_to_bx, @function
n00021_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_to_α:              mov              r11, 120
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00022_line_mark_α
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
                        test             eax, eax;                            jz    n00022_line_mark_α
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
.Lto_α_304_0:           mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n00022_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n00023_assign_α
n00021_to_β:              mov              r11, 120
                        inc              qword ptr [rbp + 128];               jo    n00022_line_mark_α
                                                                              jmp   .Lto_α_304_0
                        .size            n00021_to_bx, .-n00021_to_bx
                        .type            n00023_assign_bx, @function
n00023_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n00024_bound_α
                        .size            n00023_assign_bx, .-n00023_assign_bx
                        .type            n00024_bound_bx, @function
n00024_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_bound_α:           mov              r11, 122
                        mov              qword ptr [rbp + 176], rsp;          jmp   n00025_var_α
                        .size            n00024_bound_bx, .-n00024_bound_bx
                        .type            n00025_var_bx, @function
n00025_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_var_α:             mov              r11, 123
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00026_var_ref_α
                        .size            n00025_var_bx, .-n00025_var_bx
                        .type            n00026_var_ref_bx, @function
n00026_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00027_var_α
                        .size            n00026_var_ref_bx, .-n00026_var_ref_bx
                        .type            n00027_var_bx, @function
n00027_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_α:             mov              r11, 125
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00028_subscript_α
                        .size            n00027_var_bx, .-n00027_var_bx
                        .type            n00028_subscript_bx, @function
n00028_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_subscript_α:       mov              r11, 126
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
                        cmp              al, 104;                             je    n00029_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00030_deref_α
                        .size            n00028_subscript_bx, .-n00028_subscript_bx
                        .type            n00030_deref_bx, @function
n00030_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_deref_α:           mov              r11, 127
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00029_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00031_coerce_numeric_α
                        .size            n00030_deref_bx, .-n00030_deref_bx
                        .type            n00031_coerce_numeric_bx, @function
n00031_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_coerce_numeric_α:  mov              r11, 128
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_317_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_317_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_317_0
.Lcoerce_numeric_α_317_1:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00032_coerce_numeric_α
.Lcoerce_numeric_α_317_0:
                        lea              rdi, [rbp + 2752]
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 4311744614
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 104;                             je    n00029_unmark_α
                                                                              jmp   n00032_coerce_numeric_α
                        .size            n00031_coerce_numeric_bx, .-n00031_coerce_numeric_bx
                        .type            n00032_coerce_numeric_bx, @function
n00032_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_coerce_numeric_α:  mov              r11, 129
                        mov              eax, dword ptr [rbp + 336]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_319_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_319_0
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_319_0
.Lcoerce_numeric_α_319_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00033_binop_α
.Lcoerce_numeric_α_319_0:
                        lea              rdi, [rbp + 336]
                        lea              rsi, [rbp + 2752]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 281479288455270
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n00029_unmark_α
                                                                              jmp   n00033_binop_α
                        .size            n00032_coerce_numeric_bx, .-n00032_coerce_numeric_bx
                        .type            n00033_binop_bx, @function
n00033_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_binop_α:           mov              r11, 130
                        mov              eax, dword ptr [rbp + 256]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_320_2
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        add              rax, rdx;                            jo    .Lbinop_α_320_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_320_7
.Lbinop_α_320_2:        and              edx, 1;                              jz    .Lbinop_α_320_0
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdi, qword ptr [rbp + 248]
                        cmp              al, 5;                               je    .Lbinop_α_320_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_320_4
.Lbinop_α_320_3:        movq             xmm0, rsi
.Lbinop_α_320_4:        cmp              cl, 5;                               je    .Lbinop_α_320_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_320_6
.Lbinop_α_320_5:        movq             xmm1, rdi
.Lbinop_α_320_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_320_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_320_7:                                                              jmp   n00034_assign_α
.Lbinop_α_320_0:        mov              rdi, qword ptr [rbp + 256]
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
                        cmp              al, 104;                             je    n00029_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00034_assign_α
                        .size            n00033_binop_bx, .-n00033_binop_bx
                        .type            n00034_assign_bx, @function
n00034_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_assign_α:          mov              r11, 131
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx;         jmp   n00029_unmark_α
                        .size            n00034_assign_bx, .-n00034_assign_bx
                        .type            n00029_unmark_bx, @function
n00029_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_unmark_α:          mov              r11, 132
                        mov              rsp, qword ptr [rbp + 176];          jmp   n00021_to_β
                        .size            n00029_unmark_bx, .-n00029_unmark_bx
                        .type            n00022_line_mark_bx, @function
n00022_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_line_mark_α:       mov              r11, 133
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00035_var_ref_α
                        .size            n00022_line_mark_bx, .-n00022_line_mark_bx
                        .type            n00035_var_ref_bx, @function
n00035_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00036_deref_α
                        .size            n00035_var_ref_bx, .-n00035_var_ref_bx
                        .type            n00036_deref_bx, @function
n00036_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_deref_α:           mov              r11, 135
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
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00037_call_icon_α
                        .size            n00036_deref_bx, .-n00036_deref_bx
                        .type            n00037_call_icon_bx, @function
n00037_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_call_icon_α:       mov              r11, 136
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn330:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn330]
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
n00037_call_icon_β:       mov              r11, 136;                            jmp   main_ω
                        .size            n00037_call_icon_bx, .-n00037_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_329_248
                        .section         .rodata
.Licn_trace_nm331:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm331]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_329_248:       mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_329_249
                        .section         .rodata
.Licn_trace_nm332:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm332]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_329_249:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
