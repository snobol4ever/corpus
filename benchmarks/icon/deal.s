                        .intel_syntax    noprefix
                        .text
                        .file            1 "deal.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__display:
                        sub              rsp, 2272
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2264
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_display]
                        mov              qword ptr [rsp + 2184], rax
                        mov              dword ptr [rsp + 2176], 160
                        mov              dword ptr [rsp + 2180], 2272
                        mov              eax, 0
                        mov              qword ptr [rsp + 2264], rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [rip + rt_sxt_fr_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              dword ptr [rax + 20], 1
                        mov              qword ptr [rax + 0], 0
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Ldisplay_α_0_245
                        mov              rsi, 48
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm0:          .string          "display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm0]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 0
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
                        lea              rsi, [rsp + 2272]
                        mov              qword ptr [rdi + 40], rsi
.Ldisplay_α_0_245:
display_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 72
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_117_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_117_0:    .quad            .Lline_mark_α_117_0_s
.Lline_mark_α_117_0_s:  .string          "deal.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n3_line_mark_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n4_disjunction_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_disjunction_bx, @function
n4_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              dword ptr [rbp + 1680], 0;           jmp   n5_var_α
.Ldisjunction_γ_4_as:   mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_123_0
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n26_line_mark_α
.Ldisjunction_α_123_0:                                                        jmp   n26_line_mark_α
n4_disjunction_β:       mov              eax, dword ptr [rbp + 1680];         jmp   n25_goto_β
.Ldisjunction_γ_4_af:
.Ldisjunction_ω_4_af:   add              dword ptr [rbp + 1680], 1
                        mov              eax, dword ptr [rbp + 1680];         jmp   n26_line_mark_α
                        .size            n4_disjunction_bx, .-n4_disjunction_bx
                        .type            n5_var_bx, @function
n5_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [r9 + 144]            # display__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rbp + 2080], rax          # result
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n6_unop_test_α
n5_var_β:                                                                     jmp   .Ldisjunction_ω_4_af
                        .size            n5_var_bx, .-n5_var_bx
                        .type            n6_unop_test_bx, @function
n6_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_unop_test_α:         mov              eax, dword ptr [rbp + 2080]
                        cmp              al, 104;                             je    .Ldisjunction_ω_4_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_4_af
                        mov              qword ptr [rbp + 2064], 0
                        mov              qword ptr [rbp + 2072], 0;           jmp   n7_lit_integer_α
                        .size            n6_unop_test_bx, .-n6_unop_test_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_126_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n8_assign_α
.Llit_integer_α_126_0:  .quad            1
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_assign_bx, @function
n8_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        mov              qword ptr [r9 + 144], rax            # display__INITFLAG__0
                        mov              qword ptr [r9 + 152], rdx;           jmp   n9_line_mark_α
                        .size            n8_assign_bx, .-n8_assign_bx
                        .type            n9_line_mark_bx, @function
n9_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76;             jmp   n10_lit_string_α
                        .size            n9_line_mark_bx, .-n9_line_mark_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rbp + 1888], 2            # result
                        mov              dword ptr [rbp + 1892], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_130_0]
                        mov              qword ptr [rbp + 1896], rax;         jmp   n11_lit_string_α
.Llit_string_α_130_0:   .quad            .Llit_string_α_130_0_s
.Llit_string_α_130_0_s: .string          "\n"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_lit_string_bx, @function
n11_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              qword ptr [rbp + 1984], 2            # result
                        mov              dword ptr [rbp + 1988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_131_0]
                        mov              qword ptr [rbp + 1992], rax;         jmp   n12_lit_integer_α
.Llit_string_α_131_0:   .quad            .Llit_string_α_131_0_s
.Llit_string_α_131_0_s: .string          "-"
                        .size            n11_lit_string_bx, .-n11_lit_string_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rbp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_132_0]
                        mov              qword ptr [rbp + 2024], rax;         jmp   n13_line_mark_α
.Llit_integer_α_132_0:  .quad            33
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_line_mark_bx, @function
n13_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76;             jmp   n14_call_icon_α
                        .size            n13_line_mark_bx, .-n13_line_mark_bx
                        .type            n14_call_icon_bx, @function
n14_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_icon_α:        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lcall_icon_α_rkfn136:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn136]
                        lea              rsi, [rbp + 1936]
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
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n17_line_mark_α
                                                                              jmp   n15_binop_α
n14_call_icon_β:                                                              jmp   n17_line_mark_α
                        .size            n14_call_icon_bx, .-n14_call_icon_bx
                        .type            n15_binop_bx, @function
n15_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
n16_assign_α:           mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [r9 + 112], rax            # display__STATIC__bar
                        mov              qword ptr [r9 + 120], rdx;           jmp   n17_line_mark_α
                        .size            n16_assign_bx, .-n16_assign_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n18_lit_string_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_lit_string_bx, @function
n18_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_141_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n19_lit_integer_α
.Llit_string_α_141_0:   .quad            .Llit_string_α_141_0_s
.Llit_string_α_141_0_s: .string          " "
                        .size            n18_lit_string_bx, .-n18_lit_string_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              qword ptr [rbp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_142_0]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n20_line_mark_α
.Llit_integer_α_142_0:  .quad            10
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n21_call_icon_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_call_icon_bx, @function
n21_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_icon_α:        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lcall_icon_α_rkfn146:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn146]
                        lea              rsi, [rbp + 1760]
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
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n26_line_mark_α
                                                                              jmp   n22_assign_α
n21_call_icon_β:                                                              jmp   n26_line_mark_α
                        .size            n21_call_icon_bx, .-n21_call_icon_bx
                        .type            n22_assign_bx, @function
n22_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              qword ptr [r9 + 128], rax            # display__STATIC__offset
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx;         jmp   n23_conjunction_α
                        .size            n22_assign_bx, .-n22_assign_bx
                        .type            n23_conjunction_bx, @function
n23_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_conjunction_α:      mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n24_conjunction_α
n23_conjunction_β:                                                            jmp   n26_line_mark_α
                        .size            n23_conjunction_bx, .-n23_conjunction_bx
                        .type            n24_conjunction_bx, @function
n24_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:      mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax;         jmp   .Ldisjunction_γ_4_as
n24_conjunction_β:                                                            jmp   n26_line_mark_α
                        .size            n24_conjunction_bx, .-n24_conjunction_bx
                        .type            n25_goto_bx, @function
n25_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_goto_α:                                                                   jmp   n26_line_mark_α
n25_goto_β:                                                                   jmp   n26_line_mark_α
                        .size            n25_goto_bx, .-n25_goto_bx
                        .type            n26_line_mark_bx, @function
n26_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n27_var_ref_α
                        .size            n26_line_mark_bx, .-n26_line_mark_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # deck
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n28_deref_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_deref_bx, @function
n28_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_deref_α:            mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_line_mark_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n29_line_mark_α
                        .size            n28_deref_bx, .-n28_deref_bx
                        .type            n29_line_mark_bx, @function
n29_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n30_call_proc_staged_α
                        .size            n29_line_mark_bx, .-n29_line_mark_bx
                        .type            n30_call_proc_staged_bx, @function
n30_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_call_proc_staged_α: lea              rcx, [rip + .Lcall_proc_staged_α_159_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_159_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 1632]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 1640]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 520];          jmp   rax
.Lcall_proc_staged_α_159_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_159_2
.Lcall_proc_staged_α_159_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_159_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    n33_line_mark_α
                                                                              jmp   n31_deref_α
n30_call_proc_staged_β:                                                       jmp   n33_line_mark_α
.Lcall_proc_staged_β_159_0:
                        .quad            .Lcall_proc_staged_β_159_0_s
.Lcall_proc_staged_β_159_0_s:
                        .string          "shuffle"
                        .size            n30_call_proc_staged_bx, .-n30_call_proc_staged_bx
                        .type            n31_deref_bx, @function
n31_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_deref_α:            mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_line_mark_α
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n32_assign_α
                        .size            n31_deref_bx, .-n31_deref_bx
                        .type            n32_assign_bx, @function
n32_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n33_line_mark_α
                        .size            n32_assign_bx, .-n32_assign_bx
                        .type            n33_line_mark_bx, @function
n33_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n34_make_list_α
                        .size            n33_line_mark_bx, .-n33_line_mark_bx
                        .type            n34_make_list_bx, @function
n34_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_make_list_α:        lea              rdi, [rbp + 1552]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:53
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
1:                                                                            jmp   n35_assign_α
                        .size            n34_make_list_bx, .-n34_make_list_bx
                        .type            n35_assign_bx, @function
n35_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n36_line_mark_α
                        .size            n35_assign_bx, .-n35_assign_bx
                        .type            n36_line_mark_bx, @function
n36_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n37_var_ref_α
                        .size            n36_line_mark_bx, .-n36_line_mark_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n38_var_ref_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # deck
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n39_lit_integer_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              qword ptr [rbp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n40_lit_integer_α
.Llit_integer_α_173_0:  .quad            0
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              qword ptr [rbp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_174_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n41_to_α
.Llit_integer_α_174_0:  .quad            3
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_to_bx, @function
n41_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_to_α:               mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n59_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:37
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
                        push             rax                                  # gc_poll bb_to.cpp:160
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
1:                      mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n59_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:37
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
1:                      mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1408], 3
                        mov              qword ptr [rbp + 1416], rax
                        push             rax                                  # gc_poll bb_to.cpp:168
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
1:                      mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1376], rax
.Lto_α_176_0:           mov              rax, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1416]
                        cmp              rax, rcx;                            jg    n59_line_mark_α
                        mov              qword ptr [rbp + 1360], 3
                        mov              qword ptr [rbp + 1368], rax;         jmp   n42_var_α
n41_to_β:               inc              qword ptr [rbp + 1376];              jo    n59_line_mark_α
                                                                              jmp   .Lto_α_176_0
                        .size            n41_to_bx, .-n41_to_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 1424], rax          # result
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n43_coerce_numeric_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_coerce_numeric_bx, @function
n43_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1360]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_179_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_179_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_179_0
.Lcoerce_numeric_α_179_1:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n44_coerce_numeric_α
.Lcoerce_numeric_α_179_0:
                        lea              rdi, [rbp + 1360]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 1344]
                        mov              rcx, 12901679206
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
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
1:                      mov              eax, dword ptr [rbp + 1344]
                        cmp              al, 104;                             je    n59_line_mark_α
                                                                              jmp   n44_coerce_numeric_α
                        .size            n43_coerce_numeric_bx, .-n43_coerce_numeric_bx
                        .type            n44_coerce_numeric_bx, @function
n44_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1424]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_181_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_181_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_181_0
.Lcoerce_numeric_α_181_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n45_binop_α
.Lcoerce_numeric_α_181_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 1360]
                        lea              rdx, [rbp + 1328]
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
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
                        cmp              al, 104;                             je    n59_line_mark_α
                                                                              jmp   n45_binop_α
                        .size            n44_coerce_numeric_bx, .-n44_coerce_numeric_bx
                        .type            n45_binop_bx, @function
n45_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:            mov              eax, dword ptr [rbp + 1344]
                        mov              ecx, dword ptr [rbp + 1328]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_182_2
                        mov              rax, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1336]
                        imul             rax, rdx;                            jo    .Lbinop_α_182_0
                        mov              qword ptr [rbp + 1312], 3
                        mov              qword ptr [rbp + 1320], rax;         jmp   .Lbinop_α_182_7
.Lbinop_α_182_2:        and              edx, 1;                              jz    .Lbinop_α_182_0
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdi, qword ptr [rbp + 1336]
                        cmp              al, 5;                               je    .Lbinop_α_182_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_182_4
.Lbinop_α_182_3:        movq             xmm0, rsi
.Lbinop_α_182_4:        cmp              cl, 5;                               je    .Lbinop_α_182_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_182_6
.Lbinop_α_182_5:        movq             xmm1, rdi
.Lbinop_α_182_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_182_0
                        mov              qword ptr [rbp + 1312], 5
                        mov              qword ptr [rbp + 1320], rax
.Lbinop_α_182_7:                                                              jmp   n46_lit_integer_α
.Lbinop_α_182_0:        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n59_line_mark_α
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
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
1:                                                                            jmp   n46_lit_integer_α
                        .size            n45_binop_bx, .-n45_binop_bx
                        .type            n46_lit_integer_bx, @function
n46_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              qword ptr [rbp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n47_coerce_numeric_α
.Llit_integer_α_183_0:  .quad            1
                        .size            n46_lit_integer_bx, .-n46_lit_integer_bx
                        .type            n47_coerce_numeric_bx, @function
n47_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1312]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_185_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_185_0
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_185_0
.Lcoerce_numeric_α_185_1:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n48_binop_α
.Lcoerce_numeric_α_185_0:
                        lea              rdi, [rbp + 1312]
                        lea              rsi, [rbp + 1440]
                        lea              rdx, [rbp + 1296]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
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
1:                      mov              eax, dword ptr [rbp + 1296]
                        cmp              al, 104;                             je    n59_line_mark_α
                                                                              jmp   n48_binop_α
                        .size            n47_coerce_numeric_bx, .-n47_coerce_numeric_bx
                        .type            n48_binop_bx, @function
n48_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:            mov              eax, dword ptr [rbp + 1296]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_186_2
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_186_0
                        mov              qword ptr [rbp + 1280], 3
                        mov              qword ptr [rbp + 1288], rax;         jmp   .Lbinop_α_186_7
.Lbinop_α_186_2:        and              edx, 1;                              jz    .Lbinop_α_186_0
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_186_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_186_4
.Lbinop_α_186_3:        movq             xmm0, rsi
.Lbinop_α_186_4:        cmp              cl, 5;                               je    .Lbinop_α_186_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_186_6
.Lbinop_α_186_5:        movq             xmm1, rdi
.Lbinop_α_186_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_186_0
                        mov              qword ptr [rbp + 1280], 5
                        mov              qword ptr [rbp + 1288], rax
.Lbinop_α_186_7:                                                              jmp   n49_var_α
.Lbinop_α_186_0:        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n59_line_mark_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
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
1:                                                                            jmp   n49_var_α
                        .size            n48_binop_bx, .-n48_binop_bx
                        .type            n49_var_bx, @function
n49_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 0], rax             # result
                        mov              qword ptr [rbp + 8], rdx;            jmp   n50_binop_α
                        .size            n49_var_bx, .-n49_var_bx
                        .type            n50_binop_bx, @function
n50_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            mov              eax, dword ptr [rbp + 1280]
                        mov              ecx, dword ptr [rbp + 0]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_188_2
                        mov              rax, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 8]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1456], 3
                        mov              qword ptr [rbp + 1464], rax;         jmp   .Lbinop_α_188_7
.Lbinop_α_188_2:        and              edx, 1;                              jz    .Lbinop_α_188_0
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdi, qword ptr [rbp + 8]
                        cmp              al, 5;                               je    .Lbinop_α_188_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_188_4
.Lbinop_α_188_3:        movq             xmm0, rsi
.Lbinop_α_188_4:        cmp              cl, 5;                               je    .Lbinop_α_188_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_188_6
.Lbinop_α_188_5:        movq             xmm1, rdi
.Lbinop_α_188_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_188_0
                        mov              qword ptr [rbp + 1456], 5
                        mov              qword ptr [rbp + 1464], rax
.Lbinop_α_188_7:                                                              jmp   n51_subscript_α
.Lbinop_α_188_0:        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 0]
                        mov              rcx, qword ptr [rbp + 8]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             je    n41_to_β
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
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
1:                                                                            jmp   n51_subscript_α
                        .size            n50_binop_bx, .-n50_binop_bx
                        .type            n51_subscript_bx, @function
n51_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_subscript_α:        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8, qword ptr [rbp + 1456]
                        mov              r9, qword ptr [rbp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_section_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n41_to_β
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
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
1:                                                                            jmp   n52_deref_α
                        .size            n51_subscript_bx, .-n51_subscript_bx
                        .type            n52_deref_bx, @function
n52_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_deref_α:            mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n41_to_β
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n53_line_mark_α
                        .size            n52_deref_bx, .-n52_deref_bx
                        .type            n53_line_mark_bx, @function
n53_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n54_call_proc_staged_α
                        .size            n53_line_mark_bx, .-n53_line_mark_bx
                        .type            n54_call_proc_staged_bx, @function
n54_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_proc_staged_α: lea              rcx, [rip + .Lcall_proc_staged_α_194_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_194_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 1472]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 1480]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_194_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_194_2
.Lcall_proc_staged_α_194_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_194_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n41_to_β
                                                                              jmp   n55_deref_α
n54_call_proc_staged_β:                                                       jmp   n41_to_β
.Lcall_proc_staged_β_194_0:
                        .quad            .Lcall_proc_staged_β_194_0_s
.Lcall_proc_staged_β_194_0_s:
                        .string          "show"
                        .size            n54_call_proc_staged_bx, .-n54_call_proc_staged_bx
                        .type            n55_deref_bx, @function
n55_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_deref_α:            mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n41_to_β
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n56_deref_α
                        .size            n55_deref_bx, .-n55_deref_bx
                        .type            n56_deref_bx, @function
n56_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:            mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n41_to_β
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n57_line_mark_α
                        .size            n56_deref_bx, .-n56_deref_bx
                        .type            n57_line_mark_bx, @function
n57_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n58_call_icon_α
                        .size            n57_line_mark_bx, .-n57_line_mark_bx
                        .type            n58_call_icon_bx, @function
n58_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_icon_α:        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lcall_icon_α_rkfn200:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn200]
                        lea              rsi, [rbp + 1152]
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
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n41_to_β
                                                                              jmp   n41_to_β
n58_call_icon_β:                                                              jmp   n41_to_β
                        .size            n58_call_icon_bx, .-n58_call_icon_bx
                        .type            n59_line_mark_bx, @function
n59_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n60_line_mark_α
                        .size            n59_line_mark_bx, .-n59_line_mark_bx
                        .type            n60_line_mark_bx, @function
n60_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n61_call_icon_α
                        .size            n60_line_mark_bx, .-n60_line_mark_bx
                        .type            n61_call_icon_bx, @function
n61_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_icon_α:        .section         .rodata
.Lcall_icon_α_rkfn206:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn206]
                        lea              rsi, [rbp + 1104]
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
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n62_line_mark_α
                                                                              jmp   n62_line_mark_α
n61_call_icon_β:                                                              jmp   n62_line_mark_α
                        .size            n61_call_icon_bx, .-n61_call_icon_bx
                        .type            n62_line_mark_bx, @function
n62_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 85;             jmp   n63_var_α
                        .size            n62_line_mark_bx, .-n62_line_mark_bx
                        .type            n63_var_bx, @function
n63_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              rax, qword ptr [r9 + 128]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 960], rax           # result
                        mov              qword ptr [rbp + 968], rdx;          jmp   n64_var_ref_α
                        .size            n63_var_bx, .-n63_var_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n65_lit_integer_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              qword ptr [rbp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_212_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n66_subscript_α
.Llit_integer_α_212_0:  .quad            1
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_subscript_bx, @function
n66_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_subscript_α:        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n71_line_mark_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n67_deref_α
                        .size            n66_subscript_bx, .-n66_subscript_bx
                        .type            n67_deref_bx, @function
n67_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_deref_α:            mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n71_line_mark_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n68_iterate_α
                        .size            n67_deref_bx, .-n67_deref_bx
                        .type            n68_iterate_bx, @function
n68_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_iterate_α:          mov              qword ptr [rbp + 992], 0
.Literate_α_216_0:      mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 992]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n71_line_mark_α
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
1:                                                                            jmp   n69_line_mark_α
n68_iterate_β:          inc              qword ptr [rbp + 992];               jmp   .Literate_α_216_0
                        .size            n68_iterate_bx, .-n68_iterate_bx
                        .type            n69_line_mark_bx, @function
n69_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 85;             jmp   n70_call_icon_α
                        .size            n69_line_mark_bx, .-n69_line_mark_bx
                        .type            n70_call_icon_bx, @function
n70_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_icon_α:        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lcall_icon_α_rkfn220:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn220]
                        lea              rsi, [rbp + 912]
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
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n68_iterate_β
                                                                              jmp   n68_iterate_β
n70_call_icon_β:                                                              jmp   n68_iterate_β
                        .size            n70_call_icon_bx, .-n70_call_icon_bx
                        .type            n71_line_mark_bx, @function
n71_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n72_line_mark_α
                        .size            n71_line_mark_bx, .-n71_line_mark_bx
                        .type            n72_line_mark_bx, @function
n72_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n73_call_icon_α
                        .size            n72_line_mark_bx, .-n72_line_mark_bx
                        .type            n73_call_icon_bx, @function
n73_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_icon_α:        .section         .rodata
.Lcall_icon_α_rkfn226:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn226]
                        lea              rsi, [rbp + 864]
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
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n74_line_mark_α
                                                                              jmp   n74_line_mark_α
n73_call_icon_β:                                                              jmp   n74_line_mark_α
                        .size            n73_call_icon_bx, .-n73_call_icon_bx
                        .type            n74_line_mark_bx, @function
n74_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 87;             jmp   n75_lit_integer_α
                        .size            n74_line_mark_bx, .-n74_line_mark_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n76_lit_integer_α
.Llit_integer_α_229_0:  .quad            1
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_lit_integer_bx, @function
n76_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_230_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n77_to_α
.Llit_integer_α_230_0:  .quad            4
                        .size            n76_lit_integer_bx, .-n76_lit_integer_bx
                        .type            n77_to_bx, @function
n77_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_to_α:               mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00001_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:37
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
                        push             rax                                  # gc_poll bb_to.cpp:160
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
                        test             eax, eax;                            jz    n00001_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:37
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
                        push             rax                                  # gc_poll bb_to.cpp:168
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
.Lto_α_232_0:           mov              rax, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 408]
                        cmp              rax, rcx;                            jg    n00001_line_mark_α
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax;          jmp   n78_assign_α
n77_to_β:               inc              qword ptr [rbp + 368];               jo    n00001_line_mark_α
                                                                              jmp   .Lto_α_232_0
                        .size            n77_to_bx, .-n77_to_bx
                        .type            n78_assign_bx, @function
n78_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n79_bound_α
                        .size            n78_assign_bx, .-n78_assign_bx
                        .type            n79_bound_bx, @function
n79_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_bound_α:            mov              qword ptr [rbp + 432], rsp;          jmp   n80_line_mark_α
                        .size            n79_bound_bx, .-n79_bound_bx
                        .type            n80_line_mark_bx, @function
n80_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n81_var_ref_α
                        .size            n80_line_mark_bx, .-n80_line_mark_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n82_lit_integer_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              qword ptr [rbp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_240_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n83_subscript_α
.Llit_integer_α_240_0:  .quad            4
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_subscript_bx, @function
n83_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_subscript_α:        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n98_unmark_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n84_var_α
                        .size            n83_subscript_bx, .-n83_subscript_bx
                        .type            n84_var_bx, @function
n84_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 664], rax;          jmp   n85_subscript_α
                        .size            n84_var_bx, .-n84_var_bx
                        .type            n85_subscript_bx, @function
n85_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_subscript_α:        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n98_unmark_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n86_lit_integer_α
                        .size            n85_subscript_bx, .-n85_subscript_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_245_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n87_deref_α
.Llit_integer_α_245_0:  .quad            20
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_deref_bx, @function
n87_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_deref_α:            mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n98_unmark_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n88_line_mark_α
                        .size            n87_deref_bx, .-n87_deref_bx
                        .type            n88_line_mark_bx, @function
n88_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n89_call_icon_α
                        .size            n88_line_mark_bx, .-n88_line_mark_bx
                        .type            n89_call_icon_bx, @function
n89_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_icon_α:        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn250:  .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn250]
                        lea              rsi, [rbp + 560]
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
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n98_unmark_α
                                                                              jmp   n90_var_ref_α
n89_call_icon_β:                                                              jmp   n98_unmark_α
                        .size            n89_call_icon_bx, .-n89_call_icon_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n91_lit_integer_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              qword ptr [rbp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_253_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n92_subscript_α
.Llit_integer_α_253_0:  .quad            2
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_subscript_bx, @function
n92_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_subscript_α:        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n98_unmark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n93_var_α
                        .size            n92_subscript_bx, .-n92_subscript_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 776], rax;          jmp   n94_subscript_α
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_subscript_bx, @function
n94_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_subscript_α:        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n98_unmark_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n95_deref_α
                        .size            n94_subscript_bx, .-n94_subscript_bx
                        .type            n95_deref_bx, @function
n95_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_deref_α:            mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n98_unmark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n96_line_mark_α
                        .size            n95_deref_bx, .-n95_deref_bx
                        .type            n96_line_mark_bx, @function
n96_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n97_call_icon_α
                        .size            n96_line_mark_bx, .-n96_line_mark_bx
                        .type            n97_call_icon_bx, @function
n97_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_icon_α:        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lcall_icon_α_rkfn262:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn262]
                        lea              rsi, [rbp + 496]
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
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n98_unmark_α
                                                                              jmp   n98_unmark_α
n97_call_icon_β:                                                              jmp   n98_unmark_α
                        .size            n97_call_icon_bx, .-n97_call_icon_bx
                        .type            n98_unmark_bx, @function
n98_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_unmark_α:           mov              rsp, qword ptr [rbp + 432];          jmp   n99_line_mark_α
                        .size            n98_unmark_bx, .-n98_unmark_bx
                        .type            n99_line_mark_bx, @function
n99_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 87;             jmp   n77_to_β
                        .size            n99_line_mark_bx, .-n99_line_mark_bx
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00002_line_mark_α
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_line_mark_bx, @function
n00002_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00003_call_icon_α
                        .size            n00002_line_mark_bx, .-n00002_line_mark_bx
                        .type            n00003_call_icon_bx, @function
n00003_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn272:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn272]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00004_line_mark_α
                                                                              jmp   n00004_line_mark_α
n00003_call_icon_β:                                                             jmp   n00004_line_mark_α
                        .size            n00003_call_icon_bx, .-n00003_call_icon_bx
                        .type            n00004_line_mark_bx, @function
n00004_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00005_var_α
                        .size            n00004_line_mark_bx, .-n00004_line_mark_bx
                        .type            n00005_var_bx, @function
n00005_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_var_α:             mov              rax, qword ptr [r9 + 128]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 160], rax           # result
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00006_var_ref_α
                        .size            n00005_var_bx, .-n00005_var_bx
                        .type            n00006_var_ref_bx, @function
n00006_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00007_lit_integer_α
                        .size            n00006_var_ref_bx, .-n00006_var_ref_bx
                        .type            n00007_lit_integer_bx, @function
n00007_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_lit_integer_α:     mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_278_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00008_subscript_α
.Llit_integer_α_278_0:  .quad            3
                        .size            n00007_lit_integer_bx, .-n00007_lit_integer_bx
                        .type            n00008_subscript_bx, @function
n00008_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_subscript_α:       mov              rdi, qword ptr [rbp + 208]
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
                        cmp              al, 104;                             je    n00009_line_mark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n00010_deref_α
                        .size            n00008_subscript_bx, .-n00008_subscript_bx
                        .type            n00010_deref_bx, @function
n00010_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_deref_α:           mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00009_line_mark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00011_iterate_α
                        .size            n00010_deref_bx, .-n00010_deref_bx
                        .type            n00011_iterate_bx, @function
n00011_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_iterate_α:         mov              qword ptr [rbp + 192], 0
.Literate_α_282_0:      mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 192]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00009_line_mark_α
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
1:                                                                            jmp   n00012_line_mark_α
n00011_iterate_β:         inc              qword ptr [rbp + 192];               jmp   .Literate_α_282_0
                        .size            n00011_iterate_bx, .-n00011_iterate_bx
                        .type            n00012_line_mark_bx, @function
n00012_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00013_call_icon_α
                        .size            n00012_line_mark_bx, .-n00012_line_mark_bx
                        .type            n00013_call_icon_bx, @function
n00013_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_call_icon_α:       mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn286:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn286]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00011_iterate_β
                                                                              jmp   n00011_iterate_β
n00013_call_icon_β:                                                             jmp   n00011_iterate_β
                        .size            n00013_call_icon_bx, .-n00013_call_icon_bx
                        .type            n00009_line_mark_bx, @function
n00009_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00014_var_α
                        .size            n00009_line_mark_bx, .-n00009_line_mark_bx
                        .type            n00014_var_bx, @function
n00014_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:             mov              rax, qword ptr [r9 + 112]            # display__STATIC__bar
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 64], rax            # result
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00015_line_mark_α
                        .size            n00014_var_bx, .-n00014_var_bx
                        .type            n00015_line_mark_bx, @function
n00015_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00016_call_icon_α
                        .size            n00015_line_mark_bx, .-n00015_line_mark_bx
                        .type            n00016_call_icon_bx, @function
n00016_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_call_icon_α:       mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn293:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn293]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    display_ω
                                                                              jmp   display_ω
n00016_call_icon_β:                                                             jmp   display_ω
                        .size            n00016_call_icon_bx, .-n00016_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
display_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
display_β:
                                                                              jmp   display_ω
#-----------------------------------------------------------------------------------------------------------------------
display_γ:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Ldisplay_α_292_243
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Ldisplay_α_292_243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Ldisplay_α_292_243
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Ldisplay_α_292_243:    pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 2272]
                        mov              rbp, qword ptr [rbp + 2264];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
display_ω:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Ldisplay_α_292_244
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Ldisplay_α_292_244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Ldisplay_α_292_244
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Ldisplay_α_292_244:    pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 2272]
                        mov              rbp, qword ptr [rbp + 2264];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_display:
                        .quad            9759512153434
                        .quad            34359738448
                        .quad            .Lgcmap_display_s
                        .quad            2176
                        .quad            13
                        .quad            211106232532992
                        .quad            17596481011904
                        .quad            175921860444368
                        .quad            17596481012080
                        .quad            52776558133632
                        .quad            17596481012144
                        .quad            598134325510592
                        .quad            17596481012704
                        .quad            404620279022576
                        .quad            17596481013088
                        .quad            316659348800880
                        .quad            17596481013392
                        .quad            527765581334176
.Lgcmap_display_s:      .string          "display"
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1648
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1640
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_show]
                        mov              qword ptr [rsp + 1576], rax
                        mov              dword ptr [rsp + 1568], 160
                        mov              dword ptr [rsp + 1572], 1648
                        mov              eax, 0
                        mov              qword ptr [rsp + 1640], rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [rip + rt_sxt_fr_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              dword ptr [rax + 20], 1
                        mov              qword ptr [rax + 0], 0
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lshow_α_292_245
                        mov              rsi, 48
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm294:        .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm294]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
                        lea              rsi, [rsp + 1648]
                        mov              qword ptr [rdi + 40], rsi
.Lshow_α_292_245:
show_α_body:
                        .type            n00017_line_mark_bx, @function
n00017_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_381_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00018_line_mark_α
.Lline_mark_α_381_0:    .quad            .Lline_mark_α_381_0_s
.Lline_mark_α_381_0_s:  .string          "deal.icn"
                        .size            n00017_line_mark_bx, .-n00017_line_mark_bx
                        .type            n00018_line_mark_bx, @function
n00018_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00019_disjunction_α
                        .size            n00018_line_mark_bx, .-n00018_line_mark_bx
                        .type            n00019_disjunction_bx, @function
n00019_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_disjunction_α:     mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0;            jmp   n00020_var_α
.Ldisjunction_γ_297_as: mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_385_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00021_line_mark_α
.Ldisjunction_α_385_0:                                                        jmp   n00021_line_mark_α
n00019_disjunction_β:     mov              eax, dword ptr [rbp + 704];          jmp   n00022_goto_β
.Ldisjunction_γ_297_af:
.Ldisjunction_ω_297_af: add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704];          jmp   n00021_line_mark_α
                        .size            n00019_disjunction_bx, .-n00019_disjunction_bx
                        .type            n00020_var_bx, @function
n00020_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_α:             mov              rax, qword ptr [r9 + 224]            # show__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rbp + 1520], rax          # result
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n00023_unop_test_α
n00020_var_β:                                                                   jmp   .Ldisjunction_ω_297_af
                        .size            n00020_var_bx, .-n00020_var_bx
                        .type            n00023_unop_test_bx, @function
n00023_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_unop_test_α:       mov              eax, dword ptr [rbp + 1520]
                        cmp              al, 104;                             je    .Ldisjunction_ω_297_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_297_af
                        mov              qword ptr [rbp + 1504], 0
                        mov              qword ptr [rbp + 1512], 0;           jmp   n00024_lit_integer_α
                        .size            n00023_unop_test_bx, .-n00023_unop_test_bx
                        .type            n00024_lit_integer_bx, @function
n00024_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_lit_integer_α:     mov              qword ptr [rbp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_388_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00025_assign_α
.Llit_integer_α_388_0:  .quad            1
                        .size            n00024_lit_integer_bx, .-n00024_lit_integer_bx
                        .type            n00025_assign_bx, @function
n00025_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_assign_α:          mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        mov              qword ptr [r9 + 224], rax            # show__INITFLAG__0
                        mov              qword ptr [r9 + 232], rdx;           jmp   n00026_line_mark_α
                        .size            n00025_assign_bx, .-n00025_assign_bx
                        .type            n00026_line_mark_bx, @function
n00026_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00027_var_ref_α
                        .size            n00026_line_mark_bx, .-n00026_line_mark_bx
                        .type            n00027_var_ref_bx, @function
n00027_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00028_lit_integer_α
                        .size            n00027_var_ref_bx, .-n00027_var_ref_bx
                        .type            n00028_lit_integer_bx, @function
n00028_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_lit_integer_α:     mov              qword ptr [rbp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_394_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n00029_deref_α
.Llit_integer_α_394_0:  .quad            3
                        .size            n00028_lit_integer_bx, .-n00028_lit_integer_bx
                        .type            n00029_deref_bx, @function
n00029_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_deref_α:           mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00030_line_mark_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00031_line_mark_α
                        .size            n00029_deref_bx, .-n00029_deref_bx
                        .type            n00031_line_mark_bx, @function
n00031_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00032_call_icon_α
                        .size            n00031_line_mark_bx, .-n00031_line_mark_bx
                        .type            n00032_call_icon_bx, @function
n00032_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_call_icon_α:       mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lcall_icon_α_rkfn399:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn399]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00030_line_mark_α
                                                                              jmp   n00033_var_α
n00032_call_icon_β:                                                             jmp   n00030_line_mark_α
                        .size            n00032_call_icon_bx, .-n00032_call_icon_bx
                        .type            n00033_var_bx, @function
n00033_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_α:             mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1456], rax          # result
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n00034_binop_α
                        .size            n00033_var_bx, .-n00033_var_bx
                        .type            n00034_binop_bx, @function
n00034_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_binop_α:           mov              rdi, qword ptr [rbp + 1456]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00035_assign_α
                        .size            n00034_binop_bx, .-n00034_binop_bx
                        .type            n00035_assign_bx, @function
n00035_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_assign_α:          mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [r9 + 160], rax            # show__STATIC__clubmap
                        mov              qword ptr [r9 + 168], rdx;           jmp   n00030_line_mark_α
                        .size            n00035_assign_bx, .-n00035_assign_bx
                        .type            n00030_line_mark_bx, @function
n00030_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00036_var_α
                        .size            n00030_line_mark_bx, .-n00030_line_mark_bx
                        .type            n00036_var_bx, @function
n00036_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1168], rax          # result
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n00037_var_α
                        .size            n00036_var_bx, .-n00036_var_bx
                        .type            n00037_var_bx, @function
n00037_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_var_α:             mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1184], rax          # result
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n00038_binop_α
                        .size            n00037_var_bx, .-n00037_var_bx
                        .type            n00038_binop_bx, @function
n00038_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_binop_α:           mov              rdi, qword ptr [rbp + 1184]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00039_var_ref_α
                        .size            n00038_binop_bx, .-n00038_binop_bx
                        .type            n00039_var_ref_bx, @function
n00039_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n00040_lit_integer_α
                        .size            n00039_var_ref_bx, .-n00039_var_ref_bx
                        .type            n00040_lit_integer_bx, @function
n00040_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_lit_integer_α:     mov              qword ptr [rbp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_410_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n00041_deref_α
.Llit_integer_α_410_0:  .quad            2
                        .size            n00040_lit_integer_bx, .-n00040_lit_integer_bx
                        .type            n00041_deref_bx, @function
n00041_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_deref_α:           mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00042_line_mark_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00043_line_mark_α
                        .size            n00041_deref_bx, .-n00041_deref_bx
                        .type            n00043_line_mark_bx, @function
n00043_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00044_call_icon_α
                        .size            n00043_line_mark_bx, .-n00043_line_mark_bx
                        .type            n00044_call_icon_bx, @function
n00044_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_call_icon_α:       mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn415:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn415]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00042_line_mark_α
                                                                              jmp   n00045_binop_α
n00044_call_icon_β:                                                             jmp   n00042_line_mark_α
                        .size            n00044_call_icon_bx, .-n00044_call_icon_bx
                        .type            n00045_binop_bx, @function
n00045_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_binop_α:           mov              rdi, qword ptr [rbp + 1152]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00046_assign_α
                        .size            n00045_binop_bx, .-n00045_binop_bx
                        .type            n00046_assign_bx, @function
n00046_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_assign_α:          mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [r9 + 176], rax            # show__STATIC__diamondmap
                        mov              qword ptr [r9 + 184], rdx;           jmp   n00042_line_mark_α
                        .size            n00046_assign_bx, .-n00046_assign_bx
                        .type            n00042_line_mark_bx, @function
n00042_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00047_var_ref_α
                        .size            n00042_line_mark_bx, .-n00042_line_mark_bx
                        .type            n00047_var_ref_bx, @function
n00047_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00048_lit_integer_α
                        .size            n00047_var_ref_bx, .-n00047_var_ref_bx
                        .type            n00048_lit_integer_bx, @function
n00048_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_lit_integer_α:     mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_422_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00049_deref_α
.Llit_integer_α_422_0:  .quad            2
                        .size            n00048_lit_integer_bx, .-n00048_lit_integer_bx
                        .type            n00049_deref_bx, @function
n00049_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_deref_α:           mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00050_line_mark_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00051_line_mark_α
                        .size            n00049_deref_bx, .-n00049_deref_bx
                        .type            n00051_line_mark_bx, @function
n00051_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00052_call_icon_α
                        .size            n00051_line_mark_bx, .-n00051_line_mark_bx
                        .type            n00052_call_icon_bx, @function
n00052_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_call_icon_α:       mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn427:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn427]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00050_line_mark_α
                                                                              jmp   n00053_var_α
n00052_call_icon_β:                                                             jmp   n00050_line_mark_α
                        .size            n00052_call_icon_bx, .-n00052_call_icon_bx
                        .type            n00053_var_bx, @function
n00053_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:             mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1088], rax          # result
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00054_binop_α
                        .size            n00053_var_bx, .-n00053_var_bx
                        .type            n00054_binop_bx, @function
n00054_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           mov              rdi, qword ptr [rbp + 976]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00055_var_α
                        .size            n00054_binop_bx, .-n00054_binop_bx
                        .type            n00055_var_bx, @function
n00055_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_var_α:             mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1104], rax          # result
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00056_binop_α
                        .size            n00055_var_bx, .-n00055_var_bx
                        .type            n00056_binop_bx, @function
n00056_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_binop_α:           mov              rdi, qword ptr [rbp + 960]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00057_assign_α
                        .size            n00056_binop_bx, .-n00056_binop_bx
                        .type            n00057_assign_bx, @function
n00057_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_assign_α:          mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [r9 + 192], rax            # show__STATIC__heartmap
                        mov              qword ptr [r9 + 200], rdx;           jmp   n00050_line_mark_α
                        .size            n00057_assign_bx, .-n00057_assign_bx
                        .type            n00050_line_mark_bx, @function
n00050_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00058_var_ref_α
                        .size            n00050_line_mark_bx, .-n00050_line_mark_bx
                        .type            n00058_var_ref_bx, @function
n00058_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00059_lit_integer_α
                        .size            n00058_var_ref_bx, .-n00058_var_ref_bx
                        .type            n00059_lit_integer_bx, @function
n00059_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_integer_α:     mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_437_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00060_deref_α
.Llit_integer_α_437_0:  .quad            3
                        .size            n00059_lit_integer_bx, .-n00059_lit_integer_bx
                        .type            n00060_deref_bx, @function
n00060_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_deref_α:           mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00021_line_mark_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00061_line_mark_α
                        .size            n00060_deref_bx, .-n00060_deref_bx
                        .type            n00061_line_mark_bx, @function
n00061_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00062_call_icon_α
                        .size            n00061_line_mark_bx, .-n00061_line_mark_bx
                        .type            n00062_call_icon_bx, @function
n00062_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_call_icon_α:       mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_icon_α_rkfn442:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn442]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00021_line_mark_α
                                                                              jmp   n00063_var_α
n00062_call_icon_β:                                                             jmp   n00021_line_mark_α
                        .size            n00062_call_icon_bx, .-n00062_call_icon_bx
                        .type            n00063_var_bx, @function
n00063_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:             mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 896], rax           # result
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00064_binop_α
                        .size            n00063_var_bx, .-n00063_var_bx
                        .type            n00064_binop_bx, @function
n00064_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_binop_α:           mov              rdi, qword ptr [rbp + 784]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00065_assign_α
                        .size            n00064_binop_bx, .-n00064_binop_bx
                        .type            n00065_assign_bx, @function
n00065_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_assign_α:          mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [r9 + 208], rax            # show__STATIC__spademap
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00066_conjunction_α
                        .size            n00065_assign_bx, .-n00065_assign_bx
                        .type            n00066_conjunction_bx, @function
n00066_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_conjunction_α:     mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00067_conjunction_α
n00066_conjunction_β:                                                           jmp   n00021_line_mark_α
                        .size            n00066_conjunction_bx, .-n00066_conjunction_bx
                        .type            n00067_conjunction_bx, @function
n00067_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_conjunction_α:     mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax;          jmp   .Ldisjunction_γ_297_as
n00067_conjunction_β:                                                           jmp   n00021_line_mark_α
                        .size            n00067_conjunction_bx, .-n00067_conjunction_bx
                        .type            n00022_goto_bx, @function
n00022_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_goto_α:                                                                  jmp   n00021_line_mark_α
n00022_goto_β:                                                                  jmp   n00021_line_mark_α
                        .size            n00022_goto_bx, .-n00022_goto_bx
                        .type            n00021_line_mark_bx, @function
n00021_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 104;            jmp   n00068_lit_string_α
                        .size            n00021_line_mark_bx, .-n00021_line_mark_bx
                        .type            n00068_lit_string_bx, @function
n00068_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_lit_string_α:      mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_451_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00069_var_ref_α
.Llit_string_α_451_0:   .quad            .Llit_string_α_451_0_s
.Llit_string_α_451_0_s: .string          "S: "
                        .size            n00068_lit_string_bx, .-n00068_lit_string_bx
                        .type            n00069_var_ref_bx, @function
n00069_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00070_var_α
                        .size            n00069_var_ref_bx, .-n00069_var_ref_bx
                        .type            n00070_var_bx, @function
n00070_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_var_α:             mov              rax, qword ptr [r9 + 208]            # show__STATIC__spademap
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rbp + 208], rax           # result
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00071_deref_α
                        .size            n00070_var_bx, .-n00070_var_bx
                        .type            n00071_deref_bx, @function
n00071_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_deref_α:           mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00072_line_mark_α
                        .size            n00071_deref_bx, .-n00071_deref_bx
                        .type            n00072_line_mark_bx, @function
n00072_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 105;            jmp   n00073_call_proc_staged_α
                        .size            n00072_line_mark_bx, .-n00072_line_mark_bx
                        .type            n00073_call_proc_staged_bx, @function
n00073_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_459_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_459_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 32
                        mov              rcx, qword ptr [rbp + 224]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rbp + 208]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rbp + 216]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_459_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_459_2
.Lcall_proc_staged_α_459_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_459_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00074_deref_α
n00073_call_proc_staged_β:
                                                                              jmp   show_ω
.Lcall_proc_staged_β_459_0:
                        .quad            .Lcall_proc_staged_β_459_0_s
.Lcall_proc_staged_β_459_0_s:
                        .string          "arrange"
                        .size            n00073_call_proc_staged_bx, .-n00073_call_proc_staged_bx
                        .type            n00074_deref_bx, @function
n00074_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_deref_α:           mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00075_binop_α
                        .size            n00074_deref_bx, .-n00074_deref_bx
                        .type            n00075_binop_bx, @function
n00075_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_binop_α:           mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00076_lit_string_α
                        .size            n00075_binop_bx, .-n00075_binop_bx
                        .type            n00076_lit_string_bx, @function
n00076_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_string_α:      mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_462_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00077_var_ref_α
.Llit_string_α_462_0:   .quad            .Llit_string_α_462_0_s
.Llit_string_α_462_0_s: .string          "H: "
                        .size            n00076_lit_string_bx, .-n00076_lit_string_bx
                        .type            n00077_var_ref_bx, @function
n00077_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00078_var_α
                        .size            n00077_var_ref_bx, .-n00077_var_ref_bx
                        .type            n00078_var_bx, @function
n00078_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_var_α:             mov              rax, qword ptr [r9 + 192]            # show__STATIC__heartmap
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rbp + 352], rax           # result
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00079_deref_α
                        .size            n00078_var_bx, .-n00078_var_bx
                        .type            n00079_deref_bx, @function
n00079_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_deref_α:           mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00080_line_mark_α
                        .size            n00079_deref_bx, .-n00079_deref_bx
                        .type            n00080_line_mark_bx, @function
n00080_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 106;            jmp   n00081_call_proc_staged_α
                        .size            n00080_line_mark_bx, .-n00080_line_mark_bx
                        .type            n00081_call_proc_staged_bx, @function
n00081_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_470_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_470_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 32
                        mov              rcx, qword ptr [rbp + 368]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rbp + 352]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_470_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_470_2
.Lcall_proc_staged_α_470_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_470_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00082_deref_α
n00081_call_proc_staged_β:
                                                                              jmp   show_ω
.Lcall_proc_staged_β_470_0:
                        .quad            .Lcall_proc_staged_β_470_0_s
.Lcall_proc_staged_β_470_0_s:
                        .string          "arrange"
                        .size            n00081_call_proc_staged_bx, .-n00081_call_proc_staged_bx
                        .type            n00082_deref_bx, @function
n00082_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_deref_α:           mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00083_binop_α
                        .size            n00082_deref_bx, .-n00082_deref_bx
                        .type            n00083_binop_bx, @function
n00083_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_binop_α:           mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00084_lit_string_α
                        .size            n00083_binop_bx, .-n00083_binop_bx
                        .type            n00084_lit_string_bx, @function
n00084_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_lit_string_α:      mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00085_var_ref_α
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          "D: "
                        .size            n00084_lit_string_bx, .-n00084_lit_string_bx
                        .type            n00085_var_ref_bx, @function
n00085_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00086_var_α
                        .size            n00085_var_ref_bx, .-n00085_var_ref_bx
                        .type            n00086_var_bx, @function
n00086_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_var_α:             mov              rax, qword ptr [r9 + 176]            # show__STATIC__diamondmap
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 496], rax           # result
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00087_deref_α
                        .size            n00086_var_bx, .-n00086_var_bx
                        .type            n00087_deref_bx, @function
n00087_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_deref_α:           mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00088_line_mark_α
                        .size            n00087_deref_bx, .-n00087_deref_bx
                        .type            n00088_line_mark_bx, @function
n00088_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00089_call_proc_staged_α
                        .size            n00088_line_mark_bx, .-n00088_line_mark_bx
                        .type            n00089_call_proc_staged_bx, @function
n00089_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_481_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_481_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 32
                        mov              rcx, qword ptr [rbp + 512]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rbp + 496]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_481_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_481_2
.Lcall_proc_staged_α_481_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_481_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00090_deref_α
n00089_call_proc_staged_β:
                                                                              jmp   show_ω
.Lcall_proc_staged_β_481_0:
                        .quad            .Lcall_proc_staged_β_481_0_s
.Lcall_proc_staged_β_481_0_s:
                        .string          "arrange"
                        .size            n00089_call_proc_staged_bx, .-n00089_call_proc_staged_bx
                        .type            n00090_deref_bx, @function
n00090_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_deref_α:           mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00091_binop_α
                        .size            n00090_deref_bx, .-n00090_deref_bx
                        .type            n00091_binop_bx, @function
n00091_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_binop_α:           mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00092_lit_string_α
                        .size            n00091_binop_bx, .-n00091_binop_bx
                        .type            n00092_lit_string_bx, @function
n00092_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_lit_string_α:      mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_484_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00093_var_ref_α
.Llit_string_α_484_0:   .quad            .Llit_string_α_484_0_s
.Llit_string_α_484_0_s: .string          "C: "
                        .size            n00092_lit_string_bx, .-n00092_lit_string_bx
                        .type            n00093_var_ref_bx, @function
n00093_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00094_var_α
                        .size            n00093_var_ref_bx, .-n00093_var_ref_bx
                        .type            n00094_var_bx, @function
n00094_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_var_α:             mov              rax, qword ptr [r9 + 160]            # show__STATIC__clubmap
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rbp + 640], rax           # result
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00095_deref_α
                        .size            n00094_var_bx, .-n00094_var_bx
                        .type            n00095_deref_bx, @function
n00095_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_deref_α:           mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00096_line_mark_α
                        .size            n00095_deref_bx, .-n00095_deref_bx
                        .type            n00096_line_mark_bx, @function
n00096_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00097_call_proc_staged_α
                        .size            n00096_line_mark_bx, .-n00096_line_mark_bx
                        .type            n00097_call_proc_staged_bx, @function
n00097_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_492_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_492_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 32
                        mov              rcx, qword ptr [rbp + 656]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rbp + 640]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_492_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_492_2
.Lcall_proc_staged_α_492_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_492_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00098_deref_α
n00097_call_proc_staged_β:
                                                                              jmp   show_ω
.Lcall_proc_staged_β_492_0:
                        .quad            .Lcall_proc_staged_β_492_0_s
.Lcall_proc_staged_β_492_0_s:
                        .string          "arrange"
                        .size            n00097_call_proc_staged_bx, .-n00097_call_proc_staged_bx
                        .type            n00098_deref_bx, @function
n00098_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_deref_α:           mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00099_binop_α
                        .size            n00098_deref_bx, .-n00098_deref_bx
                        .type            n00099_binop_bx, @function
n00099_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_binop_α:           mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
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
1:                                                                            jmp   n00100_make_list_α
                        .size            n00099_binop_bx, .-n00099_binop_bx
                        .type            n00100_make_list_bx, @function
n00100_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_make_list_α:       mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 32]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:53
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
1:                                                                            jmp   n00101_return_α
                        .size            n00100_make_list_bx, .-n00100_make_list_bx
                        .type            n00101_return_bx, @function
n00101_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   show_γ
                        .size            n00101_return_bx, .-n00101_return_bx
#-----------------------------------------------------------------------------------------------------------------------
show_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
show_β:
                                                                              jmp   show_ω
#-----------------------------------------------------------------------------------------------------------------------
show_γ:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lshow_α_497_243
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lshow_α_497_243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lshow_α_497_243
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lshow_α_497_243:       pop              rdx
                        pop              rax
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
                        mov              rbp, qword ptr [rbp + 1640];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lshow_α_497_244
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lshow_α_497_244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lshow_α_497_244
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lshow_α_497_244:       pop              rdx
                        pop              rax
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
                        mov              rbp, qword ptr [rbp + 1640];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_show:
                        .quad            7079452560730
                        .quad            34359738432
                        .quad            .Lgcmap_show_s
                        .quad            1568
                        .quad            3
                        .quad            774056185954304
                        .quad            17596481012416
                        .quad            932385860354768
.Lgcmap_show_s:         .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
FN__arrange:
                        sub              rsp, 496
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 488
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_arrange]
                        mov              qword ptr [rsp + 408], rax
                        mov              dword ptr [rsp + 400], 160
                        mov              dword ptr [rsp + 404], 496
                        mov              eax, 0
                        mov              qword ptr [rsp + 488], rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [rip + rt_sxt_fr_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              dword ptr [rax + 20], 1
                        mov              qword ptr [rax + 0], 0
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Larrange_α_497_245
                        mov              rsi, 48
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm498:        .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm498]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 2
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
                        lea              rsi, [rsp + 496]
                        mov              qword ptr [rdi + 40], rsi
.Larrange_α_497_245:
arrange_α_body:
                        .type            n00102_line_mark_bx, @function
n00102_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_518_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00103_var_ref_α
.Lline_mark_α_518_0:    .quad            .Lline_mark_α_518_0_s
.Lline_mark_α_518_0_s:  .string          "deal.icn"
                        .size            n00102_line_mark_bx, .-n00102_line_mark_bx
                        .type            n00103_var_ref_bx, @function
n00103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00104_var_ref_α
                        .size            n00103_var_ref_bx, .-n00103_var_ref_bx
                        .type            n00104_var_ref_bx, @function
n00104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # deckimage
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00105_var_ref_α
                        .size            n00104_var_ref_bx, .-n00104_var_ref_bx
                        .type            n00105_var_ref_bx, @function
n00105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00106_deref_α
                        .size            n00105_var_ref_bx, .-n00105_var_ref_bx
                        .type            n00106_deref_bx, @function
n00106_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_deref_α:           mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00107_deref_α
                        .size            n00106_deref_bx, .-n00106_deref_bx
                        .type            n00107_deref_bx, @function
n00107_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_deref_α:           mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00108_deref_α
                        .size            n00107_deref_bx, .-n00107_deref_bx
                        .type            n00108_deref_bx, @function
n00108_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_deref_α:           mov              rdi, qword ptr [rbp + 224]
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
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00109_line_mark_α
                        .size            n00108_deref_bx, .-n00108_deref_bx
                        .type            n00109_line_mark_bx, @function
n00109_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00110_call_icon_α
                        .size            n00109_line_mark_bx, .-n00109_line_mark_bx
                        .type            n00110_call_icon_bx, @function
n00110_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_call_icon_α:       mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn531:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn531]
                        lea              rsi, [rbp + 128]
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
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    arrange_ω
                                                                              jmp   n00111_lit_charset_α
n00110_call_icon_β:                                                             jmp   arrange_ω
                        .size            n00110_call_icon_bx, .-n00110_call_icon_bx
                        .type            n00111_lit_charset_bx, @function
n00111_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_lit_charset_α:     mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_532_0]
                        mov              qword ptr [rbp + 296], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_532_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
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
1:                                                                            jmp   n00112_binop_α
.Llit_charset_α_532_0:  .quad            .Llit_charset_α_532_0_s
.Llit_charset_α_532_0_s:
                        .string          " "
                        .size            n00111_lit_charset_bx, .-n00111_lit_charset_bx
                        .type            n00112_binop_bx, @function
n00112_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_binop_α:           mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:347
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
1:                                                                            jmp   n00113_var_ref_α
                        .size            n00112_binop_bx, .-n00112_binop_bx
                        .type            n00113_var_ref_bx, @function
n00113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052352                      # denom
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00114_var_ref_α
                        .size            n00113_var_ref_bx, .-n00113_var_ref_bx
                        .type            n00114_var_ref_bx, @function
n00114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052368                      # rank
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00115_deref_α
                        .size            n00114_var_ref_bx, .-n00114_var_ref_bx
                        .type            n00115_deref_bx, @function
n00115_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_deref_α:           mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00116_deref_α
                        .size            n00115_deref_bx, .-n00115_deref_bx
                        .type            n00116_deref_bx, @function
n00116_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_deref_α:           mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00117_line_mark_α
                        .size            n00116_deref_bx, .-n00116_deref_bx
                        .type            n00117_line_mark_bx, @function
n00117_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00118_call_icon_α
                        .size            n00117_line_mark_bx, .-n00117_line_mark_bx
                        .type            n00118_call_icon_bx, @function
n00118_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_call_icon_α:       mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn543:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn543]
                        lea              rsi, [rbp + 32]
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
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    arrange_ω
                                                                              jmp   n00119_return_α
n00118_call_icon_β:                                                             jmp   arrange_ω
                        .size            n00118_call_icon_bx, .-n00118_call_icon_bx
                        .type            n00119_return_bx, @function
n00119_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   arrange_γ
                        .size            n00119_return_bx, .-n00119_return_bx
#-----------------------------------------------------------------------------------------------------------------------
arrange_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
arrange_β:
                                                                              jmp   arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
arrange_γ:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Larrange_α_544_243
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Larrange_α_544_243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Larrange_α_544_243
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Larrange_α_544_243:    pop              rdx
                        pop              rax
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
                        mov              rbp, qword ptr [rbp + 488];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
arrange_ω:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Larrange_α_544_244
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Larrange_α_544_244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Larrange_α_544_244
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Larrange_α_544_244:    pop              rdx
                        pop              rax
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
                        mov              rbp, qword ptr [rbp + 488];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_arrange:
                        .quad            2131650235738
                        .quad            34359738448
                        .quad            .Lgcmap_arrange_s
                        .quad            400
                        .quad            1
                        .quad            439804651110400
.Lgcmap_arrange_s:      .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3984
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 3976
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3768], rax
                        mov              dword ptr [rsp + 3760], 160
                        mov              dword ptr [rsp + 3764], 3984
                        mov              eax, 0
                        mov              qword ptr [rsp + 3976], rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [rip + rt_sxt_fr_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              dword ptr [rax + 20], 1
                        mov              qword ptr [rax + 0], 0
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Loptions_α_544_245
                        mov              rsi, 48
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm545:        .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm545]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 2
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
                        lea              rsi, [rsp + 3984]
                        mov              qword ptr [rdi + 40], rsi
.Loptions_α_544_245:
options_α_body:
                        .type            n00120_line_mark_bx, @function
n00120_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 121
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_716_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00121_line_mark_α
.Lline_mark_α_716_0:    .quad            .Lline_mark_α_716_0_s
.Lline_mark_α_716_0_s:  .string          "deal.icn"
                        .size            n00120_line_mark_bx, .-n00120_line_mark_bx
                        .type            n00121_line_mark_bx, @function
n00121_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00122_var_ref_α
                        .size            n00121_line_mark_bx, .-n00121_line_mark_bx
                        .type            n00122_var_ref_bx, @function
n00122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4000]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n00123_nulltest_var_α
                        .size            n00122_var_ref_bx, .-n00122_var_ref_bx
                        .type            n00123_nulltest_var_bx, @function
n00123_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_nulltest_var_α:    mov              eax, dword ptr [rbp + 3472]
                        cmp              al, 104;                             je    n00124_line_mark_α
                        mov              rdi, qword ptr [rbp + 3472]
                        mov              rsi, qword ptr [rbp + 3480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00124_line_mark_α
                        cmp              eax, 0;                              jne   n00124_line_mark_α
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3496], rax
                        push             rax                                  # gc_poll bb_unop.cpp:64
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
1:                                                                            jmp   n00125_lit_charset_α
                        .size            n00123_nulltest_var_bx, .-n00123_nulltest_var_bx
                        .type            n00125_lit_charset_bx, @function
n00125_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_lit_charset_α:     mov              qword ptr [rbp + 3568], 2            # result
                        mov              dword ptr [rbp + 3572], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_722_0]
                        mov              qword ptr [rbp + 3576], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_722_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
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
1:                                                                            jmp   n00126_line_mark_α
.Llit_charset_α_722_0:  .quad            .Llit_charset_α_722_0_s
.Llit_charset_α_722_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00125_lit_charset_bx, .-n00125_lit_charset_bx
                        .type            n00126_line_mark_bx, @function
n00126_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00127_call_icon_α
                        .size            n00126_line_mark_bx, .-n00126_line_mark_bx
                        .type            n00127_call_icon_bx, @function
n00127_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_call_icon_α:       mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3544], rax
                        .section         .rodata
.Lcall_icon_α_rkfn726:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn726]
                        lea              rsi, [rbp + 3536]
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
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00124_line_mark_α
                                                                              jmp   n00128_assign_var_α
n00127_call_icon_β:                                                             jmp   n00124_line_mark_α
                        .size            n00127_call_icon_bx, .-n00127_call_icon_bx
                        .type            n00128_assign_var_bx, @function
n00128_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_assign_var_α:      mov              rdi, qword ptr [rbp + 3488]
                        mov              rsi, qword ptr [rbp + 3496]
                        mov              rdx, qword ptr [rbp + 3520]
                        mov              rcx, qword ptr [rbp + 3528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00124_line_mark_α
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
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
1:                                                                            jmp   n00124_line_mark_α
                        .size            n00128_assign_var_bx, .-n00128_assign_var_bx
                        .type            n00124_line_mark_bx, @function
n00124_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00129_line_mark_α
                        .size            n00124_line_mark_bx, .-n00124_line_mark_bx
                        .type            n00129_line_mark_bx, @function
n00129_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00130_call_icon_α
                        .size            n00129_line_mark_bx, .-n00129_line_mark_bx
                        .type            n00130_call_icon_bx, @function
n00130_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn733:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn733]
                        lea              rsi, [rbp + 3440]
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
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00131_line_mark_α
                                                                              jmp   n00132_assign_α
n00130_call_icon_β:                                                             jmp   n00131_line_mark_α
                        .size            n00130_call_icon_bx, .-n00130_call_icon_bx
                        .type            n00132_assign_bx, @function
n00132_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_assign_α:          mov              rax, qword ptr [rbp + 3424]
                        mov              rdx, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n00131_line_mark_α
                        .size            n00132_assign_bx, .-n00132_assign_bx
                        .type            n00131_line_mark_bx, @function
n00131_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00133_make_list_α
                        .size            n00131_line_mark_bx, .-n00131_line_mark_bx
                        .type            n00133_make_list_bx, @function
n00133_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_make_list_α:       lea              rdi, [rbp + 3408]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:53
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
1:                                                                            jmp   n00134_assign_α
                        .size            n00133_make_list_bx, .-n00133_make_list_bx
                        .type            n00134_assign_bx, @function
n00134_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_assign_α:          mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx;         jmp   n00135_line_mark_α
                        .size            n00134_assign_bx, .-n00134_assign_bx
                        .type            n00135_line_mark_bx, @function
n00135_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00136_bound_α
                        .size            n00135_line_mark_bx, .-n00135_line_mark_bx
                        .type            n00136_bound_bx, @function
n00136_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_bound_α:           mov              qword ptr [rbp + 416], rsp;          jmp   n00137_var_ref_α
                        .size            n00136_bound_bx, .-n00136_bound_bx
                        .type            n00137_var_ref_bx, @function
n00137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00138_deref_α
                        .size            n00137_var_ref_bx, .-n00137_var_ref_bx
                        .type            n00138_deref_bx, @function
n00138_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_deref_α:           mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00139_line_mark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00140_line_mark_α
                        .size            n00138_deref_bx, .-n00138_deref_bx
                        .type            n00140_line_mark_bx, @function
n00140_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00141_call_icon_α
                        .size            n00140_line_mark_bx, .-n00140_line_mark_bx
                        .type            n00141_call_icon_bx, @function
n00141_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_call_icon_α:       mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn750:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn750]
                        lea              rsi, [rbp + 336]
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
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00139_line_mark_α
                                                                              jmp   n00142_assign_α
n00141_call_icon_β:                                                             jmp   n00139_line_mark_α
                        .size            n00141_call_icon_bx, .-n00141_call_icon_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n00143_line_mark_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00143_line_mark_bx, @function
n00143_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 126;            jmp   n00144_var_α
                        .size            n00143_line_mark_bx, .-n00143_line_mark_bx
                        .type            n00144_var_bx, @function
n00144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:             mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3352], rax;         jmp   n00145_scan_enter_α
                        .size            n00144_var_bx, .-n00144_var_bx
                        .type            n00145_scan_enter_bx, @function
n00145_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_scan_enter_α:      mov              qword ptr [rbp + 480], r13
                        mov              qword ptr [rbp + 488], r14
                        mov              qword ptr [rbp + 496], r15
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
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
1:                      test             rax, rax;                            je    n00146_unmark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00147_disjunction_α
                        .size            n00145_scan_enter_bx, .-n00145_scan_enter_bx
                        .type            n00147_disjunction_bx, @function
n00147_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_disjunction_α:     mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0;            jmp   n00148_lit_string_α
.Ldisjunction_γ_571_as: mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_759_0
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00149_scan_α
.Ldisjunction_α_759_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_759_1
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00149_scan_α
.Ldisjunction_α_759_1:                                                        jmp   n00149_scan_α
n00147_disjunction_β:     mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              je    n00150_disjunction_β
                                                                              jmp   n00151_scan_α
.Ldisjunction_γ_571_af:
.Ldisjunction_ω_571_af: add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1;                              je    n00152_line_mark_α
                                                                              jmp   n00151_scan_α
                        .size            n00147_disjunction_bx, .-n00147_disjunction_bx
                        .type            n00149_scan_bx, @function
n00149_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_scan_α:            mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00146_unmark_α
n00149_scan_β:            mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r14, rax;                            jmp   n00147_disjunction_β
                                                                              jmp   n00146_unmark_α
                        .size            n00149_scan_bx, .-n00149_scan_bx
                        .type            n00153_conjunction_bx, @function
n00153_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_conjunction_α:                                                           jmp   .Ldisjunction_γ_571_as
n00153_conjunction_β:                                                           jmp   n00151_scan_α
                        .size            n00153_conjunction_bx, .-n00153_conjunction_bx
                        .type            n00152_line_mark_bx, @function
n00152_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 146;            jmp   n00154_var_ref_α
n00152_line_mark_β:                                                             jmp   n00154_var_ref_α
                        .size            n00152_line_mark_bx, .-n00152_line_mark_bx
                        .type            n00154_var_ref_bx, @function
n00154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx;         jmp   n00155_var_ref_α
                        .size            n00154_var_ref_bx, .-n00154_var_ref_bx
                        .type            n00155_var_ref_bx, @function
n00155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n00156_deref_α
                        .size            n00155_var_ref_bx, .-n00155_var_ref_bx
                        .type            n00156_deref_bx, @function
n00156_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_deref_α:           mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00151_scan_α
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00157_deref_α
                        .size            n00156_deref_bx, .-n00156_deref_bx
                        .type            n00157_deref_bx, @function
n00157_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_deref_α:           mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00151_scan_α
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00158_line_mark_α
                        .size            n00157_deref_bx, .-n00157_deref_bx
                        .type            n00158_line_mark_bx, @function
n00158_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 146;            jmp   n00159_call_icon_α
                        .size            n00158_line_mark_bx, .-n00158_line_mark_bx
                        .type            n00159_call_icon_bx, @function
n00159_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_icon_α:       mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn774:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn774]
                        lea              rsi, [rbp + 3216]
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
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00151_scan_α
                                                                              jmp   .Ldisjunction_γ_571_as
n00159_call_icon_β:                                                             jmp   n00151_scan_α
                        .size            n00159_call_icon_bx, .-n00159_call_icon_bx
                        .type            n00148_lit_string_bx, @function
n00148_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_lit_string_α:      mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_775_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n00160_scan_match_α
n00148_lit_string_β:                                                            jmp   .Ldisjunction_ω_571_af
.Llit_string_α_775_0:   .quad            .Llit_string_α_775_0_s
.Llit_string_α_775_0_s: .string          "-"
                        .size            n00148_lit_string_bx, .-n00148_lit_string_bx
                        .type            n00160_scan_match_bx, @function
n00160_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_571_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_777_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_571_af
                        mov              qword ptr [rbp + 3136], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3144], rax;         jmp   n00161_scan_tab_α
.Lscan_match_α_777_0:   .quad            .Lscan_match_α_777_0_s
.Lscan_match_α_777_0_s: .string          "-"
                        .size            n00160_scan_match_bx, .-n00160_scan_match_bx
                        .type            n00161_scan_tab_bx, @function
n00161_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_scan_tab_α:        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_571_af
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
1:                      mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_779_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_779_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_571_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_571_af
                        mov              qword ptr [rbp + 3120], r14
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
1:                      mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx;         jmp   n00162_lit_integer_α
n00161_scan_tab_β:        mov              r14, qword ptr [rbp + 3120];         jmp   .Ldisjunction_ω_571_af
                        .size            n00161_scan_tab_bx, .-n00161_scan_tab_bx
                        .type            n00162_lit_integer_bx, @function
n00162_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_lit_integer_α:     mov              qword ptr [rbp + 3088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_780_0]
                        mov              qword ptr [rbp + 3096], rax;         jmp   n00163_line_mark_α
.Llit_integer_α_780_0:  .quad            0
                        .size            n00162_lit_integer_bx, .-n00162_lit_integer_bx
                        .type            n00163_line_mark_bx, @function
n00163_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00164_scan_pos_α
                        .size            n00163_line_mark_bx, .-n00163_line_mark_bx
                        .type            n00164_scan_pos_bx, @function
n00164_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_784_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_784_0:     cmp              rax, 1;                              jl    n00165_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00165_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00165_var_α
                        mov              qword ptr [rbp + 3056], 3
                        mov              qword ptr [rbp + 3064], rax;         jmp   n00161_scan_tab_β
                        .size            n00164_scan_pos_bx, .-n00164_scan_pos_bx
                        .type            n00165_var_bx, @function
n00165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_α:             mov              qword ptr [rbp + 3040], 0
                        mov              qword ptr [rbp + 3048], 0;           jmp   n00166_conjunction_α
n00165_var_β:                                                                   jmp   n00161_scan_tab_β
                        .size            n00165_var_bx, .-n00165_var_bx
                        .type            n00166_conjunction_bx, @function
n00166_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_conjunction_α:     mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3032], rax;         jmp   n00167_line_mark_α
n00166_conjunction_β:                                                           jmp   .Ldisjunction_ω_571_af
                        .size            n00166_conjunction_bx, .-n00166_conjunction_bx
                        .type            n00167_line_mark_bx, @function
n00167_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00168_line_mark_α
                        .size            n00167_line_mark_bx, .-n00167_line_mark_bx
                        .type            n00168_line_mark_bx, @function
n00168_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00169_disjunction_α
                        .size            n00168_line_mark_bx, .-n00168_line_mark_bx
                        .type            n00169_disjunction_bx, @function
n00169_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_disjunction_α:     mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              dword ptr [rbp + 2784], 0;           jmp   n00170_lit_string_α
.Ldisjunction_γ_591_as: mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_792_0
                                                                              jmp   n00171_line_mark_α
.Ldisjunction_α_792_0:                                                        jmp   n00171_line_mark_α
n00169_disjunction_β:     mov              eax, dword ptr [rbp + 2784];         jmp   n00171_line_mark_α
.Ldisjunction_γ_591_af:
.Ldisjunction_ω_591_af: add              dword ptr [rbp + 2784], 1
                        mov              eax, dword ptr [rbp + 2784];         jmp   n00171_line_mark_α
                        .size            n00169_disjunction_bx, .-n00169_disjunction_bx
                        .type            n00171_line_mark_bx, @function
n00171_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00172_bound_α
                        .size            n00171_line_mark_bx, .-n00171_line_mark_bx
                        .type            n00172_bound_bx, @function
n00172_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_bound_α:           mov              qword ptr [rbp + 688], rsp;          jmp   n00173_lit_integer_α
                        .size            n00172_bound_bx, .-n00172_bound_bx
                        .type            n00173_lit_integer_bx, @function
n00173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_lit_integer_α:     mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_797_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00174_line_mark_α
.Llit_integer_α_797_0:  .quad            1
                        .size            n00173_lit_integer_bx, .-n00173_lit_integer_bx
                        .type            n00174_line_mark_bx, @function
n00174_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00175_scan_move_α
                        .size            n00174_line_mark_bx, .-n00174_line_mark_bx
                        .type            n00175_scan_move_bx, @function
n00175_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00151_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00151_scan_α
                        mov              qword ptr [rbp + 624], r14
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
1:                      mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00176_assign_α
n00175_scan_move_β:       mov              r14, qword ptr [rbp + 624];          jmp   n00151_scan_α
                        .size            n00175_scan_move_bx, .-n00175_scan_move_bx
                        .type            n00176_assign_bx, @function
n00176_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_assign_α:          mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n00177_line_mark_α
                        .size            n00176_assign_bx, .-n00176_assign_bx
                        .type            n00177_line_mark_bx, @function
n00177_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00150_disjunction_α
                        .size            n00177_line_mark_bx, .-n00177_line_mark_bx
                        .type            n00150_disjunction_bx, @function
n00150_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_disjunction_α:     mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              dword ptr [rbp + 752], 0;            jmp   n00178_var_ref_α
.Ldisjunction_γ_599_as: mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_806_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00179_unmark_α
.Ldisjunction_α_806_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_806_1
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00179_unmark_α
.Ldisjunction_α_806_1:                                                        jmp   n00179_unmark_α
n00150_disjunction_β:     mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              je    n00180_disjunction_β
                                                                              jmp   n00179_unmark_α
.Ldisjunction_γ_599_af:
.Ldisjunction_ω_599_af: add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 1;                              je    n00181_line_mark_α
                                                                              jmp   n00179_unmark_α
                        .size            n00150_disjunction_bx, .-n00150_disjunction_bx
                        .type            n00181_line_mark_bx, @function
n00181_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 144;            jmp   n00182_lit_string_α
n00181_line_mark_β:                                                             jmp   n00182_lit_string_α
                        .size            n00181_line_mark_bx, .-n00181_line_mark_bx
                        .type            n00182_lit_string_bx, @function
n00182_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_lit_string_α:      mov              qword ptr [rbp + 2656], 2            # result
                        mov              dword ptr [rbp + 2660], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_809_0]
                        mov              qword ptr [rbp + 2664], rax;         jmp   n00183_var_ref_α
.Llit_string_α_809_0:   .quad            .Llit_string_α_809_0_s
.Llit_string_α_809_0_s: .string          "Unrecognized option: -"
                        .size            n00182_lit_string_bx, .-n00182_lit_string_bx
                        .type            n00183_var_ref_bx, @function
n00183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx;         jmp   n00184_deref_α
                        .size            n00183_var_ref_bx, .-n00183_var_ref_bx
                        .type            n00184_deref_bx, @function
n00184_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_deref_α:           mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00179_unmark_α
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00185_line_mark_α
                        .size            n00184_deref_bx, .-n00184_deref_bx
                        .type            n00185_line_mark_bx, @function
n00185_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 144;            jmp   n00186_call_icon_α
                        .size            n00185_line_mark_bx, .-n00185_line_mark_bx
                        .type            n00186_call_icon_bx, @function
n00186_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_call_icon_α:       mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lcall_icon_α_rkfn816:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn816]
                        lea              rsi, [rbp + 2608]
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
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00179_unmark_α
                                                                              jmp   .Ldisjunction_γ_599_as
n00186_call_icon_β:                                                             jmp   n00179_unmark_α
                        .size            n00186_call_icon_bx, .-n00186_call_icon_bx
                        .type            n00178_var_ref_bx, @function
n00178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n00187_var_ref_α
n00178_var_ref_β:                                                               jmp   .Ldisjunction_ω_599_af
                        .size            n00178_var_ref_bx, .-n00178_var_ref_bx
                        .type            n00187_var_ref_bx, @function
n00187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4000]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n00188_deref_α
                        .size            n00187_var_ref_bx, .-n00187_var_ref_bx
                        .type            n00188_deref_bx, @function
n00188_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_deref_α:           mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_599_af
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00189_deref_α
                        .size            n00188_deref_bx, .-n00188_deref_bx
                        .type            n00189_deref_bx, @function
n00189_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_deref_α:           mov              rdi, qword ptr [rbp + 2528]
                        mov              rsi, qword ptr [rbp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_599_af
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00190_line_mark_α
                        .size            n00189_deref_bx, .-n00189_deref_bx
                        .type            n00190_line_mark_bx, @function
n00190_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00191_call_builtin_gen_α
                        .size            n00190_line_mark_bx, .-n00190_line_mark_bx
                        .type            n00191_call_builtin_gen_bx, @function
n00191_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2456], rax
                        mov              qword ptr [rbp + 2480], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_825_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn284: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn284]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 2
                        lea              rcx, [rbp + 2480]
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
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_599_af
                                                                              jmp   n00192_lit_integer_α
n00191_call_builtin_gen_β:
                                                                              jmp   .Lcall_builtin_gen_α_825_60
                        .size            n00191_call_builtin_gen_bx, .-n00191_call_builtin_gen_bx
                        .type            n00192_lit_integer_bx, @function
n00192_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_lit_integer_α:     mov              qword ptr [rbp + 2576], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_826_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n00193_coerce_numeric_α
.Llit_integer_α_826_0:  .quad            1
                        .size            n00192_lit_integer_bx, .-n00192_lit_integer_bx
                        .type            n00193_coerce_numeric_bx, @function
n00193_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2432]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_828_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_828_0
                        mov              eax, dword ptr [rbp + 2576]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_828_0
.Lcoerce_numeric_α_828_1:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n00194_binop_α
.Lcoerce_numeric_α_828_0:
                        lea              rdi, [rbp + 2432]
                        lea              rsi, [rbp + 2576]
                        lea              rdx, [rbp + 2416]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
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
1:                      mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 104;                             je    .Ldisjunction_ω_599_af
                                                                              jmp   n00194_binop_α
                        .size            n00193_coerce_numeric_bx, .-n00193_coerce_numeric_bx
                        .type            n00194_binop_bx, @function
n00194_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_binop_α:           mov              eax, dword ptr [rbp + 2416]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_829_2
                        mov              rax, qword ptr [rbp + 2424]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_829_0
                        mov              qword ptr [rbp + 2400], 3
                        mov              qword ptr [rbp + 2408], rax;         jmp   .Lbinop_α_829_7
.Lbinop_α_829_2:        and              edx, 1;                              jz    .Lbinop_α_829_0
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_829_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_829_4
.Lbinop_α_829_3:        movq             xmm0, rsi
.Lbinop_α_829_4:        cmp              cl, 5;                               je    .Lbinop_α_829_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_829_6
.Lbinop_α_829_5:        movq             xmm1, rdi
.Lbinop_α_829_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_829_0
                        mov              qword ptr [rbp + 2400], 5
                        mov              qword ptr [rbp + 2408], rax
.Lbinop_α_829_7:                                                              jmp   n00195_assign_α
.Lbinop_α_829_0:        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 2576]
                        mov              rcx, qword ptr [rbp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_599_af
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
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
1:                                                                            jmp   n00195_assign_α
                        .size            n00194_binop_bx, .-n00194_binop_bx
                        .type            n00195_assign_bx, @function
n00195_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_assign_α:          mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n00196_line_mark_α
                        .size            n00195_assign_bx, .-n00195_assign_bx
                        .type            n00196_line_mark_bx, @function
n00196_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 131;            jmp   n00197_var_ref_α
                        .size            n00196_line_mark_bx, .-n00196_line_mark_bx
                        .type            n00197_var_ref_bx, @function
n00197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00198_var_α
                        .size            n00197_var_ref_bx, .-n00197_var_ref_bx
                        .type            n00198_var_bx, @function
n00198_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_α:             mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00199_subscript_α
                        .size            n00198_var_bx, .-n00198_var_bx
                        .type            n00199_subscript_bx, @function
n00199_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_subscript_α:       mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00179_unmark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n00180_disjunction_α
                        .size            n00199_subscript_bx, .-n00199_subscript_bx
                        .type            n00180_disjunction_bx, @function
n00180_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_disjunction_α:     mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0;            jmp   n00200_lit_charset_α
.Ldisjunction_γ_620_as: mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_839_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00201_assign_var_α
.Ldisjunction_α_839_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_839_1
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00201_assign_var_α
.Ldisjunction_α_839_1:                                                        jmp   n00201_assign_var_α
n00180_disjunction_β:     mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              je    n00202_disjunction_β
                                                                              jmp   n00179_unmark_α
.Ldisjunction_γ_620_af:
.Ldisjunction_ω_620_af: add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1;                              je    n00203_lit_integer_α
                                                                              jmp   n00179_unmark_α
                        .size            n00180_disjunction_bx, .-n00180_disjunction_bx
                        .type            n00201_assign_var_bx, @function
n00201_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_assign_var_α:      mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00179_unmark_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
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
1:                                                                            jmp   .Ldisjunction_γ_599_as
n00201_assign_var_β:                                                            jmp   n00179_unmark_α
                        .size            n00201_assign_var_bx, .-n00201_assign_var_bx
                        .type            n00203_lit_integer_bx, @function
n00203_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_lit_integer_α:     mov              qword ptr [rbp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_841_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   .Ldisjunction_γ_620_as
n00203_lit_integer_β:                                                           jmp   n00179_unmark_α
.Llit_integer_α_841_0:  .quad            1
                        .size            n00203_lit_integer_bx, .-n00203_lit_integer_bx
                        .type            n00200_lit_charset_bx, @function
n00200_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_lit_charset_α:     mov              qword ptr [rbp + 2240], 2            # result
                        mov              dword ptr [rbp + 2244], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_842_0]
                        mov              qword ptr [rbp + 2248], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_842_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
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
1:                                                                            jmp   n00204_var_ref_α
n00200_lit_charset_β:                                                           jmp   .Ldisjunction_ω_620_af
.Llit_charset_α_842_0:  .quad            .Llit_charset_α_842_0_s
.Llit_charset_α_842_0_s:
                        .string          "+.:"
                        .size            n00200_lit_charset_bx, .-n00200_lit_charset_bx
                        .type            n00204_var_ref_bx, @function
n00204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4000]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n00205_var_α
                        .size            n00204_var_ref_bx, .-n00204_var_ref_bx
                        .type            n00205_var_bx, @function
n00205_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_var_α:             mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 2296], rax;         jmp   n00206_subscript_α
                        .size            n00205_var_bx, .-n00205_var_bx
                        .type            n00206_subscript_bx, @function
n00206_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_subscript_α:       mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n00207_deref_α
                        .size            n00206_subscript_bx, .-n00206_subscript_bx
                        .type            n00207_deref_bx, @function
n00207_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_deref_α:           mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00208_assign_α
                        .size            n00207_deref_bx, .-n00207_deref_bx
                        .type            n00208_assign_bx, @function
n00208_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_assign_α:          mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n00209_var_ref_α
                        .size            n00208_assign_bx, .-n00208_assign_bx
                        .type            n00209_var_ref_bx, @function
n00209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n00210_deref_α
                        .size            n00209_var_ref_bx, .-n00209_var_ref_bx
                        .type            n00210_deref_bx, @function
n00210_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_deref_α:           mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00211_line_mark_α
                        .size            n00210_deref_bx, .-n00210_deref_bx
                        .type            n00211_line_mark_bx, @function
n00211_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 132;            jmp   n00212_call_icon_α
                        .size            n00211_line_mark_bx, .-n00211_line_mark_bx
                        .type            n00212_call_icon_bx, @function
n00212_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_call_icon_α:       mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
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
.Lcall_icon_α_bynamefn305: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn305]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
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
                        push             rax                                  # gc_poll bb_call.cpp:451
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                                                                              jmp   n00213_line_mark_α
n00212_call_icon_β:                                                             jmp   .Ldisjunction_ω_620_af
                        .size            n00212_call_icon_bx, .-n00212_call_icon_bx
                        .type            n00213_line_mark_bx, @function
n00213_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00214_disjunction_α
                        .size            n00213_line_mark_bx, .-n00213_line_mark_bx
                        .type            n00214_disjunction_bx, @function
n00214_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_disjunction_α:     mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1816], 0
                        mov              dword ptr [rbp + 1824], 0;           jmp   n00215_lit_string_α
.Ldisjunction_γ_634_as: mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_859_0
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n00216_assign_α
.Ldisjunction_α_859_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_859_1
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n00216_assign_α
.Ldisjunction_α_859_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_859_2
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n00216_assign_α
.Ldisjunction_α_859_2:                                                        jmp   n00216_assign_α
n00214_disjunction_β:     mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0;                              je    n00217_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_634_af
                                                                              jmp   .Ldisjunction_ω_634_af
.Ldisjunction_γ_634_af:
.Ldisjunction_ω_634_af: add              dword ptr [rbp + 1824], 1
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 1;                              je    n00218_var_ref_α
                        cmp              eax, 2;                              je    n00219_lit_string_α
                                                                              jmp   n00220_line_mark_α
                        .size            n00214_disjunction_bx, .-n00214_disjunction_bx
                        .type            n00216_assign_bx, @function
n00216_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_assign_α:          mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n00220_line_mark_α
                        .size            n00216_assign_bx, .-n00216_assign_bx
                        .type            n00220_line_mark_bx, @function
n00220_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 135;            jmp   n00221_var_α
                        .size            n00220_line_mark_bx, .-n00220_line_mark_bx
                        .type            n00221_var_bx, @function
n00221_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_var_α:             mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00202_disjunction_α
                        .size            n00221_var_bx, .-n00221_var_bx
                        .type            n00202_disjunction_bx, @function
n00202_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_disjunction_α:     mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0;            jmp   n00222_lit_string_α
.Ldisjunction_γ_638_as: mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_866_0
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00223_conjunction_α
.Ldisjunction_α_866_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_866_1
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00223_conjunction_α
.Ldisjunction_α_866_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_866_2
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00223_conjunction_α
.Ldisjunction_α_866_2:                                                        jmp   n00223_conjunction_α
n00202_disjunction_β:     mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              je    n00179_unmark_α
                        cmp              eax, 1;                              je    n00224_disjunction_β
                                                                              jmp   n00225_disjunction_β
.Ldisjunction_γ_638_af:
.Ldisjunction_ω_638_af: add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 1;                              je    n00226_lit_string_α
                        cmp              eax, 2;                              je    n00227_lit_string_α
                                                                              jmp   n00179_unmark_α
                        .size            n00202_disjunction_bx, .-n00202_disjunction_bx
                        .type            n00223_conjunction_bx, @function
n00223_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_conjunction_α:     mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax;          jmp   .Ldisjunction_γ_620_as
n00223_conjunction_β:                                                           jmp   n00179_unmark_α
                        .size            n00223_conjunction_bx, .-n00223_conjunction_bx
                        .type            n00227_lit_string_bx, @function
n00227_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_lit_string_α:      mov              qword ptr [rbp + 1712], 2            # result
                        mov              dword ptr [rbp + 1716], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_868_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n00228_call_builtin_α
n00227_lit_string_β:                                                            jmp   .Ldisjunction_ω_638_af
.Llit_string_α_868_0:   .quad            .Llit_string_α_868_0_s
.Llit_string_α_868_0_s: .string          "."
                        .size            n00227_lit_string_bx, .-n00227_lit_string_bx
                        .type            n00228_call_builtin_bx, @function
n00228_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_call_builtin_α:    mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn870: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn870]
                        lea              rsi, [rbp + 1760]
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
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_638_af
                                                                              jmp   n00229_line_mark_α
n00228_call_builtin_β:                                                          jmp   .Ldisjunction_ω_638_af
                        .size            n00228_call_builtin_bx, .-n00228_call_builtin_bx
                        .type            n00229_line_mark_bx, @function
n00229_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00225_disjunction_α
                        .size            n00229_line_mark_bx, .-n00229_line_mark_bx
                        .type            n00225_disjunction_bx, @function
n00225_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_disjunction_α:     mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              dword ptr [rbp + 1424], 0;           jmp   n00230_var_ref_α
.Ldisjunction_γ_643_as: mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_874_0
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax;         jmp   .Ldisjunction_γ_638_as
.Ldisjunction_α_874_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_874_1
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1416], rax;         jmp   .Ldisjunction_γ_638_as
.Ldisjunction_α_874_1:                                                        jmp   .Ldisjunction_γ_638_as
n00225_disjunction_β:     mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_643_af
                                                                              jmp   .Ldisjunction_ω_643_af
.Ldisjunction_γ_643_af:
.Ldisjunction_ω_643_af: add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 1;                              je    n00231_lit_string_α
                                                                              jmp   n00179_unmark_α
                        .size            n00225_disjunction_bx, .-n00225_disjunction_bx
                        .type            n00231_lit_string_bx, @function
n00231_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_lit_string_α:      mov              qword ptr [rbp + 1600], 2            # result
                        mov              dword ptr [rbp + 1604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_875_0]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00232_var_ref_α
n00231_lit_string_β:                                                            jmp   .Ldisjunction_ω_643_af
.Llit_string_α_875_0:   .quad            .Llit_string_α_875_0_s
.Llit_string_α_875_0_s: .string          "-"
                        .size            n00231_lit_string_bx, .-n00231_lit_string_bx
                        .type            n00232_var_ref_bx, @function
n00232_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n00233_lit_string_α
                        .size            n00232_var_ref_bx, .-n00232_var_ref_bx
                        .type            n00233_lit_string_bx, @function
n00233_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_lit_string_α:      mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_878_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n00234_deref_α
.Llit_string_α_878_0:   .quad            .Llit_string_α_878_0_s
.Llit_string_α_878_0_s: .string          " needs numeric parameter"
                        .size            n00233_lit_string_bx, .-n00233_lit_string_bx
                        .type            n00234_deref_bx, @function
n00234_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_deref_α:           mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_643_af
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00235_line_mark_α
                        .size            n00234_deref_bx, .-n00234_deref_bx
                        .type            n00235_line_mark_bx, @function
n00235_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 140;            jmp   n00236_call_icon_α
                        .size            n00235_line_mark_bx, .-n00235_line_mark_bx
                        .type            n00236_call_icon_bx, @function
n00236_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_icon_α:       mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lcall_icon_α_rkfn883:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn883]
                        lea              rsi, [rbp + 1536]
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
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_643_af
                                                                              jmp   .Ldisjunction_γ_643_as
n00236_call_icon_β:                                                             jmp   .Ldisjunction_ω_643_af
                        .size            n00236_call_icon_bx, .-n00236_call_icon_bx
                        .type            n00230_var_ref_bx, @function
n00230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n00237_deref_α
n00230_var_ref_β:                                                               jmp   .Ldisjunction_ω_643_af
                        .size            n00230_var_ref_bx, .-n00230_var_ref_bx
                        .type            n00237_deref_bx, @function
n00237_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_deref_α:           mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_643_af
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00238_line_mark_α
                        .size            n00237_deref_bx, .-n00237_deref_bx
                        .type            n00238_line_mark_bx, @function
n00238_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00239_call_icon_α
                        .size            n00238_line_mark_bx, .-n00238_line_mark_bx
                        .type            n00239_call_icon_bx, @function
n00239_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_call_icon_α:       mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lcall_icon_α_rkfn890:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn890]
                        lea              rsi, [rbp + 1456]
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
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_643_af
                                                                              jmp   .Ldisjunction_γ_643_as
n00239_call_icon_β:                                                             jmp   .Ldisjunction_ω_643_af
                        .size            n00239_call_icon_bx, .-n00239_call_icon_bx
                        .type            n00226_lit_string_bx, @function
n00226_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_lit_string_α:      mov              qword ptr [rbp + 1328], 2            # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_891_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n00240_call_builtin_α
n00226_lit_string_β:                                                            jmp   .Ldisjunction_ω_638_af
.Llit_string_α_891_0:   .quad            .Llit_string_α_891_0_s
.Llit_string_α_891_0_s: .string          "+"
                        .size            n00226_lit_string_bx, .-n00226_lit_string_bx
                        .type            n00240_call_builtin_bx, @function
n00240_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_call_builtin_α:    mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn893: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn893]
                        lea              rsi, [rbp + 1376]
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
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_638_af
                                                                              jmp   n00241_line_mark_α
n00240_call_builtin_β:                                                          jmp   .Ldisjunction_ω_638_af
                        .size            n00240_call_builtin_bx, .-n00240_call_builtin_bx
                        .type            n00241_line_mark_bx, @function
n00241_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 137;            jmp   n00224_disjunction_α
                        .size            n00241_line_mark_bx, .-n00241_line_mark_bx
                        .type            n00224_disjunction_bx, @function
n00224_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_disjunction_α:     mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              dword ptr [rbp + 1040], 0;           jmp   n00242_var_ref_α
.Ldisjunction_γ_657_as: mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_897_0
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_638_as
.Ldisjunction_α_897_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_897_1
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_638_as
.Ldisjunction_α_897_1:                                                        jmp   .Ldisjunction_γ_638_as
n00224_disjunction_β:     mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_657_af
                                                                              jmp   .Ldisjunction_ω_657_af
.Ldisjunction_γ_657_af:
.Ldisjunction_ω_657_af: add              dword ptr [rbp + 1040], 1
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 1;                              je    n00243_lit_string_α
                                                                              jmp   n00179_unmark_α
                        .size            n00224_disjunction_bx, .-n00224_disjunction_bx
                        .type            n00243_lit_string_bx, @function
n00243_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_string_α:      mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_898_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n00244_var_ref_α
n00243_lit_string_β:                                                            jmp   .Ldisjunction_ω_657_af
.Llit_string_α_898_0:   .quad            .Llit_string_α_898_0_s
.Llit_string_α_898_0_s: .string          "-"
                        .size            n00243_lit_string_bx, .-n00243_lit_string_bx
                        .type            n00244_var_ref_bx, @function
n00244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00245_lit_string_α
                        .size            n00244_var_ref_bx, .-n00244_var_ref_bx
                        .type            n00245_lit_string_bx, @function
n00245_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_lit_string_α:      mov              qword ptr [rbp + 1264], 2            # result
                        mov              dword ptr [rbp + 1268], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_901_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00246_deref_α
.Llit_string_α_901_0:   .quad            .Llit_string_α_901_0_s
.Llit_string_α_901_0_s: .string          " needs numeric parameter"
                        .size            n00245_lit_string_bx, .-n00245_lit_string_bx
                        .type            n00246_deref_bx, @function
n00246_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_deref_α:           mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_657_af
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00247_line_mark_α
                        .size            n00246_deref_bx, .-n00246_deref_bx
                        .type            n00247_line_mark_bx, @function
n00247_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00248_call_icon_α
                        .size            n00247_line_mark_bx, .-n00247_line_mark_bx
                        .type            n00248_call_icon_bx, @function
n00248_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_call_icon_α:       mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lcall_icon_α_rkfn906:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn906]
                        lea              rsi, [rbp + 1152]
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
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_657_af
                                                                              jmp   .Ldisjunction_γ_657_as
n00248_call_icon_β:                                                             jmp   .Ldisjunction_ω_657_af
                        .size            n00248_call_icon_bx, .-n00248_call_icon_bx
                        .type            n00242_var_ref_bx, @function
n00242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00249_deref_α
n00242_var_ref_β:                                                               jmp   .Ldisjunction_ω_657_af
                        .size            n00242_var_ref_bx, .-n00242_var_ref_bx
                        .type            n00249_deref_bx, @function
n00249_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_deref_α:           mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_657_af
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00250_line_mark_α
                        .size            n00249_deref_bx, .-n00249_deref_bx
                        .type            n00250_line_mark_bx, @function
n00250_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 137;            jmp   n00251_call_icon_α
                        .size            n00250_line_mark_bx, .-n00250_line_mark_bx
                        .type            n00251_call_icon_bx, @function
n00251_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_call_icon_α:       mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lcall_icon_α_rkfn913:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn913]
                        lea              rsi, [rbp + 1072]
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
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_657_af
                                                                              jmp   .Ldisjunction_γ_657_as
n00251_call_icon_β:                                                             jmp   .Ldisjunction_ω_657_af
                        .size            n00251_call_icon_bx, .-n00251_call_icon_bx
                        .type            n00222_lit_string_bx, @function
n00222_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_lit_string_α:      mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_914_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00252_call_builtin_α
n00222_lit_string_β:                                                            jmp   .Ldisjunction_ω_638_af
.Llit_string_α_914_0:   .quad            .Llit_string_α_914_0_s
.Llit_string_α_914_0_s: .string          ":"
                        .size            n00222_lit_string_bx, .-n00222_lit_string_bx
                        .type            n00252_call_builtin_bx, @function
n00252_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_call_builtin_α:    mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn916: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn916]
                        lea              rsi, [rbp + 992]
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
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_638_af
                                                                              jmp   n00253_var_α
n00252_call_builtin_β:                                                          jmp   .Ldisjunction_ω_638_af
                        .size            n00252_call_builtin_bx, .-n00252_call_builtin_bx
                        .type            n00253_var_bx, @function
n00253_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_α:             mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 936], rax;          jmp   .Ldisjunction_γ_638_as
n00253_var_β:                                                                   jmp   n00179_unmark_α
                        .size            n00253_var_bx, .-n00253_var_bx
                        .type            n00219_lit_string_bx, @function
n00219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_lit_string_α:      mov              qword ptr [rbp + 2096], 2            # result
                        mov              dword ptr [rbp + 2100], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_919_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n00254_var_ref_α
n00219_lit_string_β:                                                            jmp   .Ldisjunction_ω_634_af
.Llit_string_α_919_0:   .quad            .Llit_string_α_919_0_s
.Llit_string_α_919_0_s: .string          "No parameter following -"
                        .size            n00219_lit_string_bx, .-n00219_lit_string_bx
                        .type            n00254_var_ref_bx, @function
n00254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n00255_deref_α
                        .size            n00254_var_ref_bx, .-n00254_var_ref_bx
                        .type            n00255_deref_bx, @function
n00255_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_deref_α:           mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00256_line_mark_α
                        .size            n00255_deref_bx, .-n00255_deref_bx
                        .type            n00256_line_mark_bx, @function
n00256_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00257_call_icon_α
                        .size            n00256_line_mark_bx, .-n00256_line_mark_bx
                        .type            n00257_call_icon_bx, @function
n00257_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_call_icon_α:       mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lcall_icon_α_rkfn926:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn926]
                        lea              rsi, [rbp + 2048]
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
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                                                                              jmp   .Ldisjunction_γ_634_as
n00257_call_icon_β:                                                             jmp   .Ldisjunction_ω_634_af
                        .size            n00257_call_icon_bx, .-n00257_call_icon_bx
                        .type            n00218_var_ref_bx, @function
n00218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n00258_deref_α
n00218_var_ref_β:                                                               jmp   .Ldisjunction_ω_634_af
                        .size            n00218_var_ref_bx, .-n00218_var_ref_bx
                        .type            n00258_deref_bx, @function
n00258_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_deref_α:           mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00259_line_mark_α
                        .size            n00258_deref_bx, .-n00258_deref_bx
                        .type            n00259_line_mark_bx, @function
n00259_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00260_call_icon_α
                        .size            n00259_line_mark_bx, .-n00259_line_mark_bx
                        .type            n00260_call_icon_bx, @function
n00260_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_call_icon_α:       mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lcall_icon_α_rkfn933:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn933]
                        lea              rsi, [rbp + 1968]
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
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                                                                              jmp   .Ldisjunction_γ_634_as
n00260_call_icon_β:                                                             jmp   .Ldisjunction_ω_634_af
                        .size            n00260_call_icon_bx, .-n00260_call_icon_bx
                        .type            n00215_lit_string_bx, @function
n00215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_lit_string_α:      mov              qword ptr [rbp + 1856], 2            # result
                        mov              dword ptr [rbp + 1860], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_934_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n00261_lit_integer_α
n00215_lit_string_β:                                                            jmp   .Ldisjunction_ω_634_af
.Llit_string_α_934_0:   .quad            .Llit_string_α_934_0_s
.Llit_string_α_934_0_s: .string          ""
                        .size            n00215_lit_string_bx, .-n00215_lit_string_bx
                        .type            n00261_lit_integer_bx, @function
n00261_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_lit_integer_α:     mov              qword ptr [rbp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_935_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n00262_line_mark_α
.Llit_integer_α_935_0:  .quad            0
                        .size            n00261_lit_integer_bx, .-n00261_lit_integer_bx
                        .type            n00262_line_mark_bx, @function
n00262_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00217_scan_tab_α
                        .size            n00262_line_mark_bx, .-n00262_line_mark_bx
                        .type            n00217_scan_tab_bx, @function
n00217_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_939_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_939_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_634_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_634_af
                        mov              qword ptr [rbp + 1904], r14
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
1:                      mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n00263_binop_test_α
n00217_scan_tab_β:        mov              r14, qword ptr [rbp + 1904];         jmp   .Ldisjunction_ω_634_af
                        .size            n00217_scan_tab_bx, .-n00217_scan_tab_bx
                        .type            n00263_binop_test_bx, @function
n00263_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_binop_test_α:      mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
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
1:                      test             eax, eax;                            jz    n00217_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
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
1:                                                                            jmp   .Ldisjunction_γ_634_as
n00263_binop_test_β:                                                            jmp   n00217_scan_tab_β
                        .size            n00263_binop_test_bx, .-n00263_binop_test_bx
                        .type            n00179_unmark_bx, @function
n00179_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_unmark_α:          mov              rsp, qword ptr [rbp + 688];          jmp   n00264_line_mark_α
                        .size            n00179_unmark_bx, .-n00179_unmark_bx
                        .type            n00264_line_mark_bx, @function
n00264_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00172_bound_α
                        .size            n00264_line_mark_bx, .-n00264_line_mark_bx
                        .type            n00151_scan_bx, @function
n00151_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_scan_α:            mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00146_unmark_α
n00151_scan_β:                                                                  jmp   n00146_unmark_α
                        .size            n00151_scan_bx, .-n00151_scan_bx
                        .type            n00170_lit_string_bx, @function
n00170_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_lit_string_α:      mov              qword ptr [rbp + 2960], 2            # result
                        mov              dword ptr [rbp + 2964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_947_0]
                        mov              qword ptr [rbp + 2968], rax;         jmp   n00265_scan_match_α
n00170_lit_string_β:                                                            jmp   .Ldisjunction_ω_591_af
.Llit_string_α_947_0:   .quad            .Llit_string_α_947_0_s
.Llit_string_α_947_0_s: .string          "-"
                        .size            n00170_lit_string_bx, .-n00170_lit_string_bx
                        .type            n00265_scan_match_bx, @function
n00265_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_591_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_949_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_591_af
                        mov              qword ptr [rbp + 2928], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00266_scan_tab_α
.Lscan_match_α_949_0:   .quad            .Lscan_match_α_949_0_s
.Lscan_match_α_949_0_s: .string          "-"
                        .size            n00265_scan_match_bx, .-n00265_scan_match_bx
                        .type            n00266_scan_tab_bx, @function
n00266_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_scan_tab_α:        mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_591_af
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
1:                      mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_951_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_951_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_591_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_591_af
                        mov              qword ptr [rbp + 2912], r14
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
1:                      mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n00267_lit_integer_α
n00266_scan_tab_β:        mov              r14, qword ptr [rbp + 2912];         jmp   .Ldisjunction_ω_591_af
                        .size            n00266_scan_tab_bx, .-n00266_scan_tab_bx
                        .type            n00267_lit_integer_bx, @function
n00267_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_lit_integer_α:     mov              qword ptr [rbp + 2880], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_952_0]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n00268_line_mark_α
.Llit_integer_α_952_0:  .quad            0
                        .size            n00267_lit_integer_bx, .-n00267_lit_integer_bx
                        .type            n00268_line_mark_bx, @function
n00268_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00269_scan_pos_α
                        .size            n00268_line_mark_bx, .-n00268_line_mark_bx
                        .type            n00269_scan_pos_bx, @function
n00269_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_956_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_956_0:     cmp              rax, 1;                              jl    n00266_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00266_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00266_scan_tab_β
                        mov              qword ptr [rbp + 2848], 3
                        mov              qword ptr [rbp + 2856], rax;         jmp   n00270_conjunction_α
                        .size            n00269_scan_pos_bx, .-n00269_scan_pos_bx
                        .type            n00270_conjunction_bx, @function
n00270_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_conjunction_α:     mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2840], rax;         jmp   n00271_scan_α
n00270_conjunction_β:                                                           jmp   .Ldisjunction_ω_591_af
                        .size            n00270_conjunction_bx, .-n00270_conjunction_bx
                        .type            n00271_scan_bx, @function
n00271_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_scan_α:            mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00272_var_α
n00271_scan_β:                                                                  jmp   n00272_var_α
                        .size            n00271_scan_bx, .-n00271_scan_bx
                        .type            n00272_var_bx, @function
n00272_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_var_α:             mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0;           jmp   n00273_assign_α
n00272_var_β:                                                                   jmp   n00274_var_α
                        .size            n00272_var_bx, .-n00272_var_bx
                        .type            n00273_assign_bx, @function
n00273_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_assign_α:          mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n00274_var_α
                        .size            n00273_assign_bx, .-n00273_assign_bx
                        .type            n00274_var_bx, @function
n00274_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_var_α:             mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00139_line_mark_α
                        .size            n00274_var_bx, .-n00274_var_bx
                        .type            n00146_unmark_bx, @function
n00146_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_unmark_α:          mov              rsp, qword ptr [rbp + 416];          jmp   n00275_line_mark_α
                        .size            n00146_unmark_bx, .-n00146_unmark_bx
                        .type            n00275_line_mark_bx, @function
n00275_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00136_bound_α
                        .size            n00275_line_mark_bx, .-n00275_line_mark_bx
                        .type            n00139_line_mark_bx, @function
n00139_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00276_bound_α
                        .size            n00139_line_mark_bx, .-n00139_line_mark_bx
                        .type            n00276_bound_bx, @function
n00276_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_bound_α:           mov              qword ptr [rbp + 240], rsp;          jmp   n00277_var_ref_α
                        .size            n00276_bound_bx, .-n00276_bound_bx
                        .type            n00277_var_ref_bx, @function
n00277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00278_var_ref_α
                        .size            n00277_var_ref_bx, .-n00277_var_ref_bx
                        .type            n00278_var_ref_bx, @function
n00278_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00279_deref_α
                        .size            n00278_var_ref_bx, .-n00278_var_ref_bx
                        .type            n00279_deref_bx, @function
n00279_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_deref_α:           mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00280_line_mark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00281_line_mark_α
                        .size            n00279_deref_bx, .-n00279_deref_bx
                        .type            n00281_line_mark_bx, @function
n00281_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00282_call_icon_α
                        .size            n00281_line_mark_bx, .-n00281_line_mark_bx
                        .type            n00282_call_icon_bx, @function
n00282_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_call_icon_α:       mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn980:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn980]
                        lea              rsi, [rbp + 144]
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00280_line_mark_α
                                                                              jmp   n00283_deref_α
n00282_call_icon_β:                                                             jmp   n00280_line_mark_α
                        .size            n00282_call_icon_bx, .-n00282_call_icon_bx
                        .type            n00283_deref_bx, @function
n00283_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_deref_α:           mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00280_line_mark_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00284_line_mark_α
                        .size            n00283_deref_bx, .-n00283_deref_bx
                        .type            n00284_line_mark_bx, @function
n00284_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00285_call_icon_α
                        .size            n00284_line_mark_bx, .-n00284_line_mark_bx
                        .type            n00285_call_icon_bx, @function
n00285_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_call_icon_α:       mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn985:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn985]
                        lea              rsi, [rbp + 64]
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
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00280_line_mark_α
                                                                              jmp   n00286_unmark_α
n00285_call_icon_β:                                                             jmp   n00280_line_mark_α
                        .size            n00285_call_icon_bx, .-n00285_call_icon_bx
                        .type            n00286_unmark_bx, @function
n00286_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_unmark_α:          mov              rsp, qword ptr [rbp + 240];          jmp   n00276_bound_α
                        .size            n00286_unmark_bx, .-n00286_unmark_bx
                        .type            n00280_line_mark_bx, @function
n00280_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 149;            jmp   n00287_var_α
                        .size            n00280_line_mark_bx, .-n00280_line_mark_bx
                        .type            n00287_var_bx, @function
n00287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_α:             mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00288_return_α
                        .size            n00287_var_bx, .-n00287_var_bx
                        .type            n00288_return_bx, @function
n00288_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00288_return_bx, .-n00288_return_bx
#-----------------------------------------------------------------------------------------------------------------------
options_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
options_β:
                                                                              jmp   options_ω
#-----------------------------------------------------------------------------------------------------------------------
options_γ:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Loptions_α_992_243
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Loptions_α_992_243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Loptions_α_992_243
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Loptions_α_992_243:    pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 4016]
                        mov              rbp, qword ptr [rbp + 3976];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Loptions_α_992_244
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Loptions_α_992_244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Loptions_α_992_244
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Loptions_α_992_244:    pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 4016]
                        mov              rbp, qword ptr [rbp + 3976];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            17112496164186
                        .quad            34359738576
                        .quad            .Lgcmap_options_s
                        .quad            3760
                        .quad            40
                        .quad            263882790666240
                        .quad            17596481011952
                        .quad            175921860444416
                        .quad            17596481012128
                        .quad            52776558133680
                        .quad            8804682957280
                        .quad            26392574034408
                        .quad            52776558133760
                        .quad            17596481012272
                        .quad            52776558133824
                        .quad            17596481012336
                        .quad            52776558133888
                        .quad            17596481012400
                        .quad            52776558133952
                        .quad            17596481012464
                        .quad            87960930222848
                        .quad            17596481012560
                        .quad            52776558134112
                        .quad            17596481012624
                        .quad            123145302311840
                        .quad            17596481012752
                        .quad            404620279022624
                        .quad            17596481013136
                        .quad            422212465067424
                        .quad            17596481013536
                        .quad            70368744179504
                        .quad            17596481013616
                        .quad            615726511556480
                        .quad            17596481014192
                        .quad            316659348801984
                        .quad            17596481014496
                        .quad            123145302313712
                        .quad            17596481014624
                        .quad            17592186047344
                        .quad            17596481014656
                        .quad            175921860447120
                        .quad            17596481014832
                        .quad            17592186047552
                        .quad            17596481014864
                        .quad            650910883646560
.Lgcmap_options_s:      .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
FN__shuffle:
                        sub              rsp, 352
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 344
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_shuffle]
                        mov              qword ptr [rsp + 280], rax
                        mov              dword ptr [rsp + 272], 160
                        mov              dword ptr [rsp + 276], 352
                        mov              eax, 0
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [rip + rt_sxt_fr_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              dword ptr [rax + 20], 1
                        mov              qword ptr [rax + 0], 0
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lshuffle_α_992_245
                        mov              rsi, 48
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm993:        .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm993]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
                        lea              rsi, [rsp + 352]
                        mov              qword ptr [rdi + 40], rsi
.Lshuffle_α_992_245:
shuffle_α_body:
                        .type            n00289_line_mark_bx, @function
n00289_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 155
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1010_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00290_var_ref_α
.Lline_mark_α_1010_0:   .quad            .Lline_mark_α_1010_0_s
.Lline_mark_α_1010_0_s: .string          "deal.icn"
                        .size            n00289_line_mark_bx, .-n00289_line_mark_bx
                        .type            n00290_var_ref_bx, @function
n00290_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00291_deref_α
                        .size            n00290_var_ref_bx, .-n00290_var_ref_bx
                        .type            n00291_deref_bx, @function
n00291_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_deref_α:           mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00292_line_mark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00293_line_mark_α
                        .size            n00291_deref_bx, .-n00291_deref_bx
                        .type            n00293_line_mark_bx, @function
n00293_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 155;            jmp   n00294_call_icon_α
                        .size            n00293_line_mark_bx, .-n00293_line_mark_bx
                        .type            n00294_call_icon_bx, @function
n00294_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_call_icon_α:       mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1017: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1017]
                        lea              rsi, [rbp + 192]
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
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00292_line_mark_α
                                                                              jmp   n00295_assign_α
n00294_call_icon_β:                                                             jmp   n00292_line_mark_α
                        .size            n00294_call_icon_bx, .-n00294_call_icon_bx
                        .type            n00295_assign_bx, @function
n00295_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_assign_α:          mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00292_line_mark_α
                        .size            n00295_assign_bx, .-n00295_assign_bx
                        .type            n00292_line_mark_bx, @function
n00292_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 156;            jmp   n00296_var_ref_α
                        .size            n00292_line_mark_bx, .-n00292_line_mark_bx
                        .type            n00296_var_ref_bx, @function
n00296_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00297_iterate_α
                        .size            n00296_var_ref_bx, .-n00296_var_ref_bx
                        .type            n00297_iterate_bx, @function
n00297_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_iterate_α:        mov              qword ptr [rbp + 64], 0
.Literate_α_1024_0:     mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n00298_line_mark_α
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
1:                                                                            jmp   n00299_var_ref_α
n00297_iterate_β:        inc              qword ptr [rbp + 64];                jmp   .Literate_α_1024_0
                        .size            n00297_iterate_bx, .-n00297_iterate_bx
                        .type            n00299_var_ref_bx, @function
n00299_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00300_random_α
                        .size            n00299_var_ref_bx, .-n00299_var_ref_bx
                        .type            n00300_random_bx, @function
n00300_random_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_random_α:         mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00297_iterate_β
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
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
1:                                                                            jmp   n00301_swap_var_α
                        .size            n00300_random_bx, .-n00300_random_bx
                        .type            n00301_swap_var_bx, @function
n00301_swap_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_swap_var_α:       mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_swap_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00298_line_mark_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
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
1:                                                                            jmp   n00297_iterate_β
                        .size            n00301_swap_var_bx, .-n00301_swap_var_bx
                        .type            n00298_line_mark_bx, @function
n00298_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 157;            jmp   n00302_var_α
                        .size            n00298_line_mark_bx, .-n00298_line_mark_bx
                        .type            n00302_var_bx, @function
n00302_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_var_α:            mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00303_return_α
                        .size            n00302_var_bx, .-n00302_var_bx
                        .type            n00303_return_bx, @function
n00303_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_return_α:         mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   shuffle_γ
                        .size            n00303_return_bx, .-n00303_return_bx
#-----------------------------------------------------------------------------------------------------------------------
shuffle_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
shuffle_β:
                                                                              jmp   shuffle_ω
#-----------------------------------------------------------------------------------------------------------------------
shuffle_γ:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lshuffle_α_1033_243
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lshuffle_α_1033_243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lshuffle_α_1033_243
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lshuffle_α_1033_243:   pop              rdx
                        pop              rax
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
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
shuffle_ω:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lshuffle_α_1033_244
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lshuffle_α_1033_244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lshuffle_α_1033_244
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lshuffle_α_1033_244:   pop              rdx
                        pop              rax
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
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_shuffle:
                        .quad            1513174945114
                        .quad            34359738432
                        .quad            .Lgcmap_shuffle_s
                        .quad            272
                        .quad            3
                        .quad            70368744177664
                        .quad            17596481011776
                        .quad            211106232533072
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
                        sub              rsp, 1424
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1416
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1272], rax
                        mov              dword ptr [rsp + 1264], 160
                        mov              dword ptr [rsp + 1268], 1424
                        mov              eax, 0
                        mov              qword ptr [rsp + 1416], rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [rip + rt_sxt_fr_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              dword ptr [rax + 20], 1
                        mov              qword ptr [rax + 0], 0
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              ecx, dword ptr [rax + 12]
                        mov              rax, qword ptr [rax + 0]
                        cmp              ecx, 0;                              jbe   .Lmain_α_1033_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_1033_220:
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lmain_α_1033_245
                        mov              rsi, 48
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm1034:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm1034]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rdi + 40], rsi
.Lmain_α_1033_245:
main_α_body:
                        .type            n00304_call_bx, @function
n00304_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_call_α:           lea              rdi, [rbp + 1232]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:207
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
1:                      cmp              al, 104;                             je    n00305_line_mark_α
                                                                              jmp   n00305_line_mark_α
n00304_call_β:                                                                 jmp   n00305_line_mark_α
                        .size            n00304_call_bx, .-n00304_call_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1105_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00306_line_mark_α
.Lline_mark_α_1105_0:   .quad            .Lline_mark_α_1105_0_s
.Lline_mark_α_1105_0_s: .string          "deal.icn"
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00306_line_mark_bx, @function
n00306_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53;             jmp   n00307_lit_charset_α
                        .size            n00306_line_mark_bx, .-n00306_line_mark_bx
                        .type            n00307_lit_charset_bx, @function
n00307_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_lit_charset_α:    mov              qword ptr [rbp + 1152], 2            # result
                        mov              dword ptr [rbp + 1156], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1108_0]
                        mov              qword ptr [rbp + 1160], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1108_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
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
.Llit_charset_α_1108_0: .quad            .Llit_charset_α_1108_0_s
.Llit_charset_α_1108_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00307_lit_charset_bx, .-n00307_lit_charset_bx
                        .type            n00308_line_mark_bx, @function
n00308_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53;             jmp   n00309_call_icon_α
                        .size            n00308_line_mark_bx, .-n00308_line_mark_bx
                        .type            n00309_call_icon_bx, @function
n00309_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_call_icon_α:      mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1112: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1112]
                        lea              rsi, [rbp + 1120]
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
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00310_line_mark_α
                                                                              jmp   n00311_assign_α
n00309_call_icon_β:                                                            jmp   n00310_line_mark_α
                        .size            n00309_call_icon_bx, .-n00309_call_icon_bx
                        .type            n00311_assign_bx, @function
n00311_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_assign_α:         mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [r9 + 16], rax             # deckimage
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00312_assign_α
                        .size            n00311_assign_bx, .-n00311_assign_bx
                        .type            n00312_assign_bx, @function
n00312_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_assign_α:         mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00310_line_mark_α
                        .size            n00312_assign_bx, .-n00312_assign_bx
                        .type            n00310_line_mark_bx, @function
n00310_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 54;             jmp   n00313_var_α
                        .size            n00310_line_mark_bx, .-n00310_line_mark_bx
                        .type            n00313_var_bx, @function
n00313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_var_α:            mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1040], rax          # result
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00314_unop_α
                        .size            n00313_var_bx, .-n00313_var_bx
                        .type            n00314_unop_bx, @function
n00314_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_unop_α:           mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:116
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
1:                                                                            jmp   n00315_lit_integer_α
                        .size            n00314_unop_bx, .-n00314_unop_bx
                        .type            n00315_lit_integer_bx, @function
n00315_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_lit_integer_α:    mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1119_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00316_coerce_numeric_α
.Llit_integer_α_1119_0: .quad            4
                        .size            n00315_lit_integer_bx, .-n00315_lit_integer_bx
                        .type            n00316_coerce_numeric_bx, @function
n00316_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_coerce_numeric_α: mov              eax, dword ptr [rbp + 1024]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1121_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1121_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1121_0
.Lcoerce_numeric_α_1121_1:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n00317_binop_α
.Lcoerce_numeric_α_1121_0:
                        lea              rdi, [rbp + 1024]
                        lea              rsi, [rbp + 1056]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 17196646502
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
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
1:                      mov              eax, dword ptr [rbp + 1008]
                        cmp              al, 104;                             je    n00318_line_mark_α
                                                                              jmp   n00317_binop_α
                        .size            n00316_coerce_numeric_bx, .-n00316_coerce_numeric_bx
                        .type            n00317_binop_bx, @function
n00317_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_binop_α:          mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00318_line_mark_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:347
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
1:                                                                            jmp   n00319_assign_α
                        .size            n00317_binop_bx, .-n00317_binop_bx
                        .type            n00319_assign_bx, @function
n00319_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_assign_α:         mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [r9 + 48], rax             # suitsize
                        mov              qword ptr [r9 + 56], rdx
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n00320_assign_α
                        .size            n00319_assign_bx, .-n00319_assign_bx
                        .type            n00320_assign_bx, @function
n00320_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_assign_α:         mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [r9 + 32], rax             # handsize
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00318_line_mark_α
                        .size            n00320_assign_bx, .-n00320_assign_bx
                        .type            n00318_line_mark_bx, @function
n00318_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 55;             jmp   n00321_lit_string_α
                        .size            n00318_line_mark_bx, .-n00318_line_mark_bx
                        .type            n00321_lit_string_bx, @function
n00321_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_lit_string_α:     mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_1127_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00322_assign_α
.Llit_string_α_1127_0:  .quad            .Llit_string_α_1127_0_s
.Llit_string_α_1127_0_s:
                        .string          "AKQJT98765432"
                        .size            n00321_lit_string_bx, .-n00321_lit_string_bx
                        .type            n00322_assign_bx, @function
n00322_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_assign_α:         mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [r9 + 80], rax             # rank
                        mov              qword ptr [r9 + 88], rdx;            jmp   n00323_line_mark_α
                        .size            n00322_assign_bx, .-n00322_assign_bx
                        .type            n00323_line_mark_bx, @function
n00323_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00324_lit_string_α
                        .size            n00323_line_mark_bx, .-n00323_line_mark_bx
                        .type            n00324_lit_string_bx, @function
n00324_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_lit_string_α:     mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1131_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00325_var_ref_α
.Llit_string_α_1131_0:  .quad            .Llit_string_α_1131_0_s
.Llit_string_α_1131_0_s:
                        .string          " "
                        .size            n00324_lit_string_bx, .-n00324_lit_string_bx
                        .type            n00325_var_ref_bx, @function
n00325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # suitsize
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00326_deref_α
                        .size            n00325_var_ref_bx, .-n00325_var_ref_bx
                        .type            n00326_deref_bx, @function
n00326_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_deref_α:          mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00327_line_mark_α
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00328_line_mark_α
                        .size            n00326_deref_bx, .-n00326_deref_bx
                        .type            n00328_line_mark_bx, @function
n00328_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00329_call_icon_α
                        .size            n00328_line_mark_bx, .-n00328_line_mark_bx
                        .type            n00329_call_icon_bx, @function
n00329_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_call_icon_α:      mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1138: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1138]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    n00327_line_mark_α
                                                                              jmp   n00330_assign_α
n00329_call_icon_β:                                                            jmp   n00327_line_mark_α
                        .size            n00329_call_icon_bx, .-n00329_call_icon_bx
                        .type            n00330_assign_bx, @function
n00330_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_assign_α:         mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [r9 + 96], rax             # blanker
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00327_line_mark_α
                        .size            n00330_assign_bx, .-n00330_assign_bx
                        .type            n00327_line_mark_bx, @function
n00327_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00331_lit_charset_α
                        .size            n00327_line_mark_bx, .-n00327_line_mark_bx
                        .type            n00331_lit_charset_bx, @function
n00331_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_lit_charset_α:    mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1142_0]
                        mov              qword ptr [rbp + 712], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1142_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
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
1:                                                                            jmp   n00332_lit_integer_α
.Llit_charset_α_1142_0: .quad            .Llit_charset_α_1142_0_s
.Llit_charset_α_1142_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n00331_lit_charset_bx, .-n00331_lit_charset_bx
                        .type            n00332_lit_integer_bx, @function
n00332_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_lit_integer_α:    mov              qword ptr [rbp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1143_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00333_var_α
.Llit_integer_α_1143_0: .quad            1
                        .size            n00332_lit_integer_bx, .-n00332_lit_integer_bx
                        .type            n00333_var_bx, @function
n00333_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_var_α:            mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + 32], rax            # result
                        mov              qword ptr [rbp + 40], rdx;           jmp   n00334_binop_α
                        .size            n00333_var_bx, .-n00333_var_bx
                        .type            n00334_binop_bx, @function
n00334_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_binop_α:          mov              eax, 3
                        mov              ecx, dword ptr [rbp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1145_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rbp + 40]
                        add              rax, rdx
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax;          jmp   .Lbinop_α_1145_7
.Lbinop_α_1145_2:       and              edx, 1;                              jz    .Lbinop_α_1145_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rbp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1145_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1145_4
.Lbinop_α_1145_3:       movq             xmm0, rsi
.Lbinop_α_1145_4:       cmp              cl, 5;                               je    .Lbinop_α_1145_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1145_6
.Lbinop_α_1145_5:       movq             xmm1, rdi
.Lbinop_α_1145_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1145_0
                        mov              qword ptr [rbp + 752], 5
                        mov              qword ptr [rbp + 760], rax
.Lbinop_α_1145_7:                                                             jmp   n00335_subscript_α
.Lbinop_α_1145_0:       mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             je    n00336_line_mark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
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
1:                                                                            jmp   n00335_subscript_α
                        .size            n00334_binop_bx, .-n00334_binop_bx
                        .type            n00335_subscript_bx, @function
n00335_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_subscript_α:      mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              r8, qword ptr [rbp + 752]
                        mov              r9, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00336_line_mark_α
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
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
1:                                                                            jmp   n00337_assign_α
                        .size            n00335_subscript_bx, .-n00335_subscript_bx
                        .type            n00337_assign_bx, @function
n00337_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_assign_α:         mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [r9 + 64], rax             # denom
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00336_line_mark_α
                        .size            n00337_assign_bx, .-n00337_assign_bx
                        .type            n00336_line_mark_bx, @function
n00336_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59;             jmp   n00338_var_ref_α
                        .size            n00336_line_mark_bx, .-n00336_line_mark_bx
                        .type            n00338_var_ref_bx, @function
n00338_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00339_lit_string_α
                        .size            n00338_var_ref_bx, .-n00338_var_ref_bx
                        .type            n00339_lit_string_bx, @function
n00339_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_string_α:     mov              qword ptr [rbp + 624], 2             # result
                        mov              dword ptr [rbp + 628], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1152_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n00340_deref_α
.Llit_string_α_1152_0:  .quad            .Llit_string_α_1152_0_s
.Llit_string_α_1152_0_s:
                        .string          "h+s+"
                        .size            n00339_lit_string_bx, .-n00339_lit_string_bx
                        .type            n00340_deref_bx, @function
n00340_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_deref_α:          mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00341_line_mark_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00342_line_mark_α
                        .size            n00340_deref_bx, .-n00340_deref_bx
                        .type            n00342_line_mark_bx, @function
n00342_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59;             jmp   n00343_call_proc_staged_α
                        .size            n00342_line_mark_bx, .-n00342_line_mark_bx
                        .type            n00343_call_proc_staged_bx, @function
n00343_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1157_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1157_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 32
                        mov              rcx, qword ptr [rbp + 656]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rbp + 624]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 392];          jmp   rax
.Lcall_proc_staged_α_1157_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1157_2
.Lcall_proc_staged_α_1157_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1157_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n00341_line_mark_α
                                                                              jmp   n00344_deref_α
n00343_call_proc_staged_β:
                                                                              jmp   n00341_line_mark_α
.Lcall_proc_staged_β_1157_0:
                        .quad            .Lcall_proc_staged_β_1157_0_s
.Lcall_proc_staged_β_1157_0_s:
                        .string          "options"
                        .size            n00343_call_proc_staged_bx, .-n00343_call_proc_staged_bx
                        .type            n00344_deref_bx, @function
n00344_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_deref_α:          mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00341_line_mark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00345_assign_α
                        .size            n00344_deref_bx, .-n00344_deref_bx
                        .type            n00345_assign_bx, @function
n00345_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_assign_α:         mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00341_line_mark_α
                        .size            n00345_assign_bx, .-n00345_assign_bx
                        .type            n00341_line_mark_bx, @function
n00341_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00346_disjunction_α
                        .size            n00341_line_mark_bx, .-n00341_line_mark_bx
                        .type            n00346_disjunction_bx, @function
n00346_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_disjunction_α:    mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              dword ptr [rbp + 416], 0;            jmp   n00347_var_ref_α
.Ldisjunction_γ_1077_as:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1163_0
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00348_assign_α
.Ldisjunction_α_1163_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1163_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00348_assign_α
.Ldisjunction_α_1163_1:                                                       jmp   n00348_assign_α
n00346_disjunction_β:    mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1077_af
                                                                              jmp   .Ldisjunction_ω_1077_af
.Ldisjunction_γ_1077_af:
.Ldisjunction_ω_1077_af:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 1;                              je    n00349_lit_integer_α
                                                                              jmp   n00350_line_mark_α
                        .size            n00346_disjunction_bx, .-n00346_disjunction_bx
                        .type            n00348_assign_bx, @function
n00348_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_assign_α:         mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n00350_line_mark_α
                        .size            n00348_assign_bx, .-n00348_assign_bx
                        .type            n00350_line_mark_bx, @function
n00350_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00351_var_ref_α
                        .size            n00350_line_mark_bx, .-n00350_line_mark_bx
                        .type            n00351_var_ref_bx, @function
n00351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00352_lit_string_α
                        .size            n00351_var_ref_bx, .-n00351_var_ref_bx
                        .type            n00352_lit_string_bx, @function
n00352_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_lit_string_α:     mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1169_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00353_subscript_α
.Llit_string_α_1169_0:  .quad            .Llit_string_α_1169_0_s
.Llit_string_α_1169_0_s:
                        .string          "s"
                        .size            n00352_lit_string_bx, .-n00352_lit_string_bx
                        .type            n00353_subscript_bx, @function
n00353_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_subscript_α:      mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00354_line_mark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n00355_deref_α
                        .size            n00353_subscript_bx, .-n00353_subscript_bx
                        .type            n00355_deref_bx, @function
n00355_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_deref_α:          mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00354_line_mark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00356_unop_test_α
                        .size            n00355_deref_bx, .-n00355_deref_bx
                        .type            n00356_unop_test_bx, @function
n00356_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_unop_test_α:      mov              eax, dword ptr [rbp + 352]
                        cmp              al, 104;                             je    n00354_line_mark_α
                        cmp              eax, 0;                              je    n00354_line_mark_α
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00357_kw_assign_α
                        .size            n00356_unop_test_bx, .-n00356_unop_test_bx
                        .type            n00357_kw_assign_bx, @function
n00357_kw_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_kw_assign_α:      mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_random_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00354_line_mark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00354_line_mark_α
                        .size            n00357_kw_assign_bx, .-n00357_kw_assign_bx
                        .type            n00354_line_mark_bx, @function
n00354_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00358_lit_integer_α
                        .size            n00354_line_mark_bx, .-n00354_line_mark_bx
                        .type            n00358_lit_integer_bx, @function
n00358_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_lit_integer_α:    mov              qword ptr [rbp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1176_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n00359_var_α
.Llit_integer_α_1176_0: .quad            1
                        .size            n00358_lit_integer_bx, .-n00358_lit_integer_bx
                        .type            n00359_var_bx, @function
n00359_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_var_α:            mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 104], rax;          jmp   n00360_to_α
                        .size            n00359_var_bx, .-n00359_var_bx
                        .type            n00360_to_bx, @function
n00360_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_to_α:             mov              rdi, qword ptr [rbp + 80]
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
                        push             rax                                  # gc_poll bb_to.cpp:37
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
                        push             rax                                  # gc_poll bb_to.cpp:160
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
                        push             rax                                  # gc_poll bb_to.cpp:37
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
                        push             rax                                  # gc_poll bb_to.cpp:168
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
.Lto_α_1180_0:          mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx;                            jg    main_ω
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax;           jmp   n00361_bound_α
n00360_to_β:             inc              qword ptr [rbp + 64];                jo    main_ω
                                                                              jmp   .Lto_α_1180_0
                        .size            n00360_to_bx, .-n00360_to_bx
                        .type            n00361_bound_bx, @function
n00361_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_bound_α:          mov              qword ptr [rbp + 128], rsp;          jmp   n00362_line_mark_α
                        .size            n00361_bound_bx, .-n00361_bound_bx
                        .type            n00362_line_mark_bx, @function
n00362_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n00363_line_mark_α
                        .size            n00362_line_mark_bx, .-n00362_line_mark_bx
                        .type            n00363_line_mark_bx, @function
n00363_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n00364_call_proc_staged_α
                        .size            n00363_line_mark_bx, .-n00363_line_mark_bx
                        .type            n00364_call_proc_staged_bx, @function
n00364_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1188_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1188_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 0
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_1188_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1188_2
.Lcall_proc_staged_α_1188_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1188_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    n00365_unmark_α
                                                                              jmp   n00366_deref_α
n00364_call_proc_staged_β:
                                                                              jmp   n00365_unmark_α
.Lcall_proc_staged_β_1188_0:
                        .quad            .Lcall_proc_staged_β_1188_0_s
.Lcall_proc_staged_β_1188_0_s:
                        .string          "display"
                        .size            n00364_call_proc_staged_bx, .-n00364_call_proc_staged_bx
                        .type            n00366_deref_bx, @function
n00366_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_deref_α:          mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00365_unmark_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00365_unmark_α
                        .size            n00366_deref_bx, .-n00366_deref_bx
                        .type            n00365_unmark_bx, @function
n00365_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_unmark_α:         mov              rsp, qword ptr [rbp + 128];          jmp   n00367_line_mark_α
                        .size            n00365_unmark_bx, .-n00365_unmark_bx
                        .type            n00367_line_mark_bx, @function
n00367_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00360_to_β
                        .size            n00367_line_mark_bx, .-n00367_line_mark_bx
                        .type            n00349_lit_integer_bx, @function
n00349_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_lit_integer_α:    mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1194_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   .Ldisjunction_γ_1077_as
n00349_lit_integer_β:                                                          jmp   .Ldisjunction_ω_1077_af
.Llit_integer_α_1194_0: .quad            1
                        .size            n00349_lit_integer_bx, .-n00349_lit_integer_bx
                        .type            n00347_var_ref_bx, @function
n00347_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00368_lit_string_α
n00347_var_ref_β:                                                              jmp   .Ldisjunction_ω_1077_af
                        .size            n00347_var_ref_bx, .-n00347_var_ref_bx
                        .type            n00368_lit_string_bx, @function
n00368_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_lit_string_α:     mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1197_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00369_subscript_α
.Llit_string_α_1197_0:  .quad            .Llit_string_α_1197_0_s
.Llit_string_α_1197_0_s:
                        .string          "h"
                        .size            n00368_lit_string_bx, .-n00368_lit_string_bx
                        .type            n00369_subscript_bx, @function
n00369_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_subscript_α:      mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1077_af
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
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
1:                                                                            jmp   n00370_deref_α
                        .size            n00369_subscript_bx, .-n00369_subscript_bx
                        .type            n00370_deref_bx, @function
n00370_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_deref_α:          mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1077_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n00371_unop_test_α
                        .size            n00370_deref_bx, .-n00370_deref_bx
                        .type            n00371_unop_test_bx, @function
n00371_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_unop_test_α:      mov              eax, dword ptr [rbp + 512]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1077_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1077_af
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 440], rax;          jmp   .Ldisjunction_γ_1077_as
n00371_unop_test_β:                                                            jmp   .Ldisjunction_ω_1077_af
                        .size            n00371_unop_test_bx, .-n00371_unop_test_bx
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
                        .quad            6117379886426
                        .quad            38654705808
                        .quad            .Lgcmap_main_s
                        .quad            1264
                        .quad            7
                        .quad            70368744177664
                        .quad            17596481011776
                        .quad            52776558133328
                        .quad            17596481011840
                        .quad            299067162755216
                        .quad            17596481012128
                        .quad            914793674310064
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
.Lstartup_ign14:        .string          "integer"
.Lstartup_ign15:        .string          "stop"
.Lstartup_ign16:        .string          "real"
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
.Lstartup_ipp00372_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00372_0
                        .quad            0
.Lstartup_iln00372_0:    .string          "hands"
.Lstartup_iln00372_1:    .string          "opts"
.Lstartup_iln00372_2:    .string          "&letters"
.Lstartup_iln00372_3:    .string          "&lcase"
.Lstartup_iln00372_4:    .string          "&random"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00372_0
                        .quad            .Lstartup_iln00372_1
                        .quad            .Lstartup_iln00372_2
                        .quad            .Lstartup_iln00372_3
                        .quad            .Lstartup_iln00372_4
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            1232
                        .long            1248
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
                        .long            2144
                        .long            2160
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__display
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2176
                        .long            48
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
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames1
                        .long            1
                        .long            0
                        .long            1568
                        .long            48
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
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames2
                        .long            2
                        .long            0
                        .long            400
                        .long            48
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
                        .long            3680
                        .long            3744
                        .long            3696
                        .long            3632
                        .long            3648
                        .long            3712
                        .long            3728
                        .long            -1
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__options
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames3
                        .long            2
                        .long            0
                        .long            3760
                        .long            48
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
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames4
                        .long            1
                        .long            0
                        .long            272
                        .long            48
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
