                        .intel_syntax    noprefix
                        .text
                        .file            1 "deal.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__display:
                        sub              rsp, 2240
                        lea              rax, [rip + .Lgcmap_display]
                        mov              qword ptr [rsp + 2152], rax
                        mov              dword ptr [rsp + 2144], 160
                        mov              dword ptr [rsp + 2148], 2240
                        mov              eax, 0
                        mov              qword ptr [rsp + 2232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2144
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm0:        .string          "display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm0]
                        mov              esi, 0
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Ldisplay_α_0_247:      mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
display_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              r11, 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 72
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_113_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_113_0:    .quad            .Lline_mark_α_113_0_s
.Lline_mark_α_113_0_s:  .string          "deal.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n3_line_mark_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              r11, 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n4_disjunction_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_disjunction_bx, @function
n4_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              r11, 4
                        mov              qword ptr [rbp + 1632], 0
                        mov              qword ptr [rbp + 1640], 0
                        mov              dword ptr [rbp + 1648], 0;           jmp   n5_var_ref_α
.Ldisjunction_γ_4_as:   mov              r11, 4
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_119_0
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n24_line_mark_α
.Ldisjunction_α_119_0:                                                        jmp   n24_line_mark_α
n4_disjunction_β:       mov              r11, 4
                        mov              eax, dword ptr [rbp + 1648];         jmp   n24_line_mark_α
.Ldisjunction_γ_4_af:   mov              r11, 4
.Ldisjunction_ω_4_af:   mov              r11, 4
                        add              dword ptr [rbp + 1648], 1
                        mov              eax, dword ptr [rbp + 1648];         jmp   n24_line_mark_α
                        .size            n4_disjunction_bx, .-n4_disjunction_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        mov              rdx, 1879052432                      # display__INITFLAG__0
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n6_nulltest_var_α
n5_var_ref_β:           mov              r11, 5;                              jmp   .Ldisjunction_ω_4_af
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_nulltest_var_bx, @function
n6_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_nulltest_var_α:      mov              r11, 6
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              al, 104;                             je    .Ldisjunction_ω_4_af
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_4_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_4_af
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2024], rax
                        push             rax                                  # gc_poll bb_unop.cpp:55
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n7_lit_integer_α
                        .size            n6_nulltest_var_bx, .-n6_nulltest_var_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_123_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n8_assign_var_α
.Llit_integer_α_123_0:  .quad            1
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_assign_var_bx, @function
n8_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_var_α:        mov              r11, 8
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_4_af
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n9_line_mark_α
                        .size            n8_assign_var_bx, .-n8_assign_var_bx
                        .type            n9_line_mark_bx, @function
n9_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_line_mark_α:         mov              r11, 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76;             jmp   n10_lit_string_α
                        .size            n9_line_mark_bx, .-n9_line_mark_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 10
                        mov              qword ptr [rbp + 1840], 2            # result
                        mov              dword ptr [rbp + 1844], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_127_0]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n11_lit_string_α
.Llit_string_α_127_0:   .quad            .Llit_string_α_127_0_s
.Llit_string_α_127_0_s: .string          "\n"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_lit_string_bx, @function
n11_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rbp + 1936], 2            # result
                        mov              dword ptr [rbp + 1940], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_128_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n12_lit_integer_α
.Llit_string_α_128_0:   .quad            .Llit_string_α_128_0_s
.Llit_string_α_128_0_s: .string          "-"
                        .size            n11_lit_string_bx, .-n11_lit_string_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_129_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n13_line_mark_α
.Llit_integer_α_129_0:  .quad            33
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_line_mark_bx, @function
n13_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_line_mark_α:        mov              r11, 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76;             jmp   n14_call_icon_α
                        .size            n13_line_mark_bx, .-n13_line_mark_bx
                        .type            n14_call_icon_bx, @function
n14_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_icon_α:        mov              r11, 14
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lcall_icon_α_rkfn133:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn133]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    n17_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n15_binop_α
n14_call_icon_β:        mov              r11, 14;                             jmp   n17_line_mark_α
                        .size            n14_call_icon_bx, .-n14_call_icon_bx
                        .type            n15_binop_bx, @function
n15_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            mov              r11, 15
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n16_assign_α
                        .size            n15_binop_bx, .-n15_binop_bx
                        .type            n16_assign_bx, @function
n16_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        mov              qword ptr [r9 + 112], rax            # display__STATIC__bar
                        mov              qword ptr [r9 + 120], rdx;           jmp   n17_line_mark_α
                        .size            n16_assign_bx, .-n16_assign_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_line_mark_α:        mov              r11, 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n18_lit_string_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_lit_string_bx, @function
n18_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_138_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n19_lit_integer_α
.Llit_string_α_138_0:   .quad            .Llit_string_α_138_0_s
.Llit_string_α_138_0_s: .string          " "
                        .size            n18_lit_string_bx, .-n18_lit_string_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 19
                        mov              qword ptr [rbp + 1792], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rbp + 1800], rax;         jmp   n20_line_mark_α
.Llit_integer_α_139_0:  .quad            10
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_line_mark_α:        mov              r11, 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n21_call_icon_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_call_icon_bx, @function
n21_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_icon_α:        mov              r11, 21
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lcall_icon_α_rkfn143:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn143]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              al, 104;                             je    n24_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n22_assign_α
n21_call_icon_β:        mov              r11, 21;                             jmp   n24_line_mark_α
                        .size            n21_call_icon_bx, .-n21_call_icon_bx
                        .type            n22_assign_bx, @function
n22_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        mov              qword ptr [r9 + 128], rax            # display__STATIC__offset
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n23_conjunction_α
                        .size            n22_assign_bx, .-n22_assign_bx
                        .type            n23_conjunction_bx, @function
n23_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_conjunction_α:      mov              r11, 23
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax;         jmp   .Ldisjunction_γ_4_as
n23_conjunction_β:      mov              r11, 23;                             jmp   n24_line_mark_α
                        .size            n23_conjunction_bx, .-n23_conjunction_bx
                        .type            n24_line_mark_bx, @function
n24_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_line_mark_α:        mov              r11, 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n25_var_ref_α
                        .size            n24_line_mark_bx, .-n24_line_mark_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # deck
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx;         jmp   n26_deref_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_deref_bx, @function
n26_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_deref_α:            mov              r11, 26
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_line_mark_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n27_line_mark_α
                        .size            n26_deref_bx, .-n26_deref_bx
                        .type            n27_line_mark_bx, @function
n27_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_line_mark_α:        mov              r11, 27
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n28_call_proc_staged_α
                        .size            n27_line_mark_bx, .-n27_line_mark_bx
                        .type            n28_call_proc_staged_bx, @function
n28_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α: mov              r11, 28
                        lea              rsi, [rbp + 1600]
                        call             shuffle_dcα;                         jmp   .Lcall_proc_staged_α_154_2
.Lcall_proc_staged_α_154_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_154_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
.Lcall_proc_staged_α_154_29:
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n31_line_mark_α
                                                                              jmp   n29_deref_α
n28_call_proc_staged_β: mov              r11, 28;                             jmp   n31_line_mark_α
.Lcall_proc_staged_β_154_0:
                        .quad            .Lcall_proc_staged_β_154_0_s
.Lcall_proc_staged_β_154_0_s:
                        .string          "shuffle"
                        .size            n28_call_proc_staged_bx, .-n28_call_proc_staged_bx
                        .type            n29_deref_bx, @function
n29_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_deref_α:            mov              r11, 29
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_line_mark_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n30_assign_α
                        .size            n29_deref_bx, .-n29_deref_bx
                        .type            n30_assign_bx, @function
n30_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n31_line_mark_α
                        .size            n30_assign_bx, .-n30_assign_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_line_mark_α:        mov              r11, 31
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n32_make_list_α
                        .size            n31_line_mark_bx, .-n31_line_mark_bx
                        .type            n32_make_list_bx, @function
n32_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_make_list_α:        mov              r11, 32
                        lea              rdi, [rbp + 1520]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:57
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n33_assign_α
                        .size            n32_make_list_bx, .-n32_make_list_bx
                        .type            n33_assign_bx, @function
n33_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n34_line_mark_α
                        .size            n33_assign_bx, .-n33_assign_bx
                        .type            n34_line_mark_bx, @function
n34_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_line_mark_α:        mov              r11, 34
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n35_var_ref_α
                        .size            n34_line_mark_bx, .-n34_line_mark_bx
                        .type            n35_var_ref_bx, @function
n35_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n36_var_ref_α
                        .size            n35_var_ref_bx, .-n35_var_ref_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # deck
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n37_lit_integer_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rbp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_168_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n38_lit_integer_α
.Llit_integer_α_168_0:  .quad            0
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rbp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n39_to_α
.Llit_integer_α_169_0:  .quad            3
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_to_bx, @function
n39_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_to_α:               mov              r11, 39
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n57_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:44
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1376], 3
                        mov              qword ptr [rbp + 1384], rax
                        push             rax                                  # gc_poll bb_to.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n57_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:44
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], 3
                        mov              qword ptr [rbp + 1400], rax
                        push             rax                                  # gc_poll bb_to.cpp:135
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1360], rax
.Lto_α_171_0:           mov              rax, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1400]
                        cmp              rax, rcx;                            jg    n57_line_mark_α
                        mov              qword ptr [rbp + 1344], 3
                        mov              qword ptr [rbp + 1352], rax;         jmp   n40_var_α
n39_to_β:               mov              r11, 39
                        inc              qword ptr [rbp + 1360];              jo    n57_line_mark_α
                                                                              jmp   .Lto_α_171_0
                        .size            n39_to_bx, .-n39_to_bx
                        .type            n40_var_bx, @function
n40_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              r11, 40
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 1408], rax          # result
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n41_coerce_numeric_α
                        .size            n40_var_bx, .-n40_var_bx
                        .type            n41_coerce_numeric_bx, @function
n41_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:   mov              r11, 41
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_174_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_174_0
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_174_0
.Lcoerce_numeric_α_174_1:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n42_coerce_numeric_α
.Lcoerce_numeric_α_174_0:
                        lea              rdi, [rbp + 1344]
                        lea              rsi, [rbp + 1408]
                        lea              rdx, [rbp + 1328]
                        mov              rcx, 12901679206
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1328]
                        cmp              al, 104;                             je    n57_line_mark_α
                                                                              jmp   n42_coerce_numeric_α
                        .size            n41_coerce_numeric_bx, .-n41_coerce_numeric_bx
                        .type            n42_coerce_numeric_bx, @function
n42_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:   mov              r11, 42
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_176_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_176_0
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_176_0
.Lcoerce_numeric_α_176_1:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n43_binop_α
.Lcoerce_numeric_α_176_0:
                        lea              rdi, [rbp + 1408]
                        lea              rsi, [rbp + 1344]
                        lea              rdx, [rbp + 1312]
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1312]
                        cmp              al, 104;                             je    n57_line_mark_α
                                                                              jmp   n43_binop_α
                        .size            n42_coerce_numeric_bx, .-n42_coerce_numeric_bx
                        .type            n43_binop_bx, @function
n43_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:            mov              r11, 43
                        mov              eax, dword ptr [rbp + 1328]
                        mov              ecx, dword ptr [rbp + 1312]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_177_2
                        mov              rax, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1320]
                        imul             rax, rdx;                            jo    .Lbinop_α_177_0
                        mov              qword ptr [rbp + 1296], 3
                        mov              qword ptr [rbp + 1304], rax;         jmp   .Lbinop_α_177_7
.Lbinop_α_177_2:        and              edx, 1;                              jz    .Lbinop_α_177_0
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdi, qword ptr [rbp + 1320]
                        cmp              al, 5;                               je    .Lbinop_α_177_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_177_4
.Lbinop_α_177_3:        movq             xmm0, rsi
.Lbinop_α_177_4:        cmp              cl, 5;                               je    .Lbinop_α_177_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_177_6
.Lbinop_α_177_5:        movq             xmm1, rdi
.Lbinop_α_177_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_177_0
                        mov              qword ptr [rbp + 1296], 5
                        mov              qword ptr [rbp + 1304], rax
.Lbinop_α_177_7:                                                              jmp   n44_lit_integer_α
.Lbinop_α_177_0:        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n57_line_mark_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n44_lit_integer_α
                        .size            n43_binop_bx, .-n43_binop_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              r11, 44
                        mov              qword ptr [rbp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_178_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n45_coerce_numeric_α
.Llit_integer_α_178_0:  .quad            1
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_coerce_numeric_bx, @function
n45_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:   mov              r11, 45
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_180_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_180_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_180_0
.Lcoerce_numeric_α_180_1:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n46_binop_α
.Lcoerce_numeric_α_180_0:
                        lea              rdi, [rbp + 1296]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 1280]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 104;                             je    n57_line_mark_α
                                                                              jmp   n46_binop_α
                        .size            n45_coerce_numeric_bx, .-n45_coerce_numeric_bx
                        .type            n46_binop_bx, @function
n46_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:            mov              r11, 46
                        mov              eax, dword ptr [rbp + 1280]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_181_2
                        mov              rax, qword ptr [rbp + 1288]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_181_0
                        mov              qword ptr [rbp + 1264], 3
                        mov              qword ptr [rbp + 1272], rax;         jmp   .Lbinop_α_181_7
.Lbinop_α_181_2:        and              edx, 1;                              jz    .Lbinop_α_181_0
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_181_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_181_4
.Lbinop_α_181_3:        movq             xmm0, rsi
.Lbinop_α_181_4:        cmp              cl, 5;                               je    .Lbinop_α_181_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_181_6
.Lbinop_α_181_5:        movq             xmm1, rdi
.Lbinop_α_181_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_181_0
                        mov              qword ptr [rbp + 1264], 5
                        mov              qword ptr [rbp + 1272], rax
.Lbinop_α_181_7:                                                              jmp   n47_var_α
.Lbinop_α_181_0:        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n57_line_mark_α
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n47_var_α
                        .size            n46_binop_bx, .-n46_binop_bx
                        .type            n47_var_bx, @function
n47_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              r11, 47
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 0], rax             # result
                        mov              qword ptr [rbp + 8], rdx;            jmp   n48_binop_α
                        .size            n47_var_bx, .-n47_var_bx
                        .type            n48_binop_bx, @function
n48_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:            mov              r11, 48
                        mov              eax, dword ptr [rbp + 1264]
                        mov              ecx, dword ptr [rbp + 0]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_183_2
                        mov              rax, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 8]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1440], 3
                        mov              qword ptr [rbp + 1448], rax;         jmp   .Lbinop_α_183_7
.Lbinop_α_183_2:        and              edx, 1;                              jz    .Lbinop_α_183_0
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdi, qword ptr [rbp + 8]
                        cmp              al, 5;                               je    .Lbinop_α_183_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_183_4
.Lbinop_α_183_3:        movq             xmm0, rsi
.Lbinop_α_183_4:        cmp              cl, 5;                               je    .Lbinop_α_183_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_183_6
.Lbinop_α_183_5:        movq             xmm1, rdi
.Lbinop_α_183_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_183_0
                        mov              qword ptr [rbp + 1440], 5
                        mov              qword ptr [rbp + 1448], rax
.Lbinop_α_183_7:                                                              jmp   n49_subscript_α
.Lbinop_α_183_0:        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 0]
                        mov              rcx, qword ptr [rbp + 8]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             je    n39_to_β
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n49_subscript_α
                        .size            n48_binop_bx, .-n48_binop_bx
                        .type            n49_subscript_bx, @function
n49_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:        mov              r11, 49
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              r8, qword ptr [rbp + 1440]
                        mov              r9, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_section_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n39_to_β
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        push             rax                                  # gc_poll bb_section.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n50_deref_α
                        .size            n49_subscript_bx, .-n49_subscript_bx
                        .type            n50_deref_bx, @function
n50_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_deref_α:            mov              r11, 50
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n39_to_β
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n51_line_mark_α
                        .size            n50_deref_bx, .-n50_deref_bx
                        .type            n51_line_mark_bx, @function
n51_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_line_mark_α:        mov              r11, 51
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n52_call_proc_staged_α
                        .size            n51_line_mark_bx, .-n51_line_mark_bx
                        .type            n52_call_proc_staged_bx, @function
n52_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α: mov              r11, 52
                        lea              rsi, [rbp + 1456]
                        call             show_dcα;                            jmp   .Lcall_proc_staged_α_189_2
.Lcall_proc_staged_α_189_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_189_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
.Lcall_proc_staged_α_189_29:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    n39_to_β
                                                                              jmp   n53_deref_α
n52_call_proc_staged_β: mov              r11, 52;                             jmp   n39_to_β
.Lcall_proc_staged_β_189_0:
                        .quad            .Lcall_proc_staged_β_189_0_s
.Lcall_proc_staged_β_189_0_s:
                        .string          "show"
                        .size            n52_call_proc_staged_bx, .-n52_call_proc_staged_bx
                        .type            n53_deref_bx, @function
n53_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_deref_α:            mov              r11, 53
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n39_to_β
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n54_deref_α
                        .size            n53_deref_bx, .-n53_deref_bx
                        .type            n54_deref_bx, @function
n54_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_deref_α:            mov              r11, 54
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n39_to_β
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n55_line_mark_α
                        .size            n54_deref_bx, .-n54_deref_bx
                        .type            n55_line_mark_bx, @function
n55_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_line_mark_α:        mov              r11, 55
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n56_call_icon_α
                        .size            n55_line_mark_bx, .-n55_line_mark_bx
                        .type            n56_call_icon_bx, @function
n56_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_icon_α:        mov              r11, 56
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lcall_icon_α_rkfn195:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn195]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n39_to_β
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n39_to_β
n56_call_icon_β:        mov              r11, 56;                             jmp   n39_to_β
                        .size            n56_call_icon_bx, .-n56_call_icon_bx
                        .type            n57_line_mark_bx, @function
n57_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_line_mark_α:        mov              r11, 57
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n58_line_mark_α
                        .size            n57_line_mark_bx, .-n57_line_mark_bx
                        .type            n58_line_mark_bx, @function
n58_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_line_mark_α:        mov              r11, 58
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n59_call_icon_α
                        .size            n58_line_mark_bx, .-n58_line_mark_bx
                        .type            n59_call_icon_bx, @function
n59_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_icon_α:        mov              r11, 59
                        .section         .rodata
.Lcall_icon_α_rkfn201:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn201]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    n60_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n60_line_mark_α
n59_call_icon_β:        mov              r11, 59;                             jmp   n60_line_mark_α
                        .size            n59_call_icon_bx, .-n59_call_icon_bx
                        .type            n60_line_mark_bx, @function
n60_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_line_mark_α:        mov              r11, 60
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 85;             jmp   n61_var_α
                        .size            n60_line_mark_bx, .-n60_line_mark_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              r11, 61
                        mov              rax, qword ptr [r9 + 128]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 928], rax           # result
                        mov              qword ptr [rbp + 936], rdx;          jmp   n62_var_ref_α
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n63_lit_integer_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              r11, 63
                        mov              qword ptr [rbp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_207_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n64_subscript_α
.Llit_integer_α_207_0:  .quad            1
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_subscript_bx, @function
n64_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_subscript_α:        mov              r11, 64
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n69_line_mark_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n65_deref_α
                        .size            n64_subscript_bx, .-n64_subscript_bx
                        .type            n65_deref_bx, @function
n65_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_deref_α:            mov              r11, 65
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n69_line_mark_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n66_iterate_α
                        .size            n65_deref_bx, .-n65_deref_bx
                        .type            n66_iterate_bx, @function
n66_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_iterate_α:          mov              r11, 66
                        mov              qword ptr [rbp + 960], 0
.Literate_α_211_0:      mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 960]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    n69_line_mark_α
                        push             rax                                  # gc_poll bb_iterate.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n67_line_mark_α
n66_iterate_β:          mov              r11, 66
                        inc              qword ptr [rbp + 960];               jmp   .Literate_α_211_0
                        .size            n66_iterate_bx, .-n66_iterate_bx
                        .type            n67_line_mark_bx, @function
n67_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_line_mark_α:        mov              r11, 67
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 85;             jmp   n68_call_icon_α
                        .size            n67_line_mark_bx, .-n67_line_mark_bx
                        .type            n68_call_icon_bx, @function
n68_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_icon_α:        mov              r11, 68
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lcall_icon_α_rkfn215:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn215]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n66_iterate_β
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n66_iterate_β
n68_call_icon_β:        mov              r11, 68;                             jmp   n66_iterate_β
                        .size            n68_call_icon_bx, .-n68_call_icon_bx
                        .type            n69_line_mark_bx, @function
n69_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_line_mark_α:        mov              r11, 69
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n70_line_mark_α
                        .size            n69_line_mark_bx, .-n69_line_mark_bx
                        .type            n70_line_mark_bx, @function
n70_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_line_mark_α:        mov              r11, 70
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n71_call_icon_α
                        .size            n70_line_mark_bx, .-n70_line_mark_bx
                        .type            n71_call_icon_bx, @function
n71_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_icon_α:        mov              r11, 71
                        .section         .rodata
.Lcall_icon_α_rkfn221:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn221]
                        lea              rsi, [rbp + 832]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    n72_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n72_line_mark_α
n71_call_icon_β:        mov              r11, 71;                             jmp   n72_line_mark_α
                        .size            n71_call_icon_bx, .-n71_call_icon_bx
                        .type            n72_line_mark_bx, @function
n72_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_line_mark_α:        mov              r11, 72
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 87;             jmp   n73_lit_integer_α
                        .size            n72_line_mark_bx, .-n72_line_mark_bx
                        .type            n73_lit_integer_bx, @function
n73_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      mov              r11, 73
                        mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_224_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n74_lit_integer_α
.Llit_integer_α_224_0:  .quad            1
                        .size            n73_lit_integer_bx, .-n73_lit_integer_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              r11, 74
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_225_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n75_to_α
.Llit_integer_α_225_0:  .quad            4
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_to_bx, @function
n75_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_to_α:               mov              r11, 75
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n96_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:44
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax
                        push             rax                                  # gc_poll bb_to.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n96_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:44
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], 3
                        mov              qword ptr [rbp + 408], rax
                        push             rax                                  # gc_poll bb_to.cpp:135
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 368], rax
.Lto_α_227_0:           mov              rax, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 408]
                        cmp              rax, rcx;                            jg    n96_line_mark_α
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax;          jmp   n76_assign_α
n75_to_β:               mov              r11, 75
                        inc              qword ptr [rbp + 368];               jo    n96_line_mark_α
                                                                              jmp   .Lto_α_227_0
                        .size            n75_to_bx, .-n75_to_bx
                        .type            n76_assign_bx, @function
n76_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              r11, 76
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n77_bound_α
                        .size            n76_assign_bx, .-n76_assign_bx
                        .type            n77_bound_bx, @function
n77_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_bound_α:            mov              r11, 77
                        mov              qword ptr [rbp + 416], rsp;          jmp   n78_var_ref_α
                        .size            n77_bound_bx, .-n77_bound_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n79_lit_integer_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      mov              r11, 79
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_233_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n80_subscript_α
.Llit_integer_α_233_0:  .quad            4
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_subscript_bx, @function
n80_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_subscript_α:        mov              r11, 80
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n95_unmark_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n81_var_α
                        .size            n80_subscript_bx, .-n80_subscript_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 81
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 648], rax;          jmp   n82_subscript_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_subscript_bx, @function
n82_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_subscript_α:        mov              r11, 82
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n95_unmark_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n83_lit_integer_α
                        .size            n82_subscript_bx, .-n82_subscript_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              r11, 83
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_238_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n84_deref_α
.Llit_integer_α_238_0:  .quad            20
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_deref_bx, @function
n84_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_deref_α:            mov              r11, 84
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n95_unmark_α
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n85_line_mark_α
                        .size            n84_deref_bx, .-n84_deref_bx
                        .type            n85_line_mark_bx, @function
n85_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_line_mark_α:        mov              r11, 85
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n86_call_icon_α
                        .size            n85_line_mark_bx, .-n85_line_mark_bx
                        .type            n86_call_icon_bx, @function
n86_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_icon_α:        mov              r11, 86
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lcall_icon_α_rkfn243:  .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn243]
                        lea              rsi, [rbp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    n95_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n87_var_ref_α
n86_call_icon_β:        mov              r11, 86;                             jmp   n95_unmark_α
                        .size            n86_call_icon_bx, .-n86_call_icon_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n88_lit_integer_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_lit_integer_bx, @function
n88_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              r11, 88
                        mov              qword ptr [rbp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n89_subscript_α
.Llit_integer_α_246_0:  .quad            2
                        .size            n88_lit_integer_bx, .-n88_lit_integer_bx
                        .type            n89_subscript_bx, @function
n89_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:        mov              r11, 89
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n95_unmark_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n90_var_α
                        .size            n89_subscript_bx, .-n89_subscript_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              r11, 90
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 760], rax;          jmp   n91_subscript_α
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_subscript_bx, @function
n91_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        mov              r11, 91
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n95_unmark_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n92_deref_α
                        .size            n91_subscript_bx, .-n91_subscript_bx
                        .type            n92_deref_bx, @function
n92_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_deref_α:            mov              r11, 92
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n95_unmark_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n93_line_mark_α
                        .size            n92_deref_bx, .-n92_deref_bx
                        .type            n93_line_mark_bx, @function
n93_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_line_mark_α:        mov              r11, 93
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n94_call_icon_α
                        .size            n93_line_mark_bx, .-n93_line_mark_bx
                        .type            n94_call_icon_bx, @function
n94_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_icon_α:        mov              r11, 94
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lcall_icon_α_rkfn255:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn255]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n95_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n95_unmark_α
n94_call_icon_β:        mov              r11, 94;                             jmp   n95_unmark_α
                        .size            n94_call_icon_bx, .-n94_call_icon_bx
                        .type            n95_unmark_bx, @function
n95_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_unmark_α:           mov              r11, 95
                        mov              rsp, qword ptr [rbp + 416];          jmp   n75_to_β
                        .size            n95_unmark_bx, .-n95_unmark_bx
                        .type            n96_line_mark_bx, @function
n96_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_line_mark_α:        mov              r11, 96
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n97_line_mark_α
                        .size            n96_line_mark_bx, .-n96_line_mark_bx
                        .type            n97_line_mark_bx, @function
n97_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_line_mark_α:        mov              r11, 97
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n98_call_icon_α
                        .size            n97_line_mark_bx, .-n97_line_mark_bx
                        .type            n98_call_icon_bx, @function
n98_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_icon_α:        mov              r11, 98
                        .section         .rodata
.Lcall_icon_α_rkfn263:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn263]
                        lea              rsi, [rbp + 304]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n99_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n99_line_mark_α
n98_call_icon_β:        mov              r11, 98;                             jmp   n99_line_mark_α
                        .size            n98_call_icon_bx, .-n98_call_icon_bx
                        .type            n99_line_mark_bx, @function
n99_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_line_mark_α:        mov              r11, 99
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00001_var_α
                        .size            n99_line_mark_bx, .-n99_line_mark_bx
                        .type            n00001_var_bx, @function
n00001_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_var_α:             mov              r11, 100
                        mov              rax, qword ptr [r9 + 128]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 160], rax           # result
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00002_var_ref_α
                        .size            n00001_var_bx, .-n00001_var_bx
                        .type            n00002_var_ref_bx, @function
n00002_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00003_lit_integer_α
                        .size            n00002_var_ref_bx, .-n00002_var_ref_bx
                        .type            n00003_lit_integer_bx, @function
n00003_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_269_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00004_subscript_α
.Llit_integer_α_269_0:  .quad            3
                        .size            n00003_lit_integer_bx, .-n00003_lit_integer_bx
                        .type            n00004_subscript_bx, @function
n00004_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_subscript_α:       mov              r11, 103
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00005_line_mark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00006_deref_α
                        .size            n00004_subscript_bx, .-n00004_subscript_bx
                        .type            n00006_deref_bx, @function
n00006_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_deref_α:           mov              r11, 104
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00005_line_mark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00007_iterate_α
                        .size            n00006_deref_bx, .-n00006_deref_bx
                        .type            n00007_iterate_bx, @function
n00007_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_iterate_α:         mov              r11, 105
                        mov              qword ptr [rbp + 192], 0
.Literate_α_273_0:      mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 192]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00005_line_mark_α
                        push             rax                                  # gc_poll bb_iterate.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00008_line_mark_α
n00007_iterate_β:         mov              r11, 105
                        inc              qword ptr [rbp + 192];               jmp   .Literate_α_273_0
                        .size            n00007_iterate_bx, .-n00007_iterate_bx
                        .type            n00008_line_mark_bx, @function
n00008_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_line_mark_α:       mov              r11, 106
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00009_call_icon_α
                        .size            n00008_line_mark_bx, .-n00008_line_mark_bx
                        .type            n00009_call_icon_bx, @function
n00009_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_call_icon_α:       mov              r11, 107
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn277:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn277]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n00007_iterate_β
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00007_iterate_β
n00009_call_icon_β:       mov              r11, 107;                            jmp   n00007_iterate_β
                        .size            n00009_call_icon_bx, .-n00009_call_icon_bx
                        .type            n00005_line_mark_bx, @function
n00005_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_line_mark_α:       mov              r11, 108
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00010_var_α
                        .size            n00005_line_mark_bx, .-n00005_line_mark_bx
                        .type            n00010_var_bx, @function
n00010_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_var_α:             mov              r11, 109
                        mov              rax, qword ptr [r9 + 112]            # display__STATIC__bar
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 64], rax            # result
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00011_line_mark_α
                        .size            n00010_var_bx, .-n00010_var_bx
                        .type            n00011_line_mark_bx, @function
n00011_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_line_mark_α:       mov              r11, 110
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00012_call_icon_α
                        .size            n00011_line_mark_bx, .-n00011_line_mark_bx
                        .type            n00012_call_icon_bx, @function
n00012_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_call_icon_α:       mov              r11, 111
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn284:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn284]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    display_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   display_ω
n00012_call_icon_β:       mov              r11, 111;                            jmp   display_ω
                        .size            n00012_call_icon_bx, .-n00012_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
display_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
display_β:
                                                                              jmp   display_ω
#-----------------------------------------------------------------------------------------------------------------------
display_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 2240]
                        mov              rbp, qword ptr [rbp + 2232];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
display_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 2240]
                        mov              rbp, qword ptr [rbp + 2232];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
display_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Ldisplay_α_285_3]
                        push             rcx
                        lea              rcx, [rip + .Ldisplay_α_285_2]
                        push             rcx;                                 jmp   FN__display
.Ldisplay_α_285_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ldisplay_α_285_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_display:
                        .quad            9622073199962
                        .quad            34359738448
                        .quad            .Lgcmap_display_s
                        .quad            2144
                        .quad            13
                        .quad            211106232532992
                        .quad            17596481011904
                        .quad            175921860444368
                        .quad            17596481012080
                        .quad            52776558133632
                        .quad            17596481012144
                        .quad            562949953421760
                        .quad            17596481012672
                        .quad            422212465066960
                        .quad            17596481013072
                        .quad            299067162756448
                        .quad            17596481013360
                        .quad            527765581334144
.Lgcmap_display_s:      .string          "display"
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1664
                        lea              rax, [rip + .Lgcmap_show]
                        mov              qword ptr [rsp + 1592], rax
                        mov              dword ptr [rsp + 1584], 160
                        mov              dword ptr [rsp + 1588], 1664
                        mov              eax, 0
                        mov              qword ptr [rsp + 1656], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1584
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm286:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm286]
                        mov              esi, 1
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Lshow_α_285_247:       mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
show_α_body:
                        .type            n00013_line_mark_bx, @function
n00013_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_line_mark_α:       mov              r11, 112
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_371_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00014_line_mark_α
.Lline_mark_α_371_0:    .quad            .Lline_mark_α_371_0_s
.Lline_mark_α_371_0_s:  .string          "deal.icn"
                        .size            n00013_line_mark_bx, .-n00013_line_mark_bx
                        .type            n00014_line_mark_bx, @function
n00014_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_line_mark_α:       mov              r11, 113
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00015_disjunction_α
                        .size            n00014_line_mark_bx, .-n00014_line_mark_bx
                        .type            n00015_disjunction_bx, @function
n00015_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_disjunction_α:     mov              r11, 114
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0;            jmp   n00016_var_ref_α
.Ldisjunction_γ_289_as: mov              r11, 114
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_375_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00017_line_mark_α
.Ldisjunction_α_375_0:                                                        jmp   n00017_line_mark_α
n00015_disjunction_β:     mov              r11, 114
                        mov              eax, dword ptr [rbp + 720];          jmp   n00017_line_mark_α
.Ldisjunction_γ_289_af: mov              r11, 114
.Ldisjunction_ω_289_af: mov              r11, 114
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720];          jmp   n00017_line_mark_α
                        .size            n00015_disjunction_bx, .-n00015_disjunction_bx
                        .type            n00016_var_ref_bx, @function
n00016_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                      # show__INITFLAG__0
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n00018_nulltest_var_α
n00016_var_ref_β:         mov              r11, 115;                            jmp   .Ldisjunction_ω_289_af
                        .size            n00016_var_ref_bx, .-n00016_var_ref_bx
                        .type            n00018_nulltest_var_bx, @function
n00018_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_nulltest_var_α:    mov              r11, 116
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              al, 104;                             je    .Ldisjunction_ω_289_af
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_289_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_289_af
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1512], rax
                        push             rax                                  # gc_poll bb_unop.cpp:55
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00019_lit_integer_α
                        .size            n00018_nulltest_var_bx, .-n00018_nulltest_var_bx
                        .type            n00019_lit_integer_bx, @function
n00019_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_379_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00020_assign_var_α
.Llit_integer_α_379_0:  .quad            1
                        .size            n00019_lit_integer_bx, .-n00019_lit_integer_bx
                        .type            n00020_assign_var_bx, @function
n00020_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_assign_var_α:      mov              r11, 118
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_289_af
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00021_line_mark_α
                        .size            n00020_assign_var_bx, .-n00020_assign_var_bx
                        .type            n00021_line_mark_bx, @function
n00021_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_line_mark_α:       mov              r11, 119
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00022_var_ref_α
                        .size            n00021_line_mark_bx, .-n00021_line_mark_bx
                        .type            n00022_var_ref_bx, @function
n00022_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00023_lit_integer_α
                        .size            n00022_var_ref_bx, .-n00022_var_ref_bx
                        .type            n00023_lit_integer_bx, @function
n00023_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rbp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_385_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n00024_deref_α
.Llit_integer_α_385_0:  .quad            3
                        .size            n00023_lit_integer_bx, .-n00023_lit_integer_bx
                        .type            n00024_deref_bx, @function
n00024_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_deref_α:           mov              r11, 122
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00025_line_mark_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00026_line_mark_α
                        .size            n00024_deref_bx, .-n00024_deref_bx
                        .type            n00026_line_mark_bx, @function
n00026_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_line_mark_α:       mov              r11, 123
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00027_call_icon_α
                        .size            n00026_line_mark_bx, .-n00026_line_mark_bx
                        .type            n00027_call_icon_bx, @function
n00027_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_call_icon_α:       mov              r11, 124
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lcall_icon_α_rkfn390:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn390]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    n00025_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00028_var_α
n00027_call_icon_β:       mov              r11, 124;                            jmp   n00025_line_mark_α
                        .size            n00027_call_icon_bx, .-n00027_call_icon_bx
                        .type            n00028_var_bx, @function
n00028_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_α:             mov              r11, 125
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1456], rax          # result
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n00029_binop_α
                        .size            n00028_var_bx, .-n00028_var_bx
                        .type            n00029_binop_bx, @function
n00029_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_binop_α:           mov              r11, 126
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1344]
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00030_assign_α
                        .size            n00029_binop_bx, .-n00029_binop_bx
                        .type            n00030_assign_bx, @function
n00030_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_assign_α:          mov              r11, 127
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [r9 + 160], rax            # show__STATIC__clubmap
                        mov              qword ptr [r9 + 168], rdx;           jmp   n00025_line_mark_α
                        .size            n00030_assign_bx, .-n00030_assign_bx
                        .type            n00025_line_mark_bx, @function
n00025_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_line_mark_α:       mov              r11, 128
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00031_var_α
                        .size            n00025_line_mark_bx, .-n00025_line_mark_bx
                        .type            n00031_var_bx, @function
n00031_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_var_α:             mov              r11, 129
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1168], rax          # result
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n00032_var_α
                        .size            n00031_var_bx, .-n00031_var_bx
                        .type            n00032_var_bx, @function
n00032_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_α:             mov              r11, 130
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1184], rax          # result
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n00033_binop_α
                        .size            n00032_var_bx, .-n00032_var_bx
                        .type            n00033_binop_bx, @function
n00033_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_binop_α:           mov              r11, 131
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00034_var_ref_α
                        .size            n00033_binop_bx, .-n00033_binop_bx
                        .type            n00034_var_ref_bx, @function
n00034_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n00035_lit_integer_α
                        .size            n00034_var_ref_bx, .-n00034_var_ref_bx
                        .type            n00035_lit_integer_bx, @function
n00035_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_lit_integer_α:     mov              r11, 133
                        mov              qword ptr [rbp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_401_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n00036_deref_α
.Llit_integer_α_401_0:  .quad            2
                        .size            n00035_lit_integer_bx, .-n00035_lit_integer_bx
                        .type            n00036_deref_bx, @function
n00036_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_deref_α:           mov              r11, 134
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00037_line_mark_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00038_line_mark_α
                        .size            n00036_deref_bx, .-n00036_deref_bx
                        .type            n00038_line_mark_bx, @function
n00038_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_line_mark_α:       mov              r11, 135
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00039_call_icon_α
                        .size            n00038_line_mark_bx, .-n00038_line_mark_bx
                        .type            n00039_call_icon_bx, @function
n00039_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_call_icon_α:       mov              r11, 136
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn406:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn406]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    n00037_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00040_binop_α
n00039_call_icon_β:       mov              r11, 136;                            jmp   n00037_line_mark_α
                        .size            n00039_call_icon_bx, .-n00039_call_icon_bx
                        .type            n00040_binop_bx, @function
n00040_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_binop_α:           mov              r11, 137
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00041_assign_α
                        .size            n00040_binop_bx, .-n00040_binop_bx
                        .type            n00041_assign_bx, @function
n00041_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_assign_α:          mov              r11, 138
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [r9 + 176], rax            # show__STATIC__diamondmap
                        mov              qword ptr [r9 + 184], rdx;           jmp   n00037_line_mark_α
                        .size            n00041_assign_bx, .-n00041_assign_bx
                        .type            n00037_line_mark_bx, @function
n00037_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_line_mark_α:       mov              r11, 139
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00042_var_ref_α
                        .size            n00037_line_mark_bx, .-n00037_line_mark_bx
                        .type            n00042_var_ref_bx, @function
n00042_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00043_lit_integer_α
                        .size            n00042_var_ref_bx, .-n00042_var_ref_bx
                        .type            n00043_lit_integer_bx, @function
n00043_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_413_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00044_deref_α
.Llit_integer_α_413_0:  .quad            2
                        .size            n00043_lit_integer_bx, .-n00043_lit_integer_bx
                        .type            n00044_deref_bx, @function
n00044_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_deref_α:           mov              r11, 142
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00045_line_mark_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00046_line_mark_α
                        .size            n00044_deref_bx, .-n00044_deref_bx
                        .type            n00046_line_mark_bx, @function
n00046_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_line_mark_α:       mov              r11, 143
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00047_call_icon_α
                        .size            n00046_line_mark_bx, .-n00046_line_mark_bx
                        .type            n00047_call_icon_bx, @function
n00047_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_call_icon_α:       mov              r11, 144
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn418:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn418]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n00045_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00048_var_α
n00047_call_icon_β:       mov              r11, 144;                            jmp   n00045_line_mark_α
                        .size            n00047_call_icon_bx, .-n00047_call_icon_bx
                        .type            n00048_var_bx, @function
n00048_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_α:             mov              r11, 145
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1088], rax          # result
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00049_binop_α
                        .size            n00048_var_bx, .-n00048_var_bx
                        .type            n00049_binop_bx, @function
n00049_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_binop_α:           mov              r11, 146
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00050_var_α
                        .size            n00049_binop_bx, .-n00049_binop_bx
                        .type            n00050_var_bx, @function
n00050_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_var_α:             mov              r11, 147
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1104], rax          # result
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00051_binop_α
                        .size            n00050_var_bx, .-n00050_var_bx
                        .type            n00051_binop_bx, @function
n00051_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_binop_α:           mov              r11, 148
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00052_assign_α
                        .size            n00051_binop_bx, .-n00051_binop_bx
                        .type            n00052_assign_bx, @function
n00052_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_assign_α:          mov              r11, 149
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [r9 + 192], rax            # show__STATIC__heartmap
                        mov              qword ptr [r9 + 200], rdx;           jmp   n00045_line_mark_α
                        .size            n00052_assign_bx, .-n00052_assign_bx
                        .type            n00045_line_mark_bx, @function
n00045_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_line_mark_α:       mov              r11, 150
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00053_var_ref_α
                        .size            n00045_line_mark_bx, .-n00045_line_mark_bx
                        .type            n00053_var_ref_bx, @function
n00053_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00054_lit_integer_α
                        .size            n00053_var_ref_bx, .-n00053_var_ref_bx
                        .type            n00054_lit_integer_bx, @function
n00054_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_lit_integer_α:     mov              r11, 152
                        mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_428_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00055_deref_α
.Llit_integer_α_428_0:  .quad            3
                        .size            n00054_lit_integer_bx, .-n00054_lit_integer_bx
                        .type            n00055_deref_bx, @function
n00055_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_deref_α:           mov              r11, 153
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_line_mark_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00056_line_mark_α
                        .size            n00055_deref_bx, .-n00055_deref_bx
                        .type            n00056_line_mark_bx, @function
n00056_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_line_mark_α:       mov              r11, 154
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00057_call_icon_α
                        .size            n00056_line_mark_bx, .-n00056_line_mark_bx
                        .type            n00057_call_icon_bx, @function
n00057_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_call_icon_α:       mov              r11, 155
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_icon_α_rkfn433:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn433]
                        lea              rsi, [rbp + 800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    n00017_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00058_var_α
n00057_call_icon_β:       mov              r11, 155;                            jmp   n00017_line_mark_α
                        .size            n00057_call_icon_bx, .-n00057_call_icon_bx
                        .type            n00058_var_bx, @function
n00058_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:             mov              r11, 156
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 896], rax           # result
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00059_binop_α
                        .size            n00058_var_bx, .-n00058_var_bx
                        .type            n00059_binop_bx, @function
n00059_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_binop_α:           mov              r11, 157
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00060_assign_α
                        .size            n00059_binop_bx, .-n00059_binop_bx
                        .type            n00060_assign_bx, @function
n00060_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_assign_α:          mov              r11, 158
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [r9 + 208], rax            # show__STATIC__spademap
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00061_conjunction_α
                        .size            n00060_assign_bx, .-n00060_assign_bx
                        .type            n00061_conjunction_bx, @function
n00061_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_conjunction_α:     mov              r11, 159
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax;          jmp   .Ldisjunction_γ_289_as
n00061_conjunction_β:     mov              r11, 159;                            jmp   n00017_line_mark_α
                        .size            n00061_conjunction_bx, .-n00061_conjunction_bx
                        .type            n00017_line_mark_bx, @function
n00017_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_line_mark_α:       mov              r11, 160
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 104;            jmp   n00062_lit_string_α
                        .size            n00017_line_mark_bx, .-n00017_line_mark_bx
                        .type            n00062_lit_string_bx, @function
n00062_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_440_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00063_var_ref_α
.Llit_string_α_440_0:   .quad            .Llit_string_α_440_0_s
.Llit_string_α_440_0_s: .string          "S: "
                        .size            n00062_lit_string_bx, .-n00062_lit_string_bx
                        .type            n00063_var_ref_bx, @function
n00063_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00064_var_α
                        .size            n00063_var_ref_bx, .-n00063_var_ref_bx
                        .type            n00064_var_bx, @function
n00064_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_α:             mov              r11, 163
                        mov              rax, qword ptr [r9 + 208]            # show__STATIC__spademap
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rbp + 224], rax           # result
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00065_deref_α
                        .size            n00064_var_bx, .-n00064_var_bx
                        .type            n00065_deref_bx, @function
n00065_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_deref_α:           mov              r11, 164
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00066_line_mark_α
                        .size            n00065_deref_bx, .-n00065_deref_bx
                        .type            n00066_line_mark_bx, @function
n00066_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_line_mark_α:       mov              r11, 165
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 105;            jmp   n00067_call_proc_staged_α
                        .size            n00066_line_mark_bx, .-n00066_line_mark_bx
                        .type            n00067_call_proc_staged_bx, @function
n00067_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_call_proc_staged_α:
                        mov              r11, 166
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 224]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_448_2
.Lcall_proc_staged_α_448_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_448_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
.Lcall_proc_staged_α_448_29:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00068_deref_α
n00067_call_proc_staged_β:
                        mov              r11, 166;                            jmp   show_ω
.Lcall_proc_staged_β_448_0:
                        .quad            .Lcall_proc_staged_β_448_0_s
.Lcall_proc_staged_β_448_0_s:
                        .string          "arrange"
                        .size            n00067_call_proc_staged_bx, .-n00067_call_proc_staged_bx
                        .type            n00068_deref_bx, @function
n00068_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_deref_α:           mov              r11, 167
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00069_binop_α
                        .size            n00068_deref_bx, .-n00068_deref_bx
                        .type            n00069_binop_bx, @function
n00069_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_binop_α:           mov              r11, 168
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00070_lit_string_α
                        .size            n00069_binop_bx, .-n00069_binop_bx
                        .type            n00070_lit_string_bx, @function
n00070_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_451_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00071_var_ref_α
.Llit_string_α_451_0:   .quad            .Llit_string_α_451_0_s
.Llit_string_α_451_0_s: .string          "H: "
                        .size            n00070_lit_string_bx, .-n00070_lit_string_bx
                        .type            n00071_var_ref_bx, @function
n00071_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00072_var_α
                        .size            n00071_var_ref_bx, .-n00071_var_ref_bx
                        .type            n00072_var_bx, @function
n00072_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_var_α:             mov              r11, 171
                        mov              rax, qword ptr [r9 + 192]            # show__STATIC__heartmap
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rbp + 368], rax           # result
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00073_deref_α
                        .size            n00072_var_bx, .-n00072_var_bx
                        .type            n00073_deref_bx, @function
n00073_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_deref_α:           mov              r11, 172
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00074_line_mark_α
                        .size            n00073_deref_bx, .-n00073_deref_bx
                        .type            n00074_line_mark_bx, @function
n00074_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_line_mark_α:       mov              r11, 173
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 106;            jmp   n00075_call_proc_staged_α
                        .size            n00074_line_mark_bx, .-n00074_line_mark_bx
                        .type            n00075_call_proc_staged_bx, @function
n00075_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_call_proc_staged_α:
                        mov              r11, 174
                        lea              rsi, [rbp + 384]
                        lea              rdx, [rbp + 368]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_459_2
.Lcall_proc_staged_α_459_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_459_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
.Lcall_proc_staged_α_459_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00076_deref_α
n00075_call_proc_staged_β:
                        mov              r11, 174;                            jmp   show_ω
.Lcall_proc_staged_β_459_0:
                        .quad            .Lcall_proc_staged_β_459_0_s
.Lcall_proc_staged_β_459_0_s:
                        .string          "arrange"
                        .size            n00075_call_proc_staged_bx, .-n00075_call_proc_staged_bx
                        .type            n00076_deref_bx, @function
n00076_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_deref_α:           mov              r11, 175
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00077_binop_α
                        .size            n00076_deref_bx, .-n00076_deref_bx
                        .type            n00077_binop_bx, @function
n00077_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_binop_α:           mov              r11, 176
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00078_lit_string_α
                        .size            n00077_binop_bx, .-n00077_binop_bx
                        .type            n00078_lit_string_bx, @function
n00078_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_462_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00079_var_ref_α
.Llit_string_α_462_0:   .quad            .Llit_string_α_462_0_s
.Llit_string_α_462_0_s: .string          "D: "
                        .size            n00078_lit_string_bx, .-n00078_lit_string_bx
                        .type            n00079_var_ref_bx, @function
n00079_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00080_var_α
                        .size            n00079_var_ref_bx, .-n00079_var_ref_bx
                        .type            n00080_var_bx, @function
n00080_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              r11, 179
                        mov              rax, qword ptr [r9 + 176]            # show__STATIC__diamondmap
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 512], rax           # result
                        mov              qword ptr [rbp + 520], rdx;          jmp   n00081_deref_α
                        .size            n00080_var_bx, .-n00080_var_bx
                        .type            n00081_deref_bx, @function
n00081_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_deref_α:           mov              r11, 180
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00082_line_mark_α
                        .size            n00081_deref_bx, .-n00081_deref_bx
                        .type            n00082_line_mark_bx, @function
n00082_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_line_mark_α:       mov              r11, 181
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00083_call_proc_staged_α
                        .size            n00082_line_mark_bx, .-n00082_line_mark_bx
                        .type            n00083_call_proc_staged_bx, @function
n00083_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_call_proc_staged_α:
                        mov              r11, 182
                        lea              rsi, [rbp + 528]
                        lea              rdx, [rbp + 512]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_470_2
.Lcall_proc_staged_α_470_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_470_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
.Lcall_proc_staged_α_470_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00084_deref_α
n00083_call_proc_staged_β:
                        mov              r11, 182;                            jmp   show_ω
.Lcall_proc_staged_β_470_0:
                        .quad            .Lcall_proc_staged_β_470_0_s
.Lcall_proc_staged_β_470_0_s:
                        .string          "arrange"
                        .size            n00083_call_proc_staged_bx, .-n00083_call_proc_staged_bx
                        .type            n00084_deref_bx, @function
n00084_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_deref_α:           mov              r11, 183
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00085_binop_α
                        .size            n00084_deref_bx, .-n00084_deref_bx
                        .type            n00085_binop_bx, @function
n00085_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_binop_α:           mov              r11, 184
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00086_lit_string_α
                        .size            n00085_binop_bx, .-n00085_binop_bx
                        .type            n00086_lit_string_bx, @function
n00086_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_lit_string_α:      mov              r11, 185
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00087_var_ref_α
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          "C: "
                        .size            n00086_lit_string_bx, .-n00086_lit_string_bx
                        .type            n00087_var_ref_bx, @function
n00087_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00088_var_α
                        .size            n00087_var_ref_bx, .-n00087_var_ref_bx
                        .type            n00088_var_bx, @function
n00088_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_var_α:             mov              r11, 187
                        mov              rax, qword ptr [r9 + 160]            # show__STATIC__clubmap
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rbp + 656], rax           # result
                        mov              qword ptr [rbp + 664], rdx;          jmp   n00089_deref_α
                        .size            n00088_var_bx, .-n00088_var_bx
                        .type            n00089_deref_bx, @function
n00089_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_deref_α:           mov              r11, 188
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00090_line_mark_α
                        .size            n00089_deref_bx, .-n00089_deref_bx
                        .type            n00090_line_mark_bx, @function
n00090_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_line_mark_α:       mov              r11, 189
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00091_call_proc_staged_α
                        .size            n00090_line_mark_bx, .-n00090_line_mark_bx
                        .type            n00091_call_proc_staged_bx, @function
n00091_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_call_proc_staged_α:
                        mov              r11, 190
                        lea              rsi, [rbp + 672]
                        lea              rdx, [rbp + 656]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_481_2
.Lcall_proc_staged_α_481_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_481_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
.Lcall_proc_staged_α_481_29:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00092_deref_α
n00091_call_proc_staged_β:
                        mov              r11, 190;                            jmp   show_ω
.Lcall_proc_staged_β_481_0:
                        .quad            .Lcall_proc_staged_β_481_0_s
.Lcall_proc_staged_β_481_0_s:
                        .string          "arrange"
                        .size            n00091_call_proc_staged_bx, .-n00091_call_proc_staged_bx
                        .type            n00092_deref_bx, @function
n00092_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_deref_α:           mov              r11, 191
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00093_binop_α
                        .size            n00092_deref_bx, .-n00092_deref_bx
                        .type            n00093_binop_bx, @function
n00093_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_binop_α:           mov              r11, 192
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00094_make_list_α
                        .size            n00093_binop_bx, .-n00093_binop_bx
                        .type            n00094_make_list_bx, @function
n00094_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_make_list_α:       mov              r11, 193
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:57
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00095_return_α
                        .size            n00094_make_list_bx, .-n00094_make_list_bx
                        .type            n00095_return_bx, @function
n00095_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_return_α:          mov              r11, 194
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   show_γ
                        .size            n00095_return_bx, .-n00095_return_bx
#-----------------------------------------------------------------------------------------------------------------------
show_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
show_β:
                                                                              jmp   show_ω
#-----------------------------------------------------------------------------------------------------------------------
show_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 1664]
                        mov              rbp, qword ptr [rbp + 1656];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 1664]
                        mov              rbp, qword ptr [rbp + 1656];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
show_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lshow_α_487_3]
                        push             rcx
                        lea              rcx, [rip + .Lshow_α_487_2]
                        push             rcx;                                 jmp   FN__show
.Lshow_α_487_2:         add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshow_α_487_3:         add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_show:
                        .quad            7148172037466
                        .quad            34359738432
                        .quad            .Lgcmap_show_s
                        .quad            1584
                        .quad            3
                        .quad            791648371998720
                        .quad            17596481012432
                        .quad            932385860354784
.Lgcmap_show_s:         .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
FN__arrange:
                        sub              rsp, 528
                        lea              rax, [rip + .Lgcmap_arrange]
                        mov              qword ptr [rsp + 440], rax
                        mov              dword ptr [rsp + 432], 160
                        mov              dword ptr [rsp + 436], 528
                        mov              eax, 0
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 432
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm488:      .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm488]
                        mov              esi, 2
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Larrange_α_487_247:    mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
arrange_α_body:
                        .type            n00096_line_mark_bx, @function
n00096_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_line_mark_α:       mov              r11, 195
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_508_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00097_var_ref_α
.Lline_mark_α_508_0:    .quad            .Lline_mark_α_508_0_s
.Lline_mark_α_508_0_s:  .string          "deal.icn"
                        .size            n00096_line_mark_bx, .-n00096_line_mark_bx
                        .type            n00097_var_ref_bx, @function
n00097_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00098_var_ref_α
                        .size            n00097_var_ref_bx, .-n00097_var_ref_bx
                        .type            n00098_var_ref_bx, @function
n00098_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # deckimage
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00099_var_ref_α
                        .size            n00098_var_ref_bx, .-n00098_var_ref_bx
                        .type            n00099_var_ref_bx, @function
n00099_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00100_deref_α
                        .size            n00099_var_ref_bx, .-n00099_var_ref_bx
                        .type            n00100_deref_bx, @function
n00100_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_deref_α:           mov              r11, 199
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00101_deref_α
                        .size            n00100_deref_bx, .-n00100_deref_bx
                        .type            n00101_deref_bx, @function
n00101_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_deref_α:           mov              r11, 200
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00102_deref_α
                        .size            n00101_deref_bx, .-n00101_deref_bx
                        .type            n00102_deref_bx, @function
n00102_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_deref_α:           mov              r11, 201
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00103_line_mark_α
                        .size            n00102_deref_bx, .-n00102_deref_bx
                        .type            n00103_line_mark_bx, @function
n00103_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_line_mark_α:       mov              r11, 202
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00104_call_icon_α
                        .size            n00103_line_mark_bx, .-n00103_line_mark_bx
                        .type            n00104_call_icon_bx, @function
n00104_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_call_icon_α:       mov              r11, 203
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn521:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn521]
                        lea              rsi, [rbp + 160]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    arrange_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00105_lit_charset_α
n00104_call_icon_β:       mov              r11, 203;                            jmp   arrange_ω
                        .size            n00104_call_icon_bx, .-n00104_call_icon_bx
                        .type            n00105_lit_charset_bx, @function
n00105_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_lit_charset_α:     mov              r11, 204
                        mov              qword ptr [rbp + 320], 2             # result
                        mov              dword ptr [rbp + 324], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_522_0]
                        mov              qword ptr [rbp + 328], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_522_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00106_binop_α
.Llit_charset_α_522_0:  .quad            .Llit_charset_α_522_0_s
.Llit_charset_α_522_0_s:
                        .string          " "
                        .size            n00105_lit_charset_bx, .-n00105_lit_charset_bx
                        .type            n00106_binop_bx, @function
n00106_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_binop_α:           mov              r11, 205
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00107_var_ref_α
                        .size            n00106_binop_bx, .-n00106_binop_bx
                        .type            n00107_var_ref_bx, @function
n00107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                      # denom
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00108_var_ref_α
                        .size            n00107_var_ref_bx, .-n00107_var_ref_bx
                        .type            n00108_var_ref_bx, @function
n00108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # rank
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00109_deref_α
                        .size            n00108_var_ref_bx, .-n00108_var_ref_bx
                        .type            n00109_deref_bx, @function
n00109_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_deref_α:           mov              r11, 208
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00110_deref_α
                        .size            n00109_deref_bx, .-n00109_deref_bx
                        .type            n00110_deref_bx, @function
n00110_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_deref_α:           mov              r11, 209
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00111_line_mark_α
                        .size            n00110_deref_bx, .-n00110_deref_bx
                        .type            n00111_line_mark_bx, @function
n00111_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_line_mark_α:       mov              r11, 210
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00112_call_icon_α
                        .size            n00111_line_mark_bx, .-n00111_line_mark_bx
                        .type            n00112_call_icon_bx, @function
n00112_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_call_icon_α:       mov              r11, 211
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn533:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn533]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    arrange_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00113_return_α
n00112_call_icon_β:       mov              r11, 211;                            jmp   arrange_ω
                        .size            n00112_call_icon_bx, .-n00112_call_icon_bx
                        .type            n00113_return_bx, @function
n00113_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_return_α:          mov              r11, 212
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   arrange_γ
                        .size            n00113_return_bx, .-n00113_return_bx
#-----------------------------------------------------------------------------------------------------------------------
arrange_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
arrange_β:
                                                                              jmp   arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
arrange_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 528]
                        mov              rbp, qword ptr [rbp + 520];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
arrange_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 528]
                        mov              rbp, qword ptr [rbp + 520];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
arrange_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Larrange_α_535_3]
                        push             rcx
                        lea              rcx, [rip + .Larrange_α_535_2]
                        push             rcx;                                 jmp   FN__arrange
.Larrange_α_535_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Larrange_α_535_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_arrange:
                        .quad            2269089189210
                        .quad            34359738448
                        .quad            .Lgcmap_arrange_s
                        .quad            432
                        .quad            1
                        .quad            474989023199232
.Lgcmap_arrange_s:      .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3712
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3496], rax
                        mov              dword ptr [rsp + 3488], 160
                        mov              dword ptr [rsp + 3492], 3712
                        mov              eax, 0
                        mov              qword ptr [rsp + 3704], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 3488
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 8
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm536:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm536]
                        mov              esi, 2
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Loptions_α_535_247:    mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
options_α_body:
                        .type            n00114_line_mark_bx, @function
n00114_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_line_mark_α:       mov              r11, 213
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 121
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_694_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00115_line_mark_α
.Lline_mark_α_694_0:    .quad            .Lline_mark_α_694_0_s
.Lline_mark_α_694_0_s:  .string          "deal.icn"
                        .size            n00114_line_mark_bx, .-n00114_line_mark_bx
                        .type            n00115_line_mark_bx, @function
n00115_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_line_mark_α:       mov              r11, 214
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00116_var_ref_α
                        .size            n00115_line_mark_bx, .-n00115_line_mark_bx
                        .type            n00116_var_ref_bx, @function
n00116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n00117_nulltest_var_α
                        .size            n00116_var_ref_bx, .-n00116_var_ref_bx
                        .type            n00117_nulltest_var_bx, @function
n00117_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_nulltest_var_α:    mov              r11, 216
                        mov              eax, dword ptr [rbp + 3184]
                        cmp              al, 104;                             je    n00118_line_mark_α
                        mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00118_line_mark_α
                        cmp              eax, 0;                              jne   n00118_line_mark_α
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3208], rax
                        push             rax                                  # gc_poll bb_unop.cpp:55
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00119_lit_charset_α
                        .size            n00117_nulltest_var_bx, .-n00117_nulltest_var_bx
                        .type            n00119_lit_charset_bx, @function
n00119_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_lit_charset_α:     mov              r11, 217
                        mov              qword ptr [rbp + 3280], 2            # result
                        mov              dword ptr [rbp + 3284], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_700_0]
                        mov              qword ptr [rbp + 3288], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_700_0]
                        mov              rsi, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00120_line_mark_α
.Llit_charset_α_700_0:  .quad            .Llit_charset_α_700_0_s
.Llit_charset_α_700_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00119_lit_charset_bx, .-n00119_lit_charset_bx
                        .type            n00120_line_mark_bx, @function
n00120_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_line_mark_α:       mov              r11, 218
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00121_call_icon_α
                        .size            n00120_line_mark_bx, .-n00120_line_mark_bx
                        .type            n00121_call_icon_bx, @function
n00121_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_call_icon_α:       mov              r11, 219
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3256], rax
                        .section         .rodata
.Lcall_icon_α_rkfn704:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn704]
                        lea              rsi, [rbp + 3248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    n00118_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00122_assign_var_α
n00121_call_icon_β:       mov              r11, 219;                            jmp   n00118_line_mark_α
                        .size            n00121_call_icon_bx, .-n00121_call_icon_bx
                        .type            n00122_assign_var_bx, @function
n00122_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_assign_var_α:      mov              r11, 220
                        mov              rdi, qword ptr [rbp + 3200]
                        mov              rsi, qword ptr [rbp + 3208]
                        mov              rdx, qword ptr [rbp + 3232]
                        mov              rcx, qword ptr [rbp + 3240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00118_line_mark_α
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00118_line_mark_α
                        .size            n00122_assign_var_bx, .-n00122_assign_var_bx
                        .type            n00118_line_mark_bx, @function
n00118_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_line_mark_α:       mov              r11, 221
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00123_line_mark_α
                        .size            n00118_line_mark_bx, .-n00118_line_mark_bx
                        .type            n00123_line_mark_bx, @function
n00123_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_line_mark_α:       mov              r11, 222
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00124_call_icon_α
                        .size            n00123_line_mark_bx, .-n00123_line_mark_bx
                        .type            n00124_call_icon_bx, @function
n00124_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_icon_α:       mov              r11, 223
                        .section         .rodata
.Lcall_icon_α_rkfn711:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn711]
                        lea              rsi, [rbp + 3152]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              al, 104;                             je    n00125_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00126_assign_α
n00124_call_icon_β:       mov              r11, 223;                            jmp   n00125_line_mark_α
                        .size            n00124_call_icon_bx, .-n00124_call_icon_bx
                        .type            n00126_assign_bx, @function
n00126_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_assign_α:          mov              r11, 224
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx;         jmp   n00125_line_mark_α
                        .size            n00126_assign_bx, .-n00126_assign_bx
                        .type            n00125_line_mark_bx, @function
n00125_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_line_mark_α:       mov              r11, 225
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00127_make_list_α
                        .size            n00125_line_mark_bx, .-n00125_line_mark_bx
                        .type            n00127_make_list_bx, @function
n00127_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_make_list_α:       mov              r11, 226
                        lea              rdi, [rbp + 3120]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:57
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00128_assign_α
                        .size            n00127_make_list_bx, .-n00127_make_list_bx
                        .type            n00128_assign_bx, @function
n00128_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_assign_α:          mov              r11, 227
                        mov              rax, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n00129_line_mark_α
                        .size            n00128_assign_bx, .-n00128_assign_bx
                        .type            n00129_line_mark_bx, @function
n00129_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_line_mark_α:       mov              r11, 228
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00130_var_ref_α
                        .size            n00129_line_mark_bx, .-n00129_line_mark_bx
                        .type            n00130_var_ref_bx, @function
n00130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00131_deref_α
                        .size            n00130_var_ref_bx, .-n00130_var_ref_bx
                        .type            n00131_deref_bx, @function
n00131_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_deref_α:           mov              r11, 230
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00132_line_mark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00133_line_mark_α
                        .size            n00131_deref_bx, .-n00131_deref_bx
                        .type            n00133_line_mark_bx, @function
n00133_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_line_mark_α:       mov              r11, 231
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00134_call_icon_α
                        .size            n00133_line_mark_bx, .-n00133_line_mark_bx
                        .type            n00134_call_icon_bx, @function
n00134_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_call_icon_α:       mov              r11, 232
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lcall_icon_α_rkfn726:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn726]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    n00132_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00135_assign_α
n00134_call_icon_β:       mov              r11, 232;                            jmp   n00132_line_mark_α
                        .size            n00134_call_icon_bx, .-n00134_call_icon_bx
                        .type            n00135_assign_bx, @function
n00135_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_assign_α:          mov              r11, 233
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n00136_var_α
                        .size            n00135_assign_bx, .-n00135_assign_bx
                        .type            n00136_var_bx, @function
n00136_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3080], rax;         jmp   n00137_scan_enter_α
                        .size            n00136_var_bx, .-n00136_var_bx
                        .type            n00137_scan_enter_bx, @function
n00137_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_scan_enter_α:      mov              r11, 235
                        mov              qword ptr [rbp + 400], r13
                        mov              qword ptr [rbp + 408], r14
                        mov              qword ptr [rbp + 416], r15
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], edx
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    n00130_var_ref_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00138_disjunction_α
                        .size            n00137_scan_enter_bx, .-n00137_scan_enter_bx
                        .type            n00138_disjunction_bx, @function
n00138_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_disjunction_α:     mov              r11, 236
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0;            jmp   n00139_lit_string_α
.Ldisjunction_γ_560_as: mov              r11, 236
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_733_0
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00140_scan_α
.Ldisjunction_α_733_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_733_1
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00140_scan_α
.Ldisjunction_α_733_1:                                                        jmp   n00140_scan_α
n00138_disjunction_β:     mov              r11, 236
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0;                              je    n00141_disjunction_β
                                                                              jmp   n00142_scan_α
.Ldisjunction_γ_560_af: mov              r11, 236
.Ldisjunction_ω_560_af: mov              r11, 236
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1;                              je    n00143_var_ref_α
                                                                              jmp   n00142_scan_α
                        .size            n00138_disjunction_bx, .-n00138_disjunction_bx
                        .type            n00140_scan_bx, @function
n00140_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_scan_α:            mov              r11, 237
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 400]
                        mov              r14, qword ptr [rbp + 408]
                        mov              r15, qword ptr [rbp + 416];          jmp   n00130_var_ref_α
n00140_scan_β:            mov              r11, 237
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n00138_disjunction_β
                                                                              jmp   n00130_var_ref_α
                        .size            n00140_scan_bx, .-n00140_scan_bx
                        .type            n00144_conjunction_bx, @function
n00144_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_conjunction_α:     mov              r11, 238;                            jmp   .Ldisjunction_γ_560_as
n00144_conjunction_β:     mov              r11, 238;                            jmp   n00142_scan_α
                        .size            n00144_conjunction_bx, .-n00144_conjunction_bx
                        .type            n00143_var_ref_bx, @function
n00143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n00145_var_ref_α
n00143_var_ref_β:         mov              r11, 239;                            jmp   n00142_scan_α
                        .size            n00143_var_ref_bx, .-n00143_var_ref_bx
                        .type            n00145_var_ref_bx, @function
n00145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00146_deref_α
                        .size            n00145_var_ref_bx, .-n00145_var_ref_bx
                        .type            n00146_deref_bx, @function
n00146_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_deref_α:           mov              r11, 241
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00142_scan_α
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00147_deref_α
                        .size            n00146_deref_bx, .-n00146_deref_bx
                        .type            n00147_deref_bx, @function
n00147_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_deref_α:           mov              r11, 242
                        mov              rdi, qword ptr [rbp + 3024]
                        mov              rsi, qword ptr [rbp + 3032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00142_scan_α
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00148_line_mark_α
                        .size            n00147_deref_bx, .-n00147_deref_bx
                        .type            n00148_line_mark_bx, @function
n00148_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_line_mark_α:       mov              r11, 243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 146;            jmp   n00149_call_icon_α
                        .size            n00148_line_mark_bx, .-n00148_line_mark_bx
                        .type            n00149_call_icon_bx, @function
n00149_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_call_icon_α:       mov              r11, 244
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lcall_icon_α_rkfn746:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn746]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              al, 104;                             je    n00142_scan_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_560_as
n00149_call_icon_β:       mov              r11, 244;                            jmp   n00142_scan_α
                        .size            n00149_call_icon_bx, .-n00149_call_icon_bx
                        .type            n00139_lit_string_bx, @function
n00139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_747_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n00150_scan_match_α
n00139_lit_string_β:      mov              r11, 245;                            jmp   .Ldisjunction_ω_560_af
.Llit_string_α_747_0:   .quad            .Llit_string_α_747_0_s
.Llit_string_α_747_0_s: .string          "-"
                        .size            n00139_lit_string_bx, .-n00139_lit_string_bx
                        .type            n00150_scan_match_bx, @function
n00150_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_scan_match_α:      mov              r11, 246
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_560_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_749_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_560_af
                        mov              qword ptr [rbp + 2880], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2888], rax;         jmp   n00151_scan_tab_α
.Lscan_match_α_749_0:   .quad            .Lscan_match_α_749_0_s
.Lscan_match_α_749_0_s: .string          "-"
                        .size            n00150_scan_match_bx, .-n00150_scan_match_bx
                        .type            n00151_scan_tab_bx, @function
n00151_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_scan_tab_α:        mov              r11, 247
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_560_af
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_751_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_751_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_560_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_560_af
                        mov              qword ptr [rbp + 2864], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n00152_lit_integer_α
n00151_scan_tab_β:        mov              r11, 247
                        mov              r14, qword ptr [rbp + 2864];         jmp   .Ldisjunction_ω_560_af
                        .size            n00151_scan_tab_bx, .-n00151_scan_tab_bx
                        .type            n00152_lit_integer_bx, @function
n00152_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_integer_α:     mov              r11, 248
                        mov              qword ptr [rbp + 2832], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_752_0]
                        mov              qword ptr [rbp + 2840], rax;         jmp   n00153_line_mark_α
.Llit_integer_α_752_0:  .quad            0
                        .size            n00152_lit_integer_bx, .-n00152_lit_integer_bx
                        .type            n00153_line_mark_bx, @function
n00153_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_line_mark_α:       mov              r11, 249
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00154_scan_pos_α
                        .size            n00153_line_mark_bx, .-n00153_line_mark_bx
                        .type            n00154_scan_pos_bx, @function
n00154_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_scan_pos_α:        mov              r11, 250
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_756_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_756_0:     cmp              rax, 1;                              jl    n00155_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00155_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00155_var_α
                        mov              qword ptr [rbp + 2800], 3
                        mov              qword ptr [rbp + 2808], rax;         jmp   n00151_scan_tab_β
                        .size            n00154_scan_pos_bx, .-n00154_scan_pos_bx
                        .type            n00155_var_bx, @function
n00155_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_var_α:             mov              r11, 251
                        mov              qword ptr [rbp + 2784], 0
                        mov              qword ptr [rbp + 2792], 0;           jmp   n00156_conjunction_α
n00155_var_β:             mov              r11, 251;                            jmp   n00151_scan_tab_β
                        .size            n00155_var_bx, .-n00155_var_bx
                        .type            n00156_conjunction_bx, @function
n00156_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_conjunction_α:     mov              r11, 252
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2776], rax;         jmp   n00157_line_mark_α
n00156_conjunction_β:     mov              r11, 252;                            jmp   .Ldisjunction_ω_560_af
                        .size            n00156_conjunction_bx, .-n00156_conjunction_bx
                        .type            n00157_line_mark_bx, @function
n00157_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_line_mark_α:       mov              r11, 253
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00158_disjunction_α
                        .size            n00157_line_mark_bx, .-n00157_line_mark_bx
                        .type            n00158_disjunction_bx, @function
n00158_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_disjunction_α:     mov              r11, 254
                        mov              qword ptr [rbp + 2528], 0
                        mov              qword ptr [rbp + 2536], 0
                        mov              dword ptr [rbp + 2544], 0;           jmp   n00159_lit_string_α
.Ldisjunction_γ_578_as: mov              r11, 254
                        mov              eax, dword ptr [rbp + 2544]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_762_0
                                                                              jmp   n00160_line_mark_α
.Ldisjunction_α_762_0:                                                        jmp   n00160_line_mark_α
n00158_disjunction_β:     mov              r11, 254
                        mov              eax, dword ptr [rbp + 2544];         jmp   n00160_line_mark_α
.Ldisjunction_γ_578_af: mov              r11, 254
.Ldisjunction_ω_578_af: mov              r11, 254
                        add              dword ptr [rbp + 2544], 1
                        mov              eax, dword ptr [rbp + 2544];         jmp   n00160_line_mark_α
                        .size            n00158_disjunction_bx, .-n00158_disjunction_bx
                        .type            n00160_line_mark_bx, @function
n00160_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_line_mark_α:       mov              r11, 255
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00161_lit_integer_α
                        .size            n00160_line_mark_bx, .-n00160_line_mark_bx
                        .type            n00161_lit_integer_bx, @function
n00161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:     mov              r11, 256
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_765_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00162_line_mark_α
.Llit_integer_α_765_0:  .quad            1
                        .size            n00161_lit_integer_bx, .-n00161_lit_integer_bx
                        .type            n00162_line_mark_bx, @function
n00162_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_line_mark_α:       mov              r11, 257
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00163_scan_move_α
                        .size            n00162_line_mark_bx, .-n00162_line_mark_bx
                        .type            n00163_scan_move_bx, @function
n00163_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_move_α:       mov              r11, 258
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00142_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00142_scan_α
                        mov              qword ptr [rbp + 544], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00164_assign_α
n00163_scan_move_β:       mov              r11, 258
                        mov              r14, qword ptr [rbp + 544];          jmp   n00142_scan_α
                        .size            n00163_scan_move_bx, .-n00163_scan_move_bx
                        .type            n00164_assign_bx, @function
n00164_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_assign_α:          mov              r11, 259
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n00141_disjunction_α
                        .size            n00164_assign_bx, .-n00164_assign_bx
                        .type            n00141_disjunction_bx, @function
n00141_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_disjunction_α:     mov              r11, 260
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0;            jmp   n00165_var_ref_α
.Ldisjunction_γ_584_as: mov              r11, 260
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_772_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00161_lit_integer_α
.Ldisjunction_α_772_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_772_1
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00161_lit_integer_α
.Ldisjunction_α_772_1:                                                        jmp   n00161_lit_integer_α
n00141_disjunction_β:     mov              r11, 260
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              je    n00166_disjunction_β
                                                                              jmp   n00161_lit_integer_α
.Ldisjunction_γ_584_af: mov              r11, 260
.Ldisjunction_ω_584_af: mov              r11, 260
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1;                              je    n00167_lit_string_α
                                                                              jmp   n00161_lit_integer_α
                        .size            n00141_disjunction_bx, .-n00141_disjunction_bx
                        .type            n00167_lit_string_bx, @function
n00167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rbp + 2448], 2            # result
                        mov              dword ptr [rbp + 2452], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_773_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n00168_var_ref_α
n00167_lit_string_β:      mov              r11, 261;                            jmp   n00161_lit_integer_α
.Llit_string_α_773_0:   .quad            .Llit_string_α_773_0_s
.Llit_string_α_773_0_s: .string          "Unrecognized option: -"
                        .size            n00167_lit_string_bx, .-n00167_lit_string_bx
                        .type            n00168_var_ref_bx, @function
n00168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_var_ref_α:         mov              r11, 262
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n00169_deref_α
                        .size            n00168_var_ref_bx, .-n00168_var_ref_bx
                        .type            n00169_deref_bx, @function
n00169_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_deref_α:           mov              r11, 263
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00161_lit_integer_α
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00170_line_mark_α
                        .size            n00169_deref_bx, .-n00169_deref_bx
                        .type            n00170_line_mark_bx, @function
n00170_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_line_mark_α:       mov              r11, 264
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 144;            jmp   n00171_call_icon_α
                        .size            n00170_line_mark_bx, .-n00170_line_mark_bx
                        .type            n00171_call_icon_bx, @function
n00171_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_call_icon_α:       mov              r11, 265
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn780:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn780]
                        lea              rsi, [rbp + 2400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    n00161_lit_integer_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_584_as
n00171_call_icon_β:       mov              r11, 265;                            jmp   n00161_lit_integer_α
                        .size            n00171_call_icon_bx, .-n00171_call_icon_bx
                        .type            n00165_var_ref_bx, @function
n00165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n00172_var_ref_α
n00165_var_ref_β:         mov              r11, 266;                            jmp   .Ldisjunction_ω_584_af
                        .size            n00165_var_ref_bx, .-n00165_var_ref_bx
                        .type            n00172_var_ref_bx, @function
n00172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n00173_deref_α
                        .size            n00172_var_ref_bx, .-n00172_var_ref_bx
                        .type            n00173_deref_bx, @function
n00173_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_deref_α:           mov              r11, 268
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_584_af
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00174_deref_α
                        .size            n00173_deref_bx, .-n00173_deref_bx
                        .type            n00174_deref_bx, @function
n00174_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_deref_α:           mov              r11, 269
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_584_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00175_line_mark_α
                        .size            n00174_deref_bx, .-n00174_deref_bx
                        .type            n00175_line_mark_bx, @function
n00175_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_line_mark_α:       mov              r11, 270
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00176_call_builtin_gen_α
                        .size            n00175_line_mark_bx, .-n00175_line_mark_bx
                        .type            n00176_call_builtin_gen_bx, @function
n00176_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_call_builtin_gen_α:
                        mov              r11, 271
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2248], rax
                        mov              qword ptr [rbp + 2272], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_789_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn271: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn271]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 2
                        lea              rcx, [rbp + 2272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen_strict@PLT
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_584_af
                                                                              jmp   n00177_lit_integer_α
n00176_call_builtin_gen_β:
                        mov              r11, 271;                            jmp   .Lcall_builtin_gen_α_789_60
                        .size            n00176_call_builtin_gen_bx, .-n00176_call_builtin_gen_bx
                        .type            n00177_lit_integer_bx, @function
n00177_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_lit_integer_α:     mov              r11, 272
                        mov              qword ptr [rbp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_790_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n00178_coerce_numeric_α
.Llit_integer_α_790_0:  .quad            1
                        .size            n00177_lit_integer_bx, .-n00177_lit_integer_bx
                        .type            n00178_coerce_numeric_bx, @function
n00178_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_coerce_numeric_α:  mov              r11, 273
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_792_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_792_0
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_792_0
.Lcoerce_numeric_α_792_1:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n00179_binop_α
.Lcoerce_numeric_α_792_0:
                        lea              rdi, [rbp + 2224]
                        lea              rsi, [rbp + 2368]
                        lea              rdx, [rbp + 2208]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2208]
                        cmp              al, 104;                             je    .Ldisjunction_ω_584_af
                                                                              jmp   n00179_binop_α
                        .size            n00178_coerce_numeric_bx, .-n00178_coerce_numeric_bx
                        .type            n00179_binop_bx, @function
n00179_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_binop_α:           mov              r11, 274
                        mov              eax, dword ptr [rbp + 2208]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_793_2
                        mov              rax, qword ptr [rbp + 2216]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_793_0
                        mov              qword ptr [rbp + 2192], 3
                        mov              qword ptr [rbp + 2200], rax;         jmp   .Lbinop_α_793_7
.Lbinop_α_793_2:        and              edx, 1;                              jz    .Lbinop_α_793_0
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_793_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_793_4
.Lbinop_α_793_3:        movq             xmm0, rsi
.Lbinop_α_793_4:        cmp              cl, 5;                               je    .Lbinop_α_793_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_793_6
.Lbinop_α_793_5:        movq             xmm1, rdi
.Lbinop_α_793_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_793_0
                        mov              qword ptr [rbp + 2192], 5
                        mov              qword ptr [rbp + 2200], rax
.Lbinop_α_793_7:                                                              jmp   n00180_assign_α
.Lbinop_α_793_0:        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_584_af
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00180_assign_α
                        .size            n00179_binop_bx, .-n00179_binop_bx
                        .type            n00180_assign_bx, @function
n00180_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_assign_α:          mov              r11, 275
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n00181_var_ref_α
                        .size            n00180_assign_bx, .-n00180_assign_bx
                        .type            n00181_var_ref_bx, @function
n00181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00182_var_α
                        .size            n00181_var_ref_bx, .-n00181_var_ref_bx
                        .type            n00182_var_bx, @function
n00182_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_var_α:             mov              r11, 277
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00183_subscript_α
                        .size            n00182_var_bx, .-n00182_var_bx
                        .type            n00183_subscript_bx, @function
n00183_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_subscript_α:       mov              r11, 278
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00161_lit_integer_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00166_disjunction_α
                        .size            n00183_subscript_bx, .-n00183_subscript_bx
                        .type            n00166_disjunction_bx, @function
n00166_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_disjunction_α:     mov              r11, 279
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0;            jmp   n00184_lit_charset_α
.Ldisjunction_γ_603_as: mov              r11, 279
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_801_0
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00185_assign_var_α
.Ldisjunction_α_801_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_801_1
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00185_assign_var_α
.Ldisjunction_α_801_1:                                                        jmp   n00185_assign_var_α
n00166_disjunction_β:     mov              r11, 279
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              je    n00161_lit_integer_α
                                                                              jmp   n00161_lit_integer_α
.Ldisjunction_γ_603_af: mov              r11, 279
.Ldisjunction_ω_603_af: mov              r11, 279
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 1;                              je    n00186_lit_integer_α
                                                                              jmp   n00161_lit_integer_α
                        .size            n00166_disjunction_bx, .-n00166_disjunction_bx
                        .type            n00185_assign_var_bx, @function
n00185_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_assign_var_α:      mov              r11, 280
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00161_lit_integer_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_584_as
n00185_assign_var_β:      mov              r11, 280;                            jmp   n00161_lit_integer_α
                        .size            n00185_assign_var_bx, .-n00185_assign_var_bx
                        .type            n00186_lit_integer_bx, @function
n00186_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_lit_integer_α:     mov              r11, 281
                        mov              qword ptr [rbp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_803_0]
                        mov              qword ptr [rbp + 2184], rax;         jmp   .Ldisjunction_γ_603_as
n00186_lit_integer_β:     mov              r11, 281;                            jmp   n00161_lit_integer_α
.Llit_integer_α_803_0:  .quad            1
                        .size            n00186_lit_integer_bx, .-n00186_lit_integer_bx
                        .type            n00184_lit_charset_bx, @function
n00184_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_lit_charset_α:     mov              r11, 282
                        mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_804_0]
                        mov              qword ptr [rbp + 2056], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_804_0]
                        mov              rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00187_var_ref_α
n00184_lit_charset_β:     mov              r11, 282;                            jmp   .Ldisjunction_ω_603_af
.Llit_charset_α_804_0:  .quad            .Llit_charset_α_804_0_s
.Llit_charset_α_804_0_s:
                        .string          "+.:"
                        .size            n00184_lit_charset_bx, .-n00184_lit_charset_bx
                        .type            n00187_var_ref_bx, @function
n00187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n00188_var_α
                        .size            n00187_var_ref_bx, .-n00187_var_ref_bx
                        .type            n00188_var_bx, @function
n00188_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_α:             mov              r11, 284
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n00189_subscript_α
                        .size            n00188_var_bx, .-n00188_var_bx
                        .type            n00189_subscript_bx, @function
n00189_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_subscript_α:       mov              r11, 285
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2096]
                        mov              rcx, qword ptr [rbp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_603_af
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00190_deref_α
                        .size            n00189_subscript_bx, .-n00189_subscript_bx
                        .type            n00190_deref_bx, @function
n00190_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_deref_α:           mov              r11, 286
                        mov              rdi, qword ptr [rbp + 2112]
                        mov              rsi, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_603_af
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00191_assign_α
                        .size            n00190_deref_bx, .-n00190_deref_bx
                        .type            n00191_assign_bx, @function
n00191_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_assign_α:          mov              r11, 287
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n00192_var_ref_α
                        .size            n00191_assign_bx, .-n00191_assign_bx
                        .type            n00192_var_ref_bx, @function
n00192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n00193_deref_α
                        .size            n00192_var_ref_bx, .-n00192_var_ref_bx
                        .type            n00193_deref_bx, @function
n00193_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_deref_α:           mov              r11, 289
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_603_af
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00194_line_mark_α
                        .size            n00193_deref_bx, .-n00193_deref_bx
                        .type            n00194_line_mark_bx, @function
n00194_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_line_mark_α:       mov              r11, 290
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 132;            jmp   n00195_call_icon_α
                        .size            n00194_line_mark_bx, .-n00194_line_mark_bx
                        .type            n00195_call_icon_bx, @function
n00195_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_call_icon_α:       mov              r11, 291
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lcall_icon_α_bynamefn291: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn291]
                        lea              rsi, [rbp + 2000]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    .Ldisjunction_ω_603_af
                                                                              jmp   n00196_line_mark_α
n00195_call_icon_β:       mov              r11, 291;                            jmp   .Ldisjunction_ω_603_af
                        .size            n00195_call_icon_bx, .-n00195_call_icon_bx
                        .type            n00196_line_mark_bx, @function
n00196_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_line_mark_α:       mov              r11, 292
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00197_disjunction_α
                        .size            n00196_line_mark_bx, .-n00196_line_mark_bx
                        .type            n00197_disjunction_bx, @function
n00197_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_disjunction_α:     mov              r11, 293
                        mov              qword ptr [rbp + 1616], 0
                        mov              qword ptr [rbp + 1624], 0
                        mov              dword ptr [rbp + 1632], 0;           jmp   n00198_lit_string_α
.Ldisjunction_γ_617_as: mov              r11, 293
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_821_0
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n00199_assign_α
.Ldisjunction_α_821_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_821_1
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n00199_assign_α
.Ldisjunction_α_821_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_821_2
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n00199_assign_α
.Ldisjunction_α_821_2:                                                        jmp   n00199_assign_α
n00197_disjunction_β:     mov              r11, 293
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0;                              je    n00200_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_617_af
                                                                              jmp   .Ldisjunction_ω_617_af
.Ldisjunction_γ_617_af: mov              r11, 293
.Ldisjunction_ω_617_af: mov              r11, 293
                        add              dword ptr [rbp + 1632], 1
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 1;                              je    n00201_var_ref_α
                        cmp              eax, 2;                              je    n00202_lit_string_α
                                                                              jmp   n00203_line_mark_α
                        .size            n00197_disjunction_bx, .-n00197_disjunction_bx
                        .type            n00199_assign_bx, @function
n00199_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_assign_α:          mov              r11, 294
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx;         jmp   n00203_line_mark_α
                        .size            n00199_assign_bx, .-n00199_assign_bx
                        .type            n00203_line_mark_bx, @function
n00203_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_line_mark_α:       mov              r11, 295
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 135;            jmp   n00204_var_α
                        .size            n00203_line_mark_bx, .-n00203_line_mark_bx
                        .type            n00204_var_bx, @function
n00204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_α:             mov              r11, 296
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00205_lit_string_α
                        .size            n00204_var_bx, .-n00204_var_bx
                        .type            n00205_lit_string_bx, @function
n00205_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rbp + 1504], 2            # result
                        mov              dword ptr [rbp + 1508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_827_0]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n00206_call_builtin_α
.Llit_string_α_827_0:   .quad            .Llit_string_α_827_0_s
.Llit_string_α_827_0_s: .string          ":"
                        .size            n00205_lit_string_bx, .-n00205_lit_string_bx
                        .type            n00206_call_builtin_bx, @function
n00206_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_call_builtin_α:    mov              r11, 298
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn829: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn829]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n00207_lit_string_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00208_var_α
n00206_call_builtin_β:    mov              r11, 298;                            jmp   n00207_lit_string_α
                        .size            n00206_call_builtin_bx, .-n00206_call_builtin_bx
                        .type            n00208_var_bx, @function
n00208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_var_α:             mov              r11, 299
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00209_assign_α
                        .size            n00208_var_bx, .-n00208_var_bx
                        .type            n00209_assign_bx, @function
n00209_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00210_var_α
                        .size            n00209_assign_bx, .-n00209_assign_bx
                        .type            n00207_lit_string_bx, @function
n00207_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_lit_string_α:      mov              r11, 301
                        mov              qword ptr [rbp + 1136], 2            # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_833_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00211_call_builtin_α
.Llit_string_α_833_0:   .quad            .Llit_string_α_833_0_s
.Llit_string_α_833_0_s: .string          "+"
                        .size            n00207_lit_string_bx, .-n00207_lit_string_bx
                        .type            n00211_call_builtin_bx, @function
n00211_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_builtin_α:    mov              r11, 302
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn835: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn835]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    n00212_lit_string_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00213_disjunction_α
n00211_call_builtin_β:    mov              r11, 302;                            jmp   n00212_lit_string_α
                        .size            n00211_call_builtin_bx, .-n00211_call_builtin_bx
                        .type            n00213_disjunction_bx, @function
n00213_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_disjunction_α:     mov              r11, 303
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0;           jmp   n00214_var_ref_α
.Ldisjunction_γ_627_as: mov              r11, 303
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_837_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00215_assign_α
.Ldisjunction_α_837_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_837_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00215_assign_α
.Ldisjunction_α_837_1:                                                        jmp   n00215_assign_α
n00213_disjunction_β:     mov              r11, 303
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_627_af
                                                                              jmp   .Ldisjunction_ω_627_af
.Ldisjunction_γ_627_af: mov              r11, 303
.Ldisjunction_ω_627_af: mov              r11, 303
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1;                              je    n00216_lit_string_α
                                                                              jmp   n00161_lit_integer_α
                        .size            n00213_disjunction_bx, .-n00213_disjunction_bx
                        .type            n00215_assign_bx, @function
n00215_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00210_var_α
                        .size            n00215_assign_bx, .-n00215_assign_bx
                        .type            n00216_lit_string_bx, @function
n00216_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_lit_string_α:      mov              r11, 305
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_839_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00217_var_ref_α
n00216_lit_string_β:      mov              r11, 305;                            jmp   .Ldisjunction_ω_627_af
.Llit_string_α_839_0:   .quad            .Llit_string_α_839_0_s
.Llit_string_α_839_0_s: .string          "-"
                        .size            n00216_lit_string_bx, .-n00216_lit_string_bx
                        .type            n00217_var_ref_bx, @function
n00217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n00218_lit_string_α
                        .size            n00217_var_ref_bx, .-n00217_var_ref_bx
                        .type            n00218_lit_string_bx, @function
n00218_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_lit_string_α:      mov              r11, 307
                        mov              qword ptr [rbp + 1408], 2            # result
                        mov              dword ptr [rbp + 1412], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_842_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n00219_deref_α
.Llit_string_α_842_0:   .quad            .Llit_string_α_842_0_s
.Llit_string_α_842_0_s: .string          " needs numeric parameter"
                        .size            n00218_lit_string_bx, .-n00218_lit_string_bx
                        .type            n00219_deref_bx, @function
n00219_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_deref_α:           mov              r11, 308
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_627_af
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00220_line_mark_α
                        .size            n00219_deref_bx, .-n00219_deref_bx
                        .type            n00220_line_mark_bx, @function
n00220_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_line_mark_α:       mov              r11, 309
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00221_call_icon_α
                        .size            n00220_line_mark_bx, .-n00220_line_mark_bx
                        .type            n00221_call_icon_bx, @function
n00221_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_call_icon_α:       mov              r11, 310
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lcall_icon_α_rkfn847:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn847]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_627_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_627_as
n00221_call_icon_β:       mov              r11, 310;                            jmp   .Ldisjunction_ω_627_af
                        .size            n00221_call_icon_bx, .-n00221_call_icon_bx
                        .type            n00214_var_ref_bx, @function
n00214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00222_deref_α
n00214_var_ref_β:         mov              r11, 311;                            jmp   .Ldisjunction_ω_627_af
                        .size            n00214_var_ref_bx, .-n00214_var_ref_bx
                        .type            n00222_deref_bx, @function
n00222_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_deref_α:           mov              r11, 312
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_627_af
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00223_line_mark_α
                        .size            n00222_deref_bx, .-n00222_deref_bx
                        .type            n00223_line_mark_bx, @function
n00223_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_line_mark_α:       mov              r11, 313
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 137;            jmp   n00224_call_icon_α
                        .size            n00223_line_mark_bx, .-n00223_line_mark_bx
                        .type            n00224_call_icon_bx, @function
n00224_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_call_icon_α:       mov              r11, 314
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn854:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn854]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_627_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_627_as
n00224_call_icon_β:       mov              r11, 314;                            jmp   .Ldisjunction_ω_627_af
                        .size            n00224_call_icon_bx, .-n00224_call_icon_bx
                        .type            n00212_lit_string_bx, @function
n00212_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_lit_string_α:      mov              r11, 315
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_855_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00225_call_builtin_α
.Llit_string_α_855_0:   .quad            .Llit_string_α_855_0_s
.Llit_string_α_855_0_s: .string          "."
                        .size            n00212_lit_string_bx, .-n00212_lit_string_bx
                        .type            n00225_call_builtin_bx, @function
n00225_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_call_builtin_α:    mov              r11, 316
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn857: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn857]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n00161_lit_integer_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00226_disjunction_α
n00225_call_builtin_β:    mov              r11, 316;                            jmp   n00161_lit_integer_α
                        .size            n00225_call_builtin_bx, .-n00225_call_builtin_bx
                        .type            n00226_disjunction_bx, @function
n00226_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_disjunction_α:     mov              r11, 317
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0;            jmp   n00227_var_ref_α
.Ldisjunction_γ_641_as: mov              r11, 317
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_859_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00228_assign_α
.Ldisjunction_α_859_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_859_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00228_assign_α
.Ldisjunction_α_859_1:                                                        jmp   n00228_assign_α
n00226_disjunction_β:     mov              r11, 317
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_641_af
                                                                              jmp   .Ldisjunction_ω_641_af
.Ldisjunction_γ_641_af: mov              r11, 317
.Ldisjunction_ω_641_af: mov              r11, 317
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1;                              je    n00229_lit_string_α
                                                                              jmp   n00161_lit_integer_α
                        .size            n00226_disjunction_bx, .-n00226_disjunction_bx
                        .type            n00228_assign_bx, @function
n00228_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_assign_α:          mov              r11, 318
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00210_var_α
                        .size            n00228_assign_bx, .-n00228_assign_bx
                        .type            n00210_var_bx, @function
n00210_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_var_α:             mov              r11, 319
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00230_conjunction_α
                        .size            n00210_var_bx, .-n00210_var_bx
                        .type            n00230_conjunction_bx, @function
n00230_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_conjunction_α:     mov              r11, 320
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax;          jmp   .Ldisjunction_γ_603_as
n00230_conjunction_β:     mov              r11, 320;                            jmp   n00161_lit_integer_α
                        .size            n00230_conjunction_bx, .-n00230_conjunction_bx
                        .type            n00229_lit_string_bx, @function
n00229_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_864_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00231_var_ref_α
n00229_lit_string_β:      mov              r11, 321;                            jmp   .Ldisjunction_ω_641_af
.Llit_string_α_864_0:   .quad            .Llit_string_α_864_0_s
.Llit_string_α_864_0_s: .string          "-"
                        .size            n00229_lit_string_bx, .-n00229_lit_string_bx
                        .type            n00231_var_ref_bx, @function
n00231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n00232_lit_string_α
                        .size            n00231_var_ref_bx, .-n00231_var_ref_bx
                        .type            n00232_lit_string_bx, @function
n00232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rbp + 1040], 2            # result
                        mov              dword ptr [rbp + 1044], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_867_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n00233_deref_α
.Llit_string_α_867_0:   .quad            .Llit_string_α_867_0_s
.Llit_string_α_867_0_s: .string          " needs numeric parameter"
                        .size            n00232_lit_string_bx, .-n00232_lit_string_bx
                        .type            n00233_deref_bx, @function
n00233_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_deref_α:           mov              r11, 324
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_641_af
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00234_line_mark_α
                        .size            n00233_deref_bx, .-n00233_deref_bx
                        .type            n00234_line_mark_bx, @function
n00234_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_line_mark_α:       mov              r11, 325
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 140;            jmp   n00235_call_icon_α
                        .size            n00234_line_mark_bx, .-n00234_line_mark_bx
                        .type            n00235_call_icon_bx, @function
n00235_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_call_icon_α:       mov              r11, 326
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lcall_icon_α_rkfn872:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn872]
                        lea              rsi, [rbp + 928]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_641_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_641_as
n00235_call_icon_β:       mov              r11, 326;                            jmp   .Ldisjunction_ω_641_af
                        .size            n00235_call_icon_bx, .-n00235_call_icon_bx
                        .type            n00227_var_ref_bx, @function
n00227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00236_deref_α
n00227_var_ref_β:         mov              r11, 327;                            jmp   .Ldisjunction_ω_641_af
                        .size            n00227_var_ref_bx, .-n00227_var_ref_bx
                        .type            n00236_deref_bx, @function
n00236_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_deref_α:           mov              r11, 328
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_641_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00237_line_mark_α
                        .size            n00236_deref_bx, .-n00236_deref_bx
                        .type            n00237_line_mark_bx, @function
n00237_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_line_mark_α:       mov              r11, 329
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00238_call_icon_α
                        .size            n00237_line_mark_bx, .-n00237_line_mark_bx
                        .type            n00238_call_icon_bx, @function
n00238_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_call_icon_α:       mov              r11, 330
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_icon_α_rkfn879:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn879]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_641_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_641_as
n00238_call_icon_β:       mov              r11, 330;                            jmp   .Ldisjunction_ω_641_af
                        .size            n00238_call_icon_bx, .-n00238_call_icon_bx
                        .type            n00202_lit_string_bx, @function
n00202_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rbp + 1904], 2            # result
                        mov              dword ptr [rbp + 1908], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_880_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n00239_var_ref_α
n00202_lit_string_β:      mov              r11, 331;                            jmp   .Ldisjunction_ω_617_af
.Llit_string_α_880_0:   .quad            .Llit_string_α_880_0_s
.Llit_string_α_880_0_s: .string          "No parameter following -"
                        .size            n00202_lit_string_bx, .-n00202_lit_string_bx
                        .type            n00239_var_ref_bx, @function
n00239_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n00240_deref_α
                        .size            n00239_var_ref_bx, .-n00239_var_ref_bx
                        .type            n00240_deref_bx, @function
n00240_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_deref_α:           mov              r11, 333
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              rsi, qword ptr [rbp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_617_af
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00241_line_mark_α
                        .size            n00240_deref_bx, .-n00240_deref_bx
                        .type            n00241_line_mark_bx, @function
n00241_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_line_mark_α:       mov              r11, 334
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00242_call_icon_α
                        .size            n00241_line_mark_bx, .-n00241_line_mark_bx
                        .type            n00242_call_icon_bx, @function
n00242_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_call_icon_α:       mov              r11, 335
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lcall_icon_α_rkfn887:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn887]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_617_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_617_as
n00242_call_icon_β:       mov              r11, 335;                            jmp   .Ldisjunction_ω_617_af
                        .size            n00242_call_icon_bx, .-n00242_call_icon_bx
                        .type            n00201_var_ref_bx, @function
n00201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n00243_deref_α
n00201_var_ref_β:         mov              r11, 336;                            jmp   .Ldisjunction_ω_617_af
                        .size            n00201_var_ref_bx, .-n00201_var_ref_bx
                        .type            n00243_deref_bx, @function
n00243_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_deref_α:           mov              r11, 337
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_617_af
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00244_line_mark_α
                        .size            n00243_deref_bx, .-n00243_deref_bx
                        .type            n00244_line_mark_bx, @function
n00244_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_line_mark_α:       mov              r11, 338
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00245_call_icon_α
                        .size            n00244_line_mark_bx, .-n00244_line_mark_bx
                        .type            n00245_call_icon_bx, @function
n00245_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_call_icon_α:       mov              r11, 339
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lcall_icon_α_rkfn894:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn894]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_617_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_617_as
n00245_call_icon_β:       mov              r11, 339;                            jmp   .Ldisjunction_ω_617_af
                        .size            n00245_call_icon_bx, .-n00245_call_icon_bx
                        .type            n00198_lit_string_bx, @function
n00198_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_lit_string_α:      mov              r11, 340
                        mov              qword ptr [rbp + 1664], 2            # result
                        mov              dword ptr [rbp + 1668], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_895_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n00246_lit_integer_α
n00198_lit_string_β:      mov              r11, 340;                            jmp   .Ldisjunction_ω_617_af
.Llit_string_α_895_0:   .quad            .Llit_string_α_895_0_s
.Llit_string_α_895_0_s: .string          ""
                        .size            n00198_lit_string_bx, .-n00198_lit_string_bx
                        .type            n00246_lit_integer_bx, @function
n00246_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_lit_integer_α:     mov              r11, 341
                        mov              qword ptr [rbp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_896_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n00247_line_mark_α
.Llit_integer_α_896_0:  .quad            0
                        .size            n00246_lit_integer_bx, .-n00246_lit_integer_bx
                        .type            n00247_line_mark_bx, @function
n00247_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_line_mark_α:       mov              r11, 342
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00200_scan_tab_α
                        .size            n00247_line_mark_bx, .-n00247_line_mark_bx
                        .type            n00200_scan_tab_bx, @function
n00200_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_scan_tab_α:        mov              r11, 343
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_900_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_900_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_617_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_617_af
                        mov              qword ptr [rbp + 1712], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n00248_binop_test_α
n00200_scan_tab_β:        mov              r11, 343
                        mov              r14, qword ptr [rbp + 1712];         jmp   .Ldisjunction_ω_617_af
                        .size            n00200_scan_tab_bx, .-n00200_scan_tab_bx
                        .type            n00248_binop_test_bx, @function
n00248_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_binop_test_α:      mov              r11, 344
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00200_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        push             rax                                  # gc_poll bb_binop_relop.cpp:110
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_617_as
n00248_binop_test_β:      mov              r11, 344;                            jmp   n00200_scan_tab_β
                        .size            n00248_binop_test_bx, .-n00248_binop_test_bx
                        .type            n00142_scan_bx, @function
n00142_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_scan_α:            mov              r11, 345
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 400]
                        mov              r14, qword ptr [rbp + 408]
                        mov              r15, qword ptr [rbp + 416];          jmp   n00130_var_ref_α
n00142_scan_β:            mov              r11, 345;                            jmp   n00130_var_ref_α
                        .size            n00142_scan_bx, .-n00142_scan_bx
                        .type            n00159_lit_string_bx, @function
n00159_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rbp + 2720], 2            # result
                        mov              dword ptr [rbp + 2724], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_904_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n00249_scan_match_α
n00159_lit_string_β:      mov              r11, 346;                            jmp   .Ldisjunction_ω_578_af
.Llit_string_α_904_0:   .quad            .Llit_string_α_904_0_s
.Llit_string_α_904_0_s: .string          "-"
                        .size            n00159_lit_string_bx, .-n00159_lit_string_bx
                        .type            n00249_scan_match_bx, @function
n00249_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_scan_match_α:      mov              r11, 347
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_578_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_906_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_578_af
                        mov              qword ptr [rbp + 2688], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2696], rax;         jmp   n00250_scan_tab_α
.Lscan_match_α_906_0:   .quad            .Lscan_match_α_906_0_s
.Lscan_match_α_906_0_s: .string          "-"
                        .size            n00249_scan_match_bx, .-n00249_scan_match_bx
                        .type            n00250_scan_tab_bx, @function
n00250_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_scan_tab_α:        mov              r11, 348
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_578_af
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_908_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_908_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_578_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_578_af
                        mov              qword ptr [rbp + 2672], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx;         jmp   n00251_lit_integer_α
n00250_scan_tab_β:        mov              r11, 348
                        mov              r14, qword ptr [rbp + 2672];         jmp   .Ldisjunction_ω_578_af
                        .size            n00250_scan_tab_bx, .-n00250_scan_tab_bx
                        .type            n00251_lit_integer_bx, @function
n00251_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_lit_integer_α:     mov              r11, 349
                        mov              qword ptr [rbp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_909_0]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n00252_line_mark_α
.Llit_integer_α_909_0:  .quad            0
                        .size            n00251_lit_integer_bx, .-n00251_lit_integer_bx
                        .type            n00252_line_mark_bx, @function
n00252_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_line_mark_α:       mov              r11, 350
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00253_scan_pos_α
                        .size            n00252_line_mark_bx, .-n00252_line_mark_bx
                        .type            n00253_scan_pos_bx, @function
n00253_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_scan_pos_α:        mov              r11, 351
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_913_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_913_0:     cmp              rax, 1;                              jl    n00250_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00250_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00250_scan_tab_β
                        mov              qword ptr [rbp + 2608], 3
                        mov              qword ptr [rbp + 2616], rax;         jmp   n00254_conjunction_α
                        .size            n00253_scan_pos_bx, .-n00253_scan_pos_bx
                        .type            n00254_conjunction_bx, @function
n00254_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_conjunction_α:     mov              r11, 352
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2600], rax;         jmp   n00255_scan_α
n00254_conjunction_β:     mov              r11, 352;                            jmp   .Ldisjunction_ω_578_af
                        .size            n00254_conjunction_bx, .-n00254_conjunction_bx
                        .type            n00255_scan_bx, @function
n00255_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_scan_α:            mov              r11, 353
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 400]
                        mov              r14, qword ptr [rbp + 408]
                        mov              r15, qword ptr [rbp + 416];          jmp   n00256_var_α
n00255_scan_β:            mov              r11, 353;                            jmp   n00256_var_α
                        .size            n00255_scan_bx, .-n00255_scan_bx
                        .type            n00256_var_bx, @function
n00256_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_var_α:             mov              r11, 354
                        mov              qword ptr [rbp + 2560], 0
                        mov              qword ptr [rbp + 2568], 0;           jmp   n00257_assign_α
n00256_var_β:             mov              r11, 354;                            jmp   n00258_var_α
                        .size            n00256_var_bx, .-n00256_var_bx
                        .type            n00257_assign_bx, @function
n00257_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_assign_α:          mov              r11, 355
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n00258_var_α
                        .size            n00257_assign_bx, .-n00257_assign_bx
                        .type            n00258_var_bx, @function
n00258_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_var_α:             mov              r11, 356
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00132_line_mark_α
                        .size            n00258_var_bx, .-n00258_var_bx
                        .type            n00132_line_mark_bx, @function
n00132_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_line_mark_α:       mov              r11, 357
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00259_var_ref_α
                        .size            n00132_line_mark_bx, .-n00132_line_mark_bx
                        .type            n00259_var_ref_bx, @function
n00259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_var_ref_α:         mov              r11, 358
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00260_var_ref_α
                        .size            n00259_var_ref_bx, .-n00259_var_ref_bx
                        .type            n00260_var_ref_bx, @function
n00260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_var_ref_α:         mov              r11, 359
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00261_deref_α
                        .size            n00260_var_ref_bx, .-n00260_var_ref_bx
                        .type            n00261_deref_bx, @function
n00261_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_deref_α:           mov              r11, 360
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00262_line_mark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00263_line_mark_α
                        .size            n00261_deref_bx, .-n00261_deref_bx
                        .type            n00263_line_mark_bx, @function
n00263_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_line_mark_α:       mov              r11, 361
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00264_call_icon_α
                        .size            n00263_line_mark_bx, .-n00263_line_mark_bx
                        .type            n00264_call_icon_bx, @function
n00264_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_call_icon_α:       mov              r11, 362
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn931:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn931]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00262_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00265_deref_α
n00264_call_icon_β:       mov              r11, 362;                            jmp   n00262_line_mark_α
                        .size            n00264_call_icon_bx, .-n00264_call_icon_bx
                        .type            n00265_deref_bx, @function
n00265_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_deref_α:           mov              r11, 363
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00262_line_mark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00266_line_mark_α
                        .size            n00265_deref_bx, .-n00265_deref_bx
                        .type            n00266_line_mark_bx, @function
n00266_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_line_mark_α:       mov              r11, 364
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00267_call_icon_α
                        .size            n00266_line_mark_bx, .-n00266_line_mark_bx
                        .type            n00267_call_icon_bx, @function
n00267_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_call_icon_α:       mov              r11, 365
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_icon_α_rkfn936:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn936]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n00262_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00259_var_ref_α
n00267_call_icon_β:       mov              r11, 365;                            jmp   n00262_line_mark_α
                        .size            n00267_call_icon_bx, .-n00267_call_icon_bx
                        .type            n00262_line_mark_bx, @function
n00262_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_line_mark_α:       mov              r11, 366
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 149;            jmp   n00268_var_α
                        .size            n00262_line_mark_bx, .-n00262_line_mark_bx
                        .type            n00268_var_bx, @function
n00268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_α:             mov              r11, 367
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00269_return_α
                        .size            n00268_var_bx, .-n00268_var_bx
                        .type            n00269_return_bx, @function
n00269_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_return_α:          mov              r11, 368
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00269_return_bx, .-n00269_return_bx
#-----------------------------------------------------------------------------------------------------------------------
options_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
options_β:
                                                                              jmp   options_ω
#-----------------------------------------------------------------------------------------------------------------------
options_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 3712]
                        mov              rbp, qword ptr [rbp + 3704];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 3712]
                        mov              rbp, qword ptr [rbp + 3704];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
options_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Loptions_α_942_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_942_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_942_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_942_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            15944265059674
                        .quad            34359738576
                        .quad            .Lgcmap_options_s
                        .quad            3488
                        .quad            32
                        .quad            439804651110400
                        .quad            8804682957200
                        .quad            26392574034328
                        .quad            52776558133680
                        .quad            17596481012192
                        .quad            52776558133744
                        .quad            17596481012256
                        .quad            52776558133808
                        .quad            17596481012320
                        .quad            87960930222704
                        .quad            17596481012416
                        .quad            105553116267216
                        .quad            17596481012528
                        .quad            387028092977984
                        .quad            17596481012896
                        .quad            474989023200432
                        .quad            17596481013344
                        .quad            70368744179312
                        .quad            17596481013424
                        .quad            598134325511872
                        .quad            17596481013984
                        .quad            281474976712944
                        .quad            17596481014256
                        .quad            123145302313472
                        .quad            17596481014384
                        .quad            17592186047104
                        .quad            17596481014416
                        .quad            158329674402464
                        .quad            17596481014576
                        .quad            17592186047296
                        .quad            17596481014608
                        .quad            633318697601888
.Lgcmap_options_s:      .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
FN__shuffle:
                        sub              rsp, 368
                        lea              rax, [rip + .Lgcmap_shuffle]
                        mov              qword ptr [rsp + 296], rax
                        mov              dword ptr [rsp + 288], 160
                        mov              dword ptr [rsp + 292], 368
                        mov              eax, 0
                        mov              qword ptr [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 288
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm943:      .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm943]
                        mov              esi, 1
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Lshuffle_α_942_247:    mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
shuffle_α_body:
                        .type            n00270_line_mark_bx, @function
n00270_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_line_mark_α:       mov              r11, 369
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 155
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_960_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00271_var_ref_α
.Lline_mark_α_960_0:    .quad            .Lline_mark_α_960_0_s
.Lline_mark_α_960_0_s:  .string          "deal.icn"
                        .size            n00270_line_mark_bx, .-n00270_line_mark_bx
                        .type            n00271_var_ref_bx, @function
n00271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_ref_α:         mov              r11, 370
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00272_deref_α
                        .size            n00271_var_ref_bx, .-n00271_var_ref_bx
                        .type            n00272_deref_bx, @function
n00272_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_deref_α:           mov              r11, 371
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00273_line_mark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00274_line_mark_α
                        .size            n00272_deref_bx, .-n00272_deref_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_line_mark_α:       mov              r11, 372
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 155;            jmp   n00275_call_icon_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00275_call_icon_bx, @function
n00275_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_call_icon_α:       mov              r11, 373
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lcall_icon_α_rkfn967:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn967]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    n00273_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00276_assign_α
n00275_call_icon_β:       mov              r11, 373;                            jmp   n00273_line_mark_α
                        .size            n00275_call_icon_bx, .-n00275_call_icon_bx
                        .type            n00276_assign_bx, @function
n00276_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_assign_α:          mov              r11, 374
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx;           jmp   n00273_line_mark_α
                        .size            n00276_assign_bx, .-n00276_assign_bx
                        .type            n00273_line_mark_bx, @function
n00273_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_line_mark_α:       mov              r11, 375
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 156;            jmp   n00277_var_ref_α
                        .size            n00273_line_mark_bx, .-n00273_line_mark_bx
                        .type            n00277_var_ref_bx, @function
n00277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_var_ref_α:         mov              r11, 376
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00278_iterate_α
                        .size            n00277_var_ref_bx, .-n00277_var_ref_bx
                        .type            n00278_iterate_bx, @function
n00278_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_iterate_α:         mov              r11, 377
                        mov              qword ptr [rbp + 80], 0
.Literate_α_974_0:      mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n00279_line_mark_α
                        push             rax                                  # gc_poll bb_iterate.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00280_var_ref_α
n00278_iterate_β:         mov              r11, 377
                        inc              qword ptr [rbp + 80];                jmp   .Literate_α_974_0
                        .size            n00278_iterate_bx, .-n00278_iterate_bx
                        .type            n00280_var_ref_bx, @function
n00280_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00281_random_α
                        .size            n00280_var_ref_bx, .-n00280_var_ref_bx
                        .type            n00281_random_bx, @function
n00281_random_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_random_α:          mov              r11, 379
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00279_line_mark_α
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        push             rax                                  # gc_poll bb_random.cpp:23
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00282_swap_var_α
                        .size            n00281_random_bx, .-n00281_random_bx
                        .type            n00282_swap_var_bx, @function
n00282_swap_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_swap_var_α:        mov              r11, 380
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_swap_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00279_line_mark_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax                                  # gc_poll bb_swap_var.cpp:24
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00278_iterate_β
                        .size            n00282_swap_var_bx, .-n00282_swap_var_bx
                        .type            n00279_line_mark_bx, @function
n00279_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_line_mark_α:       mov              r11, 381
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 157;            jmp   n00283_var_α
                        .size            n00279_line_mark_bx, .-n00279_line_mark_bx
                        .type            n00283_var_bx, @function
n00283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_var_α:             mov              r11, 382
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00284_return_α
                        .size            n00283_var_bx, .-n00283_var_bx
                        .type            n00284_return_bx, @function
n00284_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_return_α:          mov              r11, 383
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   shuffle_γ
                        .size            n00284_return_bx, .-n00284_return_bx
#-----------------------------------------------------------------------------------------------------------------------
shuffle_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
shuffle_β:
                                                                              jmp   shuffle_ω
#-----------------------------------------------------------------------------------------------------------------------
shuffle_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 368]
                        mov              rbp, qword ptr [rbp + 360];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
shuffle_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 368]
                        mov              rbp, qword ptr [rbp + 360];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
shuffle_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lshuffle_α_984_3]
                        push             rcx
                        lea              rcx, [rip + .Lshuffle_α_984_2]
                        push             rcx;                                 jmp   FN__shuffle
.Lshuffle_α_984_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshuffle_α_984_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_shuffle:
                        .quad            1581894421850
                        .quad            34359738432
                        .quad            .Lgcmap_shuffle_s
                        .quad            288
                        .quad            3
                        .quad            87960930222080
                        .quad            17596481011792
                        .quad            211106232533088
.Lgcmap_shuffle_s:      .string          "shuffle"
                        .globl           main
main:
                        push             rdi
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_stack_adopt@PLT
                        mov              rsi, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rsp + 16]
                        add              rsp, 24
                        test             rax, rax;                            jz    .Lmain_stack_kept
                        mov              rsp, rax
.Lmain_stack_kept:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
                        call             gva_register@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage_argv@PLT
                        call             rt_main_args_bind@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
                        .section         .rodata
.Lgvan0:                .string          "deck"
.Lgvan1:                .string          "deckimage"
.Lgvan2:                .string          "handsize"
.Lgvan3:                .string          "suitsize"
.Lgvan4:                .string          "denom"
.Lgvan5:                .string          "rank"
.Lgvan6:                .string          "blanker"
.Lgvan7:                .string          "display__STATIC__bar"
.Lgvan8:                .string          "display__STATIC__offset"
.Lgvan9:                .string          "display__INITFLAG__0"
.Lgvan10:               .string          "show__STATIC__clubmap"
.Lgvan11:               .string          "show__STATIC__diamondmap"
.Lgvan12:               .string          "show__STATIC__heartmap"
.Lgvan13:               .string          "show__STATIC__spademap"
.Lgvan14:               .string          "show__INITFLAG__0"
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
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1376
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1224], rax
                        mov              dword ptr [rsp + 1216], 160
                        mov              dword ptr [rsp + 1220], 1376
                        mov              eax, 0
                        mov              qword ptr [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1216
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm985:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm985]
                        mov              esi, 1
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:
.Lmain_α_984_247:       mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
main_α_body:
                        .type            n00285_line_mark_bx, @function
n00285_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_line_mark_α:       mov              r11, 384
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1052_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00286_line_mark_α
.Lline_mark_α_1052_0:   .quad            .Lline_mark_α_1052_0_s
.Lline_mark_α_1052_0_s: .string          "deal.icn"
                        .size            n00285_line_mark_bx, .-n00285_line_mark_bx
                        .type            n00286_line_mark_bx, @function
n00286_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_line_mark_α:       mov              r11, 385
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53;             jmp   n00287_lit_charset_α
                        .size            n00286_line_mark_bx, .-n00286_line_mark_bx
                        .type            n00287_lit_charset_bx, @function
n00287_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_lit_charset_α:     mov              r11, 386
                        mov              qword ptr [rbp + 1120], 2            # result
                        mov              dword ptr [rbp + 1124], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1055_0]
                        mov              qword ptr [rbp + 1128], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1055_0]
                        mov              rsi, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00288_line_mark_α
.Llit_charset_α_1055_0: .quad            .Llit_charset_α_1055_0_s
.Llit_charset_α_1055_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00287_lit_charset_bx, .-n00287_lit_charset_bx
                        .type            n00288_line_mark_bx, @function
n00288_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_line_mark_α:       mov              r11, 387
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53;             jmp   n00289_call_icon_α
                        .size            n00288_line_mark_bx, .-n00288_line_mark_bx
                        .type            n00289_call_icon_bx, @function
n00289_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_call_icon_α:       mov              r11, 388
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1059: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1059]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    n00290_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00291_assign_α
n00289_call_icon_β:       mov              r11, 388;                            jmp   n00290_line_mark_α
                        .size            n00289_call_icon_bx, .-n00289_call_icon_bx
                        .type            n00291_assign_bx, @function
n00291_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_assign_α:          mov              r11, 389
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [r9 + 16], rax             # deckimage
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n00292_assign_α
                        .size            n00291_assign_bx, .-n00291_assign_bx
                        .type            n00292_assign_bx, @function
n00292_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_assign_α:          mov              r11, 390
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00290_line_mark_α
                        .size            n00292_assign_bx, .-n00292_assign_bx
                        .type            n00290_line_mark_bx, @function
n00290_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_line_mark_α:       mov              r11, 391
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 54;             jmp   n00293_var_α
                        .size            n00290_line_mark_bx, .-n00290_line_mark_bx
                        .type            n00293_var_bx, @function
n00293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_var_α:             mov              r11, 392
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1008], rax          # result
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n00294_unop_α
                        .size            n00293_var_bx, .-n00293_var_bx
                        .type            n00294_unop_bx, @function
n00294_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_unop_α:            mov              r11, 393
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:107
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00295_lit_integer_α
                        .size            n00294_unop_bx, .-n00294_unop_bx
                        .type            n00295_lit_integer_bx, @function
n00295_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_lit_integer_α:     mov              r11, 394
                        mov              qword ptr [rbp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1066_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n00296_coerce_numeric_α
.Llit_integer_α_1066_0: .quad            4
                        .size            n00295_lit_integer_bx, .-n00295_lit_integer_bx
                        .type            n00296_coerce_numeric_bx, @function
n00296_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_coerce_numeric_α:  mov              r11, 395
                        mov              eax, dword ptr [rbp + 992]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1068_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1068_0
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1068_0
.Lcoerce_numeric_α_1068_1:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00297_binop_α
.Lcoerce_numeric_α_1068_0:
                        lea              rdi, [rbp + 992]
                        lea              rsi, [rbp + 1024]
                        lea              rdx, [rbp + 976]
                        mov              rcx, 17196646502
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 976]
                        cmp              al, 104;                             je    n00298_line_mark_α
                                                                              jmp   n00297_binop_α
                        .size            n00296_coerce_numeric_bx, .-n00296_coerce_numeric_bx
                        .type            n00297_binop_bx, @function
n00297_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_binop_α:           mov              r11, 396
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00298_line_mark_α
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00299_assign_α
                        .size            n00297_binop_bx, .-n00297_binop_bx
                        .type            n00299_assign_bx, @function
n00299_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_assign_α:          mov              r11, 397
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [r9 + 48], rax             # suitsize
                        mov              qword ptr [r9 + 56], rdx
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00300_assign_α
                        .size            n00299_assign_bx, .-n00299_assign_bx
                        .type            n00300_assign_bx, @function
n00300_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_assign_α:         mov              r11, 398
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [r9 + 32], rax             # handsize
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00298_line_mark_α
                        .size            n00300_assign_bx, .-n00300_assign_bx
                        .type            n00298_line_mark_bx, @function
n00298_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_line_mark_α:      mov              r11, 399
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 55;             jmp   n00301_lit_string_α
                        .size            n00298_line_mark_bx, .-n00298_line_mark_bx
                        .type            n00301_lit_string_bx, @function
n00301_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_lit_string_α:     mov              r11, 400
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_1074_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00302_assign_α
.Llit_string_α_1074_0:  .quad            .Llit_string_α_1074_0_s
.Llit_string_α_1074_0_s:
                        .string          "AKQJT98765432"
                        .size            n00301_lit_string_bx, .-n00301_lit_string_bx
                        .type            n00302_assign_bx, @function
n00302_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_assign_α:         mov              r11, 401
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [r9 + 80], rax             # rank
                        mov              qword ptr [r9 + 88], rdx;            jmp   n00303_line_mark_α
                        .size            n00302_assign_bx, .-n00302_assign_bx
                        .type            n00303_line_mark_bx, @function
n00303_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_line_mark_α:      mov              r11, 402
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00304_lit_string_α
                        .size            n00303_line_mark_bx, .-n00303_line_mark_bx
                        .type            n00304_lit_string_bx, @function
n00304_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_lit_string_α:     mov              r11, 403
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1078_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00305_var_ref_α
.Llit_string_α_1078_0:  .quad            .Llit_string_α_1078_0_s
.Llit_string_α_1078_0_s:
                        .string          " "
                        .size            n00304_lit_string_bx, .-n00304_lit_string_bx
                        .type            n00305_var_ref_bx, @function
n00305_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_var_ref_α:        mov              r11, 404
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # suitsize
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00306_deref_α
                        .size            n00305_var_ref_bx, .-n00305_var_ref_bx
                        .type            n00306_deref_bx, @function
n00306_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_deref_α:          mov              r11, 405
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00307_line_mark_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00308_line_mark_α
                        .size            n00306_deref_bx, .-n00306_deref_bx
                        .type            n00308_line_mark_bx, @function
n00308_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_line_mark_α:      mov              r11, 406
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00309_call_icon_α
                        .size            n00308_line_mark_bx, .-n00308_line_mark_bx
                        .type            n00309_call_icon_bx, @function
n00309_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_call_icon_α:      mov              r11, 407
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1085: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1085]
                        lea              rsi, [rbp + 768]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    n00307_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00310_assign_α
n00309_call_icon_β:      mov              r11, 407;                            jmp   n00307_line_mark_α
                        .size            n00309_call_icon_bx, .-n00309_call_icon_bx
                        .type            n00310_assign_bx, @function
n00310_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_assign_α:         mov              r11, 408
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [r9 + 96], rax             # blanker
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00307_line_mark_α
                        .size            n00310_assign_bx, .-n00310_assign_bx
                        .type            n00307_line_mark_bx, @function
n00307_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_line_mark_α:      mov              r11, 409
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00311_lit_charset_α
                        .size            n00307_line_mark_bx, .-n00307_line_mark_bx
                        .type            n00311_lit_charset_bx, @function
n00311_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_lit_charset_α:    mov              r11, 410
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1089_0]
                        mov              qword ptr [rbp + 680], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1089_0]
                        mov              rsi, 26
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00312_lit_integer_α
.Llit_charset_α_1089_0: .quad            .Llit_charset_α_1089_0_s
.Llit_charset_α_1089_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n00311_lit_charset_bx, .-n00311_lit_charset_bx
                        .type            n00312_lit_integer_bx, @function
n00312_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_lit_integer_α:    mov              r11, 411
                        mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1090_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00313_var_α
.Llit_integer_α_1090_0: .quad            1
                        .size            n00312_lit_integer_bx, .-n00312_lit_integer_bx
                        .type            n00313_var_bx, @function
n00313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_var_α:            mov              r11, 412
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + 32], rax            # result
                        mov              qword ptr [rbp + 40], rdx;           jmp   n00314_binop_α
                        .size            n00313_var_bx, .-n00313_var_bx
                        .type            n00314_binop_bx, @function
n00314_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_binop_α:          mov              r11, 413
                        mov              eax, 3
                        mov              ecx, dword ptr [rbp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1092_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rbp + 40]
                        add              rax, rdx
                        mov              qword ptr [rbp + 720], 3
                        mov              qword ptr [rbp + 728], rax;          jmp   .Lbinop_α_1092_7
.Lbinop_α_1092_2:       and              edx, 1;                              jz    .Lbinop_α_1092_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rbp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1092_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1092_4
.Lbinop_α_1092_3:       movq             xmm0, rsi
.Lbinop_α_1092_4:       cmp              cl, 5;                               je    .Lbinop_α_1092_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1092_6
.Lbinop_α_1092_5:       movq             xmm1, rdi
.Lbinop_α_1092_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1092_0
                        mov              qword ptr [rbp + 720], 5
                        mov              qword ptr [rbp + 728], rax
.Lbinop_α_1092_7:                                                             jmp   n00315_subscript_α
.Lbinop_α_1092_0:       mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             je    n00316_line_mark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00315_subscript_α
                        .size            n00314_binop_bx, .-n00314_binop_bx
                        .type            n00315_subscript_bx, @function
n00315_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_subscript_α:      mov              r11, 414
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        mov              r8, qword ptr [rbp + 720]
                        mov              r9, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00316_line_mark_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_section.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00317_assign_α
                        .size            n00315_subscript_bx, .-n00315_subscript_bx
                        .type            n00317_assign_bx, @function
n00317_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_assign_α:         mov              r11, 415
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [r9 + 64], rax             # denom
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00316_line_mark_α
                        .size            n00317_assign_bx, .-n00317_assign_bx
                        .type            n00316_line_mark_bx, @function
n00316_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_line_mark_α:      mov              r11, 416
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59;             jmp   n00318_var_ref_α
                        .size            n00316_line_mark_bx, .-n00316_line_mark_bx
                        .type            n00318_var_ref_bx, @function
n00318_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_var_ref_α:        mov              r11, 417
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00319_lit_string_α
                        .size            n00318_var_ref_bx, .-n00318_var_ref_bx
                        .type            n00319_lit_string_bx, @function
n00319_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_string_α:     mov              r11, 418
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1099_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00320_deref_α
.Llit_string_α_1099_0:  .quad            .Llit_string_α_1099_0_s
.Llit_string_α_1099_0_s:
                        .string          "h+s+"
                        .size            n00319_lit_string_bx, .-n00319_lit_string_bx
                        .type            n00320_deref_bx, @function
n00320_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_deref_α:          mov              r11, 419
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00321_line_mark_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00322_line_mark_α
                        .size            n00320_deref_bx, .-n00320_deref_bx
                        .type            n00322_line_mark_bx, @function
n00322_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_line_mark_α:      mov              r11, 420
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59;             jmp   n00323_call_proc_staged_α
                        .size            n00322_line_mark_bx, .-n00322_line_mark_bx
                        .type            n00323_call_proc_staged_bx, @function
n00323_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_call_proc_staged_α:
                        mov              r11, 421
                        lea              rsi, [rbp + 624]
                        lea              rdx, [rbp + 592]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1104_2
.Lcall_proc_staged_α_1104_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1104_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
.Lcall_proc_staged_α_1104_29:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    n00321_line_mark_α
                                                                              jmp   n00324_deref_α
n00323_call_proc_staged_β:
                        mov              r11, 421;                            jmp   n00321_line_mark_α
.Lcall_proc_staged_β_1104_0:
                        .quad            .Lcall_proc_staged_β_1104_0_s
.Lcall_proc_staged_β_1104_0_s:
                        .string          "options"
                        .size            n00323_call_proc_staged_bx, .-n00323_call_proc_staged_bx
                        .type            n00324_deref_bx, @function
n00324_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_deref_α:          mov              r11, 422
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00321_line_mark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00325_assign_α
                        .size            n00324_deref_bx, .-n00324_deref_bx
                        .type            n00325_assign_bx, @function
n00325_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_assign_α:         mov              r11, 423
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n00321_line_mark_α
                        .size            n00325_assign_bx, .-n00325_assign_bx
                        .type            n00321_line_mark_bx, @function
n00321_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_line_mark_α:      mov              r11, 424
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00326_disjunction_α
                        .size            n00321_line_mark_bx, .-n00321_line_mark_bx
                        .type            n00326_disjunction_bx, @function
n00326_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_disjunction_α:    mov              r11, 425
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0;            jmp   n00327_var_ref_α
.Ldisjunction_γ_1027_as:
                        mov              r11, 425
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1110_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00328_assign_α
.Ldisjunction_α_1110_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1110_1
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00328_assign_α
.Ldisjunction_α_1110_1:                                                       jmp   n00328_assign_α
n00326_disjunction_β:    mov              r11, 425
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1027_af
                                                                              jmp   .Ldisjunction_ω_1027_af
.Ldisjunction_γ_1027_af:
                        mov              r11, 425
.Ldisjunction_ω_1027_af:
                        mov              r11, 425
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1;                              je    n00329_lit_integer_α
                                                                              jmp   n00330_line_mark_α
                        .size            n00326_disjunction_bx, .-n00326_disjunction_bx
                        .type            n00328_assign_bx, @function
n00328_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_assign_α:         mov              r11, 426
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n00330_line_mark_α
                        .size            n00328_assign_bx, .-n00328_assign_bx
                        .type            n00330_line_mark_bx, @function
n00330_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_line_mark_α:      mov              r11, 427
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00331_var_ref_α
                        .size            n00330_line_mark_bx, .-n00330_line_mark_bx
                        .type            n00331_var_ref_bx, @function
n00331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_var_ref_α:        mov              r11, 428
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00332_lit_string_α
                        .size            n00331_var_ref_bx, .-n00331_var_ref_bx
                        .type            n00332_lit_string_bx, @function
n00332_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_lit_string_α:     mov              r11, 429
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1116_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00333_subscript_α
.Llit_string_α_1116_0:  .quad            .Llit_string_α_1116_0_s
.Llit_string_α_1116_0_s:
                        .string          "s"
                        .size            n00332_lit_string_bx, .-n00332_lit_string_bx
                        .type            n00333_subscript_bx, @function
n00333_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_subscript_α:      mov              r11, 430
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00334_line_mark_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00335_deref_α
                        .size            n00333_subscript_bx, .-n00333_subscript_bx
                        .type            n00335_deref_bx, @function
n00335_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_deref_α:          mov              r11, 431
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00334_line_mark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00336_unop_test_α
                        .size            n00335_deref_bx, .-n00335_deref_bx
                        .type            n00336_unop_test_bx, @function
n00336_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_unop_test_α:      mov              r11, 432
                        mov              eax, dword ptr [rbp + 320]
                        cmp              al, 104;                             je    n00334_line_mark_α
                        cmp              eax, 0;                              je    n00334_line_mark_α
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00337_kw_assign_α
                        .size            n00336_unop_test_bx, .-n00336_unop_test_bx
                        .type            n00337_kw_assign_bx, @function
n00337_kw_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_kw_assign_α:      mov              r11, 433
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_random_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00334_line_mark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00334_line_mark_α
                        .size            n00337_kw_assign_bx, .-n00337_kw_assign_bx
                        .type            n00334_line_mark_bx, @function
n00334_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_line_mark_α:      mov              r11, 434
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00338_lit_integer_α
                        .size            n00334_line_mark_bx, .-n00334_line_mark_bx
                        .type            n00338_lit_integer_bx, @function
n00338_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_lit_integer_α:    mov              r11, 435
                        mov              qword ptr [rbp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1123_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n00339_var_α
.Llit_integer_α_1123_0: .quad            1
                        .size            n00338_lit_integer_bx, .-n00338_lit_integer_bx
                        .type            n00339_var_bx, @function
n00339_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_var_α:            mov              r11, 436
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 104], rax;          jmp   n00340_to_α
                        .size            n00339_var_bx, .-n00339_var_bx
                        .type            n00340_to_bx, @function
n00340_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_to_α:             mov              r11, 437
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    main_ω
                        push             rax                                  # gc_poll bb_to.cpp:44
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        push             rax                                  # gc_poll bb_to.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    main_ω
                        push             rax                                  # gc_poll bb_to.cpp:44
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        push             rax                                  # gc_poll bb_to.cpp:135
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lto_α_1127_0:          mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx;                            jg    main_ω
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax;           jmp   n00341_bound_α
n00340_to_β:             mov              r11, 437
                        inc              qword ptr [rbp + 64];                jo    main_ω
                                                                              jmp   .Lto_α_1127_0
                        .size            n00340_to_bx, .-n00340_to_bx
                        .type            n00341_bound_bx, @function
n00341_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_bound_α:          mov              r11, 438
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00342_line_mark_α
                        .size            n00341_bound_bx, .-n00341_bound_bx
                        .type            n00342_line_mark_bx, @function
n00342_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_line_mark_α:      mov              r11, 439
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n00343_call_proc_staged_α
                        .size            n00342_line_mark_bx, .-n00342_line_mark_bx
                        .type            n00343_call_proc_staged_bx, @function
n00343_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_call_proc_staged_α:
                        mov              r11, 440
                        call             display_dcα;                         jmp   .Lcall_proc_staged_α_1133_2
.Lcall_proc_staged_α_1133_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1133_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
.Lcall_proc_staged_α_1133_29:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00344_unmark_α
                                                                              jmp   n00345_deref_α
n00343_call_proc_staged_β:
                        mov              r11, 440;                            jmp   n00344_unmark_α
.Lcall_proc_staged_β_1133_0:
                        .quad            .Lcall_proc_staged_β_1133_0_s
.Lcall_proc_staged_β_1133_0_s:
                        .string          "display"
                        .size            n00343_call_proc_staged_bx, .-n00343_call_proc_staged_bx
                        .type            n00345_deref_bx, @function
n00345_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_deref_α:          mov              r11, 441
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00344_unmark_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00344_unmark_α
                        .size            n00345_deref_bx, .-n00345_deref_bx
                        .type            n00344_unmark_bx, @function
n00344_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_unmark_α:         mov              r11, 442
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00340_to_β
                        .size            n00344_unmark_bx, .-n00344_unmark_bx
                        .type            n00329_lit_integer_bx, @function
n00329_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_lit_integer_α:    mov              r11, 443
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1137_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   .Ldisjunction_γ_1027_as
n00329_lit_integer_β:    mov              r11, 443;                            jmp   .Ldisjunction_ω_1027_af
.Llit_integer_α_1137_0: .quad            1
                        .size            n00329_lit_integer_bx, .-n00329_lit_integer_bx
                        .type            n00327_var_ref_bx, @function
n00327_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_var_ref_α:        mov              r11, 444
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00346_lit_string_α
n00327_var_ref_β:        mov              r11, 444;                            jmp   .Ldisjunction_ω_1027_af
                        .size            n00327_var_ref_bx, .-n00327_var_ref_bx
                        .type            n00346_lit_string_bx, @function
n00346_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_lit_string_α:     mov              r11, 445
                        mov              qword ptr [rbp + 432], 2             # result
                        mov              dword ptr [rbp + 436], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1140_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n00347_subscript_α
.Llit_string_α_1140_0:  .quad            .Llit_string_α_1140_0_s
.Llit_string_α_1140_0_s:
                        .string          "h"
                        .size            n00346_lit_string_bx, .-n00346_lit_string_bx
                        .type            n00347_subscript_bx, @function
n00347_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_subscript_α:      mov              r11, 446
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1027_af
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00348_deref_α
                        .size            n00347_subscript_bx, .-n00347_subscript_bx
                        .type            n00348_deref_bx, @function
n00348_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_deref_α:          mov              r11, 447
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1027_af
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00349_unop_test_α
                        .size            n00348_deref_bx, .-n00348_deref_bx
                        .type            n00349_unop_test_bx, @function
n00349_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_unop_test_α:      mov              r11, 448
                        mov              eax, dword ptr [rbp + 480]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1027_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1027_af
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 408], rax;          jmp   .Ldisjunction_γ_1027_as
n00349_unop_test_β:      mov              r11, 448;                            jmp   .Ldisjunction_ω_1027_af
                        .size            n00349_unop_test_bx, .-n00349_unop_test_bx
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
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            5911221456218
                        .quad            38654705808
                        .quad            .Lgcmap_main_s
                        .quad            1216
                        .quad            7
                        .quad            70368744177664
                        .quad            17596481011776
                        .quad            52776558133328
                        .quad            17596481011840
                        .quad            263882790666384
                        .quad            17596481012096
                        .quad            897201488265616
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "display"
.Lstartup_ign2:         .string          "show"
.Lstartup_ign3:         .string          "arrange"
.Lstartup_ign4:         .string          "options"
.Lstartup_ign5:         .string          "shuffle"
.Lstartup_ign6:         .string          "repl"
.Lstartup_ign7:         .string          "string"
.Lstartup_ign8:         .string          "write"
.Lstartup_ign9:         .string          "left"
.Lstartup_ign10:        .string          "push"
.Lstartup_ign11:        .string          "map"
.Lstartup_ign12:        .string          "pull"
.Lstartup_ign13:        .string          "get"
.Lstartup_ign14:        .string          "real"
.Lstartup_ign15:        .string          "stop"
.Lstartup_ign16:        .string          "integer"
.Lstartup_ign17:        .string          "any"
.Lstartup_ign18:        .string          "put"
.Lstartup_ign19:        .string          "table"
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
                        lea              rdi, [rip + .Lstartup_ign4]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign5]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign6]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign7]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign8]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign9]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign10]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign11]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign12]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign13]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign14]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign15]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign16]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign17]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign18]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign19]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_ipp00350_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00350_0
                        .quad            0
.Lstartup_iln00350_0:    .string          "hands"
.Lstartup_iln00350_1:    .string          "opts"
.Lstartup_iln00350_2:    .string          "&letters"
.Lstartup_iln00350_3:    .string          "&lcase"
.Lstartup_iln00350_4:    .string          "&random"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00350_0
                        .quad            .Lstartup_iln00350_1
                        .quad            .Lstartup_iln00350_2
                        .quad            .Lstartup_iln00350_3
                        .quad            .Lstartup_iln00350_4
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            1184
                        .long            1200
                        .long            -1
                        .long            -1
                        .long            -1
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ipnames9000]
                        mov              edx, 1
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ilnames9000]
                        mov              edx, 5
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_iloffs9000]
                        mov              edx, 5
                        call             rt_proc_set_local_offs@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "display"
.Lstartup_iln0_0:       .string          "layout"
.Lstartup_iln0_1:       .string          "i"
                        .align           8
.Lstartup_ilnames0:
                        .quad            .Lstartup_iln0_0
                        .quad            .Lstartup_iln0_1
                        .quad            0
                        .align           4
.Lstartup_iloffs0:
                        .long            2112
                        .long            2128
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__display
                        .quad            display_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2144
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_ilnames0]
                        mov              edx, 2
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_iloffs0]
                        mov              edx, 2
                        call             rt_proc_set_local_offs@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "show"
.Lstartup_ipp1_0:       .string          "hand"
                        .align           8
.Lstartup_ipnames1:
                        .quad            .Lstartup_ipp1_0
                        .quad            0
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__show
                        .quad            show_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames1
                        .long            1
                        .long            0
                        .long            1584
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_ipnames1]
                        mov              edx, 1
                        call             rt_proc_set_loc_params@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "arrange"
.Lstartup_ipp2_0:       .string          "hand"
.Lstartup_ipp2_1:       .string          "suit"
                        .align           8
.Lstartup_ipnames2:
                        .quad            .Lstartup_ipp2_0
                        .quad            .Lstartup_ipp2_1
                        .quad            0
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__arrange
                        .quad            arrange_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames2
                        .long            2
                        .long            0
                        .long            432
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_ipnames2]
                        mov              edx, 2
                        call             rt_proc_set_loc_params@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "options"
.Lstartup_ipp3_0:       .string          "arg"
.Lstartup_ipp3_1:       .string          "optstring"
                        .align           8
.Lstartup_ipnames3:
                        .quad            .Lstartup_ipp3_0
                        .quad            .Lstartup_ipp3_1
                        .quad            0
.Lstartup_iln3_0:       .string          "x"
.Lstartup_iln3_1:       .string          "i"
.Lstartup_iln3_2:       .string          "c"
.Lstartup_iln3_3:       .string          "otab"
.Lstartup_iln3_4:       .string          "flist"
.Lstartup_iln3_5:       .string          "o"
.Lstartup_iln3_6:       .string          "p"
.Lstartup_iln3_7:       .string          "&letters"
                        .align           8
.Lstartup_ilnames3:
                        .quad            .Lstartup_iln3_0
                        .quad            .Lstartup_iln3_1
                        .quad            .Lstartup_iln3_2
                        .quad            .Lstartup_iln3_3
                        .quad            .Lstartup_iln3_4
                        .quad            .Lstartup_iln3_5
                        .quad            .Lstartup_iln3_6
                        .quad            .Lstartup_iln3_7
                        .quad            0
                        .align           4
.Lstartup_iloffs3:
                        .long            3392
                        .long            3472
                        .long            3408
                        .long            3344
                        .long            3360
                        .long            3440
                        .long            3456
                        .long            -1
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__options
                        .quad            options_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames3
                        .long            2
                        .long            0
                        .long            3488
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_ipnames3]
                        mov              edx, 2
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_ilnames3]
                        mov              edx, 8
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_iloffs3]
                        mov              edx, 8
                        call             rt_proc_set_local_offs@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "shuffle"
.Lstartup_ipp4_0:       .string          "x"
                        .align           8
.Lstartup_ipnames4:
                        .quad            .Lstartup_ipp4_0
                        .quad            0
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__shuffle
                        .quad            shuffle_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames4
                        .long            1
                        .long            0
                        .long            288
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + .Lstartup_ipnames4]
                        mov              edx, 1
                        call             rt_proc_set_loc_params@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            6
                        .quad            .Lgcmap_display
                        .quad            .Lgcmap_show
                        .quad            .Lgcmap_arrange
                        .quad            .Lgcmap_options
                        .quad            .Lgcmap_shuffle
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
