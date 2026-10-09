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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
display_α_body:
                        .type            n0_line_mark_bx, @function
n0_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .rodata
.Lstnof1:               .string          "deal.icn"
                        .popsection
.Lline_mark_α_115_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_115_stno
                        .long            0
                        .long            72
                        .quad            .Lstnof1
                        .popsection
n0_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 72
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_116_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n1_line_mark_α
.Lline_mark_α_116_0:    .quad            .Lline_mark_α_116_0_s
.Lline_mark_α_116_0_s:  .string          "deal.icn"
                        .size            n0_line_mark_bx, .-n0_line_mark_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_117_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_117_stno
                        .long            0
                        .long            73
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n2_line_mark_α
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_119_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_119_stno
                        .long            0
                        .long            75
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n3_disjunction_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_disjunction_bx, @function
n3_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:       mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              dword ptr [rbp + 1680], 0;           jmp   n4_var_α
.Ldisjunction_γ_3_as:   mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_122_0
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n25_line_mark_α
.Ldisjunction_α_122_0:                                                        jmp   n25_line_mark_α
n3_disjunction_β:       mov              eax, dword ptr [rbp + 1680];         jmp   n24_goto_β
.Ldisjunction_γ_3_af:
.Ldisjunction_ω_3_af:   add              dword ptr [rbp + 1680], 1
                        mov              eax, dword ptr [rbp + 1680];         jmp   n25_line_mark_α
                        .size            n3_disjunction_bx, .-n3_disjunction_bx
                        .type            n4_var_bx, @function
n4_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [r9 + 144]            # display__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rbp + 2080], rax          # result
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n5_unop_test_α
n4_var_β:                                                                     jmp   .Ldisjunction_ω_3_af
                        .size            n4_var_bx, .-n4_var_bx
                        .type            n5_unop_test_bx, @function
n5_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_unop_test_α:         mov              eax, dword ptr [rbp + 2080]
                        cmp              al, 104;                             je    .Ldisjunction_ω_3_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_3_af
                        mov              qword ptr [rbp + 2064], 0
                        mov              qword ptr [rbp + 2072], 0;           jmp   n6_lit_integer_α
                        .size            n5_unop_test_bx, .-n5_unop_test_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_125_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n7_assign_α
.Llit_integer_α_125_0:  .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        mov              qword ptr [r9 + 144], rax            # display__INITFLAG__0
                        mov              qword ptr [r9 + 152], rdx;           jmp   n8_line_mark_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_line_mark_bx, @function
n8_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_127_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_127_stno
                        .long            0
                        .long            76
                        .quad            .Lstnof1
                        .popsection
n8_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76;             jmp   n9_lit_string_α
                        .size            n8_line_mark_bx, .-n8_line_mark_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rbp + 1888], 2            # result
                        mov              dword ptr [rbp + 1892], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_129_0]
                        mov              qword ptr [rbp + 1896], rax;         jmp   n10_lit_string_α
.Llit_string_α_129_0:   .quad            .Llit_string_α_129_0_s
.Llit_string_α_129_0_s: .string          "\n"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rbp + 1984], 2            # result
                        mov              dword ptr [rbp + 1988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_130_0]
                        mov              qword ptr [rbp + 1992], rax;         jmp   n11_lit_integer_α
.Llit_string_α_130_0:   .quad            .Llit_string_α_130_0_s
.Llit_string_α_130_0_s: .string          "-"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              qword ptr [rbp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_131_0]
                        mov              qword ptr [rbp + 2024], rax;         jmp   n12_line_mark_α
.Llit_integer_α_131_0:  .quad            33
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_line_mark_bx, @function
n12_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_132_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_132_stno
                        .long            0
                        .long            76
                        .quad            .Lstnof1
                        .popsection
n12_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76;             jmp   n13_call_icon_α
                        .size            n12_line_mark_bx, .-n12_line_mark_bx
                        .type            n13_call_icon_bx, @function
n13_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_icon_α:        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lcall_icon_α_rkfn135:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn135]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_0:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_1:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n16_line_mark_α
                                                                              jmp   n14_binop_α
n13_call_icon_β:                                                              jmp   n16_line_mark_α
                        .size            n13_call_icon_bx, .-n13_call_icon_bx
                        .type            n14_binop_bx, @function
n14_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_display_3:     mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_2:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n15_assign_α
                        .size            n14_binop_bx, .-n14_binop_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [r9 + 112], rax            # display__STATIC__bar
                        mov              qword ptr [r9 + 120], rdx;           jmp   n16_line_mark_α
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_138_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_138_stno
                        .long            0
                        .long            77
                        .quad            .Lstnof1
                        .popsection
n16_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n17_lit_string_α
                        .size            n16_line_mark_bx, .-n16_line_mark_bx
                        .type            n17_lit_string_bx, @function
n17_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_140_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n18_lit_integer_α
.Llit_string_α_140_0:   .quad            .Llit_string_α_140_0_s
.Llit_string_α_140_0_s: .string          " "
                        .size            n17_lit_string_bx, .-n17_lit_string_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              qword ptr [rbp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n19_line_mark_α
.Llit_integer_α_141_0:  .quad            10
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_line_mark_bx, @function
n19_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_142_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_142_stno
                        .long            0
                        .long            77
                        .quad            .Lstnof1
                        .popsection
n19_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n20_call_icon_α
                        .size            n19_line_mark_bx, .-n19_line_mark_bx
                        .type            n20_call_icon_bx, @function
n20_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_icon_α:        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lcall_icon_α_rkfn145:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn145]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_4:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_5:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n25_line_mark_α
                                                                              jmp   n21_assign_α
n20_call_icon_β:                                                              jmp   n25_line_mark_α
                        .size            n20_call_icon_bx, .-n20_call_icon_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              qword ptr [r9 + 128], rax            # display__STATIC__offset
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx;         jmp   n22_conjunction_α
                        .size            n21_assign_bx, .-n21_assign_bx
                        .type            n22_conjunction_bx, @function
n22_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_conjunction_α:      mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n23_conjunction_α
n22_conjunction_β:                                                            jmp   n25_line_mark_α
                        .size            n22_conjunction_bx, .-n22_conjunction_bx
                        .type            n23_conjunction_bx, @function
n23_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_conjunction_α:      mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax;         jmp   .Ldisjunction_γ_3_as
n23_conjunction_β:                                                            jmp   n25_line_mark_α
                        .size            n23_conjunction_bx, .-n23_conjunction_bx
                        .type            n24_goto_bx, @function
n24_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_goto_α:                                                                   jmp   n25_line_mark_α
n24_goto_β:                                                                   jmp   n25_line_mark_α
                        .size            n24_goto_bx, .-n24_goto_bx
                        .type            n25_line_mark_bx, @function
n25_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_150_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_150_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n25_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n26_var_ref_α
                        .size            n25_line_mark_bx, .-n25_line_mark_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # deck
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n27_deref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_deref_bx, @function
n27_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_deref_α:            mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_display_7:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n32_line_mark_α
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
.Lgcsite_display_6:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n28_line_mark_α
                        .size            n27_deref_bx, .-n27_deref_bx
                        .type            n28_line_mark_bx, @function
n28_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_155_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_155_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n28_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n29_call_proc_staged_α
                        .size            n28_line_mark_bx, .-n28_line_mark_bx
                        .type            n29_call_proc_staged_bx, @function
n29_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α: lea              rcx, [rip + .Lcall_proc_staged_α_158_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_158_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 1632]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 1640]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 520];          jmp   rax
.Lcall_proc_staged_α_158_3:
.Lgcsite_display_9:     mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_158_2
.Lcall_proc_staged_α_158_4:
.Lgcsite_display_8:     mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_158_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    n32_line_mark_α
                                                                              jmp   n30_deref_α
n29_call_proc_staged_β: mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n32_line_mark_α
.Lcall_proc_staged_β_158_0:
                        .quad            .Lcall_proc_staged_β_158_0_s
.Lcall_proc_staged_β_158_0_s:
                        .string          "shuffle"
                        .size            n29_call_proc_staged_bx, .-n29_call_proc_staged_bx
                        .type            n30_deref_bx, @function
n30_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_deref_α:            mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_display_11:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n32_line_mark_α
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
.Lgcsite_display_10:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n31_assign_α
                        .size            n30_deref_bx, .-n30_deref_bx
                        .type            n31_assign_bx, @function
n31_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n32_line_mark_α
                        .size            n31_assign_bx, .-n31_assign_bx
                        .type            n32_line_mark_bx, @function
n32_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_161_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_161_stno
                        .long            0
                        .long            81
                        .quad            .Lstnof1
                        .popsection
n32_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n33_make_list_α
                        .size            n32_line_mark_bx, .-n32_line_mark_bx
                        .type            n33_make_list_bx, @function
n33_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_make_list_α:        lea              rdi, [rbp + 1552]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
.Lgcsite_display_13:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_display_12:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n34_assign_α
                        .size            n33_make_list_bx, .-n33_make_list_bx
                        .type            n34_assign_bx, @function
n34_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n35_line_mark_α
                        .size            n34_assign_bx, .-n34_assign_bx
                        .type            n35_line_mark_bx, @function
n35_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_166_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_166_stno
                        .long            0
                        .long            82
                        .quad            .Lstnof1
                        .popsection
n35_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n36_var_ref_α
                        .size            n35_line_mark_bx, .-n35_line_mark_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n37_var_ref_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # deck
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n38_lit_integer_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              qword ptr [rbp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_172_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n39_lit_integer_α
.Llit_integer_α_172_0:  .quad            0
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              qword ptr [rbp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n40_to_α
.Llit_integer_α_173_0:  .quad            3
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_to_bx, @function
n40_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_to_α:               mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_display_21:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n58_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_20:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_display_19:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_display_18:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_display_17:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n58_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_16:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_display_15:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_display_14:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1376], rax
.Lto_α_175_0:           mov              rax, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1416]
                        cmp              rax, rcx;                            jg    n58_line_mark_α
                        mov              qword ptr [rbp + 1360], 3
                        mov              qword ptr [rbp + 1368], rax;         jmp   n41_var_α
n40_to_β:               inc              qword ptr [rbp + 1376];              jo    n58_line_mark_α
                                                                              jmp   .Lto_α_175_0
                        .size            n40_to_bx, .-n40_to_bx
                        .type            n41_var_bx, @function
n41_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 1424], rax          # result
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n42_coerce_numeric_α
                        .size            n41_var_bx, .-n41_var_bx
                        .type            n42_coerce_numeric_bx, @function
n42_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1360]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_178_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_178_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_178_0
.Lcoerce_numeric_α_178_1:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n43_coerce_numeric_α
.Lcoerce_numeric_α_178_0:
                        lea              rdi, [rbp + 1360]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 1344]
                        mov              rcx, 12901679206
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_display_23:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_22:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1344]
                        cmp              al, 104;                             je    n58_line_mark_α
                                                                              jmp   n43_coerce_numeric_α
                        .size            n42_coerce_numeric_bx, .-n42_coerce_numeric_bx
                        .type            n43_coerce_numeric_bx, @function
n43_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1424]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_180_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_180_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_180_0
.Lcoerce_numeric_α_180_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n44_binop_α
.Lcoerce_numeric_α_180_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 1360]
                        lea              rdx, [rbp + 1328]
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_display_25:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_24:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1328]
                        cmp              al, 104;                             je    n58_line_mark_α
                                                                              jmp   n44_binop_α
                        .size            n43_coerce_numeric_bx, .-n43_coerce_numeric_bx
                        .type            n44_binop_bx, @function
n44_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            mov              eax, dword ptr [rbp + 1344]
                        mov              ecx, dword ptr [rbp + 1328]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_181_2
                        mov              rax, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1336]
                        imul             rax, rdx;                            jo    .Lbinop_α_181_0
                        mov              qword ptr [rbp + 1312], 3
                        mov              qword ptr [rbp + 1320], rax;         jmp   .Lbinop_α_181_7
.Lbinop_α_181_2:        and              edx, 1;                              jz    .Lbinop_α_181_0
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdi, qword ptr [rbp + 1336]
                        cmp              al, 5;                               je    .Lbinop_α_181_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_181_4
.Lbinop_α_181_3:        movq             xmm0, rsi
.Lbinop_α_181_4:        cmp              cl, 5;                               je    .Lbinop_α_181_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_181_6
.Lbinop_α_181_5:        movq             xmm1, rdi
.Lbinop_α_181_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_181_0
                        mov              qword ptr [rbp + 1312], 5
                        mov              qword ptr [rbp + 1320], rax
.Lbinop_α_181_7:                                                              jmp   n45_lit_integer_α
.Lbinop_α_181_0:        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
.Lgcsite_display_27:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n58_line_mark_α
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
.Lgcsite_display_26:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n45_lit_integer_α
                        .size            n44_binop_bx, .-n44_binop_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              qword ptr [rbp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_182_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n46_coerce_numeric_α
.Llit_integer_α_182_0:  .quad            1
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_coerce_numeric_bx, @function
n46_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1312]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_184_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_184_0
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_184_0
.Lcoerce_numeric_α_184_1:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n47_binop_α
.Lcoerce_numeric_α_184_0:
                        lea              rdi, [rbp + 1312]
                        lea              rsi, [rbp + 1440]
                        lea              rdx, [rbp + 1296]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_display_29:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_28:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1296]
                        cmp              al, 104;                             je    n58_line_mark_α
                                                                              jmp   n47_binop_α
                        .size            n46_coerce_numeric_bx, .-n46_coerce_numeric_bx
                        .type            n47_binop_bx, @function
n47_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:            mov              eax, dword ptr [rbp + 1296]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_185_2
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_185_0
                        mov              qword ptr [rbp + 1280], 3
                        mov              qword ptr [rbp + 1288], rax;         jmp   .Lbinop_α_185_7
.Lbinop_α_185_2:        and              edx, 1;                              jz    .Lbinop_α_185_0
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_185_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_185_4
.Lbinop_α_185_3:        movq             xmm0, rsi
.Lbinop_α_185_4:        cmp              cl, 5;                               je    .Lbinop_α_185_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_185_6
.Lbinop_α_185_5:        movq             xmm1, rdi
.Lbinop_α_185_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_185_0
                        mov              qword ptr [rbp + 1280], 5
                        mov              qword ptr [rbp + 1288], rax
.Lbinop_α_185_7:                                                              jmp   n48_var_α
.Lbinop_α_185_0:        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_display_31:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n58_line_mark_α
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
.Lgcsite_display_30:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n48_var_α
                        .size            n47_binop_bx, .-n47_binop_bx
                        .type            n48_var_bx, @function
n48_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 0], rax             # result
                        mov              qword ptr [rbp + 8], rdx;            jmp   n49_binop_α
                        .size            n48_var_bx, .-n48_var_bx
                        .type            n49_binop_bx, @function
n49_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            mov              eax, dword ptr [rbp + 1280]
                        mov              ecx, dword ptr [rbp + 0]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_187_2
                        mov              rax, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 8]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1456], 3
                        mov              qword ptr [rbp + 1464], rax;         jmp   .Lbinop_α_187_7
.Lbinop_α_187_2:        and              edx, 1;                              jz    .Lbinop_α_187_0
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdi, qword ptr [rbp + 8]
                        cmp              al, 5;                               je    .Lbinop_α_187_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_187_4
.Lbinop_α_187_3:        movq             xmm0, rsi
.Lbinop_α_187_4:        cmp              cl, 5;                               je    .Lbinop_α_187_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_187_6
.Lbinop_α_187_5:        movq             xmm1, rdi
.Lbinop_α_187_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_187_0
                        mov              qword ptr [rbp + 1456], 5
                        mov              qword ptr [rbp + 1464], rax
.Lbinop_α_187_7:                                                              jmp   n50_subscript_α
.Lbinop_α_187_0:        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 0]
                        mov              rcx, qword ptr [rbp + 8]
                        call             qword ptr [rip + rt_add@GOTPCREL]
.Lgcsite_display_33:    cmp              al, 104;                             je    n40_to_β
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
.Lgcsite_display_32:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n50_subscript_α
                        .size            n49_binop_bx, .-n49_binop_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8, qword ptr [rbp + 1456]
                        mov              r9, qword ptr [rbp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_section_var_strict@PLT
.Lgcsite_display_35:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n40_to_β
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
.Lgcsite_display_34:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n51_deref_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_deref_bx, @function
n51_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_display_37:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n40_to_β
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
.Lgcsite_display_36:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n52_line_mark_α
                        .size            n51_deref_bx, .-n51_deref_bx
                        .type            n52_line_mark_bx, @function
n52_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_190_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_190_stno
                        .long            0
                        .long            82
                        .quad            .Lstnof1
                        .popsection
n52_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n53_call_proc_staged_α
                        .size            n52_line_mark_bx, .-n52_line_mark_bx
                        .type            n53_call_proc_staged_bx, @function
n53_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_call_proc_staged_α: lea              rcx, [rip + .Lcall_proc_staged_α_193_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_193_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 1472]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 1480]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_193_3:
.Lgcsite_display_39:    mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 82
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_193_2
.Lcall_proc_staged_α_193_4:
.Lgcsite_display_38:    mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 82
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_193_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n40_to_β
                                                                              jmp   n54_deref_α
n53_call_proc_staged_β: mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 82
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n40_to_β
.Lcall_proc_staged_β_193_0:
                        .quad            .Lcall_proc_staged_β_193_0_s
.Lcall_proc_staged_β_193_0_s:
                        .string          "show"
                        .size            n53_call_proc_staged_bx, .-n53_call_proc_staged_bx
                        .type            n54_deref_bx, @function
n54_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_deref_α:            mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_display_41:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n40_to_β
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
.Lgcsite_display_40:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n55_deref_α
                        .size            n54_deref_bx, .-n54_deref_bx
                        .type            n55_deref_bx, @function
n55_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_deref_α:            mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_display_43:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n40_to_β
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
.Lgcsite_display_42:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n56_line_mark_α
                        .size            n55_deref_bx, .-n55_deref_bx
                        .type            n56_line_mark_bx, @function
n56_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_196_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_196_stno
                        .long            0
                        .long            82
                        .quad            .Lstnof1
                        .popsection
n56_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 82;             jmp   n57_call_icon_α
                        .size            n56_line_mark_bx, .-n56_line_mark_bx
                        .type            n57_call_icon_bx, @function
n57_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_call_icon_α:        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lcall_icon_α_rkfn199:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn199]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_44:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_45:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n40_to_β
                                                                              jmp   n40_to_β
n57_call_icon_β:                                                              jmp   n40_to_β
                        .size            n57_call_icon_bx, .-n57_call_icon_bx
                        .type            n58_line_mark_bx, @function
n58_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_200_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_200_stno
                        .long            0
                        .long            84
                        .quad            .Lstnof1
                        .popsection
n58_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n59_line_mark_α
                        .size            n58_line_mark_bx, .-n58_line_mark_bx
                        .type            n59_line_mark_bx, @function
n59_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_202_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_202_stno
                        .long            0
                        .long            84
                        .quad            .Lstnof1
                        .popsection
n59_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 84;             jmp   n60_call_icon_α
                        .size            n59_line_mark_bx, .-n59_line_mark_bx
                        .type            n60_call_icon_bx, @function
n60_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_icon_α:        .section         .rodata
.Lcall_icon_α_rkfn205:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn205]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_46:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_47:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n61_line_mark_α
                                                                              jmp   n61_line_mark_α
n60_call_icon_β:                                                              jmp   n61_line_mark_α
                        .size            n60_call_icon_bx, .-n60_call_icon_bx
                        .type            n61_line_mark_bx, @function
n61_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_206_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_206_stno
                        .long            0
                        .long            85
                        .quad            .Lstnof1
                        .popsection
n61_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 85;             jmp   n62_var_α
                        .size            n61_line_mark_bx, .-n61_line_mark_bx
                        .type            n62_var_bx, @function
n62_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              mov              rax, qword ptr [r9 + 128]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 960], rax           # result
                        mov              qword ptr [rbp + 968], rdx;          jmp   n63_var_ref_α
                        .size            n62_var_bx, .-n62_var_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n64_lit_integer_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_lit_integer_bx, @function
n64_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              qword ptr [rbp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_211_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n65_subscript_α
.Llit_integer_α_211_0:  .quad            1
                        .size            n64_lit_integer_bx, .-n64_lit_integer_bx
                        .type            n65_subscript_bx, @function
n65_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_display_49:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n70_line_mark_α
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
.Lgcsite_display_48:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n66_deref_α
                        .size            n65_subscript_bx, .-n65_subscript_bx
                        .type            n66_deref_bx, @function
n66_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_display_51:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n70_line_mark_α
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
.Lgcsite_display_50:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n67_iterate_α
                        .size            n66_deref_bx, .-n66_deref_bx
                        .type            n67_iterate_bx, @function
n67_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_iterate_α:          mov              qword ptr [rbp + 992], 0
.Literate_α_215_0:      mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 992]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
.Lgcsite_display_53:    mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n70_line_mark_α
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
.Lgcsite_display_52:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n68_line_mark_α
n67_iterate_β:          inc              qword ptr [rbp + 992];               jmp   .Literate_α_215_0
                        .size            n67_iterate_bx, .-n67_iterate_bx
                        .type            n68_line_mark_bx, @function
n68_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_216_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_216_stno
                        .long            0
                        .long            85
                        .quad            .Lstnof1
                        .popsection
n68_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 85;             jmp   n69_call_icon_α
                        .size            n68_line_mark_bx, .-n68_line_mark_bx
                        .type            n69_call_icon_bx, @function
n69_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_icon_α:        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lcall_icon_α_rkfn219:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn219]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_54:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_55:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n67_iterate_β
                                                                              jmp   n67_iterate_β
n69_call_icon_β:                                                              jmp   n67_iterate_β
                        .size            n69_call_icon_bx, .-n69_call_icon_bx
                        .type            n70_line_mark_bx, @function
n70_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_220_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_220_stno
                        .long            0
                        .long            86
                        .quad            .Lstnof1
                        .popsection
n70_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n71_line_mark_α
                        .size            n70_line_mark_bx, .-n70_line_mark_bx
                        .type            n71_line_mark_bx, @function
n71_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_222_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_222_stno
                        .long            0
                        .long            86
                        .quad            .Lstnof1
                        .popsection
n71_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 86;             jmp   n72_call_icon_α
                        .size            n71_line_mark_bx, .-n71_line_mark_bx
                        .type            n72_call_icon_bx, @function
n72_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_icon_α:        .section         .rodata
.Lcall_icon_α_rkfn225:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn225]
                        lea              rsi, [rbp + 864]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_56:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_57:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n73_line_mark_α
                                                                              jmp   n73_line_mark_α
n72_call_icon_β:                                                              jmp   n73_line_mark_α
                        .size            n72_call_icon_bx, .-n72_call_icon_bx
                        .type            n73_line_mark_bx, @function
n73_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_226_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_226_stno
                        .long            0
                        .long            87
                        .quad            .Lstnof1
                        .popsection
n73_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 87;             jmp   n74_lit_integer_α
                        .size            n73_line_mark_bx, .-n73_line_mark_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_228_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n75_lit_integer_α
.Llit_integer_α_228_0:  .quad            1
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n76_to_α
.Llit_integer_α_229_0:  .quad            4
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_to_bx, @function
n76_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_to_α:               mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_display_65:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n99_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_64:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_display_63:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_display_62:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_display_61:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n99_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_60:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_display_59:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_display_58:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 368], rax
.Lto_α_231_0:           mov              rax, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 408]
                        cmp              rax, rcx;                            jg    n99_line_mark_α
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax;          jmp   n77_assign_α
n76_to_β:               inc              qword ptr [rbp + 368];               jo    n99_line_mark_α
                                                                              jmp   .Lto_α_231_0
                        .size            n76_to_bx, .-n76_to_bx
                        .type            n77_assign_bx, @function
n77_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:           mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n78_bound_α
                        .size            n77_assign_bx, .-n77_assign_bx
                        .type            n78_bound_bx, @function
n78_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_bound_α:            mov              qword ptr [rbp + 432], rsp;          jmp   n79_line_mark_α
                        .size            n78_bound_bx, .-n78_bound_bx
                        .type            n79_line_mark_bx, @function
n79_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_235_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_235_stno
                        .long            0
                        .long            88
                        .quad            .Lstnof1
                        .popsection
n79_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n80_var_ref_α
                        .size            n79_line_mark_bx, .-n79_line_mark_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n81_lit_integer_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              qword ptr [rbp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_239_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n82_subscript_α
.Llit_integer_α_239_0:  .quad            4
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_subscript_bx, @function
n82_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_subscript_α:        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_display_67:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
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
.Lgcsite_display_66:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n83_var_α
                        .size            n82_subscript_bx, .-n82_subscript_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 664], rax;          jmp   n84_subscript_α
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_subscript_bx, @function
n84_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_display_69:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
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
.Lgcsite_display_68:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n85_lit_integer_α
                        .size            n84_subscript_bx, .-n84_subscript_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n86_deref_α
.Llit_integer_α_244_0:  .quad            20
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_deref_bx, @function
n86_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_deref_α:            mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_display_71:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
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
.Lgcsite_display_70:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n87_line_mark_α
                        .size            n86_deref_bx, .-n86_deref_bx
                        .type            n87_line_mark_bx, @function
n87_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_246_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_246_stno
                        .long            0
                        .long            88
                        .quad            .Lstnof1
                        .popsection
n87_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n88_call_icon_α
                        .size            n87_line_mark_bx, .-n87_line_mark_bx
                        .type            n88_call_icon_bx, @function
n88_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_icon_α:        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn249:  .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn249]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_72:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_73:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n97_unmark_α
                                                                              jmp   n89_var_ref_α
n88_call_icon_β:                                                              jmp   n97_unmark_α
                        .size            n88_call_icon_bx, .-n88_call_icon_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n90_lit_integer_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_lit_integer_bx, @function
n90_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      mov              qword ptr [rbp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n91_subscript_α
.Llit_integer_α_252_0:  .quad            2
                        .size            n90_lit_integer_bx, .-n90_lit_integer_bx
                        .type            n91_subscript_bx, @function
n91_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_display_75:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
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
.Lgcsite_display_74:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n92_var_α
                        .size            n91_subscript_bx, .-n91_subscript_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 776], rax;          jmp   n93_subscript_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_subscript_bx, @function
n93_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_subscript_α:        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_display_77:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
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
.Lgcsite_display_76:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n94_deref_α
                        .size            n93_subscript_bx, .-n93_subscript_bx
                        .type            n94_deref_bx, @function
n94_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_deref_α:            mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_display_79:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
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
.Lgcsite_display_78:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n95_line_mark_α
                        .size            n94_deref_bx, .-n94_deref_bx
                        .type            n95_line_mark_bx, @function
n95_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_258_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_258_stno
                        .long            0
                        .long            88
                        .quad            .Lstnof1
                        .popsection
n95_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88;             jmp   n96_call_icon_α
                        .size            n95_line_mark_bx, .-n95_line_mark_bx
                        .type            n96_call_icon_bx, @function
n96_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_icon_α:        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lcall_icon_α_rkfn261:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn261]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_80:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_81:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n97_unmark_α
                                                                              jmp   n97_unmark_α
n96_call_icon_β:                                                              jmp   n97_unmark_α
                        .size            n96_call_icon_bx, .-n96_call_icon_bx
                        .type            n97_unmark_bx, @function
n97_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_unmark_α:           mov              rsp, qword ptr [rbp + 432];          jmp   n98_line_mark_α
                        .size            n97_unmark_bx, .-n97_unmark_bx
                        .type            n98_line_mark_bx, @function
n98_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_264_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_264_stno
                        .long            0
                        .long            87
                        .quad            .Lstnof1
                        .popsection
n98_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 87;             jmp   n76_to_β
                        .size            n98_line_mark_bx, .-n98_line_mark_bx
                        .type            n99_line_mark_bx, @function
n99_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_266_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_266_stno
                        .long            0
                        .long            89
                        .quad            .Lstnof1
                        .popsection
n99_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00001_line_mark_α
                        .size            n99_line_mark_bx, .-n99_line_mark_bx
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_268_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_268_stno
                        .long            0
                        .long            89
                        .quad            .Lstnof1
                        .popsection
n00001_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00002_call_icon_α
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00002_call_icon_bx, @function
n00002_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn271:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn271]
                        lea              rsi, [rbp + 304]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_82:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_83:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00003_line_mark_α
                                                                              jmp   n00003_line_mark_α
n00002_call_icon_β:                                                             jmp   n00003_line_mark_α
                        .size            n00002_call_icon_bx, .-n00002_call_icon_bx
                        .type            n00003_line_mark_bx, @function
n00003_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_272_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_272_stno
                        .long            0
                        .long            90
                        .quad            .Lstnof1
                        .popsection
n00003_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00004_var_α
                        .size            n00003_line_mark_bx, .-n00003_line_mark_bx
                        .type            n00004_var_bx, @function
n00004_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             mov              rax, qword ptr [r9 + 128]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 160], rax           # result
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00005_var_ref_α
                        .size            n00004_var_bx, .-n00004_var_bx
                        .type            n00005_var_ref_bx, @function
n00005_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00006_lit_integer_α
                        .size            n00005_var_ref_bx, .-n00005_var_ref_bx
                        .type            n00006_lit_integer_bx, @function
n00006_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_lit_integer_α:     mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_277_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00007_subscript_α
.Llit_integer_α_277_0:  .quad            3
                        .size            n00006_lit_integer_bx, .-n00006_lit_integer_bx
                        .type            n00007_subscript_bx, @function
n00007_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_subscript_α:       mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_display_85:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00008_line_mark_α
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
.Lgcsite_display_84:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00009_deref_α
                        .size            n00007_subscript_bx, .-n00007_subscript_bx
                        .type            n00009_deref_bx, @function
n00009_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_deref_α:           mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_display_87:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00008_line_mark_α
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
.Lgcsite_display_86:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00010_iterate_α
                        .size            n00009_deref_bx, .-n00009_deref_bx
                        .type            n00010_iterate_bx, @function
n00010_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_iterate_α:         mov              qword ptr [rbp + 192], 0
.Literate_α_281_0:      mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 192]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
.Lgcsite_display_89:    mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00008_line_mark_α
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
.Lgcsite_display_88:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00011_line_mark_α
n00010_iterate_β:         inc              qword ptr [rbp + 192];               jmp   .Literate_α_281_0
                        .size            n00010_iterate_bx, .-n00010_iterate_bx
                        .type            n00011_line_mark_bx, @function
n00011_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_282_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_282_stno
                        .long            0
                        .long            90
                        .quad            .Lstnof1
                        .popsection
n00011_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00012_call_icon_α
                        .size            n00011_line_mark_bx, .-n00011_line_mark_bx
                        .type            n00012_call_icon_bx, @function
n00012_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_call_icon_α:       mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn285:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn285]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_90:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_91:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00010_iterate_β
                                                                              jmp   n00010_iterate_β
n00012_call_icon_β:                                                             jmp   n00010_iterate_β
                        .size            n00012_call_icon_bx, .-n00012_call_icon_bx
                        .type            n00008_line_mark_bx, @function
n00008_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_286_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_286_stno
                        .long            0
                        .long            91
                        .quad            .Lstnof1
                        .popsection
n00008_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00013_var_α
                        .size            n00008_line_mark_bx, .-n00008_line_mark_bx
                        .type            n00013_var_bx, @function
n00013_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_var_α:             mov              rax, qword ptr [r9 + 112]            # display__STATIC__bar
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 64], rax            # result
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00014_line_mark_α
                        .size            n00013_var_bx, .-n00013_var_bx
                        .type            n00014_line_mark_bx, @function
n00014_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_289_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_289_stno
                        .long            0
                        .long            91
                        .quad            .Lstnof1
                        .popsection
n00014_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00015_call_icon_α
                        .size            n00014_line_mark_bx, .-n00014_line_mark_bx
                        .type            n00015_call_icon_bx, @function
n00015_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_call_icon_α:       mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn292:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn292]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_display_92:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_display_93:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    display_ω
                                                                              jmp   display_ω
n00015_call_icon_β:                                                             jmp   display_ω
                        .size            n00015_call_icon_bx, .-n00015_call_icon_bx
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
                        lea              rsp, [rbp + 2272]
                        mov              rbp, qword ptr [rbp + 2264];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 2272]
                        mov              rbp, qword ptr [rbp + 2264];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_display:
                        .quad            9759512153434
                        .quad            515396075600
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
.Lgcsites_display_0:    .quad            94
                        .quad            .Lgcmap_display
                        .quad            0
                        .quad            .Lgcsite_display_0
                        .quad            65537
                        .quad            .Lgcsite_display_1
                        .quad            65537
                        .quad            .Lgcsite_display_2
                        .quad            65537
                        .quad            .Lgcsite_display_3
                        .quad            65537
                        .quad            .Lgcsite_display_4
                        .quad            65537
                        .quad            .Lgcsite_display_5
                        .quad            65537
                        .quad            .Lgcsite_display_6
                        .quad            65537
                        .quad            .Lgcsite_display_7
                        .quad            65537
                        .quad            .Lgcsite_display_8
                        .quad            65538
                        .quad            .Lgcsite_display_9
                        .quad            65538
                        .quad            .Lgcsite_display_10
                        .quad            65537
                        .quad            .Lgcsite_display_11
                        .quad            65537
                        .quad            .Lgcsite_display_12
                        .quad            65537
                        .quad            .Lgcsite_display_13
                        .quad            65537
                        .quad            .Lgcsite_display_14
                        .quad            65537
                        .quad            .Lgcsite_display_15
                        .quad            65537
                        .quad            .Lgcsite_display_16
                        .quad            65537
                        .quad            .Lgcsite_display_17
                        .quad            65537
                        .quad            .Lgcsite_display_18
                        .quad            65537
                        .quad            .Lgcsite_display_19
                        .quad            65537
                        .quad            .Lgcsite_display_20
                        .quad            65537
                        .quad            .Lgcsite_display_21
                        .quad            65537
                        .quad            .Lgcsite_display_22
                        .quad            65537
                        .quad            .Lgcsite_display_23
                        .quad            65537
                        .quad            .Lgcsite_display_24
                        .quad            65537
                        .quad            .Lgcsite_display_25
                        .quad            65537
                        .quad            .Lgcsite_display_26
                        .quad            65537
                        .quad            .Lgcsite_display_27
                        .quad            65537
                        .quad            .Lgcsite_display_28
                        .quad            65537
                        .quad            .Lgcsite_display_29
                        .quad            65537
                        .quad            .Lgcsite_display_30
                        .quad            65537
                        .quad            .Lgcsite_display_31
                        .quad            65537
                        .quad            .Lgcsite_display_32
                        .quad            65537
                        .quad            .Lgcsite_display_33
                        .quad            65537
                        .quad            .Lgcsite_display_34
                        .quad            65537
                        .quad            .Lgcsite_display_35
                        .quad            65537
                        .quad            .Lgcsite_display_36
                        .quad            65537
                        .quad            .Lgcsite_display_37
                        .quad            65537
                        .quad            .Lgcsite_display_38
                        .quad            65538
                        .quad            .Lgcsite_display_39
                        .quad            65538
                        .quad            .Lgcsite_display_40
                        .quad            65537
                        .quad            .Lgcsite_display_41
                        .quad            65537
                        .quad            .Lgcsite_display_42
                        .quad            65537
                        .quad            .Lgcsite_display_43
                        .quad            65537
                        .quad            .Lgcsite_display_44
                        .quad            65537
                        .quad            .Lgcsite_display_45
                        .quad            65537
                        .quad            .Lgcsite_display_46
                        .quad            65537
                        .quad            .Lgcsite_display_47
                        .quad            65537
                        .quad            .Lgcsite_display_48
                        .quad            65537
                        .quad            .Lgcsite_display_49
                        .quad            65537
                        .quad            .Lgcsite_display_50
                        .quad            65537
                        .quad            .Lgcsite_display_51
                        .quad            65537
                        .quad            .Lgcsite_display_52
                        .quad            65537
                        .quad            .Lgcsite_display_53
                        .quad            65537
                        .quad            .Lgcsite_display_54
                        .quad            65537
                        .quad            .Lgcsite_display_55
                        .quad            65537
                        .quad            .Lgcsite_display_56
                        .quad            65537
                        .quad            .Lgcsite_display_57
                        .quad            65537
                        .quad            .Lgcsite_display_58
                        .quad            65537
                        .quad            .Lgcsite_display_59
                        .quad            65537
                        .quad            .Lgcsite_display_60
                        .quad            65537
                        .quad            .Lgcsite_display_61
                        .quad            65537
                        .quad            .Lgcsite_display_62
                        .quad            65537
                        .quad            .Lgcsite_display_63
                        .quad            65537
                        .quad            .Lgcsite_display_64
                        .quad            65537
                        .quad            .Lgcsite_display_65
                        .quad            65537
                        .quad            .Lgcsite_display_66
                        .quad            65537
                        .quad            .Lgcsite_display_67
                        .quad            65537
                        .quad            .Lgcsite_display_68
                        .quad            65537
                        .quad            .Lgcsite_display_69
                        .quad            65537
                        .quad            .Lgcsite_display_70
                        .quad            65537
                        .quad            .Lgcsite_display_71
                        .quad            65537
                        .quad            .Lgcsite_display_72
                        .quad            65537
                        .quad            .Lgcsite_display_73
                        .quad            65537
                        .quad            .Lgcsite_display_74
                        .quad            65537
                        .quad            .Lgcsite_display_75
                        .quad            65537
                        .quad            .Lgcsite_display_76
                        .quad            65537
                        .quad            .Lgcsite_display_77
                        .quad            65537
                        .quad            .Lgcsite_display_78
                        .quad            65537
                        .quad            .Lgcsite_display_79
                        .quad            65537
                        .quad            .Lgcsite_display_80
                        .quad            65537
                        .quad            .Lgcsite_display_81
                        .quad            65537
                        .quad            .Lgcsite_display_82
                        .quad            65537
                        .quad            .Lgcsite_display_83
                        .quad            65537
                        .quad            .Lgcsite_display_84
                        .quad            65537
                        .quad            .Lgcsite_display_85
                        .quad            65537
                        .quad            .Lgcsite_display_86
                        .quad            65537
                        .quad            .Lgcsite_display_87
                        .quad            65537
                        .quad            .Lgcsite_display_88
                        .quad            65537
                        .quad            .Lgcsite_display_89
                        .quad            65537
                        .quad            .Lgcsite_display_90
                        .quad            65537
                        .quad            .Lgcsite_display_91
                        .quad            65537
                        .quad            .Lgcsite_display_92
                        .quad            65537
                        .quad            .Lgcsite_display_93
                        .quad            65537
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
show_α_body:
                        .type            n00016_line_mark_bx, @function
n00016_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_378_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_378_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00016_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_379_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00017_line_mark_α
.Lline_mark_α_379_0:    .quad            .Lline_mark_α_379_0_s
.Lline_mark_α_379_0_s:  .string          "deal.icn"
                        .size            n00016_line_mark_bx, .-n00016_line_mark_bx
                        .type            n00017_line_mark_bx, @function
n00017_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_380_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_380_stno
                        .long            0
                        .long            98
                        .quad            .Lstnof1
                        .popsection
n00017_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00018_disjunction_α
                        .size            n00017_line_mark_bx, .-n00017_line_mark_bx
                        .type            n00018_disjunction_bx, @function
n00018_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_disjunction_α:     mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0;            jmp   n00019_var_α
.Ldisjunction_γ_295_as: mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_383_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00020_line_mark_α
.Ldisjunction_α_383_0:                                                        jmp   n00020_line_mark_α
n00018_disjunction_β:     mov              eax, dword ptr [rbp + 704];          jmp   n00021_goto_β
.Ldisjunction_γ_295_af:
.Ldisjunction_ω_295_af: add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704];          jmp   n00020_line_mark_α
                        .size            n00018_disjunction_bx, .-n00018_disjunction_bx
                        .type            n00019_var_bx, @function
n00019_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_α:             mov              rax, qword ptr [r9 + 224]            # show__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rbp + 1520], rax          # result
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n00022_unop_test_α
n00019_var_β:                                                                   jmp   .Ldisjunction_ω_295_af
                        .size            n00019_var_bx, .-n00019_var_bx
                        .type            n00022_unop_test_bx, @function
n00022_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_unop_test_α:       mov              eax, dword ptr [rbp + 1520]
                        cmp              al, 104;                             je    .Ldisjunction_ω_295_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_295_af
                        mov              qword ptr [rbp + 1504], 0
                        mov              qword ptr [rbp + 1512], 0;           jmp   n00023_lit_integer_α
                        .size            n00022_unop_test_bx, .-n00022_unop_test_bx
                        .type            n00023_lit_integer_bx, @function
n00023_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_lit_integer_α:     mov              qword ptr [rbp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_386_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00024_assign_α
.Llit_integer_α_386_0:  .quad            1
                        .size            n00023_lit_integer_bx, .-n00023_lit_integer_bx
                        .type            n00024_assign_bx, @function
n00024_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_assign_α:          mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        mov              qword ptr [r9 + 224], rax            # show__INITFLAG__0
                        mov              qword ptr [r9 + 232], rdx;           jmp   n00025_line_mark_α
                        .size            n00024_assign_bx, .-n00024_assign_bx
                        .type            n00025_line_mark_bx, @function
n00025_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_388_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_388_stno
                        .long            0
                        .long            99
                        .quad            .Lstnof1
                        .popsection
n00025_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00026_var_ref_α
                        .size            n00025_line_mark_bx, .-n00025_line_mark_bx
                        .type            n00026_var_ref_bx, @function
n00026_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00027_lit_integer_α
                        .size            n00026_var_ref_bx, .-n00026_var_ref_bx
                        .type            n00027_lit_integer_bx, @function
n00027_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_lit_integer_α:     mov              qword ptr [rbp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_392_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n00028_deref_α
.Llit_integer_α_392_0:  .quad            3
                        .size            n00027_lit_integer_bx, .-n00027_lit_integer_bx
                        .type            n00028_deref_bx, @function
n00028_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_deref_α:           mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00029_line_mark_α
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
.Lgcsite_show_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00030_line_mark_α
                        .size            n00028_deref_bx, .-n00028_deref_bx
                        .type            n00030_line_mark_bx, @function
n00030_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_394_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_394_stno
                        .long            0
                        .long            99
                        .quad            .Lstnof1
                        .popsection
n00030_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 99;             jmp   n00031_call_icon_α
                        .size            n00030_line_mark_bx, .-n00030_line_mark_bx
                        .type            n00031_call_icon_bx, @function
n00031_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_call_icon_α:       mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lcall_icon_α_rkfn397:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn397]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_3:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00029_line_mark_α
                                                                              jmp   n00032_var_α
n00031_call_icon_β:                                                             jmp   n00029_line_mark_α
                        .size            n00031_call_icon_bx, .-n00031_call_icon_bx
                        .type            n00032_var_bx, @function
n00032_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_α:             mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1456], rax          # result
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n00033_binop_α
                        .size            n00032_var_bx, .-n00032_var_bx
                        .type            n00033_binop_bx, @function
n00033_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_binop_α:           mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1344]
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_5:        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_4:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00034_assign_α
                        .size            n00033_binop_bx, .-n00033_binop_bx
                        .type            n00034_assign_bx, @function
n00034_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_assign_α:          mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [r9 + 160], rax            # show__STATIC__clubmap
                        mov              qword ptr [r9 + 168], rdx;           jmp   n00029_line_mark_α
                        .size            n00034_assign_bx, .-n00034_assign_bx
                        .type            n00029_line_mark_bx, @function
n00029_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_401_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_401_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00029_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00035_var_α
                        .size            n00029_line_mark_bx, .-n00029_line_mark_bx
                        .type            n00035_var_bx, @function
n00035_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_var_α:             mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1168], rax          # result
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n00036_var_α
                        .size            n00035_var_bx, .-n00035_var_bx
                        .type            n00036_var_bx, @function
n00036_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1184], rax          # result
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n00037_binop_α
                        .size            n00036_var_bx, .-n00036_var_bx
                        .type            n00037_binop_bx, @function
n00037_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_binop_α:           mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_7:        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00038_var_ref_α
                        .size            n00037_binop_bx, .-n00037_binop_bx
                        .type            n00038_var_ref_bx, @function
n00038_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n00039_lit_integer_α
                        .size            n00038_var_ref_bx, .-n00038_var_ref_bx
                        .type            n00039_lit_integer_bx, @function
n00039_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_lit_integer_α:     mov              qword ptr [rbp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_408_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n00040_deref_α
.Llit_integer_α_408_0:  .quad            2
                        .size            n00039_lit_integer_bx, .-n00039_lit_integer_bx
                        .type            n00040_deref_bx, @function
n00040_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_deref_α:           mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_9:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00041_line_mark_α
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
.Lgcsite_show_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00042_line_mark_α
                        .size            n00040_deref_bx, .-n00040_deref_bx
                        .type            n00042_line_mark_bx, @function
n00042_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_410_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_410_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00042_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00043_call_icon_α
                        .size            n00042_line_mark_bx, .-n00042_line_mark_bx
                        .type            n00043_call_icon_bx, @function
n00043_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_call_icon_α:       mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn413:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn413]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_10:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_11:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00041_line_mark_α
                                                                              jmp   n00044_binop_α
n00043_call_icon_β:                                                             jmp   n00041_line_mark_α
                        .size            n00043_call_icon_bx, .-n00043_call_icon_bx
                        .type            n00044_binop_bx, @function
n00044_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_binop_α:           mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_13:       mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_12:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00045_assign_α
                        .size            n00044_binop_bx, .-n00044_binop_bx
                        .type            n00045_assign_bx, @function
n00045_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_assign_α:          mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [r9 + 176], rax            # show__STATIC__diamondmap
                        mov              qword ptr [r9 + 184], rdx;           jmp   n00041_line_mark_α
                        .size            n00045_assign_bx, .-n00045_assign_bx
                        .type            n00041_line_mark_bx, @function
n00041_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_416_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_416_stno
                        .long            0
                        .long            101
                        .quad            .Lstnof1
                        .popsection
n00041_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00046_var_ref_α
                        .size            n00041_line_mark_bx, .-n00041_line_mark_bx
                        .type            n00046_var_ref_bx, @function
n00046_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00047_lit_integer_α
                        .size            n00046_var_ref_bx, .-n00046_var_ref_bx
                        .type            n00047_lit_integer_bx, @function
n00047_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_lit_integer_α:     mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_420_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00048_deref_α
.Llit_integer_α_420_0:  .quad            2
                        .size            n00047_lit_integer_bx, .-n00047_lit_integer_bx
                        .type            n00048_deref_bx, @function
n00048_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_deref_α:           mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00049_line_mark_α
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
.Lgcsite_show_14:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00050_line_mark_α
                        .size            n00048_deref_bx, .-n00048_deref_bx
                        .type            n00050_line_mark_bx, @function
n00050_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_422_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_422_stno
                        .long            0
                        .long            101
                        .quad            .Lstnof1
                        .popsection
n00050_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 101;            jmp   n00051_call_icon_α
                        .size            n00050_line_mark_bx, .-n00050_line_mark_bx
                        .type            n00051_call_icon_bx, @function
n00051_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_call_icon_α:       mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn425:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn425]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_16:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00049_line_mark_α
                                                                              jmp   n00052_var_α
n00051_call_icon_β:                                                             jmp   n00049_line_mark_α
                        .size            n00051_call_icon_bx, .-n00051_call_icon_bx
                        .type            n00052_var_bx, @function
n00052_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:             mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1088], rax          # result
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00053_binop_α
                        .size            n00052_var_bx, .-n00052_var_bx
                        .type            n00053_binop_bx, @function
n00053_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_binop_α:           mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_19:       mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_18:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00054_var_α
                        .size            n00053_binop_bx, .-n00053_binop_bx
                        .type            n00054_var_bx, @function
n00054_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_var_α:             mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1104], rax          # result
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00055_binop_α
                        .size            n00054_var_bx, .-n00054_var_bx
                        .type            n00055_binop_bx, @function
n00055_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_binop_α:           mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_21:       mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_20:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00056_assign_α
                        .size            n00055_binop_bx, .-n00055_binop_bx
                        .type            n00056_assign_bx, @function
n00056_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_assign_α:          mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [r9 + 192], rax            # show__STATIC__heartmap
                        mov              qword ptr [r9 + 200], rdx;           jmp   n00049_line_mark_α
                        .size            n00056_assign_bx, .-n00056_assign_bx
                        .type            n00049_line_mark_bx, @function
n00049_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_431_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_431_stno
                        .long            0
                        .long            102
                        .quad            .Lstnof1
                        .popsection
n00049_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00057_var_ref_α
                        .size            n00049_line_mark_bx, .-n00049_line_mark_bx
                        .type            n00057_var_ref_bx, @function
n00057_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00058_lit_integer_α
                        .size            n00057_var_ref_bx, .-n00057_var_ref_bx
                        .type            n00058_lit_integer_bx, @function
n00058_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_lit_integer_α:     mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_435_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00059_deref_α
.Llit_integer_α_435_0:  .quad            3
                        .size            n00058_lit_integer_bx, .-n00058_lit_integer_bx
                        .type            n00059_deref_bx, @function
n00059_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_deref_α:           mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_23:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00020_line_mark_α
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
.Lgcsite_show_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00060_line_mark_α
                        .size            n00059_deref_bx, .-n00059_deref_bx
                        .type            n00060_line_mark_bx, @function
n00060_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_437_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_437_stno
                        .long            0
                        .long            102
                        .quad            .Lstnof1
                        .popsection
n00060_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 102;            jmp   n00061_call_icon_α
                        .size            n00060_line_mark_bx, .-n00060_line_mark_bx
                        .type            n00061_call_icon_bx, @function
n00061_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_icon_α:       mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_icon_α_rkfn440:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn440]
                        lea              rsi, [rbp + 800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_24:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_25:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00020_line_mark_α
                                                                              jmp   n00062_var_α
n00061_call_icon_β:                                                             jmp   n00020_line_mark_α
                        .size            n00061_call_icon_bx, .-n00061_call_icon_bx
                        .type            n00062_var_bx, @function
n00062_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:             mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 896], rax           # result
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00063_binop_α
                        .size            n00062_var_bx, .-n00062_var_bx
                        .type            n00063_binop_bx, @function
n00063_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_binop_α:           mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_27:       mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_26:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00064_assign_α
                        .size            n00063_binop_bx, .-n00063_binop_bx
                        .type            n00064_assign_bx, @function
n00064_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_assign_α:          mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [r9 + 208], rax            # show__STATIC__spademap
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00065_conjunction_α
                        .size            n00064_assign_bx, .-n00064_assign_bx
                        .type            n00065_conjunction_bx, @function
n00065_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_conjunction_α:     mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00066_conjunction_α
n00065_conjunction_β:                                                           jmp   n00020_line_mark_α
                        .size            n00065_conjunction_bx, .-n00065_conjunction_bx
                        .type            n00066_conjunction_bx, @function
n00066_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_conjunction_α:     mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax;          jmp   .Ldisjunction_γ_295_as
n00066_conjunction_β:                                                           jmp   n00020_line_mark_α
                        .size            n00066_conjunction_bx, .-n00066_conjunction_bx
                        .type            n00021_goto_bx, @function
n00021_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_goto_α:                                                                  jmp   n00020_line_mark_α
n00021_goto_β:                                                                  jmp   n00020_line_mark_α
                        .size            n00021_goto_bx, .-n00021_goto_bx
                        .type            n00020_line_mark_bx, @function
n00020_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_447_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_447_stno
                        .long            0
                        .long            104
                        .quad            .Lstnof1
                        .popsection
n00020_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 104;            jmp   n00067_lit_string_α
                        .size            n00020_line_mark_bx, .-n00020_line_mark_bx
                        .type            n00067_lit_string_bx, @function
n00067_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_lit_string_α:      mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_449_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00068_var_ref_α
.Llit_string_α_449_0:   .quad            .Llit_string_α_449_0_s
.Llit_string_α_449_0_s: .string          "S: "
                        .size            n00067_lit_string_bx, .-n00067_lit_string_bx
                        .type            n00068_var_ref_bx, @function
n00068_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00069_var_α
                        .size            n00068_var_ref_bx, .-n00068_var_ref_bx
                        .type            n00069_var_bx, @function
n00069_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_α:             mov              rax, qword ptr [r9 + 208]            # show__STATIC__spademap
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rbp + 208], rax           # result
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00070_deref_α
                        .size            n00069_var_bx, .-n00069_var_bx
                        .type            n00070_deref_bx, @function
n00070_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_deref_α:           mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_29:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_28:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00071_line_mark_α
                        .size            n00070_deref_bx, .-n00070_deref_bx
                        .type            n00071_line_mark_bx, @function
n00071_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_454_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_454_stno
                        .long            0
                        .long            105
                        .quad            .Lstnof1
                        .popsection
n00071_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 105;            jmp   n00072_call_proc_staged_α
                        .size            n00071_line_mark_bx, .-n00071_line_mark_bx
                        .type            n00072_call_proc_staged_bx, @function
n00072_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_457_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_457_3]
                        push             rcx
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
.Lcall_proc_staged_α_457_3:
.Lgcsite_show_31:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 105
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_457_2
.Lcall_proc_staged_α_457_4:
.Lgcsite_show_30:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 105
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_457_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00073_deref_α
n00072_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 105
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   show_ω
.Lcall_proc_staged_β_457_0:
                        .quad            .Lcall_proc_staged_β_457_0_s
.Lcall_proc_staged_β_457_0_s:
                        .string          "arrange"
                        .size            n00072_call_proc_staged_bx, .-n00072_call_proc_staged_bx
                        .type            n00073_deref_bx, @function
n00073_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_deref_α:           mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_33:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_32:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00074_binop_α
                        .size            n00073_deref_bx, .-n00073_deref_bx
                        .type            n00074_binop_bx, @function
n00074_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_binop_α:           mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_35:       mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_34:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00075_lit_string_α
                        .size            n00074_binop_bx, .-n00074_binop_bx
                        .type            n00075_lit_string_bx, @function
n00075_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_lit_string_α:      mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_460_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00076_var_ref_α
.Llit_string_α_460_0:   .quad            .Llit_string_α_460_0_s
.Llit_string_α_460_0_s: .string          "H: "
                        .size            n00075_lit_string_bx, .-n00075_lit_string_bx
                        .type            n00076_var_ref_bx, @function
n00076_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00077_var_α
                        .size            n00076_var_ref_bx, .-n00076_var_ref_bx
                        .type            n00077_var_bx, @function
n00077_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_α:             mov              rax, qword ptr [r9 + 192]            # show__STATIC__heartmap
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rbp + 352], rax           # result
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00078_deref_α
                        .size            n00077_var_bx, .-n00077_var_bx
                        .type            n00078_deref_bx, @function
n00078_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_deref_α:           mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_37:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_36:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00079_line_mark_α
                        .size            n00078_deref_bx, .-n00078_deref_bx
                        .type            n00079_line_mark_bx, @function
n00079_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_465_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_465_stno
                        .long            0
                        .long            106
                        .quad            .Lstnof1
                        .popsection
n00079_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 106;            jmp   n00080_call_proc_staged_α
                        .size            n00079_line_mark_bx, .-n00079_line_mark_bx
                        .type            n00080_call_proc_staged_bx, @function
n00080_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_468_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_468_3]
                        push             rcx
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
.Lcall_proc_staged_α_468_3:
.Lgcsite_show_39:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 106
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_468_2
.Lcall_proc_staged_α_468_4:
.Lgcsite_show_38:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 106
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_468_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00081_deref_α
n00080_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 106
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   show_ω
.Lcall_proc_staged_β_468_0:
                        .quad            .Lcall_proc_staged_β_468_0_s
.Lcall_proc_staged_β_468_0_s:
                        .string          "arrange"
                        .size            n00080_call_proc_staged_bx, .-n00080_call_proc_staged_bx
                        .type            n00081_deref_bx, @function
n00081_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_deref_α:           mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_41:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_40:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00082_binop_α
                        .size            n00081_deref_bx, .-n00081_deref_bx
                        .type            n00082_binop_bx, @function
n00082_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_binop_α:           mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_43:       mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_42:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00083_lit_string_α
                        .size            n00082_binop_bx, .-n00082_binop_bx
                        .type            n00083_lit_string_bx, @function
n00083_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:      mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_471_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00084_var_ref_α
.Llit_string_α_471_0:   .quad            .Llit_string_α_471_0_s
.Llit_string_α_471_0_s: .string          "D: "
                        .size            n00083_lit_string_bx, .-n00083_lit_string_bx
                        .type            n00084_var_ref_bx, @function
n00084_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00085_var_α
                        .size            n00084_var_ref_bx, .-n00084_var_ref_bx
                        .type            n00085_var_bx, @function
n00085_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_var_α:             mov              rax, qword ptr [r9 + 176]            # show__STATIC__diamondmap
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 496], rax           # result
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00086_deref_α
                        .size            n00085_var_bx, .-n00085_var_bx
                        .type            n00086_deref_bx, @function
n00086_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_deref_α:           mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_45:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_44:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00087_line_mark_α
                        .size            n00086_deref_bx, .-n00086_deref_bx
                        .type            n00087_line_mark_bx, @function
n00087_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_476_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_476_stno
                        .long            0
                        .long            107
                        .quad            .Lstnof1
                        .popsection
n00087_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00088_call_proc_staged_α
                        .size            n00087_line_mark_bx, .-n00087_line_mark_bx
                        .type            n00088_call_proc_staged_bx, @function
n00088_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_479_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_479_3]
                        push             rcx
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
.Lcall_proc_staged_α_479_3:
.Lgcsite_show_47:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 107
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_479_2
.Lcall_proc_staged_α_479_4:
.Lgcsite_show_46:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 107
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_479_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00089_deref_α
n00088_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 107
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   show_ω
.Lcall_proc_staged_β_479_0:
                        .quad            .Lcall_proc_staged_β_479_0_s
.Lcall_proc_staged_β_479_0_s:
                        .string          "arrange"
                        .size            n00088_call_proc_staged_bx, .-n00088_call_proc_staged_bx
                        .type            n00089_deref_bx, @function
n00089_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_deref_α:           mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_49:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_48:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00090_binop_α
                        .size            n00089_deref_bx, .-n00089_deref_bx
                        .type            n00090_binop_bx, @function
n00090_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_binop_α:           mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_51:       mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_50:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00091_lit_string_α
                        .size            n00090_binop_bx, .-n00090_binop_bx
                        .type            n00091_lit_string_bx, @function
n00091_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_lit_string_α:      mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_482_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00092_var_ref_α
.Llit_string_α_482_0:   .quad            .Llit_string_α_482_0_s
.Llit_string_α_482_0_s: .string          "C: "
                        .size            n00091_lit_string_bx, .-n00091_lit_string_bx
                        .type            n00092_var_ref_bx, @function
n00092_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00093_var_α
                        .size            n00092_var_ref_bx, .-n00092_var_ref_bx
                        .type            n00093_var_bx, @function
n00093_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_var_α:             mov              rax, qword ptr [r9 + 160]            # show__STATIC__clubmap
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rbp + 640], rax           # result
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00094_deref_α
                        .size            n00093_var_bx, .-n00093_var_bx
                        .type            n00094_deref_bx, @function
n00094_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_deref_α:           mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_53:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_52:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00095_line_mark_α
                        .size            n00094_deref_bx, .-n00094_deref_bx
                        .type            n00095_line_mark_bx, @function
n00095_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_487_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_487_stno
                        .long            0
                        .long            108
                        .quad            .Lstnof1
                        .popsection
n00095_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00096_call_proc_staged_α
                        .size            n00095_line_mark_bx, .-n00095_line_mark_bx
                        .type            n00096_call_proc_staged_bx, @function
n00096_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_490_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_490_3]
                        push             rcx
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
.Lcall_proc_staged_α_490_3:
.Lgcsite_show_55:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 108
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_490_2
.Lcall_proc_staged_α_490_4:
.Lgcsite_show_54:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 108
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_490_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00097_deref_α
n00096_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 108
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   show_ω
.Lcall_proc_staged_β_490_0:
                        .quad            .Lcall_proc_staged_β_490_0_s
.Lcall_proc_staged_β_490_0_s:
                        .string          "arrange"
                        .size            n00096_call_proc_staged_bx, .-n00096_call_proc_staged_bx
                        .type            n00097_deref_bx, @function
n00097_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_deref_α:           mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_57:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_56:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00098_binop_α
                        .size            n00097_deref_bx, .-n00097_deref_bx
                        .type            n00098_binop_bx, @function
n00098_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_binop_α:           mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_59:       mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_58:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00099_make_list_α
                        .size            n00098_binop_bx, .-n00098_binop_bx
                        .type            n00099_make_list_bx, @function
n00099_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_make_list_α:       mov              rax, qword ptr [rbp + 96]
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
.Lgcsite_show_61:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_60:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00100_return_α
                        .size            n00099_make_list_bx, .-n00099_make_list_bx
                        .type            n00100_return_bx, @function
n00100_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   show_γ
                        .size            n00100_return_bx, .-n00100_return_bx
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
                        mov              rbp, qword ptr [rbp + 1640];         jmp   qword ptr [rsp]
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
                        mov              rbp, qword ptr [rbp + 1640];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_show:
                        .quad            7079452560730
                        .quad            515396075584
                        .quad            .Lgcmap_show_s
                        .quad            1568
                        .quad            3
                        .quad            774056185954304
                        .quad            17596481012416
                        .quad            932385860354768
.Lgcmap_show_s:         .string          "show"
.Lgcsites_show_1:       .quad            62
                        .quad            .Lgcmap_show
                        .quad            0
                        .quad            .Lgcsite_show_0
                        .quad            65537
                        .quad            .Lgcsite_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_2
                        .quad            65537
                        .quad            .Lgcsite_show_3
                        .quad            65537
                        .quad            .Lgcsite_show_4
                        .quad            65537
                        .quad            .Lgcsite_show_5
                        .quad            65537
                        .quad            .Lgcsite_show_6
                        .quad            65537
                        .quad            .Lgcsite_show_7
                        .quad            65537
                        .quad            .Lgcsite_show_8
                        .quad            65537
                        .quad            .Lgcsite_show_9
                        .quad            65537
                        .quad            .Lgcsite_show_10
                        .quad            65537
                        .quad            .Lgcsite_show_11
                        .quad            65537
                        .quad            .Lgcsite_show_12
                        .quad            65537
                        .quad            .Lgcsite_show_13
                        .quad            65537
                        .quad            .Lgcsite_show_14
                        .quad            65537
                        .quad            .Lgcsite_show_15
                        .quad            65537
                        .quad            .Lgcsite_show_16
                        .quad            65537
                        .quad            .Lgcsite_show_17
                        .quad            65537
                        .quad            .Lgcsite_show_18
                        .quad            65537
                        .quad            .Lgcsite_show_19
                        .quad            65537
                        .quad            .Lgcsite_show_20
                        .quad            65537
                        .quad            .Lgcsite_show_21
                        .quad            65537
                        .quad            .Lgcsite_show_22
                        .quad            65537
                        .quad            .Lgcsite_show_23
                        .quad            65537
                        .quad            .Lgcsite_show_24
                        .quad            65537
                        .quad            .Lgcsite_show_25
                        .quad            65537
                        .quad            .Lgcsite_show_26
                        .quad            65537
                        .quad            .Lgcsite_show_27
                        .quad            65537
                        .quad            .Lgcsite_show_28
                        .quad            65537
                        .quad            .Lgcsite_show_29
                        .quad            65537
                        .quad            .Lgcsite_show_30
                        .quad            65538
                        .quad            .Lgcsite_show_31
                        .quad            65538
                        .quad            .Lgcsite_show_32
                        .quad            65537
                        .quad            .Lgcsite_show_33
                        .quad            65537
                        .quad            .Lgcsite_show_34
                        .quad            65537
                        .quad            .Lgcsite_show_35
                        .quad            65537
                        .quad            .Lgcsite_show_36
                        .quad            65537
                        .quad            .Lgcsite_show_37
                        .quad            65537
                        .quad            .Lgcsite_show_38
                        .quad            65538
                        .quad            .Lgcsite_show_39
                        .quad            65538
                        .quad            .Lgcsite_show_40
                        .quad            65537
                        .quad            .Lgcsite_show_41
                        .quad            65537
                        .quad            .Lgcsite_show_42
                        .quad            65537
                        .quad            .Lgcsite_show_43
                        .quad            65537
                        .quad            .Lgcsite_show_44
                        .quad            65537
                        .quad            .Lgcsite_show_45
                        .quad            65537
                        .quad            .Lgcsite_show_46
                        .quad            65538
                        .quad            .Lgcsite_show_47
                        .quad            65538
                        .quad            .Lgcsite_show_48
                        .quad            65537
                        .quad            .Lgcsite_show_49
                        .quad            65537
                        .quad            .Lgcsite_show_50
                        .quad            65537
                        .quad            .Lgcsite_show_51
                        .quad            65537
                        .quad            .Lgcsite_show_52
                        .quad            65537
                        .quad            .Lgcsite_show_53
                        .quad            65537
                        .quad            .Lgcsite_show_54
                        .quad            65538
                        .quad            .Lgcsite_show_55
                        .quad            65538
                        .quad            .Lgcsite_show_56
                        .quad            65537
                        .quad            .Lgcsite_show_57
                        .quad            65537
                        .quad            .Lgcsite_show_58
                        .quad            65537
                        .quad            .Lgcsite_show_59
                        .quad            65537
                        .quad            .Lgcsite_show_60
                        .quad            65537
                        .quad            .Lgcsite_show_61
                        .quad            65537
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
arrange_α_body:
                        .type            n00101_line_mark_bx, @function
n00101_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_514_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_514_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00101_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_515_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00102_var_ref_α
.Lline_mark_α_515_0:    .quad            .Lline_mark_α_515_0_s
.Lline_mark_α_515_0_s:  .string          "deal.icn"
                        .size            n00101_line_mark_bx, .-n00101_line_mark_bx
                        .type            n00102_var_ref_bx, @function
n00102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00103_var_ref_α
                        .size            n00102_var_ref_bx, .-n00102_var_ref_bx
                        .type            n00103_var_ref_bx, @function
n00103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # deckimage
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00104_var_ref_α
                        .size            n00103_var_ref_bx, .-n00103_var_ref_bx
                        .type            n00104_var_ref_bx, @function
n00104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00105_deref_α
                        .size            n00104_var_ref_bx, .-n00104_var_ref_bx
                        .type            n00105_deref_bx, @function
n00105_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_deref_α:           mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_arrange_1:     mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_arrange_0:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00106_deref_α
                        .size            n00105_deref_bx, .-n00105_deref_bx
                        .type            n00106_deref_bx, @function
n00106_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_deref_α:           mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_arrange_3:     mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_arrange_2:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00107_deref_α
                        .size            n00106_deref_bx, .-n00106_deref_bx
                        .type            n00107_deref_bx, @function
n00107_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_deref_α:           mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_arrange_5:     mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_arrange_4:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00108_line_mark_α
                        .size            n00107_deref_bx, .-n00107_deref_bx
                        .type            n00108_line_mark_bx, @function
n00108_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_525_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_525_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00108_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00109_call_icon_α
                        .size            n00108_line_mark_bx, .-n00108_line_mark_bx
                        .type            n00109_call_icon_bx, @function
n00109_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_call_icon_α:       mov              rax, qword ptr [rbp + 272]
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
.Lcall_icon_α_rkfn528:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn528]
                        lea              rsi, [rbp + 128]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_arrange_6:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_arrange_7:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    arrange_ω
                                                                              jmp   n00110_lit_charset_α
n00109_call_icon_β:                                                             jmp   arrange_ω
                        .size            n00109_call_icon_bx, .-n00109_call_icon_bx
                        .type            n00110_lit_charset_bx, @function
n00110_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_lit_charset_α:     mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_529_0]
                        mov              qword ptr [rbp + 296], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_529_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_arrange_9:     mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_arrange_8:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00111_binop_α
.Llit_charset_α_529_0:  .quad            .Llit_charset_α_529_0_s
.Llit_charset_α_529_0_s:
                        .string          " "
                        .size            n00110_lit_charset_bx, .-n00110_lit_charset_bx
                        .type            n00111_binop_bx, @function
n00111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_binop_α:           mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff_strict@PLT
.Lgcsite_arrange_11:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_arrange_10:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00112_var_ref_α
                        .size            n00111_binop_bx, .-n00111_binop_bx
                        .type            n00112_var_ref_bx, @function
n00112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052352                      # denom
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00113_var_ref_α
                        .size            n00112_var_ref_bx, .-n00112_var_ref_bx
                        .type            n00113_var_ref_bx, @function
n00113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052368                      # rank
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00114_deref_α
                        .size            n00113_var_ref_bx, .-n00113_var_ref_bx
                        .type            n00114_deref_bx, @function
n00114_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_deref_α:           mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_arrange_13:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_arrange_12:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00115_deref_α
                        .size            n00114_deref_bx, .-n00114_deref_bx
                        .type            n00115_deref_bx, @function
n00115_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_deref_α:           mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_arrange_15:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_arrange_14:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00116_line_mark_α
                        .size            n00115_deref_bx, .-n00115_deref_bx
                        .type            n00116_line_mark_bx, @function
n00116_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_537_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_537_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00116_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00117_call_icon_α
                        .size            n00116_line_mark_bx, .-n00116_line_mark_bx
                        .type            n00117_call_icon_bx, @function
n00117_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_call_icon_α:       mov              rax, qword ptr [rbp + 368]
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
.Lcall_icon_α_rkfn540:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn540]
                        lea              rsi, [rbp + 32]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_arrange_16:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_arrange_17:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    arrange_ω
                                                                              jmp   n00118_return_α
n00117_call_icon_β:                                                             jmp   arrange_ω
                        .size            n00117_call_icon_bx, .-n00117_call_icon_bx
                        .type            n00118_return_bx, @function
n00118_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   arrange_γ
                        .size            n00118_return_bx, .-n00118_return_bx
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
                        mov              rbp, qword ptr [rbp + 488];          jmp   qword ptr [rsp]
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
                        mov              rbp, qword ptr [rbp + 488];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_arrange:
                        .quad            2131650235738
                        .quad            515396075600
                        .quad            .Lgcmap_arrange_s
                        .quad            400
                        .quad            1
                        .quad            439804651110400
.Lgcmap_arrange_s:      .string          "arrange"
.Lgcsites_arrange_2:    .quad            18
                        .quad            .Lgcmap_arrange
                        .quad            0
                        .quad            .Lgcsite_arrange_0
                        .quad            65537
                        .quad            .Lgcsite_arrange_1
                        .quad            65537
                        .quad            .Lgcsite_arrange_2
                        .quad            65537
                        .quad            .Lgcsite_arrange_3
                        .quad            65537
                        .quad            .Lgcsite_arrange_4
                        .quad            65537
                        .quad            .Lgcsite_arrange_5
                        .quad            65537
                        .quad            .Lgcsite_arrange_6
                        .quad            65537
                        .quad            .Lgcsite_arrange_7
                        .quad            65537
                        .quad            .Lgcsite_arrange_8
                        .quad            65537
                        .quad            .Lgcsite_arrange_9
                        .quad            65537
                        .quad            .Lgcsite_arrange_10
                        .quad            65537
                        .quad            .Lgcsite_arrange_11
                        .quad            65537
                        .quad            .Lgcsite_arrange_12
                        .quad            65537
                        .quad            .Lgcsite_arrange_13
                        .quad            65537
                        .quad            .Lgcsite_arrange_14
                        .quad            65537
                        .quad            .Lgcsite_arrange_15
                        .quad            65537
                        .quad            .Lgcsite_arrange_16
                        .quad            65537
                        .quad            .Lgcsite_arrange_17
                        .quad            65537
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 4032
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 4024
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3816], rax
                        mov              dword ptr [rsp + 3808], 160
                        mov              dword ptr [rsp + 3812], 4032
                        mov              eax, 0
                        mov              qword ptr [rsp + 4024], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
options_α_body:
                        .type            n00119_line_mark_bx, @function
n00119_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_711_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_711_stno
                        .long            0
                        .long            121
                        .quad            .Lstnof1
                        .popsection
n00119_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 121
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_712_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00120_line_mark_α
.Lline_mark_α_712_0:    .quad            .Lline_mark_α_712_0_s
.Lline_mark_α_712_0_s:  .string          "deal.icn"
                        .size            n00119_line_mark_bx, .-n00119_line_mark_bx
                        .type            n00120_line_mark_bx, @function
n00120_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_713_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_713_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00120_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00121_var_ref_α
                        .size            n00120_line_mark_bx, .-n00120_line_mark_bx
                        .type            n00121_var_ref_bx, @function
n00121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx;         jmp   n00122_nulltest_var_α
                        .size            n00121_var_ref_bx, .-n00121_var_ref_bx
                        .type            n00122_nulltest_var_bx, @function
n00122_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_nulltest_var_α:    mov              eax, dword ptr [rbp + 3520]
                        cmp              al, 104;                             je    n00123_line_mark_α
                        mov              rdi, qword ptr [rbp + 3520]
                        mov              rsi, qword ptr [rbp + 3528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_1:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00123_line_mark_α
                        cmp              eax, 0;                              jne   n00123_line_mark_α
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3544], rax
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
.Lgcsite_options_0:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00124_lit_charset_α
                        .size            n00122_nulltest_var_bx, .-n00122_nulltest_var_bx
                        .type            n00124_lit_charset_bx, @function
n00124_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_charset_α:     mov              qword ptr [rbp + 3616], 2            # result
                        mov              dword ptr [rbp + 3620], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_718_0]
                        mov              qword ptr [rbp + 3624], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_718_0]
                        mov              rsi, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_3:     mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_2:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00125_line_mark_α
.Llit_charset_α_718_0:  .quad            .Llit_charset_α_718_0_s
.Llit_charset_α_718_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00124_lit_charset_bx, .-n00124_lit_charset_bx
                        .type            n00125_line_mark_bx, @function
n00125_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_719_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_719_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00125_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00126_call_icon_α
                        .size            n00125_line_mark_bx, .-n00125_line_mark_bx
                        .type            n00126_call_icon_bx, @function
n00126_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_call_icon_α:       mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3592], rax
                        .section         .rodata
.Lcall_icon_α_rkfn722:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn722]
                        lea              rsi, [rbp + 3584]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_4:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_5:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00123_line_mark_α
                                                                              jmp   n00127_assign_var_α
n00126_call_icon_β:                                                             jmp   n00123_line_mark_α
                        .size            n00126_call_icon_bx, .-n00126_call_icon_bx
                        .type            n00127_assign_var_bx, @function
n00127_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_var_α:      mov              rdi, qword ptr [rbp + 3536]
                        mov              rsi, qword ptr [rbp + 3544]
                        mov              rdx, qword ptr [rbp + 3568]
                        mov              rcx, qword ptr [rbp + 3576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_7:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00123_line_mark_α
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
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
.Lgcsite_options_6:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00123_line_mark_α
                        .size            n00127_assign_var_bx, .-n00127_assign_var_bx
                        .type            n00123_line_mark_bx, @function
n00123_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_724_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_724_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00123_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00128_line_mark_α
                        .size            n00123_line_mark_bx, .-n00123_line_mark_bx
                        .type            n00128_line_mark_bx, @function
n00128_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_726_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_726_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00128_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00129_call_icon_α
                        .size            n00128_line_mark_bx, .-n00128_line_mark_bx
                        .type            n00129_call_icon_bx, @function
n00129_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn729:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn729]
                        lea              rsi, [rbp + 3488]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_8:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_9:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00130_line_mark_α
                                                                              jmp   n00131_assign_α
n00129_call_icon_β:                                                             jmp   n00130_line_mark_α
                        .size            n00129_call_icon_bx, .-n00129_call_icon_bx
                        .type            n00131_assign_bx, @function
n00131_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_assign_α:          mov              rax, qword ptr [rbp + 3472]
                        mov              rdx, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n00130_line_mark_α
                        .size            n00131_assign_bx, .-n00131_assign_bx
                        .type            n00130_line_mark_bx, @function
n00130_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_731_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_731_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00130_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00132_make_list_α
                        .size            n00130_line_mark_bx, .-n00130_line_mark_bx
                        .type            n00132_make_list_bx, @function
n00132_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_make_list_α:       lea              rdi, [rbp + 3456]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
.Lgcsite_options_11:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
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
.Lgcsite_options_10:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00133_assign_α
                        .size            n00132_make_list_bx, .-n00132_make_list_bx
                        .type            n00133_assign_bx, @function
n00133_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_assign_α:          mov              rax, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n00134_line_mark_α
                        .size            n00133_assign_bx, .-n00133_assign_bx
                        .type            n00134_line_mark_bx, @function
n00134_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_736_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_736_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00134_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00135_bound_α
                        .size            n00134_line_mark_bx, .-n00134_line_mark_bx
                        .type            n00135_bound_bx, @function
n00135_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_bound_α:           mov              qword ptr [rbp + 416], rsp;          jmp   n00136_var_ref_α
                        .size            n00135_bound_bx, .-n00135_bound_bx
                        .type            n00136_var_ref_bx, @function
n00136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4032]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00137_deref_α
                        .size            n00136_var_ref_bx, .-n00136_var_ref_bx
                        .type            n00137_deref_bx, @function
n00137_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_deref_α:           mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_13:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00138_line_mark_α
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
.Lgcsite_options_12:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00139_line_mark_α
                        .size            n00137_deref_bx, .-n00137_deref_bx
                        .type            n00139_line_mark_bx, @function
n00139_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_743_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_743_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00139_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00140_call_icon_α
                        .size            n00139_line_mark_bx, .-n00139_line_mark_bx
                        .type            n00140_call_icon_bx, @function
n00140_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_call_icon_α:       mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn746:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn746]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_14:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_15:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00138_line_mark_α
                                                                              jmp   n00141_assign_α
n00140_call_icon_β:                                                             jmp   n00138_line_mark_α
                        .size            n00140_call_icon_bx, .-n00140_call_icon_bx
                        .type            n00141_assign_bx, @function
n00141_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_assign_α:          mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n00142_line_mark_α
                        .size            n00141_assign_bx, .-n00141_assign_bx
                        .type            n00142_line_mark_bx, @function
n00142_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_748_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_748_stno
                        .long            0
                        .long            126
                        .quad            .Lstnof1
                        .popsection
n00142_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 126;            jmp   n00143_var_α
                        .size            n00142_line_mark_bx, .-n00142_line_mark_bx
                        .type            n00143_var_bx, @function
n00143_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_var_α:             mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n00144_scan_enter_α
                        .size            n00143_var_bx, .-n00143_var_bx
                        .type            n00144_scan_enter_bx, @function
n00144_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_scan_enter_α:      mov              qword ptr [rbp + 480], r13
                        mov              qword ptr [rbp + 488], r14
                        mov              qword ptr [rbp + 496], r15
                        mov              rdi, qword ptr [rbp + 3392]
                        mov              rsi, qword ptr [rbp + 3400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
.Lgcsite_options_17:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_16:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    n00145_unmark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00146_disjunction_α
                        .size            n00144_scan_enter_bx, .-n00144_scan_enter_bx
                        .type            n00146_disjunction_bx, @function
n00146_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_disjunction_α:     mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              dword ptr [rbp + 592], 0;            jmp   n00147_lit_string_α
.Ldisjunction_γ_567_as: mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_755_0
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00148_scan_α
.Ldisjunction_α_755_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_755_1
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00148_scan_α
.Ldisjunction_α_755_1:                                                        jmp   n00148_scan_α
n00146_disjunction_β:     mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0;                              je    n00149_disjunction_β
                                                                              jmp   n00150_scan_α
.Ldisjunction_γ_567_af:
.Ldisjunction_ω_567_af: add              dword ptr [rbp + 592], 1
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 1;                              je    n00151_line_mark_α
                                                                              jmp   n00150_scan_α
                        .size            n00146_disjunction_bx, .-n00146_disjunction_bx
                        .type            n00148_scan_bx, @function
n00148_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_scan_α:            mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              dword ptr [rbp + 528], r14d
                        mov              dword ptr [rbp + 532], r15d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_22:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 536], rax
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_21:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00145_unmark_α
n00148_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_20:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 488], rax
                        mov              rdi, qword ptr [rbp + 536]
                        mov              esi, dword ptr [rbp + 532]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter_live@PLT
.Lgcsite_options_19:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14d, dword ptr [rbp + 528]
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_18:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00146_disjunction_β
                                                                              jmp   n00145_unmark_α
                        .size            n00148_scan_bx, .-n00148_scan_bx
                        .type            n00152_conjunction_bx, @function
n00152_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_conjunction_α:                                                           jmp   .Ldisjunction_γ_567_as
n00152_conjunction_β:                                                           jmp   n00150_scan_α
                        .size            n00152_conjunction_bx, .-n00152_conjunction_bx
                        .type            n00151_line_mark_bx, @function
n00151_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_759_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_759_stno
                        .long            0
                        .long            146
                        .quad            .Lstnof1
                        .popsection
n00151_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 146;            jmp   n00153_var_ref_α
n00151_line_mark_β:                                                             jmp   n00153_var_ref_α
                        .size            n00151_line_mark_bx, .-n00151_line_mark_bx
                        .type            n00153_var_ref_bx, @function
n00153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx;         jmp   n00154_var_ref_α
                        .size            n00153_var_ref_bx, .-n00153_var_ref_bx
                        .type            n00154_var_ref_bx, @function
n00154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx;         jmp   n00155_deref_α
                        .size            n00154_var_ref_bx, .-n00154_var_ref_bx
                        .type            n00155_deref_bx, @function
n00155_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_deref_α:           mov              rdi, qword ptr [rbp + 3312]
                        mov              rsi, qword ptr [rbp + 3320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_24:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00150_scan_α
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
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
.Lgcsite_options_23:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00156_deref_α
                        .size            n00155_deref_bx, .-n00155_deref_bx
                        .type            n00156_deref_bx, @function
n00156_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_deref_α:           mov              rdi, qword ptr [rbp + 3328]
                        mov              rsi, qword ptr [rbp + 3336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_26:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00150_scan_α
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
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
.Lgcsite_options_25:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00157_line_mark_α
                        .size            n00156_deref_bx, .-n00156_deref_bx
                        .type            n00157_line_mark_bx, @function
n00157_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_767_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_767_stno
                        .long            0
                        .long            146
                        .quad            .Lstnof1
                        .popsection
n00157_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 146;            jmp   n00158_call_icon_α
                        .size            n00157_line_mark_bx, .-n00157_line_mark_bx
                        .type            n00158_call_icon_bx, @function
n00158_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_call_icon_α:       mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3288], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lcall_icon_α_rkfn770:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn770]
                        lea              rsi, [rbp + 3264]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_27:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_28:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00150_scan_α
                                                                              jmp   .Ldisjunction_γ_567_as
n00158_call_icon_β:                                                             jmp   n00150_scan_α
                        .size            n00158_call_icon_bx, .-n00158_call_icon_bx
                        .type            n00147_lit_string_bx, @function
n00147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_lit_string_α:      mov              qword ptr [rbp + 3216], 2            # result
                        mov              dword ptr [rbp + 3220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_771_0]
                        mov              qword ptr [rbp + 3224], rax;         jmp   n00159_scan_match_α
n00147_lit_string_β:                                                            jmp   .Ldisjunction_ω_567_af
.Llit_string_α_771_0:   .quad            .Llit_string_α_771_0_s
.Llit_string_α_771_0_s: .string          "-"
                        .size            n00147_lit_string_bx, .-n00147_lit_string_bx
                        .type            n00159_scan_match_bx, @function
n00159_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_567_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_773_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
.Lgcsite_options_29:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_567_af
                        mov              qword ptr [rbp + 3184], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3192], rax;         jmp   n00160_scan_tab_α
.Lscan_match_α_773_0:   .quad            .Lscan_match_α_773_0_s
.Lscan_match_α_773_0_s: .string          "-"
                        .size            n00159_scan_match_bx, .-n00159_scan_match_bx
                        .type            n00160_scan_tab_bx, @function
n00160_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_scan_tab_α:        mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_35:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_567_af
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
.Lgcsite_options_34:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_33:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_32:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_775_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_775_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_567_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_567_af
                        mov              qword ptr [rbp + 3168], r14
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
.Lgcsite_options_31:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_30:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx;         jmp   n00161_lit_integer_α
n00160_scan_tab_β:        mov              r14, qword ptr [rbp + 3168];         jmp   .Ldisjunction_ω_567_af
                        .size            n00160_scan_tab_bx, .-n00160_scan_tab_bx
                        .type            n00161_lit_integer_bx, @function
n00161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:     mov              qword ptr [rbp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_776_0]
                        mov              qword ptr [rbp + 3144], rax;         jmp   n00162_line_mark_α
.Llit_integer_α_776_0:  .quad            0
                        .size            n00161_lit_integer_bx, .-n00161_lit_integer_bx
                        .type            n00162_line_mark_bx, @function
n00162_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_777_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_777_stno
                        .long            0
                        .long            127
                        .quad            .Lstnof1
                        .popsection
n00162_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 127;            jmp   n00163_scan_pos_α
                        .size            n00162_line_mark_bx, .-n00162_line_mark_bx
                        .type            n00163_scan_pos_bx, @function
n00163_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_780_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_780_0:     cmp              rax, 1;                              jl    n00164_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00164_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00164_var_α
                        mov              qword ptr [rbp + 3104], 3
                        mov              qword ptr [rbp + 3112], rax;         jmp   n00160_scan_tab_β
                        .size            n00163_scan_pos_bx, .-n00163_scan_pos_bx
                        .type            n00164_var_bx, @function
n00164_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_var_α:             mov              qword ptr [rbp + 3088], 0
                        mov              qword ptr [rbp + 3096], 0;           jmp   n00165_conjunction_α
n00164_var_β:                                                                   jmp   n00160_scan_tab_β
                        .size            n00164_var_bx, .-n00164_var_bx
                        .type            n00165_conjunction_bx, @function
n00165_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_conjunction_α:     mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3080], rax;         jmp   n00166_line_mark_α
n00165_conjunction_β:                                                           jmp   .Ldisjunction_ω_567_af
                        .size            n00165_conjunction_bx, .-n00165_conjunction_bx
                        .type            n00166_line_mark_bx, @function
n00166_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_783_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_783_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00166_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00167_line_mark_α
                        .size            n00166_line_mark_bx, .-n00166_line_mark_bx
                        .type            n00167_line_mark_bx, @function
n00167_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_785_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_785_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00167_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00168_disjunction_α
                        .size            n00167_line_mark_bx, .-n00167_line_mark_bx
                        .type            n00168_disjunction_bx, @function
n00168_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_disjunction_α:     mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0
                        mov              dword ptr [rbp + 2816], 0;           jmp   n00169_lit_string_α
.Ldisjunction_γ_587_as: mov              eax, dword ptr [rbp + 2816]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_788_0
                                                                              jmp   n00170_line_mark_α
.Ldisjunction_α_788_0:                                                        jmp   n00170_line_mark_α
n00168_disjunction_β:     mov              eax, dword ptr [rbp + 2816];         jmp   n00170_line_mark_α
.Ldisjunction_γ_587_af:
.Ldisjunction_ω_587_af: add              dword ptr [rbp + 2816], 1
                        mov              eax, dword ptr [rbp + 2816];         jmp   n00170_line_mark_α
                        .size            n00168_disjunction_bx, .-n00168_disjunction_bx
                        .type            n00170_line_mark_bx, @function
n00170_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_789_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_789_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00170_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00171_bound_α
                        .size            n00170_line_mark_bx, .-n00170_line_mark_bx
                        .type            n00171_bound_bx, @function
n00171_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_bound_α:           mov              qword ptr [rbp + 720], rsp;          jmp   n00172_lit_integer_α
                        .size            n00171_bound_bx, .-n00171_bound_bx
                        .type            n00172_lit_integer_bx, @function
n00172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_integer_α:     mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_793_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00173_line_mark_α
.Llit_integer_α_793_0:  .quad            1
                        .size            n00172_lit_integer_bx, .-n00172_lit_integer_bx
                        .type            n00173_line_mark_bx, @function
n00173_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_794_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_794_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00173_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00174_scan_move_α
                        .size            n00173_line_mark_bx, .-n00173_line_mark_bx
                        .type            n00174_scan_move_bx, @function
n00174_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00150_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00150_scan_α
                        mov              qword ptr [rbp + 656], r14
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
.Lgcsite_options_37:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_36:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00175_assign_α
n00174_scan_move_β:       mov              r14, qword ptr [rbp + 656];          jmp   n00150_scan_α
                        .size            n00174_scan_move_bx, .-n00174_scan_move_bx
                        .type            n00175_assign_bx, @function
n00175_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_assign_α:          mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n00176_line_mark_α
                        .size            n00175_assign_bx, .-n00175_assign_bx
                        .type            n00176_line_mark_bx, @function
n00176_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_799_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_799_stno
                        .long            0
                        .long            130
                        .quad            .Lstnof1
                        .popsection
n00176_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00149_disjunction_α
                        .size            n00176_line_mark_bx, .-n00176_line_mark_bx
                        .type            n00149_disjunction_bx, @function
n00149_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_disjunction_α:     mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0;            jmp   n00177_var_ref_α
.Ldisjunction_γ_595_as: mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_802_0
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00178_unmark_α
.Ldisjunction_α_802_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_802_1
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00178_unmark_α
.Ldisjunction_α_802_1:                                                        jmp   n00178_unmark_α
n00149_disjunction_β:     mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0;                              je    n00179_disjunction_β
                                                                              jmp   n00178_unmark_α
.Ldisjunction_γ_595_af:
.Ldisjunction_ω_595_af: add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1;                              je    n00180_line_mark_α
                                                                              jmp   n00178_unmark_α
                        .size            n00149_disjunction_bx, .-n00149_disjunction_bx
                        .type            n00180_line_mark_bx, @function
n00180_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_803_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_803_stno
                        .long            0
                        .long            144
                        .quad            .Lstnof1
                        .popsection
n00180_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 144;            jmp   n00181_lit_string_α
n00180_line_mark_β:                                                             jmp   n00181_lit_string_α
                        .size            n00180_line_mark_bx, .-n00180_line_mark_bx
                        .type            n00181_lit_string_bx, @function
n00181_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_lit_string_α:      mov              qword ptr [rbp + 2688], 2            # result
                        mov              dword ptr [rbp + 2692], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_805_0]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n00182_var_ref_α
.Llit_string_α_805_0:   .quad            .Llit_string_α_805_0_s
.Llit_string_α_805_0_s: .string          "Unrecognized option: -"
                        .size            n00181_lit_string_bx, .-n00181_lit_string_bx
                        .type            n00182_var_ref_bx, @function
n00182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx;         jmp   n00183_deref_α
                        .size            n00182_var_ref_bx, .-n00182_var_ref_bx
                        .type            n00183_deref_bx, @function
n00183_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_deref_α:           mov              rdi, qword ptr [rbp + 2720]
                        mov              rsi, qword ptr [rbp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_39:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00178_unmark_α
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
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
.Lgcsite_options_38:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00184_line_mark_α
                        .size            n00183_deref_bx, .-n00183_deref_bx
                        .type            n00184_line_mark_bx, @function
n00184_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_809_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_809_stno
                        .long            0
                        .long            144
                        .quad            .Lstnof1
                        .popsection
n00184_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 144;            jmp   n00185_call_icon_α
                        .size            n00184_line_mark_bx, .-n00184_line_mark_bx
                        .type            n00185_call_icon_bx, @function
n00185_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_call_icon_α:       mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lcall_icon_α_rkfn812:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn812]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_40:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_41:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00178_unmark_α
                                                                              jmp   .Ldisjunction_γ_595_as
n00185_call_icon_β:                                                             jmp   n00178_unmark_α
                        .size            n00185_call_icon_bx, .-n00185_call_icon_bx
                        .type            n00177_var_ref_bx, @function
n00177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n00186_var_ref_α
n00177_var_ref_β:                                                               jmp   .Ldisjunction_ω_595_af
                        .size            n00177_var_ref_bx, .-n00177_var_ref_bx
                        .type            n00186_var_ref_bx, @function
n00186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n00187_deref_α
                        .size            n00186_var_ref_bx, .-n00186_var_ref_bx
                        .type            n00187_deref_bx, @function
n00187_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_deref_α:           mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_43:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_595_af
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
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
.Lgcsite_options_42:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00188_deref_α
                        .size            n00187_deref_bx, .-n00187_deref_bx
                        .type            n00188_deref_bx, @function
n00188_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_deref_α:           mov              rdi, qword ptr [rbp + 2560]
                        mov              rsi, qword ptr [rbp + 2568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_45:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_595_af
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
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
.Lgcsite_options_44:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00189_line_mark_α
                        .size            n00188_deref_bx, .-n00188_deref_bx
                        .type            n00189_line_mark_bx, @function
n00189_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_819_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_819_stno
                        .long            0
                        .long            130
                        .quad            .Lstnof1
                        .popsection
n00189_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 130;            jmp   n00190_call_builtin_gen_α
                        .size            n00189_line_mark_bx, .-n00189_line_mark_bx
                        .type            n00190_call_builtin_gen_bx, @function
n00190_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2488], rax
                        mov              qword ptr [rbp + 2512], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_46:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_821_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn284: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn284]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 2
                        lea              rcx, [rbp + 2512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen_strict@PLT
.Lgcsite_options_47:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_options_48:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_595_af
                                                                              jmp   n00191_lit_integer_α
n00190_call_builtin_gen_β:
                                                                              jmp   .Lcall_builtin_gen_α_821_60
                        .size            n00190_call_builtin_gen_bx, .-n00190_call_builtin_gen_bx
                        .type            n00191_lit_integer_bx, @function
n00191_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_lit_integer_α:     mov              qword ptr [rbp + 2608], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_822_0]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n00192_coerce_numeric_α
.Llit_integer_α_822_0:  .quad            1
                        .size            n00191_lit_integer_bx, .-n00191_lit_integer_bx
                        .type            n00192_coerce_numeric_bx, @function
n00192_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2464]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_824_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_824_0
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_824_0
.Lcoerce_numeric_α_824_1:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n00193_binop_α
.Lcoerce_numeric_α_824_0:
                        lea              rdi, [rbp + 2464]
                        lea              rsi, [rbp + 2608]
                        lea              rdx, [rbp + 2448]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_options_50:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_49:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2448]
                        cmp              al, 104;                             je    .Ldisjunction_ω_595_af
                                                                              jmp   n00193_binop_α
                        .size            n00192_coerce_numeric_bx, .-n00192_coerce_numeric_bx
                        .type            n00193_binop_bx, @function
n00193_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_binop_α:           mov              eax, dword ptr [rbp + 2448]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_825_2
                        mov              rax, qword ptr [rbp + 2456]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_825_0
                        mov              qword ptr [rbp + 2432], 3
                        mov              qword ptr [rbp + 2440], rax;         jmp   .Lbinop_α_825_7
.Lbinop_α_825_2:        and              edx, 1;                              jz    .Lbinop_α_825_0
                        mov              rsi, qword ptr [rbp + 2456]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_825_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_825_4
.Lbinop_α_825_3:        movq             xmm0, rsi
.Lbinop_α_825_4:        cmp              cl, 5;                               je    .Lbinop_α_825_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_825_6
.Lbinop_α_825_5:        movq             xmm1, rdi
.Lbinop_α_825_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_825_0
                        mov              qword ptr [rbp + 2432], 5
                        mov              qword ptr [rbp + 2440], rax
.Lbinop_α_825_7:                                                              jmp   n00194_assign_α
.Lbinop_α_825_0:        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        mov              rdx, qword ptr [rbp + 2608]
                        mov              rcx, qword ptr [rbp + 2616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_options_52:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_595_af
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
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
.Lgcsite_options_51:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00194_assign_α
                        .size            n00193_binop_bx, .-n00193_binop_bx
                        .type            n00194_assign_bx, @function
n00194_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_assign_α:          mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n00195_line_mark_α
                        .size            n00194_assign_bx, .-n00194_assign_bx
                        .type            n00195_line_mark_bx, @function
n00195_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_827_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_827_stno
                        .long            0
                        .long            131
                        .quad            .Lstnof1
                        .popsection
n00195_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 131;            jmp   n00196_var_ref_α
                        .size            n00195_line_mark_bx, .-n00195_line_mark_bx
                        .type            n00196_var_ref_bx, @function
n00196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n00197_var_α
                        .size            n00196_var_ref_bx, .-n00196_var_ref_bx
                        .type            n00197_var_bx, @function
n00197_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:             mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00198_subscript_α
                        .size            n00197_var_bx, .-n00197_var_bx
                        .type            n00198_subscript_bx, @function
n00198_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_subscript_α:       mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_options_54:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00178_unmark_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
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
.Lgcsite_options_53:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00179_disjunction_α
                        .size            n00198_subscript_bx, .-n00198_subscript_bx
                        .type            n00179_disjunction_bx, @function
n00179_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_disjunction_α:     mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              dword ptr [rbp + 880], 0;            jmp   n00199_lit_charset_α
.Ldisjunction_γ_616_as: mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_835_0
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00200_assign_var_α
.Ldisjunction_α_835_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_835_1
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00200_assign_var_α
.Ldisjunction_α_835_1:                                                        jmp   n00200_assign_var_α
n00179_disjunction_β:     mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0;                              je    n00201_disjunction_β
                                                                              jmp   n00178_unmark_α
.Ldisjunction_γ_616_af:
.Ldisjunction_ω_616_af: add              dword ptr [rbp + 880], 1
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 1;                              je    n00202_lit_integer_α
                                                                              jmp   n00178_unmark_α
                        .size            n00179_disjunction_bx, .-n00179_disjunction_bx
                        .type            n00200_assign_var_bx, @function
n00200_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_assign_var_α:      mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_56:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00178_unmark_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
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
.Lgcsite_options_55:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_595_as
n00200_assign_var_β:                                                            jmp   n00178_unmark_α
                        .size            n00200_assign_var_bx, .-n00200_assign_var_bx
                        .type            n00202_lit_integer_bx, @function
n00202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_integer_α:     mov              qword ptr [rbp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_837_0]
                        mov              qword ptr [rbp + 2408], rax;         jmp   .Ldisjunction_γ_616_as
n00202_lit_integer_β:                                                           jmp   n00178_unmark_α
.Llit_integer_α_837_0:  .quad            1
                        .size            n00202_lit_integer_bx, .-n00202_lit_integer_bx
                        .type            n00199_lit_charset_bx, @function
n00199_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_lit_charset_α:     mov              qword ptr [rbp + 2272], 2            # result
                        mov              dword ptr [rbp + 2276], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_838_0]
                        mov              qword ptr [rbp + 2280], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_838_0]
                        mov              rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_58:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_57:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00203_var_ref_α
n00199_lit_charset_β:                                                           jmp   .Ldisjunction_ω_616_af
.Llit_charset_α_838_0:  .quad            .Llit_charset_α_838_0_s
.Llit_charset_α_838_0_s:
                        .string          "+.:"
                        .size            n00199_lit_charset_bx, .-n00199_lit_charset_bx
                        .type            n00203_var_ref_bx, @function
n00203_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n00204_var_α
                        .size            n00203_var_ref_bx, .-n00203_var_ref_bx
                        .type            n00204_var_bx, @function
n00204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_α:             mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 2328], rax;         jmp   n00205_subscript_α
                        .size            n00204_var_bx, .-n00204_var_bx
                        .type            n00205_subscript_bx, @function
n00205_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_subscript_α:       mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              rdx, qword ptr [rbp + 2320]
                        mov              rcx, qword ptr [rbp + 2328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_options_60:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_616_af
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
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
.Lgcsite_options_59:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00206_deref_α
                        .size            n00205_subscript_bx, .-n00205_subscript_bx
                        .type            n00206_deref_bx, @function
n00206_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_deref_α:           mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_62:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_616_af
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
.Lgcsite_options_61:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00207_assign_α
                        .size            n00206_deref_bx, .-n00206_deref_bx
                        .type            n00207_assign_bx, @function
n00207_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_assign_α:          mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n00208_var_ref_α
                        .size            n00207_assign_bx, .-n00207_assign_bx
                        .type            n00208_var_ref_bx, @function
n00208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n00209_deref_α
                        .size            n00208_var_ref_bx, .-n00208_var_ref_bx
                        .type            n00209_deref_bx, @function
n00209_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_deref_α:           mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_64:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_616_af
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
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
.Lgcsite_options_63:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00210_line_mark_α
                        .size            n00209_deref_bx, .-n00209_deref_bx
                        .type            n00210_line_mark_bx, @function
n00210_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_849_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_849_stno
                        .long            0
                        .long            132
                        .quad            .Lstnof1
                        .popsection
n00210_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 132;            jmp   n00211_call_icon_α
                        .size            n00210_line_mark_bx, .-n00210_line_mark_bx
                        .type            n00211_call_icon_bx, @function
n00211_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_icon_α:       mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_65:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lcall_icon_α_bynamefn305: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn305]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_66:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_68:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_67:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_call.cpp:569
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_69:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_616_af
                                                                              jmp   n00212_line_mark_α
n00211_call_icon_β:                                                             jmp   .Ldisjunction_ω_616_af
                        .size            n00211_call_icon_bx, .-n00211_call_icon_bx
                        .type            n00212_line_mark_bx, @function
n00212_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_852_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_852_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00212_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00213_disjunction_α
                        .size            n00212_line_mark_bx, .-n00212_line_mark_bx
                        .type            n00213_disjunction_bx, @function
n00213_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_disjunction_α:     mov              qword ptr [rbp + 1840], 0
                        mov              qword ptr [rbp + 1848], 0
                        mov              dword ptr [rbp + 1856], 0;           jmp   n00214_lit_string_α
.Ldisjunction_γ_630_as: mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_855_0
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n00215_assign_α
.Ldisjunction_α_855_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_855_1
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n00215_assign_α
.Ldisjunction_α_855_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_855_2
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n00215_assign_α
.Ldisjunction_α_855_2:                                                        jmp   n00215_assign_α
n00213_disjunction_β:     mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 0;                              je    n00216_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_630_af
                                                                              jmp   .Ldisjunction_ω_630_af
.Ldisjunction_γ_630_af:
.Ldisjunction_ω_630_af: add              dword ptr [rbp + 1856], 1
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 1;                              je    n00217_var_ref_α
                        cmp              eax, 2;                              je    n00218_lit_string_α
                                                                              jmp   n00219_line_mark_α
                        .size            n00213_disjunction_bx, .-n00213_disjunction_bx
                        .type            n00215_assign_bx, @function
n00215_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_assign_α:          mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx;         jmp   n00219_line_mark_α
                        .size            n00215_assign_bx, .-n00215_assign_bx
                        .type            n00219_line_mark_bx, @function
n00219_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_857_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_857_stno
                        .long            0
                        .long            135
                        .quad            .Lstnof1
                        .popsection
n00219_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 135;            jmp   n00220_var_α
                        .size            n00219_line_mark_bx, .-n00219_line_mark_bx
                        .type            n00220_var_bx, @function
n00220_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_var_α:             mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00201_disjunction_α
                        .size            n00220_var_bx, .-n00220_var_bx
                        .type            n00201_disjunction_bx, @function
n00201_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_disjunction_α:     mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0;            jmp   n00221_lit_string_α
.Ldisjunction_γ_634_as: mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_862_0
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00222_conjunction_α
.Ldisjunction_α_862_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_862_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00222_conjunction_α
.Ldisjunction_α_862_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_862_2
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00222_conjunction_α
.Ldisjunction_α_862_2:                                                        jmp   n00222_conjunction_α
n00201_disjunction_β:     mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0;                              je    n00178_unmark_α
                        cmp              eax, 1;                              je    n00223_disjunction_β
                                                                              jmp   n00224_disjunction_β
.Ldisjunction_γ_634_af:
.Ldisjunction_ω_634_af: add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1;                              je    n00225_lit_string_α
                        cmp              eax, 2;                              je    n00226_lit_string_α
                                                                              jmp   n00178_unmark_α
                        .size            n00201_disjunction_bx, .-n00201_disjunction_bx
                        .type            n00222_conjunction_bx, @function
n00222_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_conjunction_α:     mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax;          jmp   .Ldisjunction_γ_616_as
n00222_conjunction_β:                                                           jmp   n00178_unmark_α
                        .size            n00222_conjunction_bx, .-n00222_conjunction_bx
                        .type            n00226_lit_string_bx, @function
n00226_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_lit_string_α:      mov              qword ptr [rbp + 1744], 2            # result
                        mov              dword ptr [rbp + 1748], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_864_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n00227_call_builtin_α
n00226_lit_string_β:                                                            jmp   .Ldisjunction_ω_634_af
.Llit_string_α_864_0:   .quad            .Llit_string_α_864_0_s
.Llit_string_α_864_0_s: .string          "."
                        .size            n00226_lit_string_bx, .-n00226_lit_string_bx
                        .type            n00227_call_builtin_bx, @function
n00227_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_call_builtin_α:    mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn866: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn866]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_70:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_71:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                                                                              jmp   n00228_line_mark_α
n00227_call_builtin_β:                                                          jmp   .Ldisjunction_ω_634_af
                        .size            n00227_call_builtin_bx, .-n00227_call_builtin_bx
                        .type            n00228_line_mark_bx, @function
n00228_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_867_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_867_stno
                        .long            0
                        .long            139
                        .quad            .Lstnof1
                        .popsection
n00228_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00224_disjunction_α
                        .size            n00228_line_mark_bx, .-n00228_line_mark_bx
                        .type            n00224_disjunction_bx, @function
n00224_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_disjunction_α:     mov              qword ptr [rbp + 1440], 0
                        mov              qword ptr [rbp + 1448], 0
                        mov              dword ptr [rbp + 1456], 0;           jmp   n00229_var_ref_α
.Ldisjunction_γ_639_as: mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_870_0
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax;         jmp   .Ldisjunction_γ_634_as
.Ldisjunction_α_870_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_870_1
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1448], rax;         jmp   .Ldisjunction_γ_634_as
.Ldisjunction_α_870_1:                                                        jmp   .Ldisjunction_γ_634_as
n00224_disjunction_β:     mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_639_af
                                                                              jmp   .Ldisjunction_ω_639_af
.Ldisjunction_γ_639_af:
.Ldisjunction_ω_639_af: add              dword ptr [rbp + 1456], 1
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 1;                              je    n00230_lit_string_α
                                                                              jmp   n00178_unmark_α
                        .size            n00224_disjunction_bx, .-n00224_disjunction_bx
                        .type            n00230_lit_string_bx, @function
n00230_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_lit_string_α:      mov              qword ptr [rbp + 1632], 2            # result
                        mov              dword ptr [rbp + 1636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_871_0]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n00231_var_ref_α
n00230_lit_string_β:                                                            jmp   .Ldisjunction_ω_639_af
.Llit_string_α_871_0:   .quad            .Llit_string_α_871_0_s
.Llit_string_α_871_0_s: .string          "-"
                        .size            n00230_lit_string_bx, .-n00230_lit_string_bx
                        .type            n00231_var_ref_bx, @function
n00231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n00232_lit_string_α
                        .size            n00231_var_ref_bx, .-n00231_var_ref_bx
                        .type            n00232_lit_string_bx, @function
n00232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:      mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_874_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n00233_deref_α
.Llit_string_α_874_0:   .quad            .Llit_string_α_874_0_s
.Llit_string_α_874_0_s: .string          " needs numeric parameter"
                        .size            n00232_lit_string_bx, .-n00232_lit_string_bx
                        .type            n00233_deref_bx, @function
n00233_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_deref_α:           mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_73:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_639_af
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
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
.Lgcsite_options_72:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00234_line_mark_α
                        .size            n00233_deref_bx, .-n00233_deref_bx
                        .type            n00234_line_mark_bx, @function
n00234_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_876_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_876_stno
                        .long            0
                        .long            140
                        .quad            .Lstnof1
                        .popsection
n00234_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 140;            jmp   n00235_call_icon_α
                        .size            n00234_line_mark_bx, .-n00234_line_mark_bx
                        .type            n00235_call_icon_bx, @function
n00235_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_call_icon_α:       mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lcall_icon_α_rkfn879:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn879]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_74:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_75:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_639_af
                                                                              jmp   .Ldisjunction_γ_639_as
n00235_call_icon_β:                                                             jmp   .Ldisjunction_ω_639_af
                        .size            n00235_call_icon_bx, .-n00235_call_icon_bx
                        .type            n00229_var_ref_bx, @function
n00229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n00236_deref_α
n00229_var_ref_β:                                                               jmp   .Ldisjunction_ω_639_af
                        .size            n00229_var_ref_bx, .-n00229_var_ref_bx
                        .type            n00236_deref_bx, @function
n00236_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_deref_α:           mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_77:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_639_af
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
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
.Lgcsite_options_76:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00237_line_mark_α
                        .size            n00236_deref_bx, .-n00236_deref_bx
                        .type            n00237_line_mark_bx, @function
n00237_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_883_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_883_stno
                        .long            0
                        .long            139
                        .quad            .Lstnof1
                        .popsection
n00237_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 139;            jmp   n00238_call_icon_α
                        .size            n00237_line_mark_bx, .-n00237_line_mark_bx
                        .type            n00238_call_icon_bx, @function
n00238_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_call_icon_α:       mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lcall_icon_α_rkfn886:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn886]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_78:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_79:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_639_af
                                                                              jmp   .Ldisjunction_γ_639_as
n00238_call_icon_β:                                                             jmp   .Ldisjunction_ω_639_af
                        .size            n00238_call_icon_bx, .-n00238_call_icon_bx
                        .type            n00225_lit_string_bx, @function
n00225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_lit_string_α:      mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_887_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00239_call_builtin_α
n00225_lit_string_β:                                                            jmp   .Ldisjunction_ω_634_af
.Llit_string_α_887_0:   .quad            .Llit_string_α_887_0_s
.Llit_string_α_887_0_s: .string          "+"
                        .size            n00225_lit_string_bx, .-n00225_lit_string_bx
                        .type            n00239_call_builtin_bx, @function
n00239_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_call_builtin_α:    mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn889: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn889]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_80:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_81:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                                                                              jmp   n00240_line_mark_α
n00239_call_builtin_β:                                                          jmp   .Ldisjunction_ω_634_af
                        .size            n00239_call_builtin_bx, .-n00239_call_builtin_bx
                        .type            n00240_line_mark_bx, @function
n00240_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_890_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_890_stno
                        .long            0
                        .long            137
                        .quad            .Lstnof1
                        .popsection
n00240_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 137;            jmp   n00223_disjunction_α
                        .size            n00240_line_mark_bx, .-n00240_line_mark_bx
                        .type            n00223_disjunction_bx, @function
n00223_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_disjunction_α:     mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0;           jmp   n00241_var_ref_α
.Ldisjunction_γ_653_as: mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_893_0
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax;         jmp   .Ldisjunction_γ_634_as
.Ldisjunction_α_893_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_893_1
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1064], rax;         jmp   .Ldisjunction_γ_634_as
.Ldisjunction_α_893_1:                                                        jmp   .Ldisjunction_γ_634_as
n00223_disjunction_β:     mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_653_af
                                                                              jmp   .Ldisjunction_ω_653_af
.Ldisjunction_γ_653_af:
.Ldisjunction_ω_653_af: add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 1;                              je    n00242_lit_string_α
                                                                              jmp   n00178_unmark_α
                        .size            n00223_disjunction_bx, .-n00223_disjunction_bx
                        .type            n00242_lit_string_bx, @function
n00242_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_lit_string_α:      mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_894_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n00243_var_ref_α
n00242_lit_string_β:                                                            jmp   .Ldisjunction_ω_653_af
.Llit_string_α_894_0:   .quad            .Llit_string_α_894_0_s
.Llit_string_α_894_0_s: .string          "-"
                        .size            n00242_lit_string_bx, .-n00242_lit_string_bx
                        .type            n00243_var_ref_bx, @function
n00243_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n00244_lit_string_α
                        .size            n00243_var_ref_bx, .-n00243_var_ref_bx
                        .type            n00244_lit_string_bx, @function
n00244_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_lit_string_α:      mov              qword ptr [rbp + 1296], 2            # result
                        mov              dword ptr [rbp + 1300], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_897_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n00245_deref_α
.Llit_string_α_897_0:   .quad            .Llit_string_α_897_0_s
.Llit_string_α_897_0_s: .string          " needs numeric parameter"
                        .size            n00244_lit_string_bx, .-n00244_lit_string_bx
                        .type            n00245_deref_bx, @function
n00245_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_deref_α:           mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_83:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_653_af
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
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
.Lgcsite_options_82:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00246_line_mark_α
                        .size            n00245_deref_bx, .-n00245_deref_bx
                        .type            n00246_line_mark_bx, @function
n00246_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_899_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_899_stno
                        .long            0
                        .long            138
                        .quad            .Lstnof1
                        .popsection
n00246_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 138;            jmp   n00247_call_icon_α
                        .size            n00246_line_mark_bx, .-n00246_line_mark_bx
                        .type            n00247_call_icon_bx, @function
n00247_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_call_icon_α:       mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lcall_icon_α_rkfn902:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn902]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_84:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_85:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_653_af
                                                                              jmp   .Ldisjunction_γ_653_as
n00247_call_icon_β:                                                             jmp   .Ldisjunction_ω_653_af
                        .size            n00247_call_icon_bx, .-n00247_call_icon_bx
                        .type            n00241_var_ref_bx, @function
n00241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n00248_deref_α
n00241_var_ref_β:                                                               jmp   .Ldisjunction_ω_653_af
                        .size            n00241_var_ref_bx, .-n00241_var_ref_bx
                        .type            n00248_deref_bx, @function
n00248_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_deref_α:           mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_87:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_653_af
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
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
.Lgcsite_options_86:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00249_line_mark_α
                        .size            n00248_deref_bx, .-n00248_deref_bx
                        .type            n00249_line_mark_bx, @function
n00249_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_906_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_906_stno
                        .long            0
                        .long            137
                        .quad            .Lstnof1
                        .popsection
n00249_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 137;            jmp   n00250_call_icon_α
                        .size            n00249_line_mark_bx, .-n00249_line_mark_bx
                        .type            n00250_call_icon_bx, @function
n00250_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_call_icon_α:       mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn909:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn909]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_88:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_89:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_653_af
                                                                              jmp   .Ldisjunction_γ_653_as
n00250_call_icon_β:                                                             jmp   .Ldisjunction_ω_653_af
                        .size            n00250_call_icon_bx, .-n00250_call_icon_bx
                        .type            n00221_lit_string_bx, @function
n00221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_string_α:      mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_910_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00251_call_builtin_α
n00221_lit_string_β:                                                            jmp   .Ldisjunction_ω_634_af
.Llit_string_α_910_0:   .quad            .Llit_string_α_910_0_s
.Llit_string_α_910_0_s: .string          ":"
                        .size            n00221_lit_string_bx, .-n00221_lit_string_bx
                        .type            n00251_call_builtin_bx, @function
n00251_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_call_builtin_α:    mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn912: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn912]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_90:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_91:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_634_af
                                                                              jmp   n00252_var_α
n00251_call_builtin_β:                                                          jmp   .Ldisjunction_ω_634_af
                        .size            n00251_call_builtin_bx, .-n00251_call_builtin_bx
                        .type            n00252_var_bx, @function
n00252_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_α:             mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 968], rax;          jmp   .Ldisjunction_γ_634_as
n00252_var_β:                                                                   jmp   n00178_unmark_α
                        .size            n00252_var_bx, .-n00252_var_bx
                        .type            n00218_lit_string_bx, @function
n00218_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_lit_string_α:      mov              qword ptr [rbp + 2128], 2            # result
                        mov              dword ptr [rbp + 2132], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_915_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n00253_var_ref_α
n00218_lit_string_β:                                                            jmp   .Ldisjunction_ω_630_af
.Llit_string_α_915_0:   .quad            .Llit_string_α_915_0_s
.Llit_string_α_915_0_s: .string          "No parameter following -"
                        .size            n00218_lit_string_bx, .-n00218_lit_string_bx
                        .type            n00253_var_ref_bx, @function
n00253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n00254_deref_α
                        .size            n00253_var_ref_bx, .-n00253_var_ref_bx
                        .type            n00254_deref_bx, @function
n00254_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_deref_α:           mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_93:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_630_af
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
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
.Lgcsite_options_92:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00255_line_mark_α
                        .size            n00254_deref_bx, .-n00254_deref_bx
                        .type            n00255_line_mark_bx, @function
n00255_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_919_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_919_stno
                        .long            0
                        .long            134
                        .quad            .Lstnof1
                        .popsection
n00255_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00256_call_icon_α
                        .size            n00255_line_mark_bx, .-n00255_line_mark_bx
                        .type            n00256_call_icon_bx, @function
n00256_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_call_icon_α:       mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lcall_icon_α_rkfn922:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn922]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_94:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_95:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_630_af
                                                                              jmp   .Ldisjunction_γ_630_as
n00256_call_icon_β:                                                             jmp   .Ldisjunction_ω_630_af
                        .size            n00256_call_icon_bx, .-n00256_call_icon_bx
                        .type            n00217_var_ref_bx, @function
n00217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4032]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n00257_deref_α
n00217_var_ref_β:                                                               jmp   .Ldisjunction_ω_630_af
                        .size            n00217_var_ref_bx, .-n00217_var_ref_bx
                        .type            n00257_deref_bx, @function
n00257_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_deref_α:           mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_97:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_630_af
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
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
.Lgcsite_options_96:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00258_line_mark_α
                        .size            n00257_deref_bx, .-n00257_deref_bx
                        .type            n00258_line_mark_bx, @function
n00258_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_926_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_926_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00258_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00259_call_icon_α
                        .size            n00258_line_mark_bx, .-n00258_line_mark_bx
                        .type            n00259_call_icon_bx, @function
n00259_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_call_icon_α:       mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        .section         .rodata
.Lcall_icon_α_rkfn929:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn929]
                        lea              rsi, [rbp + 2000]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_98:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_99:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_630_af
                                                                              jmp   .Ldisjunction_γ_630_as
n00259_call_icon_β:                                                             jmp   .Ldisjunction_ω_630_af
                        .size            n00259_call_icon_bx, .-n00259_call_icon_bx
                        .type            n00214_lit_string_bx, @function
n00214_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_lit_string_α:      mov              qword ptr [rbp + 1888], 2            # result
                        mov              dword ptr [rbp + 1892], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_930_0]
                        mov              qword ptr [rbp + 1896], rax;         jmp   n00260_lit_integer_α
n00214_lit_string_β:                                                            jmp   .Ldisjunction_ω_630_af
.Llit_string_α_930_0:   .quad            .Llit_string_α_930_0_s
.Llit_string_α_930_0_s: .string          ""
                        .size            n00214_lit_string_bx, .-n00214_lit_string_bx
                        .type            n00260_lit_integer_bx, @function
n00260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_lit_integer_α:     mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_931_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n00261_line_mark_α
.Llit_integer_α_931_0:  .quad            0
                        .size            n00260_lit_integer_bx, .-n00260_lit_integer_bx
                        .type            n00261_line_mark_bx, @function
n00261_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_932_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_932_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00261_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00216_scan_tab_α
                        .size            n00261_line_mark_bx, .-n00261_line_mark_bx
                        .type            n00216_scan_tab_bx, @function
n00216_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_935_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_935_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_630_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_630_af
                        mov              qword ptr [rbp + 1936], r14
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
.Lgcsite_options_101:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_100:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n00262_binop_test_α
n00216_scan_tab_β:        mov              r14, qword ptr [rbp + 1936];         jmp   .Ldisjunction_ω_630_af
                        .size            n00216_scan_tab_bx, .-n00216_scan_tab_bx
                        .type            n00262_binop_test_bx, @function
n00262_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_binop_test_α:      mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_105:   push             rax
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
.Lgcsite_options_104:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00216_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_options_103:   mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
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
.Lgcsite_options_102:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_630_as
n00262_binop_test_β:                                                            jmp   n00216_scan_tab_β
                        .size            n00262_binop_test_bx, .-n00262_binop_test_bx
                        .type            n00178_unmark_bx, @function
n00178_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_unmark_α:          mov              rsp, qword ptr [rbp + 720];          jmp   n00263_line_mark_α
                        .size            n00178_unmark_bx, .-n00178_unmark_bx
                        .type            n00263_line_mark_bx, @function
n00263_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_939_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_939_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00263_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00171_bound_α
                        .size            n00263_line_mark_bx, .-n00263_line_mark_bx
                        .type            n00150_scan_bx, @function
n00150_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_scan_α:            mov              dword ptr [rbp + 560], r14d
                        mov              dword ptr [rbp + 564], r15d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_107:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 568], rax
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_106:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00145_unmark_α
n00150_scan_β:                                                                  jmp   n00145_unmark_α
                        .size            n00150_scan_bx, .-n00150_scan_bx
                        .type            n00169_lit_string_bx, @function
n00169_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_lit_string_α:      mov              qword ptr [rbp + 3008], 2            # result
                        mov              dword ptr [rbp + 3012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_943_0]
                        mov              qword ptr [rbp + 3016], rax;         jmp   n00264_scan_match_α
n00169_lit_string_β:                                                            jmp   .Ldisjunction_ω_587_af
.Llit_string_α_943_0:   .quad            .Llit_string_α_943_0_s
.Llit_string_α_943_0_s: .string          "-"
                        .size            n00169_lit_string_bx, .-n00169_lit_string_bx
                        .type            n00264_scan_match_bx, @function
n00264_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_587_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_945_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
.Lgcsite_options_108:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_587_af
                        mov              qword ptr [rbp + 2976], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2984], rax;         jmp   n00265_scan_tab_α
.Lscan_match_α_945_0:   .quad            .Lscan_match_α_945_0_s
.Lscan_match_α_945_0_s: .string          "-"
                        .size            n00264_scan_match_bx, .-n00264_scan_match_bx
                        .type            n00265_scan_tab_bx, @function
n00265_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_scan_tab_α:        mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_114:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_587_af
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
.Lgcsite_options_113:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_112:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_111:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_947_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_947_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_587_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_587_af
                        mov              qword ptr [rbp + 2960], r14
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
.Lgcsite_options_110:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_109:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n00266_lit_integer_α
n00265_scan_tab_β:        mov              r14, qword ptr [rbp + 2960];         jmp   .Ldisjunction_ω_587_af
                        .size            n00265_scan_tab_bx, .-n00265_scan_tab_bx
                        .type            n00266_lit_integer_bx, @function
n00266_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_lit_integer_α:     mov              qword ptr [rbp + 2928], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_948_0]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00267_line_mark_α
.Llit_integer_α_948_0:  .quad            0
                        .size            n00266_lit_integer_bx, .-n00266_lit_integer_bx
                        .type            n00267_line_mark_bx, @function
n00267_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_949_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_949_stno
                        .long            0
                        .long            128
                        .quad            .Lstnof1
                        .popsection
n00267_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 128;            jmp   n00268_scan_pos_α
                        .size            n00267_line_mark_bx, .-n00267_line_mark_bx
                        .type            n00268_scan_pos_bx, @function
n00268_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_952_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_952_0:     cmp              rax, 1;                              jl    n00265_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00265_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00265_scan_tab_β
                        mov              qword ptr [rbp + 2896], 3
                        mov              qword ptr [rbp + 2904], rax;         jmp   n00269_conjunction_α
                        .size            n00268_scan_pos_bx, .-n00268_scan_pos_bx
                        .type            n00269_conjunction_bx, @function
n00269_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_conjunction_α:     mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n00270_scan_α
n00269_conjunction_β:                                                           jmp   .Ldisjunction_ω_587_af
                        .size            n00269_conjunction_bx, .-n00269_conjunction_bx
                        .type            n00270_scan_bx, @function
n00270_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_scan_α:            mov              dword ptr [rbp + 2864], r14d
                        mov              dword ptr [rbp + 2868], r15d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_116:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_115:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00271_var_α
n00270_scan_β:                                                                  jmp   n00271_var_α
                        .size            n00270_scan_bx, .-n00270_scan_bx
                        .type            n00271_var_bx, @function
n00271_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_α:             mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0;           jmp   n00272_assign_α
n00271_var_β:                                                                   jmp   n00273_var_α
                        .size            n00271_var_bx, .-n00271_var_bx
                        .type            n00272_assign_bx, @function
n00272_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_assign_α:          mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n00273_var_α
                        .size            n00272_assign_bx, .-n00272_assign_bx
                        .type            n00273_var_bx, @function
n00273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_α:             mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00138_line_mark_α
                        .size            n00273_var_bx, .-n00273_var_bx
                        .type            n00145_unmark_bx, @function
n00145_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_unmark_α:          mov              rsp, qword ptr [rbp + 416];          jmp   n00274_line_mark_α
                        .size            n00145_unmark_bx, .-n00145_unmark_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_962_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_962_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00274_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00135_bound_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00138_line_mark_bx, @function
n00138_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_964_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_964_stno
                        .long            0
                        .long            148
                        .quad            .Lstnof1
                        .popsection
n00138_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00275_bound_α
                        .size            n00138_line_mark_bx, .-n00138_line_mark_bx
                        .type            n00275_bound_bx, @function
n00275_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_bound_α:           mov              qword ptr [rbp + 240], rsp;          jmp   n00276_var_ref_α
                        .size            n00275_bound_bx, .-n00275_bound_bx
                        .type            n00276_var_ref_bx, @function
n00276_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4032]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00277_var_ref_α
                        .size            n00276_var_ref_bx, .-n00276_var_ref_bx
                        .type            n00277_var_ref_bx, @function
n00277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00278_deref_α
                        .size            n00277_var_ref_bx, .-n00277_var_ref_bx
                        .type            n00278_deref_bx, @function
n00278_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_deref_α:           mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_118:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00279_line_mark_α
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
.Lgcsite_options_117:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00280_line_mark_α
                        .size            n00278_deref_bx, .-n00278_deref_bx
                        .type            n00280_line_mark_bx, @function
n00280_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_973_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_973_stno
                        .long            0
                        .long            148
                        .quad            .Lstnof1
                        .popsection
n00280_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00281_call_icon_α
                        .size            n00280_line_mark_bx, .-n00280_line_mark_bx
                        .type            n00281_call_icon_bx, @function
n00281_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_call_icon_α:       mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn976:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn976]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_119:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_120:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00279_line_mark_α
                                                                              jmp   n00282_deref_α
n00281_call_icon_β:                                                             jmp   n00279_line_mark_α
                        .size            n00281_call_icon_bx, .-n00281_call_icon_bx
                        .type            n00282_deref_bx, @function
n00282_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_deref_α:           mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_122:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00279_line_mark_α
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
.Lgcsite_options_121:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00283_line_mark_α
                        .size            n00282_deref_bx, .-n00282_deref_bx
                        .type            n00283_line_mark_bx, @function
n00283_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_978_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_978_stno
                        .long            0
                        .long            148
                        .quad            .Lstnof1
                        .popsection
n00283_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 148;            jmp   n00284_call_icon_α
                        .size            n00283_line_mark_bx, .-n00283_line_mark_bx
                        .type            n00284_call_icon_bx, @function
n00284_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_call_icon_α:       mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn981:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn981]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_123:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_124:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00279_line_mark_α
                                                                              jmp   n00285_unmark_α
n00284_call_icon_β:                                                             jmp   n00279_line_mark_α
                        .size            n00284_call_icon_bx, .-n00284_call_icon_bx
                        .type            n00285_unmark_bx, @function
n00285_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_unmark_α:          mov              rsp, qword ptr [rbp + 240];          jmp   n00275_bound_α
                        .size            n00285_unmark_bx, .-n00285_unmark_bx
                        .type            n00279_line_mark_bx, @function
n00279_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_984_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_984_stno
                        .long            0
                        .long            149
                        .quad            .Lstnof1
                        .popsection
n00279_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 149;            jmp   n00286_var_α
                        .size            n00279_line_mark_bx, .-n00279_line_mark_bx
                        .type            n00286_var_bx, @function
n00286_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_α:             mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00287_return_α
                        .size            n00286_var_bx, .-n00286_var_bx
                        .type            n00287_return_bx, @function
n00287_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00287_return_bx, .-n00287_return_bx
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
                        lea              rsp, [rbp + 4064]
                        mov              rbp, qword ptr [rbp + 4024];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 4064]
                        mov              rbp, qword ptr [rbp + 4024];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            17318654594394
                        .quad            515396075728
                        .quad            .Lgcmap_options_s
                        .quad            3808
                        .quad            49
                        .quad            263882790666240
                        .quad            17596481011952
                        .quad            175921860444416
                        .quad            17596481012128
                        .quad            52776558133680
                        .quad            8804682957280
                        .quad            26392574034408
                        .quad            17592186044928
                        .quad            8800387990032
                        .quad            8804682957336
                        .quad            17592186044960
                        .quad            8800387990064
                        .quad            8804682957368
                        .quad            17592186044992
                        .quad            17596481012304
                        .quad            52776558133856
                        .quad            17596481012368
                        .quad            52776558133920
                        .quad            17596481012432
                        .quad            52776558133984
                        .quad            17596481012496
                        .quad            87960930222880
                        .quad            17596481012592
                        .quad            52776558134144
                        .quad            17596481012656
                        .quad            123145302311872
                        .quad            17596481012784
                        .quad            404620279022656
                        .quad            17596481013168
                        .quad            422212465067456
                        .quad            17596481013568
                        .quad            70368744179536
                        .quad            17596481013648
                        .quad            615726511556512
                        .quad            17596481014224
                        .quad            316659348802016
                        .quad            17596481014528
                        .quad            35184372091664
                        .quad            8800387992368
                        .quad            8804682959672
                        .quad            87960930224960
                        .quad            17596481014672
                        .quad            17592186047392
                        .quad            17596481014704
                        .quad            175921860447168
                        .quad            17596481014880
                        .quad            17592186047600
                        .quad            17596481014912
                        .quad            650910883646608
.Lgcmap_options_s:      .string          "options"
.Lgcsites_options_3:    .quad            125
                        .quad            .Lgcmap_options
                        .quad            0
                        .quad            .Lgcsite_options_0
                        .quad            65537
                        .quad            .Lgcsite_options_1
                        .quad            65537
                        .quad            .Lgcsite_options_2
                        .quad            65537
                        .quad            .Lgcsite_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_4
                        .quad            65537
                        .quad            .Lgcsite_options_5
                        .quad            65537
                        .quad            .Lgcsite_options_6
                        .quad            65537
                        .quad            .Lgcsite_options_7
                        .quad            65537
                        .quad            .Lgcsite_options_8
                        .quad            65537
                        .quad            .Lgcsite_options_9
                        .quad            65537
                        .quad            .Lgcsite_options_10
                        .quad            65537
                        .quad            .Lgcsite_options_11
                        .quad            65537
                        .quad            .Lgcsite_options_12
                        .quad            65537
                        .quad            .Lgcsite_options_13
                        .quad            65537
                        .quad            .Lgcsite_options_14
                        .quad            65537
                        .quad            .Lgcsite_options_15
                        .quad            65537
                        .quad            .Lgcsite_options_16
                        .quad            65537
                        .quad            .Lgcsite_options_17
                        .quad            65537
                        .quad            .Lgcsite_options_18
                        .quad            65537
                        .quad            .Lgcsite_options_19
                        .quad            65537
                        .quad            .Lgcsite_options_20
                        .quad            65537
                        .quad            .Lgcsite_options_21
                        .quad            65537
                        .quad            .Lgcsite_options_22
                        .quad            65537
                        .quad            .Lgcsite_options_23
                        .quad            65537
                        .quad            .Lgcsite_options_24
                        .quad            65537
                        .quad            .Lgcsite_options_25
                        .quad            65537
                        .quad            .Lgcsite_options_26
                        .quad            65537
                        .quad            .Lgcsite_options_27
                        .quad            65537
                        .quad            .Lgcsite_options_28
                        .quad            65537
                        .quad            .Lgcsite_options_29
                        .quad            65537
                        .quad            .Lgcsite_options_30
                        .quad            65537
                        .quad            .Lgcsite_options_31
                        .quad            65537
                        .quad            .Lgcsite_options_32
                        .quad            65537
                        .quad            .Lgcsite_options_33
                        .quad            65537
                        .quad            .Lgcsite_options_34
                        .quad            65537
                        .quad            .Lgcsite_options_35
                        .quad            65537
                        .quad            .Lgcsite_options_36
                        .quad            65537
                        .quad            .Lgcsite_options_37
                        .quad            65537
                        .quad            .Lgcsite_options_38
                        .quad            65537
                        .quad            .Lgcsite_options_39
                        .quad            65537
                        .quad            .Lgcsite_options_40
                        .quad            65537
                        .quad            .Lgcsite_options_41
                        .quad            65537
                        .quad            .Lgcsite_options_42
                        .quad            65537
                        .quad            .Lgcsite_options_43
                        .quad            65537
                        .quad            .Lgcsite_options_44
                        .quad            65537
                        .quad            .Lgcsite_options_45
                        .quad            65537
                        .quad            .Lgcsite_options_46
                        .quad            65537
                        .quad            .Lgcsite_options_47
                        .quad            65537
                        .quad            .Lgcsite_options_48
                        .quad            65537
                        .quad            .Lgcsite_options_49
                        .quad            65537
                        .quad            .Lgcsite_options_50
                        .quad            65537
                        .quad            .Lgcsite_options_51
                        .quad            65537
                        .quad            .Lgcsite_options_52
                        .quad            65537
                        .quad            .Lgcsite_options_53
                        .quad            65537
                        .quad            .Lgcsite_options_54
                        .quad            65537
                        .quad            .Lgcsite_options_55
                        .quad            65537
                        .quad            .Lgcsite_options_56
                        .quad            65537
                        .quad            .Lgcsite_options_57
                        .quad            65537
                        .quad            .Lgcsite_options_58
                        .quad            65537
                        .quad            .Lgcsite_options_59
                        .quad            65537
                        .quad            .Lgcsite_options_60
                        .quad            65537
                        .quad            .Lgcsite_options_61
                        .quad            65537
                        .quad            .Lgcsite_options_62
                        .quad            65537
                        .quad            .Lgcsite_options_63
                        .quad            65537
                        .quad            .Lgcsite_options_64
                        .quad            65537
                        .quad            .Lgcsite_options_65
                        .quad            65537
                        .quad            .Lgcsite_options_66
                        .quad            65537
                        .quad            .Lgcsite_options_67
                        .quad            65537
                        .quad            .Lgcsite_options_68
                        .quad            65537
                        .quad            .Lgcsite_options_69
                        .quad            65537
                        .quad            .Lgcsite_options_70
                        .quad            65537
                        .quad            .Lgcsite_options_71
                        .quad            65537
                        .quad            .Lgcsite_options_72
                        .quad            65537
                        .quad            .Lgcsite_options_73
                        .quad            65537
                        .quad            .Lgcsite_options_74
                        .quad            65537
                        .quad            .Lgcsite_options_75
                        .quad            65537
                        .quad            .Lgcsite_options_76
                        .quad            65537
                        .quad            .Lgcsite_options_77
                        .quad            65537
                        .quad            .Lgcsite_options_78
                        .quad            65537
                        .quad            .Lgcsite_options_79
                        .quad            65537
                        .quad            .Lgcsite_options_80
                        .quad            65537
                        .quad            .Lgcsite_options_81
                        .quad            65537
                        .quad            .Lgcsite_options_82
                        .quad            65537
                        .quad            .Lgcsite_options_83
                        .quad            65537
                        .quad            .Lgcsite_options_84
                        .quad            65537
                        .quad            .Lgcsite_options_85
                        .quad            65537
                        .quad            .Lgcsite_options_86
                        .quad            65537
                        .quad            .Lgcsite_options_87
                        .quad            65537
                        .quad            .Lgcsite_options_88
                        .quad            65537
                        .quad            .Lgcsite_options_89
                        .quad            65537
                        .quad            .Lgcsite_options_90
                        .quad            65537
                        .quad            .Lgcsite_options_91
                        .quad            65537
                        .quad            .Lgcsite_options_92
                        .quad            65537
                        .quad            .Lgcsite_options_93
                        .quad            65537
                        .quad            .Lgcsite_options_94
                        .quad            65537
                        .quad            .Lgcsite_options_95
                        .quad            65537
                        .quad            .Lgcsite_options_96
                        .quad            65537
                        .quad            .Lgcsite_options_97
                        .quad            65537
                        .quad            .Lgcsite_options_98
                        .quad            65537
                        .quad            .Lgcsite_options_99
                        .quad            65537
                        .quad            .Lgcsite_options_100
                        .quad            65537
                        .quad            .Lgcsite_options_101
                        .quad            65537
                        .quad            .Lgcsite_options_102
                        .quad            65537
                        .quad            .Lgcsite_options_103
                        .quad            65537
                        .quad            .Lgcsite_options_104
                        .quad            65537
                        .quad            .Lgcsite_options_105
                        .quad            65537
                        .quad            .Lgcsite_options_106
                        .quad            65537
                        .quad            .Lgcsite_options_107
                        .quad            65537
                        .quad            .Lgcsite_options_108
                        .quad            65537
                        .quad            .Lgcsite_options_109
                        .quad            65537
                        .quad            .Lgcsite_options_110
                        .quad            65537
                        .quad            .Lgcsite_options_111
                        .quad            65537
                        .quad            .Lgcsite_options_112
                        .quad            65537
                        .quad            .Lgcsite_options_113
                        .quad            65537
                        .quad            .Lgcsite_options_114
                        .quad            65537
                        .quad            .Lgcsite_options_115
                        .quad            65537
                        .quad            .Lgcsite_options_116
                        .quad            65537
                        .quad            .Lgcsite_options_117
                        .quad            65537
                        .quad            .Lgcsite_options_118
                        .quad            65537
                        .quad            .Lgcsite_options_119
                        .quad            65537
                        .quad            .Lgcsite_options_120
                        .quad            65537
                        .quad            .Lgcsite_options_121
                        .quad            65537
                        .quad            .Lgcsite_options_122
                        .quad            65537
                        .quad            .Lgcsite_options_123
                        .quad            65537
                        .quad            .Lgcsite_options_124
                        .quad            65537
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
shuffle_α_body:
                        .type            n00288_line_mark_bx, @function
n00288_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1004_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1004_stno
                        .long            0
                        .long            155
                        .quad            .Lstnof1
                        .popsection
n00288_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 155
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1005_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00289_var_ref_α
.Lline_mark_α_1005_0:   .quad            .Lline_mark_α_1005_0_s
.Lline_mark_α_1005_0_s: .string          "deal.icn"
                        .size            n00288_line_mark_bx, .-n00288_line_mark_bx
                        .type            n00289_var_ref_bx, @function
n00289_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00290_deref_α
                        .size            n00289_var_ref_bx, .-n00289_var_ref_bx
                        .type            n00290_deref_bx, @function
n00290_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_deref_α:           mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_shuffle_1:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00291_line_mark_α
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
.Lgcsite_shuffle_0:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00292_line_mark_α
                        .size            n00290_deref_bx, .-n00290_deref_bx
                        .type            n00292_line_mark_bx, @function
n00292_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1009_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1009_stno
                        .long            0
                        .long            155
                        .quad            .Lstnof1
                        .popsection
n00292_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 155;            jmp   n00293_call_icon_α
                        .size            n00292_line_mark_bx, .-n00292_line_mark_bx
                        .type            n00293_call_icon_bx, @function
n00293_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_call_icon_α:       mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1012: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1012]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_shuffle_2:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_shuffle_3:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00291_line_mark_α
                                                                              jmp   n00294_assign_α
n00293_call_icon_β:                                                             jmp   n00291_line_mark_α
                        .size            n00293_call_icon_bx, .-n00293_call_icon_bx
                        .type            n00294_assign_bx, @function
n00294_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_assign_α:          mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00291_line_mark_α
                        .size            n00294_assign_bx, .-n00294_assign_bx
                        .type            n00291_line_mark_bx, @function
n00291_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1014_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1014_stno
                        .long            0
                        .long            156
                        .quad            .Lstnof1
                        .popsection
n00291_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 156;            jmp   n00295_var_ref_α
                        .size            n00291_line_mark_bx, .-n00291_line_mark_bx
                        .type            n00295_var_ref_bx, @function
n00295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00296_iterate_α
                        .size            n00295_var_ref_bx, .-n00295_var_ref_bx
                        .type            n00296_iterate_bx, @function
n00296_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_iterate_α:         mov              qword ptr [rbp + 64], 0
.Literate_α_1019_0:     mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
.Lgcsite_shuffle_5:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n00297_line_mark_α
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
.Lgcsite_shuffle_4:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00298_var_ref_α
n00296_iterate_β:         inc              qword ptr [rbp + 64];                jmp   .Literate_α_1019_0
                        .size            n00296_iterate_bx, .-n00296_iterate_bx
                        .type            n00298_var_ref_bx, @function
n00298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00299_random_α
                        .size            n00298_var_ref_bx, .-n00298_var_ref_bx
                        .type            n00299_random_bx, @function
n00299_random_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_random_α:          mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var_strict@PLT
.Lgcsite_shuffle_7:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00296_iterate_β
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
.Lgcsite_shuffle_6:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00300_swap_var_α
                        .size            n00299_random_bx, .-n00299_random_bx
                        .type            n00300_swap_var_bx, @function
n00300_swap_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_swap_var_α:       mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_swap_var@PLT
.Lgcsite_shuffle_9:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00297_line_mark_α
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
.Lgcsite_shuffle_8:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00296_iterate_β
                        .size            n00300_swap_var_bx, .-n00300_swap_var_bx
                        .type            n00297_line_mark_bx, @function
n00297_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1024_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1024_stno
                        .long            0
                        .long            157
                        .quad            .Lstnof1
                        .popsection
n00297_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 157;            jmp   n00301_var_α
                        .size            n00297_line_mark_bx, .-n00297_line_mark_bx
                        .type            n00301_var_bx, @function
n00301_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_var_α:            mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00302_return_α
                        .size            n00301_var_bx, .-n00301_var_bx
                        .type            n00302_return_bx, @function
n00302_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_return_α:         mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   shuffle_γ
                        .size            n00302_return_bx, .-n00302_return_bx
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
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp]
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
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_shuffle:
                        .quad            1513174945114
                        .quad            515396075584
                        .quad            .Lgcmap_shuffle_s
                        .quad            272
                        .quad            3
                        .quad            70368744177664
                        .quad            17596481011776
                        .quad            211106232533072
.Lgcmap_shuffle_s:      .string          "shuffle"
.Lgcsites_shuffle_4:    .quad            10
                        .quad            .Lgcmap_shuffle
                        .quad            0
                        .quad            .Lgcsite_shuffle_0
                        .quad            65537
                        .quad            .Lgcsite_shuffle_1
                        .quad            65537
                        .quad            .Lgcsite_shuffle_2
                        .quad            65537
                        .quad            .Lgcsite_shuffle_3
                        .quad            65537
                        .quad            .Lgcsite_shuffle_4
                        .quad            65537
                        .quad            .Lgcsite_shuffle_5
                        .quad            65537
                        .quad            .Lgcsite_shuffle_6
                        .quad            65537
                        .quad            .Lgcsite_shuffle_7
                        .quad            65537
                        .quad            .Lgcsite_shuffle_8
                        .quad            65537
                        .quad            .Lgcsite_shuffle_9
                        .quad            65537
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
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        lea              rdi, [rip + __gc_frame_sites]
                        call             rt_gc_frame_sites_install_counted@PLT
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              dword ptr [rax], 0
                        lea              rax, [rip + .Lmain_icn_end]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Lmain_icn_end:         and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              ecx, dword ptr [rax + 12]
                        mov              rax, qword ptr [rax + 0]
                        cmp              ecx, 0;                              jbe   .Lmain_α_1028_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_1028_220:
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
main_α_body:
                        .type            n00303_call_bx, @function
n00303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_call_α:           lea              rdi, [rbp + 1232]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:273
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00304_line_mark_α
                                                                              jmp   n00304_line_mark_α
n00303_call_β:                                                                 jmp   n00304_line_mark_α
                        .size            n00303_call_bx, .-n00303_call_bx
                        .type            n00304_line_mark_bx, @function
n00304_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1098_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1098_stno
                        .long            0
                        .long            51
                        .quad            .Lstnof1
                        .popsection
n00304_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1099_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00305_line_mark_α
.Lline_mark_α_1099_0:   .quad            .Lline_mark_α_1099_0_s
.Lline_mark_α_1099_0_s: .string          "deal.icn"
                        .size            n00304_line_mark_bx, .-n00304_line_mark_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1100_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1100_stno
                        .long            0
                        .long            53
                        .quad            .Lstnof1
                        .popsection
n00305_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53;             jmp   n00306_lit_charset_α
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00306_lit_charset_bx, @function
n00306_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_lit_charset_α:    mov              qword ptr [rbp + 1152], 2            # result
                        mov              dword ptr [rbp + 1156], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1102_0]
                        mov              qword ptr [rbp + 1160], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1102_0]
                        mov              rsi, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_main_3:        mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00307_line_mark_α
.Llit_charset_α_1102_0: .quad            .Llit_charset_α_1102_0_s
.Llit_charset_α_1102_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00306_lit_charset_bx, .-n00306_lit_charset_bx
                        .type            n00307_line_mark_bx, @function
n00307_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1103_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1103_stno
                        .long            0
                        .long            53
                        .quad            .Lstnof1
                        .popsection
n00307_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53;             jmp   n00308_call_icon_α
                        .size            n00307_line_mark_bx, .-n00307_line_mark_bx
                        .type            n00308_call_icon_bx, @function
n00308_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_call_icon_α:      mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1106: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1106]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_4:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_5:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00309_line_mark_α
                                                                              jmp   n00310_assign_α
n00308_call_icon_β:                                                            jmp   n00309_line_mark_α
                        .size            n00308_call_icon_bx, .-n00308_call_icon_bx
                        .type            n00310_assign_bx, @function
n00310_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_assign_α:         mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [r9 + 16], rax             # deckimage
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00311_assign_α
                        .size            n00310_assign_bx, .-n00310_assign_bx
                        .type            n00311_assign_bx, @function
n00311_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_assign_α:         mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00309_line_mark_α
                        .size            n00311_assign_bx, .-n00311_assign_bx
                        .type            n00309_line_mark_bx, @function
n00309_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1109_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1109_stno
                        .long            0
                        .long            54
                        .quad            .Lstnof1
                        .popsection
n00309_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 54;             jmp   n00312_var_α
                        .size            n00309_line_mark_bx, .-n00309_line_mark_bx
                        .type            n00312_var_bx, @function
n00312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_var_α:            mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1040], rax          # result
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00313_unop_α
                        .size            n00312_var_bx, .-n00312_var_bx
                        .type            n00313_unop_bx, @function
n00313_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_unop_α:           mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_main_7:        mov              qword ptr [rbp + 1024], rax
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
.Lgcsite_main_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00314_lit_integer_α
                        .size            n00313_unop_bx, .-n00313_unop_bx
                        .type            n00314_lit_integer_bx, @function
n00314_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_lit_integer_α:    mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1113_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00315_coerce_numeric_α
.Llit_integer_α_1113_0: .quad            4
                        .size            n00314_lit_integer_bx, .-n00314_lit_integer_bx
                        .type            n00315_coerce_numeric_bx, @function
n00315_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_coerce_numeric_α: mov              eax, dword ptr [rbp + 1024]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1115_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1115_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1115_0
.Lcoerce_numeric_α_1115_1:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n00316_binop_α
.Lcoerce_numeric_α_1115_0:
                        lea              rdi, [rbp + 1024]
                        lea              rsi, [rbp + 1056]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 17196646502
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_9:        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1008]
                        cmp              al, 104;                             je    n00317_line_mark_α
                                                                              jmp   n00316_binop_α
                        .size            n00315_coerce_numeric_bx, .-n00315_coerce_numeric_bx
                        .type            n00316_binop_bx, @function
n00316_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_binop_α:          mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div_strict@PLT
.Lgcsite_main_11:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00317_line_mark_α
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
.Lgcsite_main_10:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00318_assign_α
                        .size            n00316_binop_bx, .-n00316_binop_bx
                        .type            n00318_assign_bx, @function
n00318_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_assign_α:         mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [r9 + 48], rax             # suitsize
                        mov              qword ptr [r9 + 56], rdx
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n00319_assign_α
                        .size            n00318_assign_bx, .-n00318_assign_bx
                        .type            n00319_assign_bx, @function
n00319_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_assign_α:         mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [r9 + 32], rax             # handsize
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00317_line_mark_α
                        .size            n00319_assign_bx, .-n00319_assign_bx
                        .type            n00317_line_mark_bx, @function
n00317_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1119_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1119_stno
                        .long            0
                        .long            55
                        .quad            .Lstnof1
                        .popsection
n00317_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 55;             jmp   n00320_lit_string_α
                        .size            n00317_line_mark_bx, .-n00317_line_mark_bx
                        .type            n00320_lit_string_bx, @function
n00320_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_lit_string_α:     mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_1121_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00321_assign_α
.Llit_string_α_1121_0:  .quad            .Llit_string_α_1121_0_s
.Llit_string_α_1121_0_s:
                        .string          "AKQJT98765432"
                        .size            n00320_lit_string_bx, .-n00320_lit_string_bx
                        .type            n00321_assign_bx, @function
n00321_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_assign_α:         mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [r9 + 80], rax             # rank
                        mov              qword ptr [r9 + 88], rdx;            jmp   n00322_line_mark_α
                        .size            n00321_assign_bx, .-n00321_assign_bx
                        .type            n00322_line_mark_bx, @function
n00322_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1123_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1123_stno
                        .long            0
                        .long            56
                        .quad            .Lstnof1
                        .popsection
n00322_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00323_lit_string_α
                        .size            n00322_line_mark_bx, .-n00322_line_mark_bx
                        .type            n00323_lit_string_bx, @function
n00323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_string_α:     mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1125_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00324_var_ref_α
.Llit_string_α_1125_0:  .quad            .Llit_string_α_1125_0_s
.Llit_string_α_1125_0_s:
                        .string          " "
                        .size            n00323_lit_string_bx, .-n00323_lit_string_bx
                        .type            n00324_var_ref_bx, @function
n00324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # suitsize
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00325_deref_α
                        .size            n00324_var_ref_bx, .-n00324_var_ref_bx
                        .type            n00325_deref_bx, @function
n00325_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_deref_α:          mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_13:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00326_line_mark_α
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
.Lgcsite_main_12:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00327_line_mark_α
                        .size            n00325_deref_bx, .-n00325_deref_bx
                        .type            n00327_line_mark_bx, @function
n00327_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1129_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1129_stno
                        .long            0
                        .long            56
                        .quad            .Lstnof1
                        .popsection
n00327_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00328_call_icon_α
                        .size            n00327_line_mark_bx, .-n00327_line_mark_bx
                        .type            n00328_call_icon_bx, @function
n00328_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_call_icon_α:      mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1132: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1132]
                        lea              rsi, [rbp + 800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_14:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00326_line_mark_α
                                                                              jmp   n00329_assign_α
n00328_call_icon_β:                                                            jmp   n00326_line_mark_α
                        .size            n00328_call_icon_bx, .-n00328_call_icon_bx
                        .type            n00329_assign_bx, @function
n00329_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_assign_α:         mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [r9 + 96], rax             # blanker
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00326_line_mark_α
                        .size            n00329_assign_bx, .-n00329_assign_bx
                        .type            n00326_line_mark_bx, @function
n00326_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1134_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1134_stno
                        .long            0
                        .long            57
                        .quad            .Lstnof1
                        .popsection
n00326_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00330_lit_charset_α
                        .size            n00326_line_mark_bx, .-n00326_line_mark_bx
                        .type            n00330_lit_charset_bx, @function
n00330_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_lit_charset_α:    mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1136_0]
                        mov              qword ptr [rbp + 712], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1136_0]
                        mov              rsi, 26
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_main_17:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_16:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00331_lit_integer_α
.Llit_charset_α_1136_0: .quad            .Llit_charset_α_1136_0_s
.Llit_charset_α_1136_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n00330_lit_charset_bx, .-n00330_lit_charset_bx
                        .type            n00331_lit_integer_bx, @function
n00331_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_lit_integer_α:    mov              qword ptr [rbp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1137_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00332_var_α
.Llit_integer_α_1137_0: .quad            1
                        .size            n00331_lit_integer_bx, .-n00331_lit_integer_bx
                        .type            n00332_var_bx, @function
n00332_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_var_α:            mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + 32], rax            # result
                        mov              qword ptr [rbp + 40], rdx;           jmp   n00333_binop_α
                        .size            n00332_var_bx, .-n00332_var_bx
                        .type            n00333_binop_bx, @function
n00333_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_binop_α:          mov              eax, 3
                        mov              ecx, dword ptr [rbp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1139_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rbp + 40]
                        add              rax, rdx
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax;          jmp   .Lbinop_α_1139_7
.Lbinop_α_1139_2:       and              edx, 1;                              jz    .Lbinop_α_1139_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rbp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1139_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1139_4
.Lbinop_α_1139_3:       movq             xmm0, rsi
.Lbinop_α_1139_4:       cmp              cl, 5;                               je    .Lbinop_α_1139_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1139_6
.Lbinop_α_1139_5:       movq             xmm1, rdi
.Lbinop_α_1139_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1139_0
                        mov              qword ptr [rbp + 752], 5
                        mov              qword ptr [rbp + 760], rax
.Lbinop_α_1139_7:                                                             jmp   n00334_subscript_α
.Lbinop_α_1139_0:       mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             qword ptr [rip + rt_add@GOTPCREL]
.Lgcsite_main_19:       cmp              al, 104;                             je    n00335_line_mark_α
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
.Lgcsite_main_18:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00334_subscript_α
                        .size            n00333_binop_bx, .-n00333_binop_bx
                        .type            n00334_subscript_bx, @function
n00334_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_subscript_α:      mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              r8, qword ptr [rbp + 752]
                        mov              r9, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext_strict@PLT
.Lgcsite_main_21:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00335_line_mark_α
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
.Lgcsite_main_20:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00336_assign_α
                        .size            n00334_subscript_bx, .-n00334_subscript_bx
                        .type            n00336_assign_bx, @function
n00336_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_assign_α:         mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [r9 + 64], rax             # denom
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00335_line_mark_α
                        .size            n00336_assign_bx, .-n00336_assign_bx
                        .type            n00335_line_mark_bx, @function
n00335_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1142_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1142_stno
                        .long            0
                        .long            59
                        .quad            .Lstnof1
                        .popsection
n00335_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59;             jmp   n00337_var_ref_α
                        .size            n00335_line_mark_bx, .-n00335_line_mark_bx
                        .type            n00337_var_ref_bx, @function
n00337_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00338_lit_string_α
                        .size            n00337_var_ref_bx, .-n00337_var_ref_bx
                        .type            n00338_lit_string_bx, @function
n00338_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_lit_string_α:     mov              qword ptr [rbp + 624], 2             # result
                        mov              dword ptr [rbp + 628], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1146_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n00339_deref_α
.Llit_string_α_1146_0:  .quad            .Llit_string_α_1146_0_s
.Llit_string_α_1146_0_s:
                        .string          "h+s+"
                        .size            n00338_lit_string_bx, .-n00338_lit_string_bx
                        .type            n00339_deref_bx, @function
n00339_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_deref_α:          mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_23:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00340_line_mark_α
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
.Lgcsite_main_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00341_line_mark_α
                        .size            n00339_deref_bx, .-n00339_deref_bx
                        .type            n00341_line_mark_bx, @function
n00341_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1148_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1148_stno
                        .long            0
                        .long            59
                        .quad            .Lstnof1
                        .popsection
n00341_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 59;             jmp   n00342_call_proc_staged_α
                        .size            n00341_line_mark_bx, .-n00341_line_mark_bx
                        .type            n00342_call_proc_staged_bx, @function
n00342_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1151_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1151_3]
                        push             rcx
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
.Lcall_proc_staged_α_1151_3:
.Lgcsite_main_25:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 59
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1151_2
.Lcall_proc_staged_α_1151_4:
.Lgcsite_main_24:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 59
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1151_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n00340_line_mark_α
                                                                              jmp   n00343_deref_α
n00342_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 59
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00340_line_mark_α
.Lcall_proc_staged_β_1151_0:
                        .quad            .Lcall_proc_staged_β_1151_0_s
.Lcall_proc_staged_β_1151_0_s:
                        .string          "options"
                        .size            n00342_call_proc_staged_bx, .-n00342_call_proc_staged_bx
                        .type            n00343_deref_bx, @function
n00343_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_deref_α:          mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_27:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00340_line_mark_α
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
.Lgcsite_main_26:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00344_assign_α
                        .size            n00343_deref_bx, .-n00343_deref_bx
                        .type            n00344_assign_bx, @function
n00344_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_assign_α:         mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00340_line_mark_α
                        .size            n00344_assign_bx, .-n00344_assign_bx
                        .type            n00340_line_mark_bx, @function
n00340_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1154_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1154_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n00340_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00345_disjunction_α
                        .size            n00340_line_mark_bx, .-n00340_line_mark_bx
                        .type            n00345_disjunction_bx, @function
n00345_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_disjunction_α:    mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              dword ptr [rbp + 416], 0;            jmp   n00346_var_ref_α
.Ldisjunction_γ_1071_as:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1157_0
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00347_assign_α
.Ldisjunction_α_1157_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1157_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00347_assign_α
.Ldisjunction_α_1157_1:                                                       jmp   n00347_assign_α
n00345_disjunction_β:    mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1071_af
                                                                              jmp   .Ldisjunction_ω_1071_af
.Ldisjunction_γ_1071_af:
.Ldisjunction_ω_1071_af:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 1;                              je    n00348_lit_integer_α
                                                                              jmp   n00349_line_mark_α
                        .size            n00345_disjunction_bx, .-n00345_disjunction_bx
                        .type            n00347_assign_bx, @function
n00347_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_assign_α:         mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n00349_line_mark_α
                        .size            n00347_assign_bx, .-n00347_assign_bx
                        .type            n00349_line_mark_bx, @function
n00349_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1159_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1159_stno
                        .long            0
                        .long            61
                        .quad            .Lstnof1
                        .popsection
n00349_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00350_var_ref_α
                        .size            n00349_line_mark_bx, .-n00349_line_mark_bx
                        .type            n00350_var_ref_bx, @function
n00350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00351_lit_string_α
                        .size            n00350_var_ref_bx, .-n00350_var_ref_bx
                        .type            n00351_lit_string_bx, @function
n00351_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_lit_string_α:     mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1163_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00352_subscript_α
.Llit_string_α_1163_0:  .quad            .Llit_string_α_1163_0_s
.Llit_string_α_1163_0_s:
                        .string          "s"
                        .size            n00351_lit_string_bx, .-n00351_lit_string_bx
                        .type            n00352_subscript_bx, @function
n00352_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_subscript_α:      mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_29:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00353_line_mark_α
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
.Lgcsite_main_28:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00354_deref_α
                        .size            n00352_subscript_bx, .-n00352_subscript_bx
                        .type            n00354_deref_bx, @function
n00354_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_deref_α:          mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_31:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00353_line_mark_α
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
.Lgcsite_main_30:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00355_unop_test_α
                        .size            n00354_deref_bx, .-n00354_deref_bx
                        .type            n00355_unop_test_bx, @function
n00355_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_unop_test_α:      mov              eax, dword ptr [rbp + 352]
                        cmp              al, 104;                             je    n00353_line_mark_α
                        cmp              eax, 0;                              je    n00353_line_mark_α
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00356_kw_assign_α
                        .size            n00355_unop_test_bx, .-n00355_unop_test_bx
                        .type            n00356_kw_assign_bx, @function
n00356_kw_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_kw_assign_α:      mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_random_set@PLT
.Lgcsite_main_32:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00353_line_mark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00353_line_mark_α
                        .size            n00356_kw_assign_bx, .-n00356_kw_assign_bx
                        .type            n00353_line_mark_bx, @function
n00353_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1168_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1168_stno
                        .long            0
                        .long            63
                        .quad            .Lstnof1
                        .popsection
n00353_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00357_lit_integer_α
                        .size            n00353_line_mark_bx, .-n00353_line_mark_bx
                        .type            n00357_lit_integer_bx, @function
n00357_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_lit_integer_α:    mov              qword ptr [rbp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1170_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n00358_var_α
.Llit_integer_α_1170_0: .quad            1
                        .size            n00357_lit_integer_bx, .-n00357_lit_integer_bx
                        .type            n00358_var_bx, @function
n00358_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_var_α:            mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 104], rax;          jmp   n00359_to_α
                        .size            n00358_var_bx, .-n00358_var_bx
                        .type            n00359_to_bx, @function
n00359_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_to_α:             mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_40:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    main_ω
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_39:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_38:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_37:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_36:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    main_ω
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_35:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_34:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_33:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lto_α_1174_0:          mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx;                            jg    main_ω
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax;           jmp   n00360_bound_α
n00359_to_β:             inc              qword ptr [rbp + 64];                jo    main_ω
                                                                              jmp   .Lto_α_1174_0
                        .size            n00359_to_bx, .-n00359_to_bx
                        .type            n00360_bound_bx, @function
n00360_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_bound_α:          mov              qword ptr [rbp + 128], rsp;          jmp   n00361_line_mark_α
                        .size            n00360_bound_bx, .-n00360_bound_bx
                        .type            n00361_line_mark_bx, @function
n00361_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1177_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1177_stno
                        .long            0
                        .long            64
                        .quad            .Lstnof1
                        .popsection
n00361_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n00362_line_mark_α
                        .size            n00361_line_mark_bx, .-n00361_line_mark_bx
                        .type            n00362_line_mark_bx, @function
n00362_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1179_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1179_stno
                        .long            0
                        .long            64
                        .quad            .Lstnof1
                        .popsection
n00362_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64;             jmp   n00363_call_proc_staged_α
                        .size            n00362_line_mark_bx, .-n00362_line_mark_bx
                        .type            n00363_call_proc_staged_bx, @function
n00363_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1182_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1182_3]
                        push             rcx
                        sub              rsp, 0
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_1182_3:
.Lgcsite_main_42:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 64
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1182_2
.Lcall_proc_staged_α_1182_4:
.Lgcsite_main_41:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 64
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1182_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    n00364_unmark_α
                                                                              jmp   n00365_deref_α
n00363_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 64
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00364_unmark_α
.Lcall_proc_staged_β_1182_0:
                        .quad            .Lcall_proc_staged_β_1182_0_s
.Lcall_proc_staged_β_1182_0_s:
                        .string          "display"
                        .size            n00363_call_proc_staged_bx, .-n00363_call_proc_staged_bx
                        .type            n00365_deref_bx, @function
n00365_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_deref_α:          mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_44:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00364_unmark_α
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
.Lgcsite_main_43:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00364_unmark_α
                        .size            n00365_deref_bx, .-n00365_deref_bx
                        .type            n00364_unmark_bx, @function
n00364_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_unmark_α:         mov              rsp, qword ptr [rbp + 128];          jmp   n00366_line_mark_α
                        .size            n00364_unmark_bx, .-n00364_unmark_bx
                        .type            n00366_line_mark_bx, @function
n00366_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1186_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1186_stno
                        .long            0
                        .long            63
                        .quad            .Lstnof1
                        .popsection
n00366_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63;             jmp   n00359_to_β
                        .size            n00366_line_mark_bx, .-n00366_line_mark_bx
                        .type            n00348_lit_integer_bx, @function
n00348_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_lit_integer_α:    mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1188_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   .Ldisjunction_γ_1071_as
n00348_lit_integer_β:                                                          jmp   .Ldisjunction_ω_1071_af
.Llit_integer_α_1188_0: .quad            1
                        .size            n00348_lit_integer_bx, .-n00348_lit_integer_bx
                        .type            n00346_var_ref_bx, @function
n00346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00367_lit_string_α
n00346_var_ref_β:                                                              jmp   .Ldisjunction_ω_1071_af
                        .size            n00346_var_ref_bx, .-n00346_var_ref_bx
                        .type            n00367_lit_string_bx, @function
n00367_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_lit_string_α:     mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1191_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00368_subscript_α
.Llit_string_α_1191_0:  .quad            .Llit_string_α_1191_0_s
.Llit_string_α_1191_0_s:
                        .string          "h"
                        .size            n00367_lit_string_bx, .-n00367_lit_string_bx
                        .type            n00368_subscript_bx, @function
n00368_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_subscript_α:      mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_46:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1071_af
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
.Lgcsite_main_45:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00369_deref_α
                        .size            n00368_subscript_bx, .-n00368_subscript_bx
                        .type            n00369_deref_bx, @function
n00369_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_deref_α:          mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_48:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1071_af
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
.Lgcsite_main_47:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00370_unop_test_α
                        .size            n00369_deref_bx, .-n00369_deref_bx
                        .type            n00370_unop_test_bx, @function
n00370_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_unop_test_α:      mov              eax, dword ptr [rbp + 512]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1071_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1071_af
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 440], rax;          jmp   .Ldisjunction_γ_1071_as
n00370_unop_test_β:                                                            jmp   .Ldisjunction_ω_1071_af
                        .size            n00370_unop_test_bx, .-n00370_unop_test_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
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
                        lea              rsp, [rbp + 1424]
                        mov              rbp, qword ptr [rbp + 1416];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
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
                        lea              rsp, [rbp + 1424]
                        mov              rbp, qword ptr [rbp + 1416];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            6117379886426
                        .quad            382252089488
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
.Lgcsites_main_5:       .quad            49
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgcsite_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_1
                        .quad            65537
                        .quad            .Lgcsite_main_2
                        .quad            65537
                        .quad            .Lgcsite_main_3
                        .quad            65537
                        .quad            .Lgcsite_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_6
                        .quad            65537
                        .quad            .Lgcsite_main_7
                        .quad            65537
                        .quad            .Lgcsite_main_8
                        .quad            65537
                        .quad            .Lgcsite_main_9
                        .quad            65537
                        .quad            .Lgcsite_main_10
                        .quad            65537
                        .quad            .Lgcsite_main_11
                        .quad            65537
                        .quad            .Lgcsite_main_12
                        .quad            65537
                        .quad            .Lgcsite_main_13
                        .quad            65537
                        .quad            .Lgcsite_main_14
                        .quad            65537
                        .quad            .Lgcsite_main_15
                        .quad            65537
                        .quad            .Lgcsite_main_16
                        .quad            65537
                        .quad            .Lgcsite_main_17
                        .quad            65537
                        .quad            .Lgcsite_main_18
                        .quad            65537
                        .quad            .Lgcsite_main_19
                        .quad            65537
                        .quad            .Lgcsite_main_20
                        .quad            65537
                        .quad            .Lgcsite_main_21
                        .quad            65537
                        .quad            .Lgcsite_main_22
                        .quad            65537
                        .quad            .Lgcsite_main_23
                        .quad            65537
                        .quad            .Lgcsite_main_24
                        .quad            65538
                        .quad            .Lgcsite_main_25
                        .quad            65538
                        .quad            .Lgcsite_main_26
                        .quad            65537
                        .quad            .Lgcsite_main_27
                        .quad            65537
                        .quad            .Lgcsite_main_28
                        .quad            65537
                        .quad            .Lgcsite_main_29
                        .quad            65537
                        .quad            .Lgcsite_main_30
                        .quad            65537
                        .quad            .Lgcsite_main_31
                        .quad            65537
                        .quad            .Lgcsite_main_32
                        .quad            65537
                        .quad            .Lgcsite_main_33
                        .quad            65537
                        .quad            .Lgcsite_main_34
                        .quad            65537
                        .quad            .Lgcsite_main_35
                        .quad            65537
                        .quad            .Lgcsite_main_36
                        .quad            65537
                        .quad            .Lgcsite_main_37
                        .quad            65537
                        .quad            .Lgcsite_main_38
                        .quad            65537
                        .quad            .Lgcsite_main_39
                        .quad            65537
                        .quad            .Lgcsite_main_40
                        .quad            65537
                        .quad            .Lgcsite_main_41
                        .quad            65538
                        .quad            .Lgcsite_main_42
                        .quad            65538
                        .quad            .Lgcsite_main_43
                        .quad            65537
                        .quad            .Lgcsite_main_44
                        .quad            65537
                        .quad            .Lgcsite_main_45
                        .quad            65537
                        .quad            .Lgcsite_main_46
                        .quad            65537
                        .quad            .Lgcsite_main_47
                        .quad            65537
                        .quad            .Lgcsite_main_48
                        .quad            65537
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
.Lstartup_ipp00371_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00371_0
                        .quad            0
.Lstartup_iln00371_0:    .string          "hands"
.Lstartup_iln00371_1:    .string          "opts"
.Lstartup_iln00371_2:    .string          "&letters"
.Lstartup_iln00371_3:    .string          "&lcase"
.Lstartup_iln00371_4:    .string          "&random"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00371_0
                        .quad            .Lstartup_iln00371_1
                        .quad            .Lstartup_iln00371_2
                        .quad            .Lstartup_iln00371_3
                        .quad            .Lstartup_iln00371_4
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
                        .long            3728
                        .long            3792
                        .long            3744
                        .long            3680
                        .long            3696
                        .long            3760
                        .long            3776
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
                        .long            3808
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
                        .section         .rodata
.Lstartup_rootcall:     .string          "main"
                        .align           8
.Lstartup_prec_root:    .quad            .Lstartup_rootcall
                        .quad            main_α
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            0
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec_root]
                        call             rt_proc_register_rec@PLT
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
                        .align           8
__gc_frame_sites:       .quad            6
                        .quad            .Lgcsites_display_0
                        .quad            .Lgcsites_show_1
                        .quad            .Lgcsites_arrange_2
                        .quad            .Lgcsites_options_3
                        .quad            .Lgcsites_shuffle_4
                        .quad            .Lgcsites_main_5
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.S0:                    .string          "deal.icn"
                        .text
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
