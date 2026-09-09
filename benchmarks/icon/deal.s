                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__display:
                        sub              rsp, 1968
                        mov              qword ptr [rsp + 1960], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 1856
                        xor              eax, eax
                        mov              ecx, 32
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ldisplay_α_0_247
                        .section         .rodata
.Licn_trace_nm0:        .string          "display"
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldisplay_α_0_247:      mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
display_α_body:
                        .type            n1_disjunction_bx, @function
n1_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rbp + 1456], 0
                        mov              qword ptr [rbp + 1464], 0
                        mov              dword ptr [rbp + 1472], 0;           jmp   n2_var_ref_α
.Ldisjunction_γ_1_as:   mov              r11, 1
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_82_0
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n17_var_ref_α
.Ldisjunction_α_82_0:                                                         jmp   n17_var_ref_α
n1_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rbp + 1472];         jmp   n17_var_ref_α
.Ldisjunction_γ_1_af:   mov              r11, 1
.Ldisjunction_ω_1_af:   mov              r11, 1
                        add              dword ptr [rbp + 1472], 1
                        mov              eax, dword ptr [rbp + 1472];         jmp   n17_var_ref_α
                        .size            n1_disjunction_bx, .-n1_disjunction_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # display__INITFLAG__0
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n3_nulltest_var_α
n2_var_ref_β:           mov              r11, 2;                              jmp   .Ldisjunction_ω_1_af
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_nulltest_var_bx, @function
n3_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1_af
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1_af
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n4_lit_integer_α
                        .size            n3_nulltest_var_bx, .-n3_nulltest_var_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_86_0]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n5_assign_var_α
.Llit_integer_α_86_0:   .quad            1
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_assign_var_bx, @function
n5_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1_af
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n6_lit_string_α
                        .size            n5_assign_var_bx, .-n5_assign_var_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_88_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n7_lit_string_α
.Llit_string_α_88_0:    .quad            .Llit_string_α_88_0_s
.Llit_string_α_88_0_s:  .string          "\n"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rbp + 1744], 2            # result
                        mov              dword ptr [rbp + 1748], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_89_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n8_lit_integer_α
.Llit_string_α_89_0:    .quad            .Llit_string_α_89_0_s
.Llit_string_α_89_0_s:  .string          "-"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rbp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_90_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n9_call_icon_α
.Llit_integer_α_90_0:   .quad            33
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_call_icon_bx, @function
n9_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_icon_α:         mov              r11, 9
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        .section         .rodata
.Lcall_icon_α_rkfn92:   .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn92]
                        lea              rsi, [rbp + 1696]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    n12_lit_string_α
                                                                              jmp   n10_binop_α
n9_call_icon_β:         mov              r11, 9;                              jmp   n12_lit_string_α
                        .size            n9_call_icon_bx, .-n9_call_icon_bx
                        .type            n10_binop_bx, @function
n10_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:            mov              r11, 10
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_assign_α
                        .size            n10_binop_bx, .-n10_binop_bx
                        .type            n11_assign_bx, @function
n11_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        mov              qword ptr [r9 + 160], rax            # display__STATIC__bar
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_94_0]
                        .section         .rodata
.Lassign_α_94_1_s:      .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_94_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n12_lit_string_α
.Lassign_α_94_0:        .quad            .Lassign_α_94_0_s
.Lassign_α_94_0_s:      .string          "display__STATIC__bar"
                        .size            n11_assign_bx, .-n11_assign_bx
                        .type            n12_lit_string_bx, @function
n12_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rbp + 1584], 2            # result
                        mov              dword ptr [rbp + 1588], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_95_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n13_lit_integer_α
.Llit_string_α_95_0:    .quad            .Llit_string_α_95_0_s
.Llit_string_α_95_0_s:  .string          " "
                        .size            n12_lit_string_bx, .-n12_lit_string_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_96_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n14_call_icon_α
.Llit_integer_α_96_0:   .quad            10
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_call_icon_bx, @function
n14_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_icon_α:        mov              r11, 14
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lcall_icon_α_rkfn98:   .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn98]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              al, 104;                             je    n17_var_ref_α
                                                                              jmp   n15_assign_α
n14_call_icon_β:        mov              r11, 14;                             jmp   n17_var_ref_α
                        .size            n14_call_icon_bx, .-n14_call_icon_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [r9 + 176], rax            # display__STATIC__offset
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_99_0]
                        .section         .rodata
.Lassign_α_99_1_s:      .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_99_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n16_conjunction_α
.Lassign_α_99_0:        .quad            .Lassign_α_99_0_s
.Lassign_α_99_0_s:      .string          "display__STATIC__offset"
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_conjunction_bx, @function
n16_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_conjunction_α:      mov              r11, 16
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1496], rax;         jmp   .Ldisjunction_γ_1_as
n16_conjunction_β:      mov              r11, 16;                             jmp   n17_var_ref_α
                        .size            n16_conjunction_bx, .-n16_conjunction_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # deck
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n18_deref_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_deref_bx, @function
n18_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_deref_α:            mov              r11, 18
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n21_make_list_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n19_call_proc_staged_α
                        .size            n18_deref_bx, .-n18_deref_bx
                        .type            n19_call_proc_staged_bx, @function
n19_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α: mov              r11, 19
                        lea              rsi, [rbp + 1440]
                        call             shuffle_dcα;                         jmp   .Lcall_proc_staged_α_105_2
.Lcall_proc_staged_α_105_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_105_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
.Lcall_proc_staged_α_105_29:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              al, 104;                             je    n21_make_list_α
                                                                              jmp   n20_assign_α
n19_call_proc_staged_β: mov              r11, 19;                             jmp   n21_make_list_α
.Lcall_proc_staged_β_105_0:
                        .quad            .Lcall_proc_staged_β_105_0_s
.Lcall_proc_staged_β_105_0_s:
                        .string          "shuffle"
                        .size            n19_call_proc_staged_bx, .-n19_call_proc_staged_bx
                        .type            n20_assign_bx, @function
n20_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_106_0]
                        .section         .rodata
.Lassign_α_106_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_106_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n21_make_list_α
.Lassign_α_106_0:       .quad            .Lassign_α_106_0_s
.Lassign_α_106_0_s:     .string          "deck"
                        .size            n20_assign_bx, .-n20_assign_bx
                        .type            n21_make_list_bx, @function
n21_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_make_list_α:        mov              r11, 21
                        lea              rdi, [rbp + 1376]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n22_assign_α
                        .size            n21_make_list_bx, .-n21_make_list_bx
                        .type            n22_assign_bx, @function
n22_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n23_var_ref_α
                        .size            n22_assign_bx, .-n22_assign_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n24_var_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_var_bx, @function
n24_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 24
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1120], rax          # result
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n25_lit_integer_α
                        .size            n24_var_bx, .-n24_var_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rbp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_113_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n26_lit_integer_α
.Llit_integer_α_113_0:  .quad            0
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rbp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_114_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n27_to_α
.Llit_integer_α_114_0:  .quad            3
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_to_bx, @function
n27_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_to_α:               mov              r11, 27
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1248], 3
                        mov              qword ptr [rbp + 1256], rax
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], 3
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1232], rax
.Lto_α_116_0:           mov              rax, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1272]
                        cmp              rax, rcx;                            jg    n41_call_icon_α
                        mov              qword ptr [rbp + 1216], 3
                        mov              qword ptr [rbp + 1224], rax;         jmp   n28_var_α
n27_to_β:               mov              r11, 27
                        inc              qword ptr [rbp + 1232];              jmp   .Lto_α_116_0
                        .size            n27_to_bx, .-n27_to_bx
                        .type            n28_var_bx, @function
n28_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 28
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 1280], rax          # result
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n29_coerce_numeric_α
                        .size            n28_var_bx, .-n28_var_bx
                        .type            n29_coerce_numeric_bx, @function
n29_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:   mov              r11, 29
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_119_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_119_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_119_0
.Lcoerce_numeric_α_119_1:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n30_coerce_numeric_α
.Lcoerce_numeric_α_119_0:
                        lea              rdi, [rbp + 1216]
                        lea              rsi, [rbp + 1280]
                        lea              rdx, [rbp + 1200]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              al, 104;                             je    n41_call_icon_α
                                                                              jmp   n30_coerce_numeric_α
                        .size            n29_coerce_numeric_bx, .-n29_coerce_numeric_bx
                        .type            n30_coerce_numeric_bx, @function
n30_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_coerce_numeric_α:   mov              r11, 30
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_121_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_121_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_121_0
.Lcoerce_numeric_α_121_1:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n31_binop_α
.Lcoerce_numeric_α_121_0:
                        lea              rdi, [rbp + 1280]
                        lea              rsi, [rbp + 1216]
                        lea              rdx, [rbp + 1184]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              al, 104;                             je    n41_call_icon_α
                                                                              jmp   n31_binop_α
                        .size            n30_coerce_numeric_bx, .-n30_coerce_numeric_bx
                        .type            n31_binop_bx, @function
n31_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:            mov              r11, 31
                        mov              eax, dword ptr [rbp + 1200]
                        mov              ecx, dword ptr [rbp + 1184]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_122_2
                        mov              rax, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1192]
                        imul             rax, rdx;                            jo    .Lbinop_α_122_0
                        mov              qword ptr [rbp + 1168], 3
                        mov              qword ptr [rbp + 1176], rax;         jmp   .Lbinop_α_122_7
.Lbinop_α_122_2:        and              edx, 1;                              jz    .Lbinop_α_122_0
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdi, qword ptr [rbp + 1192]
                        cmp              al, 5;                               je    .Lbinop_α_122_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_122_4
.Lbinop_α_122_3:        movq             xmm0, rsi
.Lbinop_α_122_4:        cmp              cl, 5;                               je    .Lbinop_α_122_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_122_6
.Lbinop_α_122_5:        movq             xmm1, rdi
.Lbinop_α_122_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_122_0
                        mov              qword ptr [rbp + 1168], 5
                        mov              qword ptr [rbp + 1176], rax
.Lbinop_α_122_7:                                                              jmp   n32_lit_integer_α
.Lbinop_α_122_0:        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n41_call_icon_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n32_lit_integer_α
                        .size            n31_binop_bx, .-n31_binop_bx
                        .type            n32_lit_integer_bx, @function
n32_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rbp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_123_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n33_coerce_numeric_α
.Llit_integer_α_123_0:  .quad            1
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_coerce_numeric_bx, @function
n33_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_coerce_numeric_α:   mov              r11, 33
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_125_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_125_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_125_0
.Lcoerce_numeric_α_125_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n34_binop_α
.Lcoerce_numeric_α_125_0:
                        lea              rdi, [rbp + 1168]
                        lea              rsi, [rbp + 1296]
                        lea              rdx, [rbp + 1152]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              al, 104;                             je    n41_call_icon_α
                                                                              jmp   n34_binop_α
                        .size            n33_coerce_numeric_bx, .-n33_coerce_numeric_bx
                        .type            n34_binop_bx, @function
n34_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            mov              r11, 34
                        mov              eax, dword ptr [rbp + 1152]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_126_2
                        mov              rax, qword ptr [rbp + 1160]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_126_0
                        mov              qword ptr [rbp + 1136], 3
                        mov              qword ptr [rbp + 1144], rax;         jmp   .Lbinop_α_126_7
.Lbinop_α_126_2:        and              edx, 1;                              jz    .Lbinop_α_126_0
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_126_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_126_4
.Lbinop_α_126_3:        movq             xmm0, rsi
.Lbinop_α_126_4:        cmp              cl, 5;                               je    .Lbinop_α_126_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_126_6
.Lbinop_α_126_5:        movq             xmm1, rdi
.Lbinop_α_126_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_126_0
                        mov              qword ptr [rbp + 1136], 5
                        mov              qword ptr [rbp + 1144], rax
.Lbinop_α_126_7:                                                              jmp   n35_var_α
.Lbinop_α_126_0:        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n41_call_icon_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n35_var_α
                        .size            n34_binop_bx, .-n34_binop_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 35
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 1312], rax          # result
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n36_binop_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_binop_bx, @function
n36_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_α:            mov              r11, 36
                        mov              eax, dword ptr [rbp + 1136]
                        mov              ecx, dword ptr [rbp + 1312]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_128_2
                        mov              rax, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1320]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1328], 3
                        mov              qword ptr [rbp + 1336], rax;         jmp   .Lbinop_α_128_7
.Lbinop_α_128_2:        and              edx, 1;                              jz    .Lbinop_α_128_0
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdi, qword ptr [rbp + 1320]
                        cmp              al, 5;                               je    .Lbinop_α_128_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_128_4
.Lbinop_α_128_3:        movq             xmm0, rsi
.Lbinop_α_128_4:        cmp              cl, 5;                               je    .Lbinop_α_128_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_128_6
.Lbinop_α_128_5:        movq             xmm1, rdi
.Lbinop_α_128_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_128_0
                        mov              qword ptr [rbp + 1328], 5
                        mov              qword ptr [rbp + 1336], rax
.Lbinop_α_128_7:                                                              jmp   n37_subscript_α
.Lbinop_α_128_0:        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n27_to_β
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n37_subscript_α
                        .size            n36_binop_bx, .-n36_binop_bx
                        .type            n37_subscript_bx, @function
n37_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_subscript_α:        mov              r11, 37
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        mov              r8, qword ptr [rbp + 1328]
                        mov              r9, qword ptr [rbp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n27_to_β
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n38_call_proc_staged_α
                        .size            n37_subscript_bx, .-n37_subscript_bx
                        .type            n38_call_proc_staged_bx, @function
n38_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α: mov              r11, 38
                        lea              rsi, [rbp + 1104]
                        call             show_dcα;                            jmp   .Lcall_proc_staged_α_131_2
.Lcall_proc_staged_α_131_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_131_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
.Lcall_proc_staged_α_131_29:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    n27_to_β
                                                                              jmp   n39_deref_α
n38_call_proc_staged_β: mov              r11, 38;                             jmp   n27_to_β
.Lcall_proc_staged_β_131_0:
                        .quad            .Lcall_proc_staged_β_131_0_s
.Lcall_proc_staged_β_131_0_s:
                        .string          "show"
                        .size            n38_call_proc_staged_bx, .-n38_call_proc_staged_bx
                        .type            n39_deref_bx, @function
n39_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_deref_α:            mov              r11, 39
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
                        cmp              al, 104;                             je    n27_to_β
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n40_call_icon_α
                        .size            n39_deref_bx, .-n39_deref_bx
                        .type            n40_call_icon_bx, @function
n40_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_icon_α:        mov              r11, 40
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn134:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn134]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n27_to_β
                                                                              jmp   n27_to_β
n40_call_icon_β:        mov              r11, 40;                             jmp   n27_to_β
                        .size            n40_call_icon_bx, .-n40_call_icon_bx
                        .type            n41_call_icon_bx, @function
n41_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_icon_α:        mov              r11, 41
                        .section         .rodata
.Lcall_icon_α_rkfn136:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn136]
                        lea              rsi, [rbp + 960]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    n42_var_α
                                                                              jmp   n42_var_α
n41_call_icon_β:        mov              r11, 41;                             jmp   n42_var_α
                        .size            n41_call_icon_bx, .-n41_call_icon_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 42
                        mov              rax, qword ptr [r9 + 176]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 832], rax           # result
                        mov              qword ptr [rbp + 840], rdx;          jmp   n43_var_ref_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n44_lit_integer_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              r11, 44
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_140_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n45_subscript_α
.Llit_integer_α_140_0:  .quad            1
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_subscript_bx, @function
n45_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_subscript_α:        mov              r11, 45
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n49_call_icon_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n46_deref_α
                        .size            n45_subscript_bx, .-n45_subscript_bx
                        .type            n46_deref_bx, @function
n46_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_deref_α:            mov              r11, 46
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n49_call_icon_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n47_iterate_α
                        .size            n46_deref_bx, .-n46_deref_bx
                        .type            n47_iterate_bx, @function
n47_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_iterate_α:          mov              r11, 47
                        mov              qword ptr [rbp + 864], 0
.Literate_α_144_0:      mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    n49_call_icon_α
                                                                              jmp   n48_call_icon_α
n47_iterate_β:          mov              r11, 47
                        inc              qword ptr [rbp + 864];               jmp   .Literate_α_144_0
                        .size            n47_iterate_bx, .-n47_iterate_bx
                        .type            n48_call_icon_bx, @function
n48_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_icon_α:        mov              r11, 48
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lcall_icon_α_rkfn146:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn146]
                        lea              rsi, [rbp + 784]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    n47_iterate_β
                                                                              jmp   n47_iterate_β
n48_call_icon_β:        mov              r11, 48;                             jmp   n47_iterate_β
                        .size            n48_call_icon_bx, .-n48_call_icon_bx
                        .type            n49_call_icon_bx, @function
n49_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_icon_α:        mov              r11, 49
                        .section         .rodata
.Lcall_icon_α_rkfn148:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn148]
                        lea              rsi, [rbp + 752]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n50_lit_integer_α
                                                                              jmp   n50_lit_integer_α
n49_call_icon_β:        mov              r11, 49;                             jmp   n50_lit_integer_α
                        .size            n49_call_icon_bx, .-n49_call_icon_bx
                        .type            n50_lit_integer_bx, @function
n50_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              r11, 50
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_149_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n51_lit_integer_α
.Llit_integer_α_149_0:  .quad            1
                        .size            n50_lit_integer_bx, .-n50_lit_integer_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      mov              r11, 51
                        mov              qword ptr [rbp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_150_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n52_to_α
.Llit_integer_α_150_0:  .quad            4
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_to_bx, @function
n52_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_to_α:               mov              r11, 52
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], 3
                        mov              qword ptr [rbp + 328], rax
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], 3
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 304], rax
.Lto_α_152_0:           mov              rax, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 344]
                        cmp              rax, rcx;                            jg    n71_call_icon_α
                        mov              qword ptr [rbp + 288], 3
                        mov              qword ptr [rbp + 296], rax;          jmp   n53_assign_α
n52_to_β:               mov              r11, 52
                        inc              qword ptr [rbp + 304];               jmp   .Lto_α_152_0
                        .size            n52_to_bx, .-n52_to_bx
                        .type            n53_assign_bx, @function
n53_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n54_bound_α
                        .size            n53_assign_bx, .-n53_assign_bx
                        .type            n54_bound_bx, @function
n54_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_bound_α:            mov              r11, 54
                        mov              qword ptr [rbp + 352], rsp;          jmp   n55_var_ref_α
                        .size            n54_bound_bx, .-n54_bound_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n56_lit_integer_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              r11, 56
                        mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_158_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n57_subscript_α
.Llit_integer_α_158_0:  .quad            4
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_subscript_bx, @function
n57_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_subscript_α:        mov              r11, 57
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n70_unmark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n58_var_α
                        .size            n57_subscript_bx, .-n57_subscript_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 58
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 584], rax;          jmp   n59_subscript_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_subscript_bx, @function
n59_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_subscript_α:        mov              r11, 59
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n70_unmark_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n60_lit_integer_α
                        .size            n59_subscript_bx, .-n59_subscript_bx
                        .type            n60_lit_integer_bx, @function
n60_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              r11, 60
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_163_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n61_deref_α
.Llit_integer_α_163_0:  .quad            20
                        .size            n60_lit_integer_bx, .-n60_lit_integer_bx
                        .type            n61_deref_bx, @function
n61_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_deref_α:            mov              r11, 61
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n70_unmark_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n62_call_icon_α
                        .size            n61_deref_bx, .-n61_deref_bx
                        .type            n62_call_icon_bx, @function
n62_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_icon_α:        mov              r11, 62
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lcall_icon_α_rkfn166:  .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn166]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n70_unmark_α
                                                                              jmp   n63_var_ref_α
n62_call_icon_β:        mov              r11, 62;                             jmp   n70_unmark_α
                        .size            n62_call_icon_bx, .-n62_call_icon_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n64_lit_integer_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_lit_integer_bx, @function
n64_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              r11, 64
                        mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n65_subscript_α
.Llit_integer_α_169_0:  .quad            2
                        .size            n64_lit_integer_bx, .-n64_lit_integer_bx
                        .type            n65_subscript_bx, @function
n65_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:        mov              r11, 65
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n70_unmark_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n66_var_α
                        .size            n65_subscript_bx, .-n65_subscript_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              mov              r11, 66
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 696], rax;          jmp   n67_subscript_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_subscript_bx, @function
n67_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_subscript_α:        mov              r11, 67
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n70_unmark_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n68_deref_α
                        .size            n67_subscript_bx, .-n67_subscript_bx
                        .type            n68_deref_bx, @function
n68_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_deref_α:            mov              r11, 68
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n70_unmark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n69_call_icon_α
                        .size            n68_deref_bx, .-n68_deref_bx
                        .type            n69_call_icon_bx, @function
n69_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_icon_α:        mov              r11, 69
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn176:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn176]
                        lea              rsi, [rbp + 416]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n70_unmark_α
                                                                              jmp   n70_unmark_α
n69_call_icon_β:        mov              r11, 69;                             jmp   n70_unmark_α
                        .size            n69_call_icon_bx, .-n69_call_icon_bx
                        .type            n70_unmark_bx, @function
n70_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_unmark_α:           mov              r11, 70
                        mov              rsp, qword ptr [rbp + 352];          jmp   n52_to_β
                        .size            n70_unmark_bx, .-n70_unmark_bx
                        .type            n71_call_icon_bx, @function
n71_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_icon_α:        mov              r11, 71
                        .section         .rodata
.Lcall_icon_α_rkfn180:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn180]
                        lea              rsi, [rbp + 256]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n72_var_α
                                                                              jmp   n72_var_α
n71_call_icon_β:        mov              r11, 71;                             jmp   n72_var_α
                        .size            n71_call_icon_bx, .-n71_call_icon_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              mov              r11, 72
                        mov              rax, qword ptr [r9 + 176]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 128], rax           # result
                        mov              qword ptr [rbp + 136], rdx;          jmp   n73_var_ref_α
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n74_lit_integer_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              r11, 74
                        mov              qword ptr [rbp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_184_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n75_subscript_α
.Llit_integer_α_184_0:  .quad            3
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_subscript_bx, @function
n75_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_subscript_α:        mov              r11, 75
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n79_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n76_deref_α
                        .size            n75_subscript_bx, .-n75_subscript_bx
                        .type            n76_deref_bx, @function
n76_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_deref_α:            mov              r11, 76
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
                        cmp              al, 104;                             je    n79_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n77_iterate_α
                        .size            n76_deref_bx, .-n76_deref_bx
                        .type            n77_iterate_bx, @function
n77_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_iterate_α:          mov              r11, 77
                        mov              qword ptr [rbp + 160], 0
.Literate_α_188_0:      mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n79_var_α
                                                                              jmp   n78_call_icon_α
n77_iterate_β:          mov              r11, 77
                        inc              qword ptr [rbp + 160];               jmp   .Literate_α_188_0
                        .size            n77_iterate_bx, .-n77_iterate_bx
                        .type            n78_call_icon_bx, @function
n78_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_icon_α:        mov              r11, 78
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn190:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn190]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n77_iterate_β
                                                                              jmp   n77_iterate_β
n78_call_icon_β:        mov              r11, 78;                             jmp   n77_iterate_β
                        .size            n78_call_icon_bx, .-n78_call_icon_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              r11, 79
                        mov              rax, qword ptr [r9 + 160]            # display__STATIC__bar
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rbp + 48], rax            # result
                        mov              qword ptr [rbp + 56], rdx;           jmp   n80_call_icon_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_call_icon_bx, @function
n80_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_icon_α:        mov              r11, 80
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn193:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn193]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    display_ω
                                                                              jmp   display_ω
n80_call_icon_β:        mov              r11, 80;                             jmp   display_ω
                        .size            n80_call_icon_bx, .-n80_call_icon_bx
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ldisplay_α_192_248
                        .section         .rodata
.Licn_trace_nm194:      .string          "display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm194]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldisplay_α_192_248:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1968]
                        mov              rbp, qword ptr [rbp + 1960];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
display_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ldisplay_α_192_249
                        .section         .rodata
.Licn_trace_nm195:      .string          "display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm195]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldisplay_α_192_249:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1968]
                        mov              rbp, qword ptr [rbp + 1960];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
display_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Ldisplay_α_196_3]
                        push             rcx
                        lea              rcx, [rip + .Ldisplay_α_196_2]
                        push             rcx;                                 jmp   FN__display
.Ldisplay_α_196_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ldisplay_α_196_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1600
                        mov              qword ptr [rsp + 1592], rbp
                        mov              rbp, rsp
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshow_α_196_247
                        .section         .rodata
.Licn_trace_nm197:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm197]
                        mov              esi, 1
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshow_α_196_247:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
show_α_body:
                        .type            n00001_disjunction_bx, @function
n00001_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_disjunction_α:     mov              r11, 81
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0;            jmp   n00002_var_ref_α
.Ldisjunction_γ_198_as: mov              r11, 81
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_263_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00003_lit_string_α
.Ldisjunction_α_263_0:                                                        jmp   n00003_lit_string_α
n00001_disjunction_β:     mov              r11, 81
                        mov              eax, dword ptr [rbp + 768];          jmp   n00003_lit_string_α
.Ldisjunction_γ_198_af: mov              r11, 81
.Ldisjunction_ω_198_af: mov              r11, 81
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768];          jmp   n00003_lit_string_α
                        .size            n00001_disjunction_bx, .-n00001_disjunction_bx
                        .type            n00002_var_ref_bx, @function
n00002_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                      # show__INITFLAG__0
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n00004_nulltest_var_α
n00002_var_ref_β:         mov              r11, 82;                             jmp   .Ldisjunction_ω_198_af
                        .size            n00002_var_ref_bx, .-n00002_var_ref_bx
                        .type            n00004_nulltest_var_bx, @function
n00004_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_nulltest_var_α:    mov              r11, 83
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              al, 104;                             je    .Ldisjunction_ω_198_af
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_198_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_198_af
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00005_lit_integer_α
                        .size            n00004_nulltest_var_bx, .-n00004_nulltest_var_bx
                        .type            n00005_lit_integer_bx, @function
n00005_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_integer_α:     mov              r11, 84
                        mov              qword ptr [rbp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_267_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n00006_assign_var_α
.Llit_integer_α_267_0:  .quad            1
                        .size            n00005_lit_integer_bx, .-n00005_lit_integer_bx
                        .type            n00006_assign_var_bx, @function
n00006_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_assign_var_α:      mov              r11, 85
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_198_af
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n00007_var_α
                        .size            n00006_assign_var_bx, .-n00006_assign_var_bx
                        .type            n00007_var_bx, @function
n00007_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_α:             mov              r11, 86
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1344], rax          # result
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n00008_var_ref_α
                        .size            n00007_var_bx, .-n00007_var_bx
                        .type            n00008_var_ref_bx, @function
n00008_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n00009_lit_integer_α
                        .size            n00008_var_ref_bx, .-n00008_var_ref_bx
                        .type            n00009_lit_integer_bx, @function
n00009_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_lit_integer_α:     mov              r11, 88
                        mov              qword ptr [rbp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n00010_deref_α
.Llit_integer_α_272_0:  .quad            3
                        .size            n00009_lit_integer_bx, .-n00009_lit_integer_bx
                        .type            n00010_deref_bx, @function
n00010_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_deref_α:           mov              r11, 89
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_var_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n00012_call_icon_α
                        .size            n00010_deref_bx, .-n00010_deref_bx
                        .type            n00012_call_icon_bx, @function
n00012_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_call_icon_α:       mov              r11, 90
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lcall_icon_α_rkfn275:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn275]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    n00011_var_α
                                                                              jmp   n00013_binop_α
n00012_call_icon_β:       mov              r11, 90;                             jmp   n00011_var_α
                        .size            n00012_call_icon_bx, .-n00012_call_icon_bx
                        .type            n00013_binop_bx, @function
n00013_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_binop_α:           mov              r11, 91
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00014_assign_α
                        .size            n00013_binop_bx, .-n00013_binop_bx
                        .type            n00014_assign_bx, @function
n00014_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_assign_α:          mov              r11, 92
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [r9 + 208], rax            # show__STATIC__clubmap
                        mov              qword ptr [r9 + 216], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_277_0]
                        .section         .rodata
.Lassign_α_277_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_277_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00011_var_α
.Lassign_α_277_0:       .quad            .Lassign_α_277_0_s
.Lassign_α_277_0_s:     .string          "show__STATIC__clubmap"
                        .size            n00014_assign_bx, .-n00014_assign_bx
                        .type            n00011_var_bx, @function
n00011_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_var_α:             mov              r11, 93
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1184], rax          # result
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n00015_var_α
                        .size            n00011_var_bx, .-n00011_var_bx
                        .type            n00015_var_bx, @function
n00015_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_var_α:             mov              r11, 94
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1200], rax          # result
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n00016_binop_α
                        .size            n00015_var_bx, .-n00015_var_bx
                        .type            n00016_binop_bx, @function
n00016_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_binop_α:           mov              r11, 95
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00017_var_ref_α
                        .size            n00016_binop_bx, .-n00016_binop_bx
                        .type            n00017_var_ref_bx, @function
n00017_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n00018_lit_integer_α
                        .size            n00017_var_ref_bx, .-n00017_var_ref_bx
                        .type            n00018_lit_integer_bx, @function
n00018_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_lit_integer_α:     mov              r11, 97
                        mov              qword ptr [rbp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_283_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n00019_deref_α
.Llit_integer_α_283_0:  .quad            2
                        .size            n00018_lit_integer_bx, .-n00018_lit_integer_bx
                        .type            n00019_deref_bx, @function
n00019_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_deref_α:           mov              r11, 98
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00020_var_ref_α
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n00021_call_icon_α
                        .size            n00019_deref_bx, .-n00019_deref_bx
                        .type            n00021_call_icon_bx, @function
n00021_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_call_icon_α:       mov              r11, 99
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lcall_icon_α_rkfn286:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn286]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n00020_var_ref_α
                                                                              jmp   n00022_binop_α
n00021_call_icon_β:       mov              r11, 99;                             jmp   n00020_var_ref_α
                        .size            n00021_call_icon_bx, .-n00021_call_icon_bx
                        .type            n00022_binop_bx, @function
n00022_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_binop_α:           mov              r11, 100
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00023_assign_α
                        .size            n00022_binop_bx, .-n00022_binop_bx
                        .type            n00023_assign_bx, @function
n00023_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [r9 + 224], rax            # show__STATIC__diamondmap
                        mov              qword ptr [r9 + 232], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_288_0]
                        .section         .rodata
.Lassign_α_288_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_288_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00020_var_ref_α
.Lassign_α_288_0:       .quad            .Lassign_α_288_0_s
.Lassign_α_288_0_s:     .string          "show__STATIC__diamondmap"
                        .size            n00023_assign_bx, .-n00023_assign_bx
                        .type            n00020_var_ref_bx, @function
n00020_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n00024_lit_integer_α
                        .size            n00020_var_ref_bx, .-n00020_var_ref_bx
                        .type            n00024_lit_integer_bx, @function
n00024_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rbp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_291_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n00025_deref_α
.Llit_integer_α_291_0:  .quad            2
                        .size            n00024_lit_integer_bx, .-n00024_lit_integer_bx
                        .type            n00025_deref_bx, @function
n00025_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_deref_α:           mov              r11, 104
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00026_var_ref_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00027_call_icon_α
                        .size            n00025_deref_bx, .-n00025_deref_bx
                        .type            n00027_call_icon_bx, @function
n00027_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_call_icon_α:       mov              r11, 105
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lcall_icon_α_rkfn294:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn294]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    n00026_var_ref_α
                                                                              jmp   n00028_var_α
n00027_call_icon_β:       mov              r11, 105;                            jmp   n00026_var_ref_α
                        .size            n00027_call_icon_bx, .-n00027_call_icon_bx
                        .type            n00028_var_bx, @function
n00028_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_α:             mov              r11, 106
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1120], rax          # result
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n00029_binop_α
                        .size            n00028_var_bx, .-n00028_var_bx
                        .type            n00029_binop_bx, @function
n00029_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_binop_α:           mov              r11, 107
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00030_var_α
                        .size            n00029_binop_bx, .-n00029_binop_bx
                        .type            n00030_var_bx, @function
n00030_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_var_α:             mov              r11, 108
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1136], rax          # result
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n00031_binop_α
                        .size            n00030_var_bx, .-n00030_var_bx
                        .type            n00031_binop_bx, @function
n00031_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_binop_α:           mov              r11, 109
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00032_assign_α
                        .size            n00031_binop_bx, .-n00031_binop_bx
                        .type            n00032_assign_bx, @function
n00032_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_assign_α:          mov              r11, 110
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [r9 + 240], rax            # show__STATIC__heartmap
                        mov              qword ptr [r9 + 248], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_299_0]
                        .section         .rodata
.Lassign_α_299_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_299_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00026_var_ref_α
.Lassign_α_299_0:       .quad            .Lassign_α_299_0_s
.Lassign_α_299_0_s:     .string          "show__STATIC__heartmap"
                        .size            n00032_assign_bx, .-n00032_assign_bx
                        .type            n00026_var_ref_bx, @function
n00026_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # blanker
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00033_lit_integer_α
                        .size            n00026_var_ref_bx, .-n00026_var_ref_bx
                        .type            n00033_lit_integer_bx, @function
n00033_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_302_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00034_deref_α
.Llit_integer_α_302_0:  .quad            3
                        .size            n00033_lit_integer_bx, .-n00033_lit_integer_bx
                        .type            n00034_deref_bx, @function
n00034_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_deref_α:           mov              r11, 113
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00003_lit_string_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00035_call_icon_α
                        .size            n00034_deref_bx, .-n00034_deref_bx
                        .type            n00035_call_icon_bx, @function
n00035_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_call_icon_α:       mov              r11, 114
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_icon_α_rkfn305:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn305]
                        lea              rsi, [rbp + 848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n00003_lit_string_α
                                                                              jmp   n00036_var_α
n00035_call_icon_β:       mov              r11, 114;                            jmp   n00003_lit_string_α
                        .size            n00035_call_icon_bx, .-n00035_call_icon_bx
                        .type            n00036_var_bx, @function
n00036_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              r11, 115
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 944], rax           # result
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00037_binop_α
                        .size            n00036_var_bx, .-n00036_var_bx
                        .type            n00037_binop_bx, @function
n00037_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_binop_α:           mov              r11, 116
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00038_assign_α
                        .size            n00037_binop_bx, .-n00037_binop_bx
                        .type            n00038_assign_bx, @function
n00038_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_assign_α:          mov              r11, 117
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [r9 + 256], rax            # show__STATIC__spademap
                        mov              qword ptr [r9 + 264], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_308_0]
                        .section         .rodata
.Lassign_α_308_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_308_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00039_conjunction_α
.Lassign_α_308_0:       .quad            .Lassign_α_308_0_s
.Lassign_α_308_0_s:     .string          "show__STATIC__spademap"
                        .size            n00038_assign_bx, .-n00038_assign_bx
                        .type            n00039_conjunction_bx, @function
n00039_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_conjunction_α:     mov              r11, 118
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax;          jmp   .Ldisjunction_γ_198_as
n00039_conjunction_β:     mov              r11, 118;                            jmp   n00003_lit_string_α
                        .size            n00039_conjunction_bx, .-n00039_conjunction_bx
                        .type            n00003_lit_string_bx, @function
n00003_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_310_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00040_var_ref_α
.Llit_string_α_310_0:   .quad            .Llit_string_α_310_0_s
.Llit_string_α_310_0_s: .string          "S: "
                        .size            n00003_lit_string_bx, .-n00003_lit_string_bx
                        .type            n00040_var_ref_bx, @function
n00040_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00041_var_α
                        .size            n00040_var_ref_bx, .-n00040_var_ref_bx
                        .type            n00041_var_bx, @function
n00041_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:             mov              r11, 121
                        mov              rax, qword ptr [r9 + 256]            # show__STATIC__spademap
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rbp + 240], rax           # result
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00042_deref_α
                        .size            n00041_var_bx, .-n00041_var_bx
                        .type            n00042_deref_bx, @function
n00042_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_deref_α:           mov              r11, 122
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
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00043_call_proc_staged_α
                        .size            n00042_deref_bx, .-n00042_deref_bx
                        .type            n00043_call_proc_staged_bx, @function
n00043_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_call_proc_staged_α:
                        mov              r11, 123
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 240]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_316_2
.Lcall_proc_staged_α_316_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_316_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
.Lcall_proc_staged_α_316_29:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00044_binop_α
n00043_call_proc_staged_β:
                        mov              r11, 123;                            jmp   show_ω
.Lcall_proc_staged_β_316_0:
                        .quad            .Lcall_proc_staged_β_316_0_s
.Lcall_proc_staged_β_316_0_s:
                        .string          "arrange"
                        .size            n00043_call_proc_staged_bx, .-n00043_call_proc_staged_bx
                        .type            n00044_binop_bx, @function
n00044_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_binop_α:           mov              r11, 124
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00045_lit_string_α
                        .size            n00044_binop_bx, .-n00044_binop_bx
                        .type            n00045_lit_string_bx, @function
n00045_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_318_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00046_var_ref_α
.Llit_string_α_318_0:   .quad            .Llit_string_α_318_0_s
.Llit_string_α_318_0_s: .string          "H: "
                        .size            n00045_lit_string_bx, .-n00045_lit_string_bx
                        .type            n00046_var_ref_bx, @function
n00046_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00047_var_α
                        .size            n00046_var_ref_bx, .-n00046_var_ref_bx
                        .type            n00047_var_bx, @function
n00047_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:             mov              r11, 127
                        mov              rax, qword ptr [r9 + 240]            # show__STATIC__heartmap
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rbp + 400], rax           # result
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00048_deref_α
                        .size            n00047_var_bx, .-n00047_var_bx
                        .type            n00048_deref_bx, @function
n00048_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_deref_α:           mov              r11, 128
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00049_call_proc_staged_α
                        .size            n00048_deref_bx, .-n00048_deref_bx
                        .type            n00049_call_proc_staged_bx, @function
n00049_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_call_proc_staged_α:
                        mov              r11, 129
                        lea              rsi, [rbp + 416]
                        lea              rdx, [rbp + 400]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_324_2
.Lcall_proc_staged_α_324_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_324_29
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
.Lcall_proc_staged_α_324_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00050_binop_α
n00049_call_proc_staged_β:
                        mov              r11, 129;                            jmp   show_ω
.Lcall_proc_staged_β_324_0:
                        .quad            .Lcall_proc_staged_β_324_0_s
.Lcall_proc_staged_β_324_0_s:
                        .string          "arrange"
                        .size            n00049_call_proc_staged_bx, .-n00049_call_proc_staged_bx
                        .type            n00050_binop_bx, @function
n00050_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_binop_α:           mov              r11, 130
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00051_lit_string_α
                        .size            n00050_binop_bx, .-n00050_binop_bx
                        .type            n00051_lit_string_bx, @function
n00051_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_326_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00052_var_ref_α
.Llit_string_α_326_0:   .quad            .Llit_string_α_326_0_s
.Llit_string_α_326_0_s: .string          "D: "
                        .size            n00051_lit_string_bx, .-n00051_lit_string_bx
                        .type            n00052_var_ref_bx, @function
n00052_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n00053_var_α
                        .size            n00052_var_ref_bx, .-n00052_var_ref_bx
                        .type            n00053_var_bx, @function
n00053_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:             mov              r11, 133
                        mov              rax, qword ptr [r9 + 224]            # show__STATIC__diamondmap
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rbp + 560], rax           # result
                        mov              qword ptr [rbp + 568], rdx;          jmp   n00054_deref_α
                        .size            n00053_var_bx, .-n00053_var_bx
                        .type            n00054_deref_bx, @function
n00054_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_deref_α:           mov              r11, 134
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
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00055_call_proc_staged_α
                        .size            n00054_deref_bx, .-n00054_deref_bx
                        .type            n00055_call_proc_staged_bx, @function
n00055_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_call_proc_staged_α:
                        mov              r11, 135
                        lea              rsi, [rbp + 576]
                        lea              rdx, [rbp + 560]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_332_2
.Lcall_proc_staged_α_332_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_332_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
.Lcall_proc_staged_α_332_29:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00056_binop_α
n00055_call_proc_staged_β:
                        mov              r11, 135;                            jmp   show_ω
.Lcall_proc_staged_β_332_0:
                        .quad            .Lcall_proc_staged_β_332_0_s
.Lcall_proc_staged_β_332_0_s:
                        .string          "arrange"
                        .size            n00055_call_proc_staged_bx, .-n00055_call_proc_staged_bx
                        .type            n00056_binop_bx, @function
n00056_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_binop_α:           mov              r11, 136
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00057_lit_string_α
                        .size            n00056_binop_bx, .-n00056_binop_bx
                        .type            n00057_lit_string_bx, @function
n00057_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_334_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00058_var_ref_α
.Llit_string_α_334_0:   .quad            .Llit_string_α_334_0_s
.Llit_string_α_334_0_s: .string          "C: "
                        .size            n00057_lit_string_bx, .-n00057_lit_string_bx
                        .type            n00058_var_ref_bx, @function
n00058_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00059_var_α
                        .size            n00058_var_ref_bx, .-n00058_var_ref_bx
                        .type            n00059_var_bx, @function
n00059_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_var_α:             mov              r11, 139
                        mov              rax, qword ptr [r9 + 208]            # show__STATIC__clubmap
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rbp + 720], rax           # result
                        mov              qword ptr [rbp + 728], rdx;          jmp   n00060_deref_α
                        .size            n00059_var_bx, .-n00059_var_bx
                        .type            n00060_deref_bx, @function
n00060_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_deref_α:           mov              r11, 140
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    show_ω
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n00061_call_proc_staged_α
                        .size            n00060_deref_bx, .-n00060_deref_bx
                        .type            n00061_call_proc_staged_bx, @function
n00061_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_proc_staged_α:
                        mov              r11, 141
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 720]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_340_2
.Lcall_proc_staged_α_340_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_340_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
.Lcall_proc_staged_α_340_29:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00062_binop_α
n00061_call_proc_staged_β:
                        mov              r11, 141;                            jmp   show_ω
.Lcall_proc_staged_β_340_0:
                        .quad            .Lcall_proc_staged_β_340_0_s
.Lcall_proc_staged_β_340_0_s:
                        .string          "arrange"
                        .size            n00061_call_proc_staged_bx, .-n00061_call_proc_staged_bx
                        .type            n00062_binop_bx, @function
n00062_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_binop_α:           mov              r11, 142
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00063_make_list_α
                        .size            n00062_binop_bx, .-n00062_binop_bx
                        .type            n00063_make_list_bx, @function
n00063_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_make_list_α:       mov              r11, 143
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 600]
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
                        mov              qword ptr [rbp + 40], rdx;           jmp   n00064_return_α
                        .size            n00063_make_list_bx, .-n00063_make_list_bx
                        .type            n00064_return_bx, @function
n00064_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_return_α:          mov              r11, 144
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   show_γ
                        .size            n00064_return_bx, .-n00064_return_bx
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshow_α_344_248
                        .section         .rodata
.Licn_trace_nm345:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm345]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshow_α_344_248:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1600]
                        mov              rbp, qword ptr [rbp + 1592];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshow_α_344_249
                        .section         .rodata
.Licn_trace_nm346:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm346]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshow_α_344_249:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1600]
                        mov              rbp, qword ptr [rbp + 1592];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lshow_α_347_3]
                        push             rcx
                        lea              rcx, [rip + .Lshow_α_347_2]
                        push             rcx;                                 jmp   FN__show
.Lshow_α_347_2:         add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshow_α_347_3:         add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__arrange:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 488], rbp
                        mov              rbp, rsp
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Larrange_α_347_247
                        .section         .rodata
.Licn_trace_nm348:      .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm348]
                        mov              esi, 2
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Larrange_α_347_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
arrange_α_body:
                        .type            n00065_var_ref_bx, @function
n00065_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00066_var_ref_α
                        .size            n00065_var_ref_bx, .-n00065_var_ref_bx
                        .type            n00066_var_ref_bx, @function
n00066_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # deckimage
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00067_var_ref_α
                        .size            n00066_var_ref_bx, .-n00066_var_ref_bx
                        .type            n00067_var_ref_bx, @function
n00067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00068_deref_α
                        .size            n00067_var_ref_bx, .-n00067_var_ref_bx
                        .type            n00068_deref_bx, @function
n00068_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_deref_α:           mov              r11, 148
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
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00069_deref_α
                        .size            n00068_deref_bx, .-n00068_deref_bx
                        .type            n00069_deref_bx, @function
n00069_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_deref_α:           mov              r11, 149
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
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00070_deref_α
                        .size            n00069_deref_bx, .-n00069_deref_bx
                        .type            n00070_deref_bx, @function
n00070_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_deref_α:           mov              r11, 150
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
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00071_call_icon_α
                        .size            n00070_deref_bx, .-n00070_deref_bx
                        .type            n00071_call_icon_bx, @function
n00071_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_call_icon_α:       mov              r11, 151
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
.Lcall_icon_α_rkfn374:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn374]
                        lea              rsi, [rbp + 160]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    arrange_ω
                                                                              jmp   n00072_lit_charset_α
n00071_call_icon_β:       mov              r11, 151;                            jmp   arrange_ω
                        .size            n00071_call_icon_bx, .-n00071_call_icon_bx
                        .type            n00072_lit_charset_bx, @function
n00072_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_lit_charset_α:     mov              r11, 152
                        mov              qword ptr [rbp + 320], 2             # result
                        mov              dword ptr [rbp + 324], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_375_0]
                        mov              qword ptr [rbp + 328], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_375_0]
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
                        pop              rax;                                 jmp   n00073_binop_α
.Llit_charset_α_375_0:  .quad            .Llit_charset_α_375_0_s
.Llit_charset_α_375_0_s:
                        .string          " "
                        .size            n00072_lit_charset_bx, .-n00072_lit_charset_bx
                        .type            n00073_binop_bx, @function
n00073_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_binop_α:           mov              r11, 153
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00074_var_ref_α
                        .size            n00073_binop_bx, .-n00073_binop_bx
                        .type            n00074_var_ref_bx, @function
n00074_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                      # denom
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00075_var_ref_α
                        .size            n00074_var_ref_bx, .-n00074_var_ref_bx
                        .type            n00075_var_ref_bx, @function
n00075_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # rank
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00076_deref_α
                        .size            n00075_var_ref_bx, .-n00075_var_ref_bx
                        .type            n00076_deref_bx, @function
n00076_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_deref_α:           mov              r11, 156
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
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00077_deref_α
                        .size            n00076_deref_bx, .-n00076_deref_bx
                        .type            n00077_deref_bx, @function
n00077_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_deref_α:           mov              r11, 157
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
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00078_call_icon_α
                        .size            n00077_deref_bx, .-n00077_deref_bx
                        .type            n00078_call_icon_bx, @function
n00078_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_call_icon_α:       mov              r11, 158
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
.Lcall_icon_α_rkfn384:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn384]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    arrange_ω
                                                                              jmp   n00079_return_α
n00078_call_icon_β:       mov              r11, 158;                            jmp   arrange_ω
                        .size            n00078_call_icon_bx, .-n00078_call_icon_bx
                        .type            n00079_return_bx, @function
n00079_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_return_α:          mov              r11, 159
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   arrange_γ
                        .size            n00079_return_bx, .-n00079_return_bx
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Larrange_α_385_248
                        .section         .rodata
.Licn_trace_nm386:      .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm386]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Larrange_α_385_248:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 496]
                        mov              rbp, qword ptr [rbp + 488];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
arrange_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Larrange_α_385_249
                        .section         .rodata
.Licn_trace_nm387:      .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm387]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Larrange_α_385_249:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 496]
                        mov              rbp, qword ptr [rbp + 488];          jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Larrange_α_388_3]
                        push             rcx
                        lea              rcx, [rip + .Larrange_α_388_2]
                        push             rcx;                                 jmp   FN__arrange
.Larrange_α_388_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Larrange_α_388_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3472
                        mov              qword ptr [rsp + 3464], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 3120
                        xor              eax, eax
                        mov              ecx, 144
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_388_247
                        .section         .rodata
.Licn_trace_nm389:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm389]
                        mov              esi, 2
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_388_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
options_α_body:
                        .type            n00080_var_ref_bx, @function
n00080_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx;         jmp   n00081_nulltest_var_α
                        .size            n00080_var_ref_bx, .-n00080_var_ref_bx
                        .type            n00081_nulltest_var_bx, @function
n00081_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_nulltest_var_α:    mov              r11, 161
                        mov              eax, dword ptr [rbp + 2992]
                        cmp              al, 104;                             je    n00082_call_icon_α
                        mov              rdi, qword ptr [rbp + 2992]
                        mov              rsi, qword ptr [rbp + 3000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00082_call_icon_α
                        cmp              eax, 0;                              jne   n00082_call_icon_α
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 3016], rax;         jmp   n00083_lit_charset_α
                        .size            n00081_nulltest_var_bx, .-n00081_nulltest_var_bx
                        .type            n00083_lit_charset_bx, @function
n00083_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_charset_α:     mov              r11, 162
                        mov              qword ptr [rbp + 3088], 2            # result
                        mov              dword ptr [rbp + 3092], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_517_0]
                        mov              qword ptr [rbp + 3096], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_517_0]
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
                        pop              rax;                                 jmp   n00084_call_icon_α
.Llit_charset_α_517_0:  .quad            .Llit_charset_α_517_0_s
.Llit_charset_α_517_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00083_lit_charset_bx, .-n00083_lit_charset_bx
                        .type            n00084_call_icon_bx, @function
n00084_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_call_icon_α:       mov              r11, 163
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lcall_icon_α_rkfn519:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn519]
                        lea              rsi, [rbp + 3056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              al, 104;                             je    n00082_call_icon_α
                                                                              jmp   n00085_assign_var_α
n00084_call_icon_β:       mov              r11, 163;                            jmp   n00082_call_icon_α
                        .size            n00084_call_icon_bx, .-n00084_call_icon_bx
                        .type            n00085_assign_var_bx, @function
n00085_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_assign_var_α:      mov              r11, 164
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        mov              rdx, qword ptr [rbp + 3040]
                        mov              rcx, qword ptr [rbp + 3048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00082_call_icon_α
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00082_call_icon_α
                        .size            n00085_assign_var_bx, .-n00085_assign_var_bx
                        .type            n00082_call_icon_bx, @function
n00082_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_icon_α:       mov              r11, 165
                        .section         .rodata
.Lcall_icon_α_rkfn522:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn522]
                        lea              rsi, [rbp + 2976]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              al, 104;                             je    n00086_make_list_α
                                                                              jmp   n00087_assign_α
n00082_call_icon_β:       mov              r11, 165;                            jmp   n00086_make_list_α
                        .size            n00082_call_icon_bx, .-n00082_call_icon_bx
                        .type            n00087_assign_bx, @function
n00087_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_assign_α:          mov              r11, 166
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx;         jmp   n00086_make_list_α
                        .size            n00087_assign_bx, .-n00087_assign_bx
                        .type            n00086_make_list_bx, @function
n00086_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_make_list_α:       mov              r11, 167
                        lea              rdi, [rbp + 2960]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n00088_assign_α
                        .size            n00086_make_list_bx, .-n00086_make_list_bx
                        .type            n00088_assign_bx, @function
n00088_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_assign_α:          mov              r11, 168
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx;         jmp   n00089_var_ref_α
                        .size            n00088_assign_bx, .-n00088_assign_bx
                        .type            n00089_var_ref_bx, @function
n00089_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00090_deref_α
                        .size            n00089_var_ref_bx, .-n00089_var_ref_bx
                        .type            n00090_deref_bx, @function
n00090_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_deref_α:           mov              r11, 170
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
                        cmp              al, 104;                             je    n00091_var_ref_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00092_call_icon_α
                        .size            n00090_deref_bx, .-n00090_deref_bx
                        .type            n00092_call_icon_bx, @function
n00092_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_call_icon_α:       mov              r11, 171
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn531:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn531]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n00091_var_ref_α
                                                                              jmp   n00093_assign_α
n00092_call_icon_β:       mov              r11, 171;                            jmp   n00091_var_ref_α
                        .size            n00092_call_icon_bx, .-n00092_call_icon_bx
                        .type            n00093_assign_bx, @function
n00093_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_assign_α:          mov              r11, 172
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx;         jmp   n00094_var_α
                        .size            n00093_assign_bx, .-n00093_assign_bx
                        .type            n00094_var_bx, @function
n00094_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_var_α:             mov              r11, 173
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00095_scan_enter_α
                        .size            n00094_var_bx, .-n00094_var_bx
                        .type            n00095_scan_enter_bx, @function
n00095_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_scan_enter_α:      mov              r11, 174
                        mov              qword ptr [rbp + 368], r13
                        mov              qword ptr [rbp + 376], r14
                        mov              qword ptr [rbp + 384], r15
                        mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00096_disjunction_α
                        .size            n00095_scan_enter_bx, .-n00095_scan_enter_bx
                        .type            n00096_disjunction_bx, @function
n00096_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_disjunction_α:     mov              r11, 175
                        mov              qword ptr [rbp + 432], 0
                        mov              qword ptr [rbp + 440], 0
                        mov              dword ptr [rbp + 448], 0;            jmp   n00097_lit_string_α
.Ldisjunction_γ_405_as: mov              r11, 175
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_538_0
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 440], rax;          jmp   n00098_scan_α
.Ldisjunction_α_538_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_538_1
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 440], rax;          jmp   n00098_scan_α
.Ldisjunction_α_538_1:                                                        jmp   n00098_scan_α
n00096_disjunction_β:     mov              r11, 175
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0;                              je    n00099_disjunction_β
                                                                              jmp   n00100_scan_α
.Ldisjunction_γ_405_af: mov              r11, 175
.Ldisjunction_ω_405_af: mov              r11, 175
                        add              dword ptr [rbp + 448], 1
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 1;                              je    n00101_var_ref_α
                                                                              jmp   n00100_scan_α
                        .size            n00096_disjunction_bx, .-n00096_disjunction_bx
                        .type            n00098_scan_bx, @function
n00098_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_scan_α:            mov              r11, 176
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 368]
                        mov              r14, qword ptr [rbp + 376]
                        mov              r15, qword ptr [rbp + 384];          jmp   n00089_var_ref_α
n00098_scan_β:            mov              r11, 176
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
                        mov              r14, rax;                            jmp   n00096_disjunction_β
                                                                              jmp   n00089_var_ref_α
                        .size            n00098_scan_bx, .-n00098_scan_bx
                        .type            n00102_conjunction_bx, @function
n00102_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_conjunction_α:     mov              r11, 177;                            jmp   .Ldisjunction_γ_405_as
n00102_conjunction_β:     mov              r11, 177;                            jmp   n00100_scan_α
                        .size            n00102_conjunction_bx, .-n00102_conjunction_bx
                        .type            n00101_var_ref_bx, @function
n00101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n00103_var_ref_α
n00101_var_ref_β:         mov              r11, 178;                            jmp   n00100_scan_α
                        .size            n00101_var_ref_bx, .-n00101_var_ref_bx
                        .type            n00103_var_ref_bx, @function
n00103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx;         jmp   n00104_deref_α
                        .size            n00103_var_ref_bx, .-n00103_var_ref_bx
                        .type            n00104_deref_bx, @function
n00104_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_deref_α:           mov              r11, 180
                        mov              rdi, qword ptr [rbp + 2864]
                        mov              rsi, qword ptr [rbp + 2872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00100_scan_α
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n00105_deref_α
                        .size            n00104_deref_bx, .-n00104_deref_bx
                        .type            n00105_deref_bx, @function
n00105_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_deref_α:           mov              r11, 181
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00100_scan_α
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx;         jmp   n00106_call_icon_α
                        .size            n00105_deref_bx, .-n00105_deref_bx
                        .type            n00106_call_icon_bx, @function
n00106_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_icon_α:       mov              r11, 182
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn549:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn549]
                        lea              rsi, [rbp + 2816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              al, 104;                             je    n00100_scan_α
                                                                              jmp   .Ldisjunction_γ_405_as
n00106_call_icon_β:       mov              r11, 182;                            jmp   n00100_scan_α
                        .size            n00106_call_icon_bx, .-n00106_call_icon_bx
                        .type            n00097_lit_string_bx, @function
n00097_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rbp + 2768], 2            # result
                        mov              dword ptr [rbp + 2772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_550_0]
                        mov              qword ptr [rbp + 2776], rax;         jmp   n00107_scan_match_α
n00097_lit_string_β:      mov              r11, 183;                            jmp   .Ldisjunction_ω_405_af
.Llit_string_α_550_0:   .quad            .Llit_string_α_550_0_s
.Llit_string_α_550_0_s: .string          "-"
                        .size            n00097_lit_string_bx, .-n00097_lit_string_bx
                        .type            n00107_scan_match_bx, @function
n00107_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_scan_match_α:      mov              r11, 184
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_405_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_552_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_405_af
                        mov              qword ptr [rbp + 2736], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2744], rax;         jmp   n00108_scan_tab_α
.Lscan_match_α_552_0:   .quad            .Lscan_match_α_552_0_s
.Lscan_match_α_552_0_s: .string          "-"
                        .size            n00107_scan_match_bx, .-n00107_scan_match_bx
                        .type            n00108_scan_tab_bx, @function
n00108_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_scan_tab_α:        mov              r11, 185
                        mov              rdi, qword ptr [rbp + 2736]
                        mov              rsi, qword ptr [rbp + 2744]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_554_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_554_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_405_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_405_af
                        mov              qword ptr [rbp + 2720], r14
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
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n00109_lit_integer_α
n00108_scan_tab_β:        mov              r11, 185
                        mov              r14, qword ptr [rbp + 2720];         jmp   .Ldisjunction_ω_405_af
                        .size            n00108_scan_tab_bx, .-n00108_scan_tab_bx
                        .type            n00109_lit_integer_bx, @function
n00109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_lit_integer_α:     mov              r11, 186
                        mov              qword ptr [rbp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_555_0]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n00110_scan_pos_α
.Llit_integer_α_555_0:  .quad            0
                        .size            n00109_lit_integer_bx, .-n00109_lit_integer_bx
                        .type            n00110_scan_pos_bx, @function
n00110_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_scan_pos_α:        mov              r11, 187
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_557_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_557_0:     cmp              rax, 1;                              jl    n00111_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00111_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00111_var_α
                        mov              qword ptr [rbp + 2672], 3
                        mov              qword ptr [rbp + 2680], rax;         jmp   n00108_scan_tab_β
                        .size            n00110_scan_pos_bx, .-n00110_scan_pos_bx
                        .type            n00111_var_bx, @function
n00111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_var_α:             mov              r11, 188
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2664], 0;           jmp   n00112_conjunction_α
n00111_var_β:             mov              r11, 188;                            jmp   n00108_scan_tab_β
                        .size            n00111_var_bx, .-n00111_var_bx
                        .type            n00112_conjunction_bx, @function
n00112_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_conjunction_α:     mov              r11, 189
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n00113_disjunction_α
n00112_conjunction_β:     mov              r11, 189;                            jmp   .Ldisjunction_ω_405_af
                        .size            n00112_conjunction_bx, .-n00112_conjunction_bx
                        .type            n00113_disjunction_bx, @function
n00113_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_disjunction_α:     mov              r11, 190
                        mov              qword ptr [rbp + 2432], 0
                        mov              qword ptr [rbp + 2440], 0
                        mov              dword ptr [rbp + 2448], 0;           jmp   n00114_lit_string_α
.Ldisjunction_γ_420_as: mov              r11, 190
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_561_0
                                                                              jmp   n00115_lit_integer_α
.Ldisjunction_α_561_0:                                                        jmp   n00115_lit_integer_α
n00113_disjunction_β:     mov              r11, 190
                        mov              eax, dword ptr [rbp + 2448];         jmp   n00115_lit_integer_α
.Ldisjunction_γ_420_af: mov              r11, 190
.Ldisjunction_ω_420_af: mov              r11, 190
                        add              dword ptr [rbp + 2448], 1
                        mov              eax, dword ptr [rbp + 2448];         jmp   n00115_lit_integer_α
                        .size            n00113_disjunction_bx, .-n00113_disjunction_bx
                        .type            n00115_lit_integer_bx, @function
n00115_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_lit_integer_α:     mov              r11, 191
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_562_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00116_scan_move_α
.Llit_integer_α_562_0:  .quad            1
                        .size            n00115_lit_integer_bx, .-n00115_lit_integer_bx
                        .type            n00116_scan_move_bx, @function
n00116_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_scan_move_α:       mov              r11, 192
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00100_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00100_scan_α
                        mov              qword ptr [rbp + 512], r14
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
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00117_assign_α
n00116_scan_move_β:       mov              r11, 192
                        mov              r14, qword ptr [rbp + 512];          jmp   n00100_scan_α
                        .size            n00116_scan_move_bx, .-n00116_scan_move_bx
                        .type            n00117_assign_bx, @function
n00117_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_α:          mov              r11, 193
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n00099_disjunction_α
                        .size            n00117_assign_bx, .-n00117_assign_bx
                        .type            n00099_disjunction_bx, @function
n00099_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_disjunction_α:     mov              r11, 194
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0;            jmp   n00118_var_ref_α
.Ldisjunction_γ_424_as: mov              r11, 194
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_567_0
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00115_lit_integer_α
.Ldisjunction_α_567_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_567_1
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00115_lit_integer_α
.Ldisjunction_α_567_1:                                                        jmp   n00115_lit_integer_α
n00099_disjunction_β:     mov              r11, 194
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              je    n00119_disjunction_β
                                                                              jmp   n00115_lit_integer_α
.Ldisjunction_γ_424_af: mov              r11, 194
.Ldisjunction_ω_424_af: mov              r11, 194
                        add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1;                              je    n00120_lit_string_α
                                                                              jmp   n00115_lit_integer_α
                        .size            n00099_disjunction_bx, .-n00099_disjunction_bx
                        .type            n00120_lit_string_bx, @function
n00120_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_568_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n00121_var_ref_α
n00120_lit_string_β:      mov              r11, 195;                            jmp   n00115_lit_integer_α
.Llit_string_α_568_0:   .quad            .Llit_string_α_568_0_s
.Llit_string_α_568_0_s: .string          "Unrecognized option: -"
                        .size            n00120_lit_string_bx, .-n00120_lit_string_bx
                        .type            n00121_var_ref_bx, @function
n00121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n00122_deref_α
                        .size            n00121_var_ref_bx, .-n00121_var_ref_bx
                        .type            n00122_deref_bx, @function
n00122_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_deref_α:           mov              r11, 197
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00115_lit_integer_α
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n00123_call_icon_α
                        .size            n00122_deref_bx, .-n00122_deref_bx
                        .type            n00123_call_icon_bx, @function
n00123_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_call_icon_α:       mov              r11, 198
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lcall_icon_α_rkfn573:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn573]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              al, 104;                             je    n00115_lit_integer_α
                                                                              jmp   .Ldisjunction_γ_424_as
n00123_call_icon_β:       mov              r11, 198;                            jmp   n00115_lit_integer_α
                        .size            n00123_call_icon_bx, .-n00123_call_icon_bx
                        .type            n00118_var_ref_bx, @function
n00118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n00124_var_ref_α
n00118_var_ref_β:         mov              r11, 199;                            jmp   .Ldisjunction_ω_424_af
                        .size            n00118_var_ref_bx, .-n00118_var_ref_bx
                        .type            n00124_var_ref_bx, @function
n00124_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n00125_deref_α
                        .size            n00124_var_ref_bx, .-n00124_var_ref_bx
                        .type            n00125_deref_bx, @function
n00125_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_deref_α:           mov              r11, 201
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n00126_deref_α
                        .size            n00125_deref_bx, .-n00125_deref_bx
                        .type            n00126_deref_bx, @function
n00126_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_deref_α:           mov              r11, 202
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n00127_call_builtin_gen_α
                        .size            n00126_deref_bx, .-n00126_deref_bx
                        .type            n00127_call_builtin_gen_bx, @function
n00127_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_call_builtin_gen_α:
                        mov              r11, 203
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2184], rax
                        mov              qword ptr [rbp + 2208], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_580_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn203: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn203]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 2
                        lea              rcx, [rbp + 2208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                                                                              jmp   n00128_lit_integer_α
n00127_call_builtin_gen_β:
                        mov              r11, 203;                            jmp   .Lcall_builtin_gen_α_580_60
                        .size            n00127_call_builtin_gen_bx, .-n00127_call_builtin_gen_bx
                        .type            n00128_lit_integer_bx, @function
n00128_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_lit_integer_α:     mov              r11, 204
                        mov              qword ptr [rbp + 2288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_581_0]
                        mov              qword ptr [rbp + 2296], rax;         jmp   n00129_coerce_numeric_α
.Llit_integer_α_581_0:  .quad            1
                        .size            n00128_lit_integer_bx, .-n00128_lit_integer_bx
                        .type            n00129_coerce_numeric_bx, @function
n00129_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_coerce_numeric_α:  mov              r11, 205
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_583_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_583_0
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_583_0
.Lcoerce_numeric_α_583_1:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n00130_binop_α
.Lcoerce_numeric_α_583_0:
                        lea              rdi, [rbp + 2160]
                        lea              rsi, [rbp + 2288]
                        lea              rdx, [rbp + 2144]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2144]
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                                                                              jmp   n00130_binop_α
                        .size            n00129_coerce_numeric_bx, .-n00129_coerce_numeric_bx
                        .type            n00130_binop_bx, @function
n00130_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_binop_α:           mov              r11, 206
                        mov              eax, dword ptr [rbp + 2144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_584_2
                        mov              rax, qword ptr [rbp + 2152]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_584_0
                        mov              qword ptr [rbp + 2128], 3
                        mov              qword ptr [rbp + 2136], rax;         jmp   .Lbinop_α_584_7
.Lbinop_α_584_2:        and              edx, 1;                              jz    .Lbinop_α_584_0
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_584_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_584_4
.Lbinop_α_584_3:        movq             xmm0, rsi
.Lbinop_α_584_4:        cmp              cl, 5;                               je    .Lbinop_α_584_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_584_6
.Lbinop_α_584_5:        movq             xmm1, rdi
.Lbinop_α_584_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_584_0
                        mov              qword ptr [rbp + 2128], 5
                        mov              qword ptr [rbp + 2136], rax
.Lbinop_α_584_7:                                                              jmp   n00131_assign_α
.Lbinop_α_584_0:        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n00131_assign_α
                        .size            n00130_binop_bx, .-n00130_binop_bx
                        .type            n00131_assign_bx, @function
n00131_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_assign_α:          mov              r11, 207
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n00132_var_ref_α
                        .size            n00131_assign_bx, .-n00131_assign_bx
                        .type            n00132_var_ref_bx, @function
n00132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00133_var_α
                        .size            n00132_var_ref_bx, .-n00132_var_ref_bx
                        .type            n00133_var_bx, @function
n00133_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_var_α:             mov              r11, 209
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00134_subscript_α
                        .size            n00133_var_bx, .-n00133_var_bx
                        .type            n00134_subscript_bx, @function
n00134_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_subscript_α:       mov              r11, 210
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00115_lit_integer_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00119_disjunction_α
                        .size            n00134_subscript_bx, .-n00134_subscript_bx
                        .type            n00119_disjunction_bx, @function
n00119_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_disjunction_α:     mov              r11, 211
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0;            jmp   n00135_lit_charset_α
.Ldisjunction_γ_441_as: mov              r11, 211
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_592_0
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00136_assign_var_α
.Ldisjunction_α_592_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_592_1
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00136_assign_var_α
.Ldisjunction_α_592_1:                                                        jmp   n00136_assign_var_α
n00119_disjunction_β:     mov              r11, 211
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              je    n00115_lit_integer_α
                                                                              jmp   n00115_lit_integer_α
.Ldisjunction_γ_441_af: mov              r11, 211
.Ldisjunction_ω_441_af: mov              r11, 211
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1;                              je    n00137_lit_integer_α
                                                                              jmp   n00115_lit_integer_α
                        .size            n00119_disjunction_bx, .-n00119_disjunction_bx
                        .type            n00136_assign_var_bx, @function
n00136_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_var_α:      mov              r11, 212
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00115_lit_integer_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   .Ldisjunction_γ_424_as
n00136_assign_var_β:      mov              r11, 212;                            jmp   n00115_lit_integer_α
                        .size            n00136_assign_var_bx, .-n00136_assign_var_bx
                        .type            n00137_lit_integer_bx, @function
n00137_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_lit_integer_α:     mov              r11, 213
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_594_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   .Ldisjunction_γ_441_as
n00137_lit_integer_β:     mov              r11, 213;                            jmp   n00115_lit_integer_α
.Llit_integer_α_594_0:  .quad            1
                        .size            n00137_lit_integer_bx, .-n00137_lit_integer_bx
                        .type            n00135_lit_charset_bx, @function
n00135_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_lit_charset_α:     mov              r11, 214
                        mov              qword ptr [rbp + 2000], 2            # result
                        mov              dword ptr [rbp + 2004], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_595_0]
                        mov              qword ptr [rbp + 2008], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_595_0]
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
                        pop              rax;                                 jmp   n00138_var_ref_α
n00135_lit_charset_β:     mov              r11, 214;                            jmp   .Ldisjunction_ω_441_af
.Llit_charset_α_595_0:  .quad            .Llit_charset_α_595_0_s
.Llit_charset_α_595_0_s:
                        .string          "+.:"
                        .size            n00135_lit_charset_bx, .-n00135_lit_charset_bx
                        .type            n00138_var_ref_bx, @function
n00138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n00139_var_α
                        .size            n00138_var_ref_bx, .-n00138_var_ref_bx
                        .type            n00139_var_bx, @function
n00139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_var_α:             mov              r11, 216
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n00140_subscript_α
                        .size            n00139_var_bx, .-n00139_var_bx
                        .type            n00140_subscript_bx, @function
n00140_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_subscript_α:       mov              r11, 217
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2064]
                        mov              rcx, qword ptr [rbp + 2072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_441_af
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n00141_deref_α
                        .size            n00140_subscript_bx, .-n00140_subscript_bx
                        .type            n00141_deref_bx, @function
n00141_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_deref_α:           mov              r11, 218
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_441_af
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n00142_assign_α
                        .size            n00141_deref_bx, .-n00141_deref_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              r11, 219
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n00143_call_icon_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00143_call_icon_bx, @function
n00143_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_call_icon_α:       mov              r11, 220
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
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
.Lcall_icon_α_bynamefn220: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn220]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
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
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    .Ldisjunction_ω_441_af
                                                                              jmp   n00144_disjunction_α
n00143_call_icon_β:       mov              r11, 220;                            jmp   .Ldisjunction_ω_441_af
                        .size            n00143_call_icon_bx, .-n00143_call_icon_bx
                        .type            n00144_disjunction_bx, @function
n00144_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_disjunction_α:     mov              r11, 221
                        mov              qword ptr [rbp + 1600], 0
                        mov              qword ptr [rbp + 1608], 0
                        mov              dword ptr [rbp + 1616], 0;           jmp   n00145_lit_string_α
.Ldisjunction_γ_451_as: mov              r11, 221
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_605_0
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00146_assign_α
.Ldisjunction_α_605_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_605_1
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00146_assign_α
.Ldisjunction_α_605_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_605_2
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00146_assign_α
.Ldisjunction_α_605_2:                                                        jmp   n00146_assign_α
n00144_disjunction_β:     mov              r11, 221
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0;                              je    n00147_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_451_af
                                                                              jmp   .Ldisjunction_ω_451_af
.Ldisjunction_γ_451_af: mov              r11, 221
.Ldisjunction_ω_451_af: mov              r11, 221
                        add              dword ptr [rbp + 1616], 1
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 1;                              je    n00148_var_ref_α
                        cmp              eax, 2;                              je    n00149_lit_string_α
                                                                              jmp   n00150_var_α
                        .size            n00144_disjunction_bx, .-n00144_disjunction_bx
                        .type            n00146_assign_bx, @function
n00146_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_assign_α:          mov              r11, 222
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx;         jmp   n00150_var_α
                        .size            n00146_assign_bx, .-n00146_assign_bx
                        .type            n00150_var_bx, @function
n00150_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_var_α:             mov              r11, 223
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00151_lit_string_α
                        .size            n00150_var_bx, .-n00150_var_bx
                        .type            n00151_lit_string_bx, @function
n00151_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_lit_string_α:      mov              r11, 224
                        mov              qword ptr [rbp + 1488], 2            # result
                        mov              dword ptr [rbp + 1492], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_609_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00152_call_builtin_α
.Llit_string_α_609_0:   .quad            .Llit_string_α_609_0_s
.Llit_string_α_609_0_s: .string          ":"
                        .size            n00151_lit_string_bx, .-n00151_lit_string_bx
                        .type            n00152_call_builtin_bx, @function
n00152_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_call_builtin_α:    mov              r11, 225
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn611: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn611]
                        lea              rsi, [rbp + 1552]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n00153_lit_string_α
                                                                              jmp   n00154_var_α
n00152_call_builtin_β:    mov              r11, 225;                            jmp   n00153_lit_string_α
                        .size            n00152_call_builtin_bx, .-n00152_call_builtin_bx
                        .type            n00154_var_bx, @function
n00154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:             mov              r11, 226
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n00155_assign_α
                        .size            n00154_var_bx, .-n00154_var_bx
                        .type            n00155_assign_bx, @function
n00155_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_assign_α:          mov              r11, 227
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n00156_var_α
                        .size            n00155_assign_bx, .-n00155_assign_bx
                        .type            n00153_lit_string_bx, @function
n00153_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n00157_call_builtin_α
.Llit_string_α_615_0:   .quad            .Llit_string_α_615_0_s
.Llit_string_α_615_0_s: .string          "+"
                        .size            n00153_lit_string_bx, .-n00153_lit_string_bx
                        .type            n00157_call_builtin_bx, @function
n00157_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_call_builtin_α:    mov              r11, 229
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn617: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn617]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              al, 104;                             je    n00158_lit_string_α
                                                                              jmp   n00159_disjunction_α
n00157_call_builtin_β:    mov              r11, 229;                            jmp   n00158_lit_string_α
                        .size            n00157_call_builtin_bx, .-n00157_call_builtin_bx
                        .type            n00159_disjunction_bx, @function
n00159_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_disjunction_α:     mov              r11, 230
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0;           jmp   n00160_var_ref_α
.Ldisjunction_γ_460_as: mov              r11, 230
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_619_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00161_assign_α
.Ldisjunction_α_619_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_619_1
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00161_assign_α
.Ldisjunction_α_619_1:                                                        jmp   n00161_assign_α
n00159_disjunction_β:     mov              r11, 230
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_460_af
                                                                              jmp   .Ldisjunction_ω_460_af
.Ldisjunction_γ_460_af: mov              r11, 230
.Ldisjunction_ω_460_af: mov              r11, 230
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 1;                              je    n00162_lit_string_α
                                                                              jmp   n00115_lit_integer_α
                        .size            n00159_disjunction_bx, .-n00159_disjunction_bx
                        .type            n00161_assign_bx, @function
n00161_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_assign_α:          mov              r11, 231
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n00156_var_α
                        .size            n00161_assign_bx, .-n00161_assign_bx
                        .type            n00162_lit_string_bx, @function
n00162_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_lit_string_α:      mov              r11, 232
                        mov              qword ptr [rbp + 1328], 2            # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_621_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n00163_var_ref_α
n00162_lit_string_β:      mov              r11, 232;                            jmp   .Ldisjunction_ω_460_af
.Llit_string_α_621_0:   .quad            .Llit_string_α_621_0_s
.Llit_string_α_621_0_s: .string          "-"
                        .size            n00162_lit_string_bx, .-n00162_lit_string_bx
                        .type            n00163_var_ref_bx, @function
n00163_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n00164_lit_string_α
                        .size            n00163_var_ref_bx, .-n00163_var_ref_bx
                        .type            n00164_lit_string_bx, @function
n00164_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_624_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00165_deref_α
.Llit_string_α_624_0:   .quad            .Llit_string_α_624_0_s
.Llit_string_α_624_0_s: .string          " needs numeric parameter"
                        .size            n00164_lit_string_bx, .-n00164_lit_string_bx
                        .type            n00165_deref_bx, @function
n00165_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_deref_α:           mov              r11, 235
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_460_af
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00166_call_icon_α
                        .size            n00165_deref_bx, .-n00165_deref_bx
                        .type            n00166_call_icon_bx, @function
n00166_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_call_icon_α:       mov              r11, 236
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lcall_icon_α_rkfn627:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn627]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_460_af
                                                                              jmp   .Ldisjunction_γ_460_as
n00166_call_icon_β:       mov              r11, 236;                            jmp   .Ldisjunction_ω_460_af
                        .size            n00166_call_icon_bx, .-n00166_call_icon_bx
                        .type            n00160_var_ref_bx, @function
n00160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n00167_deref_α
n00160_var_ref_β:         mov              r11, 237;                            jmp   .Ldisjunction_ω_460_af
                        .size            n00160_var_ref_bx, .-n00160_var_ref_bx
                        .type            n00167_deref_bx, @function
n00167_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_deref_α:           mov              r11, 238
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_460_af
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n00168_call_icon_α
                        .size            n00167_deref_bx, .-n00167_deref_bx
                        .type            n00168_call_icon_bx, @function
n00168_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_call_icon_α:       mov              r11, 239
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lcall_icon_α_rkfn632:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn632]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_460_af
                                                                              jmp   .Ldisjunction_γ_460_as
n00168_call_icon_β:       mov              r11, 239;                            jmp   .Ldisjunction_ω_460_af
                        .size            n00168_call_icon_bx, .-n00168_call_icon_bx
                        .type            n00158_lit_string_bx, @function
n00158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rbp + 720], 2             # result
                        mov              dword ptr [rbp + 724], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_633_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00169_call_builtin_α
.Llit_string_α_633_0:   .quad            .Llit_string_α_633_0_s
.Llit_string_α_633_0_s: .string          "."
                        .size            n00158_lit_string_bx, .-n00158_lit_string_bx
                        .type            n00169_call_builtin_bx, @function
n00169_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_call_builtin_α:    mov              r11, 241
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1064], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn635: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn635]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              al, 104;                             je    n00115_lit_integer_α
                                                                              jmp   n00170_disjunction_α
n00169_call_builtin_β:    mov              r11, 241;                            jmp   n00115_lit_integer_α
                        .size            n00169_call_builtin_bx, .-n00169_call_builtin_bx
                        .type            n00170_disjunction_bx, @function
n00170_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_disjunction_α:     mov              r11, 242
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0;            jmp   n00171_var_ref_α
.Ldisjunction_γ_472_as: mov              r11, 242
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_637_0
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00172_assign_α
.Ldisjunction_α_637_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_637_1
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00172_assign_α
.Ldisjunction_α_637_1:                                                        jmp   n00172_assign_α
n00170_disjunction_β:     mov              r11, 242
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_472_af
                                                                              jmp   .Ldisjunction_ω_472_af
.Ldisjunction_γ_472_af: mov              r11, 242
.Ldisjunction_ω_472_af: mov              r11, 242
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 1;                              je    n00173_lit_string_α
                                                                              jmp   n00115_lit_integer_α
                        .size            n00170_disjunction_bx, .-n00170_disjunction_bx
                        .type            n00172_assign_bx, @function
n00172_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_assign_α:          mov              r11, 243
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n00156_var_α
                        .size            n00172_assign_bx, .-n00172_assign_bx
                        .type            n00156_var_bx, @function
n00156_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_var_α:             mov              r11, 244
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00174_conjunction_α
                        .size            n00156_var_bx, .-n00156_var_bx
                        .type            n00174_conjunction_bx, @function
n00174_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_conjunction_α:     mov              r11, 245
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 680], rax;          jmp   .Ldisjunction_γ_441_as
n00174_conjunction_β:     mov              r11, 245;                            jmp   n00115_lit_integer_α
                        .size            n00174_conjunction_bx, .-n00174_conjunction_bx
                        .type            n00173_lit_string_bx, @function
n00173_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_642_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00175_var_ref_α
n00173_lit_string_β:      mov              r11, 246;                            jmp   .Ldisjunction_ω_472_af
.Llit_string_α_642_0:   .quad            .Llit_string_α_642_0_s
.Llit_string_α_642_0_s: .string          "-"
                        .size            n00173_lit_string_bx, .-n00173_lit_string_bx
                        .type            n00175_var_ref_bx, @function
n00175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n00176_lit_string_α
                        .size            n00175_var_ref_bx, .-n00175_var_ref_bx
                        .type            n00176_lit_string_bx, @function
n00176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_645_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00177_deref_α
.Llit_string_α_645_0:   .quad            .Llit_string_α_645_0_s
.Llit_string_α_645_0_s: .string          " needs numeric parameter"
                        .size            n00176_lit_string_bx, .-n00176_lit_string_bx
                        .type            n00177_deref_bx, @function
n00177_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_deref_α:           mov              r11, 249
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n00178_call_icon_α
                        .size            n00177_deref_bx, .-n00177_deref_bx
                        .type            n00178_call_icon_bx, @function
n00178_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_call_icon_α:       mov              r11, 250
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lcall_icon_α_rkfn648:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn648]
                        lea              rsi, [rbp + 880]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                                                                              jmp   .Ldisjunction_γ_472_as
n00178_call_icon_β:       mov              r11, 250;                            jmp   .Ldisjunction_ω_472_af
                        .size            n00178_call_icon_bx, .-n00178_call_icon_bx
                        .type            n00171_var_ref_bx, @function
n00171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n00179_deref_α
n00171_var_ref_β:         mov              r11, 251;                            jmp   .Ldisjunction_ω_472_af
                        .size            n00171_var_ref_bx, .-n00171_var_ref_bx
                        .type            n00179_deref_bx, @function
n00179_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_deref_α:           mov              r11, 252
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00180_call_icon_α
                        .size            n00179_deref_bx, .-n00179_deref_bx
                        .type            n00180_call_icon_bx, @function
n00180_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_call_icon_α:       mov              r11, 253
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_icon_α_rkfn653:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn653]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262297
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                                                                              jmp   .Ldisjunction_γ_472_as
n00180_call_icon_β:       mov              r11, 253;                            jmp   .Ldisjunction_ω_472_af
                        .size            n00180_call_icon_bx, .-n00180_call_icon_bx
                        .type            n00149_lit_string_bx, @function
n00149_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_lit_string_α:      mov              r11, 254
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_654_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n00181_var_ref_α
n00149_lit_string_β:      mov              r11, 254;                            jmp   .Ldisjunction_ω_451_af
.Llit_string_α_654_0:   .quad            .Llit_string_α_654_0_s
.Llit_string_α_654_0_s: .string          "No parameter following -"
                        .size            n00149_lit_string_bx, .-n00149_lit_string_bx
                        .type            n00181_var_ref_bx, @function
n00181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n00182_deref_α
                        .size            n00181_var_ref_bx, .-n00181_var_ref_bx
                        .type            n00182_deref_bx, @function
n00182_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_deref_α:           mov              r11, 256
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_451_af
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n00183_call_icon_α
                        .size            n00182_deref_bx, .-n00182_deref_bx
                        .type            n00183_call_icon_bx, @function
n00183_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_call_icon_α:       mov              r11, 257
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lcall_icon_α_rkfn659:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn659]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_451_af
                                                                              jmp   .Ldisjunction_γ_451_as
n00183_call_icon_β:       mov              r11, 257;                            jmp   .Ldisjunction_ω_451_af
                        .size            n00183_call_icon_bx, .-n00183_call_icon_bx
                        .type            n00148_var_ref_bx, @function
n00148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n00184_deref_α
n00148_var_ref_β:         mov              r11, 258;                            jmp   .Ldisjunction_ω_451_af
                        .size            n00148_var_ref_bx, .-n00148_var_ref_bx
                        .type            n00184_deref_bx, @function
n00184_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_deref_α:           mov              r11, 259
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_451_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n00185_call_icon_α
                        .size            n00184_deref_bx, .-n00184_deref_bx
                        .type            n00185_call_icon_bx, @function
n00185_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_call_icon_α:       mov              r11, 260
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lcall_icon_α_rkfn664:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn664]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_451_af
                                                                              jmp   .Ldisjunction_γ_451_as
n00185_call_icon_β:       mov              r11, 260;                            jmp   .Ldisjunction_ω_451_af
                        .size            n00185_call_icon_bx, .-n00185_call_icon_bx
                        .type            n00145_lit_string_bx, @function
n00145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_665_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n00186_lit_integer_α
n00145_lit_string_β:      mov              r11, 261;                            jmp   .Ldisjunction_ω_451_af
.Llit_string_α_665_0:   .quad            .Llit_string_α_665_0_s
.Llit_string_α_665_0_s: .string          ""
                        .size            n00145_lit_string_bx, .-n00145_lit_string_bx
                        .type            n00186_lit_integer_bx, @function
n00186_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_lit_integer_α:     mov              r11, 262
                        mov              qword ptr [rbp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_666_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n00147_scan_tab_α
.Llit_integer_α_666_0:  .quad            0
                        .size            n00186_lit_integer_bx, .-n00186_lit_integer_bx
                        .type            n00147_scan_tab_bx, @function
n00147_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_scan_tab_α:        mov              r11, 263
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_668_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_668_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_451_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_451_af
                        mov              qword ptr [rbp + 1696], r14
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
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n00187_binop_test_α
n00147_scan_tab_β:        mov              r11, 263
                        mov              r14, qword ptr [rbp + 1696];         jmp   .Ldisjunction_ω_451_af
                        .size            n00147_scan_tab_bx, .-n00147_scan_tab_bx
                        .type            n00187_binop_test_bx, @function
n00187_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_binop_test_α:      mov              r11, 264
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00147_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_451_as
n00187_binop_test_β:      mov              r11, 264;                            jmp   n00147_scan_tab_β
                        .size            n00187_binop_test_bx, .-n00187_binop_test_bx
                        .type            n00100_scan_bx, @function
n00100_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_scan_α:            mov              r11, 265
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 368]
                        mov              r14, qword ptr [rbp + 376]
                        mov              r15, qword ptr [rbp + 384];          jmp   n00089_var_ref_α
n00100_scan_β:            mov              r11, 265;                            jmp   n00089_var_ref_α
                        .size            n00100_scan_bx, .-n00100_scan_bx
                        .type            n00114_lit_string_bx, @function
n00114_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_lit_string_α:      mov              r11, 266
                        mov              qword ptr [rbp + 2608], 2            # result
                        mov              dword ptr [rbp + 2612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_672_0]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n00188_scan_match_α
n00114_lit_string_β:      mov              r11, 266;                            jmp   .Ldisjunction_ω_420_af
.Llit_string_α_672_0:   .quad            .Llit_string_α_672_0_s
.Llit_string_α_672_0_s: .string          "-"
                        .size            n00114_lit_string_bx, .-n00114_lit_string_bx
                        .type            n00188_scan_match_bx, @function
n00188_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_scan_match_α:      mov              r11, 267
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_420_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_674_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_420_af
                        mov              qword ptr [rbp + 2576], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2584], rax;         jmp   n00189_scan_tab_α
.Lscan_match_α_674_0:   .quad            .Lscan_match_α_674_0_s
.Lscan_match_α_674_0_s: .string          "-"
                        .size            n00188_scan_match_bx, .-n00188_scan_match_bx
                        .type            n00189_scan_tab_bx, @function
n00189_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_scan_tab_α:        mov              r11, 268
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_676_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_676_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_420_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_420_af
                        mov              qword ptr [rbp + 2560], r14
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
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n00190_lit_integer_α
n00189_scan_tab_β:        mov              r11, 268
                        mov              r14, qword ptr [rbp + 2560];         jmp   .Ldisjunction_ω_420_af
                        .size            n00189_scan_tab_bx, .-n00189_scan_tab_bx
                        .type            n00190_lit_integer_bx, @function
n00190_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_lit_integer_α:     mov              r11, 269
                        mov              qword ptr [rbp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_677_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n00191_scan_pos_α
.Llit_integer_α_677_0:  .quad            0
                        .size            n00190_lit_integer_bx, .-n00190_lit_integer_bx
                        .type            n00191_scan_pos_bx, @function
n00191_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_scan_pos_α:        mov              r11, 270
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_679_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_679_0:     cmp              rax, 1;                              jl    n00189_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00189_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00189_scan_tab_β
                        mov              qword ptr [rbp + 2512], 3
                        mov              qword ptr [rbp + 2520], rax;         jmp   n00192_conjunction_α
                        .size            n00191_scan_pos_bx, .-n00191_scan_pos_bx
                        .type            n00192_conjunction_bx, @function
n00192_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_conjunction_α:     mov              r11, 271
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2504], rax;         jmp   n00193_scan_α
n00192_conjunction_β:     mov              r11, 271;                            jmp   .Ldisjunction_ω_420_af
                        .size            n00192_conjunction_bx, .-n00192_conjunction_bx
                        .type            n00193_scan_bx, @function
n00193_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_scan_α:            mov              r11, 272
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 368]
                        mov              r14, qword ptr [rbp + 376]
                        mov              r15, qword ptr [rbp + 384];          jmp   n00194_var_α
n00193_scan_β:            mov              r11, 272;                            jmp   n00194_var_α
                        .size            n00193_scan_bx, .-n00193_scan_bx
                        .type            n00194_var_bx, @function
n00194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_var_α:             mov              r11, 273
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0;           jmp   n00195_assign_α
n00194_var_β:             mov              r11, 273;                            jmp   n00196_var_α
                        .size            n00194_var_bx, .-n00194_var_bx
                        .type            n00195_assign_bx, @function
n00195_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_assign_α:          mov              r11, 274
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx;         jmp   n00196_var_α
                        .size            n00195_assign_bx, .-n00195_assign_bx
                        .type            n00196_var_bx, @function
n00196_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_α:             mov              r11, 275
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00091_var_ref_α
                        .size            n00196_var_bx, .-n00196_var_bx
                        .type            n00091_var_ref_bx, @function
n00091_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00197_var_ref_α
                        .size            n00091_var_ref_bx, .-n00091_var_ref_bx
                        .type            n00197_var_ref_bx, @function
n00197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00198_deref_α
                        .size            n00197_var_ref_bx, .-n00197_var_ref_bx
                        .type            n00198_deref_bx, @function
n00198_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_deref_α:           mov              r11, 278
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00199_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00200_call_icon_α
                        .size            n00198_deref_bx, .-n00198_deref_bx
                        .type            n00200_call_icon_bx, @function
n00200_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_call_icon_α:       mov              r11, 279
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn693:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn693]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n00199_var_α
                                                                              jmp   n00201_deref_α
n00200_call_icon_β:       mov              r11, 279;                            jmp   n00199_var_α
                        .size            n00200_call_icon_bx, .-n00200_call_icon_bx
                        .type            n00201_deref_bx, @function
n00201_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_deref_α:           mov              r11, 280
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00199_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00202_call_icon_α
                        .size            n00201_deref_bx, .-n00201_deref_bx
                        .type            n00202_call_icon_bx, @function
n00202_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_call_icon_α:       mov              r11, 281
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn696:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn696]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n00199_var_α
                                                                              jmp   n00091_var_ref_α
n00202_call_icon_β:       mov              r11, 281;                            jmp   n00199_var_α
                        .size            n00202_call_icon_bx, .-n00202_call_icon_bx
                        .type            n00199_var_bx, @function
n00199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:             mov              r11, 282
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00203_return_α
                        .size            n00199_var_bx, .-n00199_var_bx
                        .type            n00203_return_bx, @function
n00203_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_return_α:          mov              r11, 283
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00203_return_bx, .-n00203_return_bx
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_699_248
                        .section         .rodata
.Licn_trace_nm700:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm700]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_699_248:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 3472]
                        mov              rbp, qword ptr [rbp + 3464];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_699_249
                        .section         .rodata
.Licn_trace_nm701:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm701]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_699_249:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 3472]
                        mov              rbp, qword ptr [rbp + 3464];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_702_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_702_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_702_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_702_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Init__:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 432
                        xor              eax, eax
                        mov              ecx, 32
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LInit___α_702_247
                        .section         .rodata
.Licn_trace_nm703:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm703]
                        mov              esi, 1
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_702_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Init___α_body:
                        .type            n00204_var_bx, @function
n00204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_α:             mov              r11, 284
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00205_assign_α
                        .size            n00204_var_bx, .-n00204_var_bx
                        .type            n00205_assign_bx, @function
n00205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_assign_α:          mov              r11, 285
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [r9 + 144], rax            # Name__
                        mov              qword ptr [r9 + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_726_0]
                        .section         .rodata
.Lassign_α_726_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_726_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00206_call_proc_staged_α
.Lassign_α_726_0:       .quad            .Lassign_α_726_0_s
.Lassign_α_726_0_s:     .string          "Name__"
                        .size            n00205_assign_bx, .-n00205_assign_bx
                        .type            n00206_call_proc_staged_bx, @function
n00206_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_call_proc_staged_α:
                        mov              r11, 286
                        call             Signature___dcα;                     jmp   .Lcall_proc_staged_α_728_2
.Lcall_proc_staged_α_728_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_728_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
.Lcall_proc_staged_α_728_29:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n00207_call_proc_staged_α
                                                                              jmp   n00207_call_proc_staged_α
n00206_call_proc_staged_β:
                        mov              r11, 286;                            jmp   n00207_call_proc_staged_α
.Lcall_proc_staged_β_728_0:
                        .quad            .Lcall_proc_staged_β_728_0_s
.Lcall_proc_staged_β_728_0_s:
                        .string          "Signature__"
                        .size            n00206_call_proc_staged_bx, .-n00206_call_proc_staged_bx
                        .type            n00207_call_proc_staged_bx, @function
n00207_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_call_proc_staged_α:
                        mov              r11, 287
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_730_2
.Lcall_proc_staged_α_730_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_730_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
.Lcall_proc_staged_α_730_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n00208_call_proc_staged_α
                                                                              jmp   n00208_call_proc_staged_α
n00207_call_proc_staged_β:
                        mov              r11, 287;                            jmp   n00208_call_proc_staged_α
.Lcall_proc_staged_β_730_0:
                        .quad            .Lcall_proc_staged_β_730_0_s
.Lcall_proc_staged_β_730_0_s:
                        .string          "Regions__"
                        .size            n00207_call_proc_staged_bx, .-n00207_call_proc_staged_bx
                        .type            n00208_call_proc_staged_bx, @function
n00208_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_call_proc_staged_α:
                        mov              r11, 288
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_732_2
.Lcall_proc_staged_α_732_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_732_29
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
.Lcall_proc_staged_α_732_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n00209_disjunction_α
                                                                              jmp   n00209_disjunction_α
n00208_call_proc_staged_β:
                        mov              r11, 288;                            jmp   n00209_disjunction_α
.Lcall_proc_staged_β_732_0:
                        .quad            .Lcall_proc_staged_β_732_0_s
.Lcall_proc_staged_β_732_0_s:
                        .string          "Time__"
                        .size            n00208_call_proc_staged_bx, .-n00208_call_proc_staged_bx
                        .type            n00209_disjunction_bx, @function
n00209_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_disjunction_α:     mov              r11, 289
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0;            jmp   n00210_lit_string_α
.Ldisjunction_γ_709_as: mov              r11, 289
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_734_0
                                                                              jmp   n00211_var_α
.Ldisjunction_α_734_0:                                                        jmp   n00211_var_α
n00209_disjunction_β:     mov              r11, 289
                        mov              eax, dword ptr [rbp + 128];          jmp   n00211_var_α
.Ldisjunction_γ_709_af: mov              r11, 289
.Ldisjunction_ω_709_af: mov              r11, 289
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128];          jmp   n00211_var_α
                        .size            n00209_disjunction_bx, .-n00209_disjunction_bx
                        .type            n00211_var_bx, @function
n00211_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_var_α:             mov              r11, 290
                        mov              rdi, qword ptr [rip + .Lvar_α_735_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00212_var_α
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00213_assign_α
.Lvar_α_735_0:          .quad            .Lvar_α_735_0_s
.Lvar_α_735_0_s:        .string          "write"
                        .size            n00211_var_bx, .-n00211_var_bx
                        .type            n00213_assign_bx, @function
n00213_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_assign_α:          mov              r11, 291
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [r9 + 112], rax            # Save__
                        mov              qword ptr [r9 + 120], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_736_0]
                        .section         .rodata
.Lassign_α_736_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_736_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00212_var_α
.Lassign_α_736_0:       .quad            .Lassign_α_736_0_s
.Lassign_α_736_0_s:     .string          "Save__"
                        .size            n00213_assign_bx, .-n00213_assign_bx
                        .type            n00212_var_bx, @function
n00212_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_var_α:             mov              r11, 292
                        mov              rdi, qword ptr [rip + .Lvar_α_737_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00214_lit_integer_α
                        mov              qword ptr [rbp + 80], rax            # result
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00215_assign_α
.Lvar_α_737_0:          .quad            .Lvar_α_737_0_s
.Lvar_α_737_0_s:        .string          "writes"
                        .size            n00212_var_bx, .-n00212_var_bx
                        .type            n00215_assign_bx, @function
n00215_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_assign_α:          mov              r11, 293
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [r9 + 128], rax            # Saves__
                        mov              qword ptr [r9 + 136], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_738_0]
                        .section         .rodata
.Lassign_α_738_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_738_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00214_lit_integer_α
.Lassign_α_738_0:       .quad            .Lassign_α_738_0_s
.Lassign_α_738_0_s:     .string          "Saves__"
                        .size            n00215_assign_bx, .-n00215_assign_bx
                        .type            n00214_lit_integer_bx, @function
n00214_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_lit_integer_α:     mov              r11, 294
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_739_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00216_assign_α
.Llit_integer_α_739_0:  .quad            1
                        .size            n00214_lit_integer_bx, .-n00214_lit_integer_bx
                        .type            n00216_assign_bx, @function
n00216_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_assign_α:          mov              r11, 295
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_740_0]
                        .section         .rodata
.Lassign_α_740_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_740_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_740_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00217_assign_α
.Lassign_α_740_0:       .quad            .Lassign_α_740_0_s
.Lassign_α_740_0_s:     .string          "writes"
                        .size            n00216_assign_bx, .-n00216_assign_bx
                        .type            n00217_assign_bx, @function
n00217_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_assign_α:          mov              r11, 296
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_741_0]
                        .section         .rodata
.Lassign_α_741_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_741_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_741_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00218_return_α
.Lassign_α_741_0:       .quad            .Lassign_α_741_0_s
.Lassign_α_741_0_s:     .string          "write"
                        .size            n00217_assign_bx, .-n00217_assign_bx
                        .type            n00218_return_bx, @function
n00218_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_return_α:          mov              r11, 297
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Init___γ
                        .size            n00218_return_bx, .-n00218_return_bx
                        .type            n00219_conjunction_bx, @function
n00219_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_conjunction_α:     mov              r11, 298;                            jmp   .Ldisjunction_γ_709_as
n00219_conjunction_β:     mov              r11, 298;                            jmp   n00211_var_α
                        .size            n00219_conjunction_bx, .-n00219_conjunction_bx
                        .type            n00210_lit_string_bx, @function
n00210_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_lit_string_α:      mov              r11, 299
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_744_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00220_call_icon_α
n00210_lit_string_β:      mov              r11, 299;                            jmp   .Ldisjunction_ω_709_af
.Llit_string_α_744_0:   .quad            .Llit_string_α_744_0_s
.Llit_string_α_744_0_s: .string          "OUTPUT"
                        .size            n00210_lit_string_bx, .-n00210_lit_string_bx
                        .type            n00220_call_icon_bx, @function
n00220_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_call_icon_α:       mov              r11, 300
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn746:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn746]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393337
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_709_af
                                                                              jmp   n00221_lit_string_α
n00220_call_icon_β:       mov              r11, 300;                            jmp   .Ldisjunction_ω_709_af
                        .size            n00220_call_icon_bx, .-n00220_call_icon_bx
                        .type            n00221_lit_string_bx, @function
n00221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_string_α:      mov              r11, 301
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_747_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00222_call_icon_α
.Llit_string_α_747_0:   .quad            .Llit_string_α_747_0_s
.Llit_string_α_747_0_s: .string          "*** Benchmarking with output ***"
                        .size            n00221_lit_string_bx, .-n00221_lit_string_bx
                        .type            n00222_call_icon_bx, @function
n00222_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_icon_α:       mov              r11, 302
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn749:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn749]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00223_return_α
                                                                              jmp   n00223_return_α
n00222_call_icon_β:       mov              r11, 302;                            jmp   n00223_return_α
                        .size            n00222_call_icon_bx, .-n00222_call_icon_bx
                        .type            n00223_return_bx, @function
n00223_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_return_α:          mov              r11, 303
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Init___γ
                        .size            n00223_return_bx, .-n00223_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Init___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Init___β:
                                                                              jmp   Init___ω
#-----------------------------------------------------------------------------------------------------------------------
Init___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LInit___α_750_248
                        .section         .rodata
.Licn_trace_nm751:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm751]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_750_248:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        mov              rbp, qword ptr [rbp + 520];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LInit___α_750_249
                        .section         .rodata
.Licn_trace_nm752:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_750_249:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        mov              rbp, qword ptr [rbp + 520];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Init___dcα:
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
                        lea              rcx, [rip + .LInit___α_753_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_753_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_753_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_753_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 576
                        mov              qword ptr [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 496
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_753_247
                        .section         .rodata
.Licn_trace_nm754:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm754]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_753_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Term___α_body:
                        .type            n00224_disjunction_bx, @function
n00224_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_disjunction_α:     mov              r11, 304
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0;            jmp   n00225_lit_string_α
.Ldisjunction_γ_755_as: mov              r11, 304
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_774_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00226_var_ref_α
.Ldisjunction_α_774_0:                                                        jmp   n00226_var_ref_α
n00224_disjunction_β:     mov              r11, 304
                        mov              eax, dword ptr [rbp + 304];          jmp   n00226_var_ref_α
.Ldisjunction_γ_755_af: mov              r11, 304
.Ldisjunction_ω_755_af: mov              r11, 304
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304];          jmp   n00226_var_ref_α
                        .size            n00224_disjunction_bx, .-n00224_disjunction_bx
                        .type            n00225_lit_string_bx, @function
n00225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_lit_string_α:      mov              r11, 305
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_775_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00227_call_icon_α
n00225_lit_string_β:      mov              r11, 305;                            jmp   n00228_var_α
.Llit_string_α_775_0:   .quad            .Llit_string_α_775_0_s
.Llit_string_α_775_0_s: .string          "OUTPUT"
                        .size            n00225_lit_string_bx, .-n00225_lit_string_bx
                        .type            n00227_call_icon_bx, @function
n00227_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_call_icon_α:       mov              r11, 306
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lcall_icon_α_rkfn777:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn777]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393337
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n00228_var_α
                                                                              jmp   .Ldisjunction_γ_755_af
n00227_call_icon_β:       mov              r11, 306;                            jmp   n00228_var_α
                        .size            n00227_call_icon_bx, .-n00227_call_icon_bx
                        .type            n00228_var_bx, @function
n00228_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_var_α:             mov              r11, 307
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0;            jmp   n00229_var_α
n00228_var_β:             mov              r11, 307;                            jmp   .Ldisjunction_ω_755_af
                        .size            n00228_var_bx, .-n00228_var_bx
                        .type            n00229_var_bx, @function
n00229_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_var_α:             mov              r11, 308
                        mov              rax, qword ptr [r9 + 112]            # Save__
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 384], rax           # result
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00230_assign_α
                        .size            n00229_var_bx, .-n00229_var_bx
                        .type            n00230_assign_bx, @function
n00230_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_assign_α:          mov              r11, 309
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_780_0]
                        .section         .rodata
.Lassign_α_780_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_780_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_780_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00231_var_α
.Lassign_α_780_0:       .quad            .Lassign_α_780_0_s
.Lassign_α_780_0_s:     .string          "write"
                        .size            n00230_assign_bx, .-n00230_assign_bx
                        .type            n00231_var_bx, @function
n00231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_α:             mov              r11, 310
                        mov              rax, qword ptr [r9 + 128]            # Saves__
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 352], rax           # result
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00232_assign_α
                        .size            n00231_var_bx, .-n00231_var_bx
                        .type            n00232_assign_bx, @function
n00232_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_assign_α:          mov              r11, 311
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_782_0]
                        .section         .rodata
.Lassign_α_782_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_782_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_782_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00233_conjunction_α
.Lassign_α_782_0:       .quad            .Lassign_α_782_0_s
.Lassign_α_782_0_s:     .string          "writes"
                        .size            n00232_assign_bx, .-n00232_assign_bx
                        .type            n00233_conjunction_bx, @function
n00233_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_conjunction_α:     mov              r11, 312
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax;          jmp   .Ldisjunction_γ_755_as
n00233_conjunction_β:     mov              r11, 312;                            jmp   n00226_var_ref_α
                        .size            n00233_conjunction_bx, .-n00233_conjunction_bx
                        .type            n00226_var_ref_bx, @function
n00226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_var_ref_α:         mov              r11, 313
                        mov              rax, 4294967336
                        mov              rdx, 1879052432                      # Name__
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00234_lit_string_α
                        .size            n00226_var_ref_bx, .-n00226_var_ref_bx
                        .type            n00234_lit_string_bx, @function
n00234_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_lit_string_α:      mov              r11, 314
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_786_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00235_call_proc_staged_α
.Llit_string_α_786_0:   .quad            .Llit_string_α_786_0_s
.Llit_string_α_786_0_s: .string          " elapsed time = "
                        .size            n00234_lit_string_bx, .-n00234_lit_string_bx
                        .type            n00235_call_proc_staged_bx, @function
n00235_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_call_proc_staged_α:
                        mov              r11, 315
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_788_2
.Lcall_proc_staged_α_788_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_788_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
.Lcall_proc_staged_α_788_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n00236_call_proc_staged_α
                                                                              jmp   n00237_deref_α
n00235_call_proc_staged_β:
                        mov              r11, 315;                            jmp   n00236_call_proc_staged_α
.Lcall_proc_staged_β_788_0:
                        .quad            .Lcall_proc_staged_β_788_0_s
.Lcall_proc_staged_β_788_0_s:
                        .string          "Time__"
                        .size            n00235_call_proc_staged_bx, .-n00235_call_proc_staged_bx
                        .type            n00237_deref_bx, @function
n00237_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_deref_α:           mov              r11, 316
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00236_call_proc_staged_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00238_call_icon_α
                        .size            n00237_deref_bx, .-n00237_deref_bx
                        .type            n00238_call_icon_bx, @function
n00238_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_call_icon_α:       mov              r11, 317
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn791:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn791]
                        lea              rsi, [rbp + 128]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n00236_call_proc_staged_α
                                                                              jmp   n00236_call_proc_staged_α
n00238_call_icon_β:       mov              r11, 317;                            jmp   n00236_call_proc_staged_α
                        .size            n00238_call_icon_bx, .-n00238_call_icon_bx
                        .type            n00236_call_proc_staged_bx, @function
n00236_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_proc_staged_α:
                        mov              r11, 318
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_793_2
.Lcall_proc_staged_α_793_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_793_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_793_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n00239_call_proc_staged_α
                                                                              jmp   n00239_call_proc_staged_α
n00236_call_proc_staged_β:
                        mov              r11, 318;                            jmp   n00239_call_proc_staged_α
.Lcall_proc_staged_β_793_0:
                        .quad            .Lcall_proc_staged_β_793_0_s
.Lcall_proc_staged_β_793_0_s:
                        .string          "Regions__"
                        .size            n00236_call_proc_staged_bx, .-n00236_call_proc_staged_bx
                        .type            n00239_call_proc_staged_bx, @function
n00239_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_call_proc_staged_α:
                        mov              r11, 319
                        call             Storage___dcα;                       jmp   .Lcall_proc_staged_α_795_2
.Lcall_proc_staged_α_795_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_795_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
.Lcall_proc_staged_α_795_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n00240_call_proc_staged_α
                                                                              jmp   n00240_call_proc_staged_α
n00239_call_proc_staged_β:
                        mov              r11, 319;                            jmp   n00240_call_proc_staged_α
.Lcall_proc_staged_β_795_0:
                        .quad            .Lcall_proc_staged_β_795_0_s
.Lcall_proc_staged_β_795_0_s:
                        .string          "Storage__"
                        .size            n00239_call_proc_staged_bx, .-n00239_call_proc_staged_bx
                        .type            n00240_call_proc_staged_bx, @function
n00240_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_call_proc_staged_α:
                        mov              r11, 320
                        call             Collections___dcα;                   jmp   .Lcall_proc_staged_α_797_2
.Lcall_proc_staged_α_797_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_797_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
.Lcall_proc_staged_α_797_29:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    n00241_return_α
                                                                              jmp   n00241_return_α
n00240_call_proc_staged_β:
                        mov              r11, 320;                            jmp   n00241_return_α
.Lcall_proc_staged_β_797_0:
                        .quad            .Lcall_proc_staged_β_797_0_s
.Lcall_proc_staged_β_797_0_s:
                        .string          "Collections__"
                        .size            n00240_call_proc_staged_bx, .-n00240_call_proc_staged_bx
                        .type            n00241_return_bx, @function
n00241_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_return_α:          mov              r11, 321
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Term___γ
                        .size            n00241_return_bx, .-n00241_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Term___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Term___β:
                                                                              jmp   Term___ω
#-----------------------------------------------------------------------------------------------------------------------
Term___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_798_248
                        .section         .rodata
.Licn_trace_nm799:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm799]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_798_248:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 576]
                        mov              rbp, qword ptr [rbp + 568];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_798_249
                        .section         .rodata
.Licn_trace_nm800:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_798_249:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 576]
                        mov              rbp, qword ptr [rbp + 568];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTerm___α_801_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_801_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_801_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_801_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1096], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 976
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_801_247
                        .section         .rodata
.Licn_trace_nm802:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm802]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_801_247:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Collections___α_body:
                        .type            n00242_disjunction_bx, @function
n00242_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_disjunction_α:     mov              r11, 322
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0;            jmp   n00243_var_ref_α
.Ldisjunction_γ_803_as: mov              r11, 322
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_842_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00244_make_list_α
.Ldisjunction_α_842_0:                                                        jmp   n00244_make_list_α
n00242_disjunction_β:     mov              r11, 322
                        mov              eax, dword ptr [rbp + 672];          jmp   n00244_make_list_α
.Ldisjunction_γ_803_af: mov              r11, 322
.Ldisjunction_ω_803_af: mov              r11, 322
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672];          jmp   n00244_make_list_α
                        .size            n00242_disjunction_bx, .-n00242_disjunction_bx
                        .type            n00244_make_list_bx, @function
n00244_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_make_list_α:       mov              r11, 323
                        lea              rdi, [rbp + 656]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00245_assign_α
                        .size            n00244_make_list_bx, .-n00244_make_list_bx
                        .type            n00245_assign_bx, @function
n00245_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_assign_α:          mov              r11, 324
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n00246_var_ref_α
                        .size            n00245_assign_bx, .-n00245_assign_bx
                        .type            n00246_var_ref_bx, @function
n00246_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_var_ref_α:         mov              r11, 325
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00247_kw_icon_gen_α
                        .size            n00246_var_ref_bx, .-n00246_var_ref_bx
                        .type            n00247_kw_icon_gen_bx, @function
n00247_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_kw_icon_gen_α:     mov              r11, 326
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_848_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_848_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00248_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00249_deref_α
n00247_kw_icon_gen_β:     mov              r11, 326;                            jmp   .Lkw_icon_gen_α_848_1
.Lkw_icon_gen_α_848_0:  .quad            .Lkw_icon_gen_α_848_0_s
.Lkw_icon_gen_α_848_0_s:
                        .string          "&collections"
                        .size            n00247_kw_icon_gen_bx, .-n00247_kw_icon_gen_bx
                        .type            n00249_deref_bx, @function
n00249_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_deref_α:           mov              r11, 327
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
                        cmp              al, 104;                             je    n00247_kw_icon_gen_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00250_call_icon_α
                        .size            n00249_deref_bx, .-n00249_deref_bx
                        .type            n00250_call_icon_bx, @function
n00250_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_call_icon_α:       mov              r11, 328
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn851:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn851]
                        lea              rsi, [rbp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n00247_kw_icon_gen_β
                                                                              jmp   n00247_kw_icon_gen_β
n00250_call_icon_β:       mov              r11, 328;                            jmp   n00247_kw_icon_gen_β
                        .size            n00250_call_icon_bx, .-n00250_call_icon_bx
                        .type            n00243_var_ref_bx, @function
n00243_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_var_ref_α:         mov              r11, 329
                        mov              rax, 4294967336
                        mov              rdx, 1879052592                      # Collections____INITFLAG__0
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n00251_nulltest_var_α
n00243_var_ref_β:         mov              r11, 329;                            jmp   .Ldisjunction_ω_803_af
                        .size            n00243_var_ref_bx, .-n00243_var_ref_bx
                        .type            n00251_nulltest_var_bx, @function
n00251_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_nulltest_var_α:    mov              r11, 330
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 104;                             je    .Ldisjunction_ω_803_af
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_803_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_803_af
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00252_lit_integer_α
                        .size            n00251_nulltest_var_bx, .-n00251_nulltest_var_bx
                        .type            n00252_lit_integer_bx, @function
n00252_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_lit_integer_α:     mov              r11, 331
                        mov              qword ptr [rbp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_855_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00253_assign_var_α
.Llit_integer_α_855_0:  .quad            1
                        .size            n00252_lit_integer_bx, .-n00252_lit_integer_bx
                        .type            n00253_assign_var_bx, @function
n00253_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_assign_var_α:      mov              r11, 332
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_803_af
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00254_lit_string_α
                        .size            n00253_assign_var_bx, .-n00253_assign_var_bx
                        .type            n00254_lit_string_bx, @function
n00254_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_lit_string_α:      mov              r11, 333
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_857_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00255_lit_string_α
.Llit_string_α_857_0:   .quad            .Llit_string_α_857_0_s
.Llit_string_α_857_0_s: .string          "total"
                        .size            n00254_lit_string_bx, .-n00254_lit_string_bx
                        .type            n00255_lit_string_bx, @function
n00255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_lit_string_α:      mov              r11, 334
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_858_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00256_lit_string_α
.Llit_string_α_858_0:   .quad            .Llit_string_α_858_0_s
.Llit_string_α_858_0_s: .string          "static"
                        .size            n00255_lit_string_bx, .-n00255_lit_string_bx
                        .type            n00256_lit_string_bx, @function
n00256_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_lit_string_α:      mov              r11, 335
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_859_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00257_lit_string_α
.Llit_string_α_859_0:   .quad            .Llit_string_α_859_0_s
.Llit_string_α_859_0_s: .string          "string"
                        .size            n00256_lit_string_bx, .-n00256_lit_string_bx
                        .type            n00257_lit_string_bx, @function
n00257_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_860_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00258_make_list_α
.Llit_string_α_860_0:   .quad            .Llit_string_α_860_0_s
.Llit_string_α_860_0_s: .string          "block"
                        .size            n00257_lit_string_bx, .-n00257_lit_string_bx
                        .type            n00258_make_list_bx, @function
n00258_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_make_list_α:       mov              r11, 337
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00259_assign_α
                        .size            n00258_make_list_bx, .-n00258_make_list_bx
                        .type            n00259_assign_bx, @function
n00259_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_assign_α:          mov              r11, 338
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [r9 + 288], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 296], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_863_0]
                        .section         .rodata
.Lassign_α_863_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_863_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_803_as
n00259_assign_β:          mov              r11, 338;                            jmp   n00244_make_list_α
.Lassign_α_863_0:       .quad            .Lassign_α_863_0_s
.Lassign_α_863_0_s:     .string          "Collections____STATIC__labels"
                        .size            n00259_assign_bx, .-n00259_assign_bx
                        .type            n00248_lit_string_bx, @function
n00248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_lit_string_α:      mov              r11, 339
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_864_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00260_call_icon_α
.Llit_string_α_864_0:   .quad            .Llit_string_α_864_0_s
.Llit_string_α_864_0_s: .string          "collections"
                        .size            n00248_lit_string_bx, .-n00248_lit_string_bx
                        .type            n00260_call_icon_bx, @function
n00260_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_call_icon_α:       mov              r11, 340
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn866:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn866]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00261_lit_integer_α
                                                                              jmp   n00261_lit_integer_α
n00260_call_icon_β:       mov              r11, 340;                            jmp   n00261_lit_integer_α
                        .size            n00260_call_icon_bx, .-n00260_call_icon_bx
                        .type            n00261_lit_integer_bx, @function
n00261_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_lit_integer_α:     mov              r11, 341
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_867_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00262_var_α
.Llit_integer_α_867_0:  .quad            1
                        .size            n00261_lit_integer_bx, .-n00261_lit_integer_bx
                        .type            n00262_var_bx, @function
n00262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_var_α:             mov              r11, 342
                        mov              rax, qword ptr [r9 + 288]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00263_unop_α
                        .size            n00262_var_bx, .-n00262_var_bx
                        .type            n00263_unop_bx, @function
n00263_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_unop_α:            mov              r11, 343
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00264_to_α
                        .size            n00263_unop_bx, .-n00263_unop_bx
                        .type            n00264_to_bx, @function
n00264_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_to_α:              mov              r11, 344
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
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
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_871_0:           mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00265_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00266_assign_α
n00264_to_β:              mov              r11, 344
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_871_0
                        .size            n00264_to_bx, .-n00264_to_bx
                        .type            n00266_assign_bx, @function
n00266_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_assign_α:          mov              r11, 345
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n00267_bound_α
                        .size            n00266_assign_bx, .-n00266_assign_bx
                        .type            n00267_bound_bx, @function
n00267_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_bound_α:           mov              r11, 346
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00268_var_ref_α
                        .size            n00267_bound_bx, .-n00267_bound_bx
                        .type            n00268_var_ref_bx, @function
n00268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Collections____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00269_var_α
                        .size            n00268_var_ref_bx, .-n00268_var_ref_bx
                        .type            n00269_var_bx, @function
n00269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_var_α:             mov              r11, 348
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00270_subscript_α
                        .size            n00269_var_bx, .-n00269_var_bx
                        .type            n00270_subscript_bx, @function
n00270_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_subscript_α:       mov              r11, 349
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00271_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00272_var_ref_α
                        .size            n00270_subscript_bx, .-n00270_subscript_bx
                        .type            n00272_var_ref_bx, @function
n00272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00273_var_α
                        .size            n00272_var_ref_bx, .-n00272_var_ref_bx
                        .type            n00273_var_bx, @function
n00273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_α:             mov              r11, 351
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 360], rax;          jmp   n00274_subscript_α
                        .size            n00273_var_bx, .-n00273_var_bx
                        .type            n00274_subscript_bx, @function
n00274_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_subscript_α:       mov              r11, 352
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00271_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00275_lit_integer_α
                        .size            n00274_subscript_bx, .-n00274_subscript_bx
                        .type            n00275_lit_integer_bx, @function
n00275_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_lit_integer_α:     mov              r11, 353
                        mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_885_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00276_deref_α
.Llit_integer_α_885_0:  .quad            8
                        .size            n00275_lit_integer_bx, .-n00275_lit_integer_bx
                        .type            n00276_deref_bx, @function
n00276_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_deref_α:           mov              r11, 354
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
                        cmp              al, 104;                             je    n00271_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00277_call_icon_α
                        .size            n00276_deref_bx, .-n00276_deref_bx
                        .type            n00277_call_icon_bx, @function
n00277_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_call_icon_α:       mov              r11, 355
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn888:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn888]
                        lea              rsi, [rbp + 288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n00271_unmark_α
                                                                              jmp   n00278_deref_α
n00277_call_icon_β:       mov              r11, 355;                            jmp   n00271_unmark_α
                        .size            n00277_call_icon_bx, .-n00277_call_icon_bx
                        .type            n00278_deref_bx, @function
n00278_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_deref_α:           mov              r11, 356
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
                        cmp              al, 104;                             je    n00271_unmark_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00279_call_icon_α
                        .size            n00278_deref_bx, .-n00278_deref_bx
                        .type            n00279_call_icon_bx, @function
n00279_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_call_icon_α:       mov              r11, 357
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn891:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn891]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00271_unmark_α
                                                                              jmp   n00271_unmark_α
n00279_call_icon_β:       mov              r11, 357;                            jmp   n00271_unmark_α
                        .size            n00279_call_icon_bx, .-n00279_call_icon_bx
                        .type            n00271_unmark_bx, @function
n00271_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_unmark_α:          mov              r11, 358
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00264_to_β
                        .size            n00271_unmark_bx, .-n00271_unmark_bx
                        .type            n00265_return_bx, @function
n00265_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_return_α:          mov              r11, 359
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Collections___γ
                        .size            n00265_return_bx, .-n00265_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Collections___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Collections___β:
                                                                              jmp   Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
Collections___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_894_248
                        .section         .rodata
.Licn_trace_nm895:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm895]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_894_248:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1104]
                        mov              rbp, qword ptr [rbp + 1096];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_894_249
                        .section         .rodata
.Licn_trace_nm896:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_894_249:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1104]
                        mov              rbp, qword ptr [rbp + 1096];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LCollections___α_897_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_897_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_897_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_897_3:
                        add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 928
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_897_247
                        .section         .rodata
.Licn_trace_nm898:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm898]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_897_247:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Regions___α_body:
                        .type            n00280_disjunction_bx, @function
n00280_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_disjunction_α:     mov              r11, 360
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0;            jmp   n00281_var_ref_α
.Ldisjunction_γ_899_as: mov              r11, 360
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_937_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00282_make_list_α
.Ldisjunction_α_937_0:                                                        jmp   n00282_make_list_α
n00280_disjunction_β:     mov              r11, 360
                        mov              eax, dword ptr [rbp + 672];          jmp   n00282_make_list_α
.Ldisjunction_γ_899_af: mov              r11, 360
.Ldisjunction_ω_899_af: mov              r11, 360
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672];          jmp   n00282_make_list_α
                        .size            n00280_disjunction_bx, .-n00280_disjunction_bx
                        .type            n00282_make_list_bx, @function
n00282_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_make_list_α:       mov              r11, 361
                        lea              rdi, [rbp + 656]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00283_assign_α
                        .size            n00282_make_list_bx, .-n00282_make_list_bx
                        .type            n00283_assign_bx, @function
n00283_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_assign_α:          mov              r11, 362
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00284_var_ref_α
                        .size            n00283_assign_bx, .-n00283_assign_bx
                        .type            n00284_var_ref_bx, @function
n00284_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00285_kw_icon_gen_α
                        .size            n00284_var_ref_bx, .-n00284_var_ref_bx
                        .type            n00285_kw_icon_gen_bx, @function
n00285_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_kw_icon_gen_α:     mov              r11, 364
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_943_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_943_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00286_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00287_deref_α
n00285_kw_icon_gen_β:     mov              r11, 364;                            jmp   .Lkw_icon_gen_α_943_1
.Lkw_icon_gen_α_943_0:  .quad            .Lkw_icon_gen_α_943_0_s
.Lkw_icon_gen_α_943_0_s:
                        .string          "&regions"
                        .size            n00285_kw_icon_gen_bx, .-n00285_kw_icon_gen_bx
                        .type            n00287_deref_bx, @function
n00287_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_deref_α:           mov              r11, 365
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
                        cmp              al, 104;                             je    n00285_kw_icon_gen_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00288_call_icon_α
                        .size            n00287_deref_bx, .-n00287_deref_bx
                        .type            n00288_call_icon_bx, @function
n00288_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_call_icon_α:       mov              r11, 366
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn946:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn946]
                        lea              rsi, [rbp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n00285_kw_icon_gen_β
                                                                              jmp   n00285_kw_icon_gen_β
n00288_call_icon_β:       mov              r11, 366;                            jmp   n00285_kw_icon_gen_β
                        .size            n00288_call_icon_bx, .-n00288_call_icon_bx
                        .type            n00281_var_ref_bx, @function
n00281_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_var_ref_α:         mov              r11, 367
                        mov              rax, 4294967336
                        mov              rdx, 1879052624                      # Regions____INITFLAG__0
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00289_nulltest_var_α
n00281_var_ref_β:         mov              r11, 367;                            jmp   .Ldisjunction_ω_899_af
                        .size            n00281_var_ref_bx, .-n00281_var_ref_bx
                        .type            n00289_nulltest_var_bx, @function
n00289_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_nulltest_var_α:    mov              r11, 368
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 104;                             je    .Ldisjunction_ω_899_af
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_899_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_899_af
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00290_lit_integer_α
                        .size            n00289_nulltest_var_bx, .-n00289_nulltest_var_bx
                        .type            n00290_lit_integer_bx, @function
n00290_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_lit_integer_α:     mov              r11, 369
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_950_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00291_assign_var_α
.Llit_integer_α_950_0:  .quad            1
                        .size            n00290_lit_integer_bx, .-n00290_lit_integer_bx
                        .type            n00291_assign_var_bx, @function
n00291_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_assign_var_α:      mov              r11, 370
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_899_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00292_lit_string_α
                        .size            n00291_assign_var_bx, .-n00291_assign_var_bx
                        .type            n00292_lit_string_bx, @function
n00292_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_lit_string_α:      mov              r11, 371
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_952_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00293_lit_string_α
.Llit_string_α_952_0:   .quad            .Llit_string_α_952_0_s
.Llit_string_α_952_0_s: .string          "static"
                        .size            n00292_lit_string_bx, .-n00292_lit_string_bx
                        .type            n00293_lit_string_bx, @function
n00293_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_lit_string_α:      mov              r11, 372
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_953_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00294_lit_string_α
.Llit_string_α_953_0:   .quad            .Llit_string_α_953_0_s
.Llit_string_α_953_0_s: .string          "string"
                        .size            n00293_lit_string_bx, .-n00293_lit_string_bx
                        .type            n00294_lit_string_bx, @function
n00294_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_lit_string_α:      mov              r11, 373
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_954_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00295_make_list_α
.Llit_string_α_954_0:   .quad            .Llit_string_α_954_0_s
.Llit_string_α_954_0_s: .string          "block"
                        .size            n00294_lit_string_bx, .-n00294_lit_string_bx
                        .type            n00295_make_list_bx, @function
n00295_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_make_list_α:       mov              r11, 374
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00296_assign_α
                        .size            n00295_make_list_bx, .-n00295_make_list_bx
                        .type            n00296_assign_bx, @function
n00296_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_assign_α:          mov              r11, 375
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [r9 + 320], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 328], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_957_0]
                        .section         .rodata
.Lassign_α_957_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_957_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_899_as
n00296_assign_β:          mov              r11, 375;                            jmp   n00282_make_list_α
.Lassign_α_957_0:       .quad            .Lassign_α_957_0_s
.Lassign_α_957_0_s:     .string          "Regions____STATIC__labels"
                        .size            n00296_assign_bx, .-n00296_assign_bx
                        .type            n00286_lit_string_bx, @function
n00286_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_lit_string_α:      mov              r11, 376
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_958_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00297_call_icon_α
.Llit_string_α_958_0:   .quad            .Llit_string_α_958_0_s
.Llit_string_α_958_0_s: .string          "regions"
                        .size            n00286_lit_string_bx, .-n00286_lit_string_bx
                        .type            n00297_call_icon_bx, @function
n00297_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_call_icon_α:       mov              r11, 377
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn960:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn960]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00298_lit_integer_α
                                                                              jmp   n00298_lit_integer_α
n00297_call_icon_β:       mov              r11, 377;                            jmp   n00298_lit_integer_α
                        .size            n00297_call_icon_bx, .-n00297_call_icon_bx
                        .type            n00298_lit_integer_bx, @function
n00298_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_lit_integer_α:     mov              r11, 378
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_961_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00299_var_α
.Llit_integer_α_961_0:  .quad            1
                        .size            n00298_lit_integer_bx, .-n00298_lit_integer_bx
                        .type            n00299_var_bx, @function
n00299_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_var_α:             mov              r11, 379
                        mov              rax, qword ptr [r9 + 320]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00300_unop_α
                        .size            n00299_var_bx, .-n00299_var_bx
                        .type            n00300_unop_bx, @function
n00300_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_unop_α:            mov              r11, 380
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00301_to_α
                        .size            n00300_unop_bx, .-n00300_unop_bx
                        .type            n00301_to_bx, @function
n00301_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_to_α:              mov              r11, 381
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
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
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_965_0:           mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00302_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00303_assign_α
n00301_to_β:              mov              r11, 381
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_965_0
                        .size            n00301_to_bx, .-n00301_to_bx
                        .type            n00303_assign_bx, @function
n00303_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_assign_α:          mov              r11, 382
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00304_bound_α
                        .size            n00303_assign_bx, .-n00303_assign_bx
                        .type            n00304_bound_bx, @function
n00304_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_bound_α:           mov              r11, 383
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00305_var_ref_α
                        .size            n00304_bound_bx, .-n00304_bound_bx
                        .type            n00305_var_ref_bx, @function
n00305_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_var_ref_α:         mov              r11, 384
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Regions____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00306_var_α
                        .size            n00305_var_ref_bx, .-n00305_var_ref_bx
                        .type            n00306_var_bx, @function
n00306_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_var_α:             mov              r11, 385
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00307_subscript_α
                        .size            n00306_var_bx, .-n00306_var_bx
                        .type            n00307_subscript_bx, @function
n00307_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_subscript_α:       mov              r11, 386
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00308_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00309_var_ref_α
                        .size            n00307_subscript_bx, .-n00307_subscript_bx
                        .type            n00309_var_ref_bx, @function
n00309_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_var_ref_α:         mov              r11, 387
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00310_var_α
                        .size            n00309_var_ref_bx, .-n00309_var_ref_bx
                        .type            n00310_var_bx, @function
n00310_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_var_α:             mov              r11, 388
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 360], rax;          jmp   n00311_subscript_α
                        .size            n00310_var_bx, .-n00310_var_bx
                        .type            n00311_subscript_bx, @function
n00311_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_subscript_α:       mov              r11, 389
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00308_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00312_lit_integer_α
                        .size            n00311_subscript_bx, .-n00311_subscript_bx
                        .type            n00312_lit_integer_bx, @function
n00312_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_lit_integer_α:     mov              r11, 390
                        mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_979_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00313_deref_α
.Llit_integer_α_979_0:  .quad            8
                        .size            n00312_lit_integer_bx, .-n00312_lit_integer_bx
                        .type            n00313_deref_bx, @function
n00313_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_deref_α:           mov              r11, 391
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
                        cmp              al, 104;                             je    n00308_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00314_call_icon_α
                        .size            n00313_deref_bx, .-n00313_deref_bx
                        .type            n00314_call_icon_bx, @function
n00314_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_call_icon_α:       mov              r11, 392
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn982:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn982]
                        lea              rsi, [rbp + 288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n00308_unmark_α
                                                                              jmp   n00315_deref_α
n00314_call_icon_β:       mov              r11, 392;                            jmp   n00308_unmark_α
                        .size            n00314_call_icon_bx, .-n00314_call_icon_bx
                        .type            n00315_deref_bx, @function
n00315_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_deref_α:           mov              r11, 393
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
                        cmp              al, 104;                             je    n00308_unmark_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00316_call_icon_α
                        .size            n00315_deref_bx, .-n00315_deref_bx
                        .type            n00316_call_icon_bx, @function
n00316_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_call_icon_α:       mov              r11, 394
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn985:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn985]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00308_unmark_α
                                                                              jmp   n00308_unmark_α
n00316_call_icon_β:       mov              r11, 394;                            jmp   n00308_unmark_α
                        .size            n00316_call_icon_bx, .-n00316_call_icon_bx
                        .type            n00308_unmark_bx, @function
n00308_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_unmark_α:          mov              r11, 395
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00301_to_β
                        .size            n00308_unmark_bx, .-n00308_unmark_bx
                        .type            n00302_return_bx, @function
n00302_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_return_α:          mov              r11, 396
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Regions___γ
                        .size            n00302_return_bx, .-n00302_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Regions___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Regions___β:
                                                                              jmp   Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
Regions___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_988_248
                        .section         .rodata
.Licn_trace_nm989:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm989]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_988_248:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_988_249
                        .section         .rodata
.Licn_trace_nm990:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm990]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_988_249:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LRegions___α_991_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_991_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_991_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_991_3:    add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Signature__:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LSignature___α_991_247
                        .section         .rodata
.Licn_trace_nm992:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm992]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_991_247:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Signature___α_body:
                        .type            n00317_kw_icon_bx, @function
n00317_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_kw_icon_α:         mov              r11, 397
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1000_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00318_kw_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00319_call_icon_α
n00317_kw_icon_β:         mov              r11, 397;                            jmp   n00318_kw_icon_α
.Lkw_icon_α_1000_0:     .quad            .Lkw_icon_α_1000_0_s
.Lkw_icon_α_1000_0_s:   .string          "&version"
                        .size            n00317_kw_icon_bx, .-n00317_kw_icon_bx
                        .type            n00319_call_icon_bx, @function
n00319_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_call_icon_α:       mov              r11, 398
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1002: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1002]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00318_kw_icon_α
                                                                              jmp   n00318_kw_icon_α
n00319_call_icon_β:       mov              r11, 398;                            jmp   n00318_kw_icon_α
                        .size            n00319_call_icon_bx, .-n00319_call_icon_bx
                        .type            n00318_kw_icon_bx, @function
n00318_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_kw_icon_α:         mov              r11, 399
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1003_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00320_kw_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00321_call_icon_α
n00318_kw_icon_β:         mov              r11, 399;                            jmp   n00320_kw_icon_gen_α
.Lkw_icon_α_1003_0:     .quad            .Lkw_icon_α_1003_0_s
.Lkw_icon_α_1003_0_s:   .string          "&host"
                        .size            n00318_kw_icon_bx, .-n00318_kw_icon_bx
                        .type            n00321_call_icon_bx, @function
n00321_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_icon_α:       mov              r11, 400
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1005: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1005]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n00320_kw_icon_gen_α
                                                                              jmp   n00320_kw_icon_gen_α
n00321_call_icon_β:       mov              r11, 400;                            jmp   n00320_kw_icon_gen_α
                        .size            n00321_call_icon_bx, .-n00321_call_icon_bx
                        .type            n00320_kw_icon_gen_bx, @function
n00320_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_kw_icon_gen_α:     mov              r11, 401
                        mov              qword ptr [rbp + 80], 0
.Lkw_icon_gen_α_1006_1: mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_1006_0]
                        mov              rsi, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00322_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax;           jmp   n00323_call_icon_α
n00320_kw_icon_gen_β:     mov              r11, 401;                            jmp   .Lkw_icon_gen_α_1006_1
.Lkw_icon_gen_α_1006_0: .quad            .Lkw_icon_gen_α_1006_0_s
.Lkw_icon_gen_α_1006_0_s:
                        .string          "&features"
                        .size            n00320_kw_icon_gen_bx, .-n00320_kw_icon_gen_bx
                        .type            n00323_call_icon_bx, @function
n00323_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_call_icon_α:       mov              r11, 402
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1008: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1008]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    n00320_kw_icon_gen_β
                                                                              jmp   n00320_kw_icon_gen_β
n00323_call_icon_β:       mov              r11, 402;                            jmp   n00320_kw_icon_gen_β
                        .size            n00323_call_icon_bx, .-n00323_call_icon_bx
                        .type            n00322_return_bx, @function
n00322_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_return_α:          mov              r11, 403
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Signature___γ
                        .size            n00322_return_bx, .-n00322_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Signature___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Signature___β:
                                                                              jmp   Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
Signature___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LSignature___α_1009_248
                        .section         .rodata
.Licn_trace_nm1010:     .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1010]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_1009_248:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Signature___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LSignature___α_1009_249
                        .section         .rodata
.Licn_trace_nm1011:     .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1011]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_1009_249:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Signature___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LSignature___α_1012_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_1012_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_1012_2: add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_1012_3: add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 928
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_1012_247
                        .section         .rodata
.Licn_trace_nm1013:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1013]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_1012_247: mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Storage___α_body:
                        .type            n00324_disjunction_bx, @function
n00324_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_disjunction_α:    mov              r11, 404
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0;            jmp   n00325_var_ref_α
.Ldisjunction_γ_1014_as:
                        mov              r11, 404
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1052_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00326_make_list_α
.Ldisjunction_α_1052_0:                                                       jmp   n00326_make_list_α
n00324_disjunction_β:    mov              r11, 404
                        mov              eax, dword ptr [rbp + 672];          jmp   n00326_make_list_α
.Ldisjunction_γ_1014_af:
                        mov              r11, 404
.Ldisjunction_ω_1014_af:
                        mov              r11, 404
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672];          jmp   n00326_make_list_α
                        .size            n00324_disjunction_bx, .-n00324_disjunction_bx
                        .type            n00326_make_list_bx, @function
n00326_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_make_list_α:      mov              r11, 405
                        lea              rdi, [rbp + 656]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00327_assign_α
                        .size            n00326_make_list_bx, .-n00326_make_list_bx
                        .type            n00327_assign_bx, @function
n00327_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_assign_α:         mov              r11, 406
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00328_var_ref_α
                        .size            n00327_assign_bx, .-n00327_assign_bx
                        .type            n00328_var_ref_bx, @function
n00328_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_var_ref_α:        mov              r11, 407
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00329_kw_icon_gen_α
                        .size            n00328_var_ref_bx, .-n00328_var_ref_bx
                        .type            n00329_kw_icon_gen_bx, @function
n00329_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_kw_icon_gen_α:    mov              r11, 408
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_1058_1: mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_1058_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00330_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00331_deref_α
n00329_kw_icon_gen_β:    mov              r11, 408;                            jmp   .Lkw_icon_gen_α_1058_1
.Lkw_icon_gen_α_1058_0: .quad            .Lkw_icon_gen_α_1058_0_s
.Lkw_icon_gen_α_1058_0_s:
                        .string          "&storage"
                        .size            n00329_kw_icon_gen_bx, .-n00329_kw_icon_gen_bx
                        .type            n00331_deref_bx, @function
n00331_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_deref_α:          mov              r11, 409
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
                        cmp              al, 104;                             je    n00329_kw_icon_gen_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00332_call_icon_α
                        .size            n00331_deref_bx, .-n00331_deref_bx
                        .type            n00332_call_icon_bx, @function
n00332_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_call_icon_α:      mov              r11, 410
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1061: .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1061]
                        lea              rsi, [rbp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n00329_kw_icon_gen_β
                                                                              jmp   n00329_kw_icon_gen_β
n00332_call_icon_β:      mov              r11, 410;                            jmp   n00329_kw_icon_gen_β
                        .size            n00332_call_icon_bx, .-n00332_call_icon_bx
                        .type            n00325_var_ref_bx, @function
n00325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_var_ref_α:        mov              r11, 411
                        mov              rax, 4294967336
                        mov              rdx, 1879052656                      # Storage____INITFLAG__0
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00333_nulltest_var_α
n00325_var_ref_β:        mov              r11, 411;                            jmp   .Ldisjunction_ω_1014_af
                        .size            n00325_var_ref_bx, .-n00325_var_ref_bx
                        .type            n00333_nulltest_var_bx, @function
n00333_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_nulltest_var_α:   mov              r11, 412
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1014_af
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1014_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1014_af
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00334_lit_integer_α
                        .size            n00333_nulltest_var_bx, .-n00333_nulltest_var_bx
                        .type            n00334_lit_integer_bx, @function
n00334_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_lit_integer_α:    mov              r11, 413
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1065_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00335_assign_var_α
.Llit_integer_α_1065_0: .quad            1
                        .size            n00334_lit_integer_bx, .-n00334_lit_integer_bx
                        .type            n00335_assign_var_bx, @function
n00335_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_assign_var_α:     mov              r11, 414
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1014_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00336_lit_string_α
                        .size            n00335_assign_var_bx, .-n00335_assign_var_bx
                        .type            n00336_lit_string_bx, @function
n00336_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_lit_string_α:     mov              r11, 415
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1067_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00337_lit_string_α
.Llit_string_α_1067_0:  .quad            .Llit_string_α_1067_0_s
.Llit_string_α_1067_0_s:
                        .string          "static"
                        .size            n00336_lit_string_bx, .-n00336_lit_string_bx
                        .type            n00337_lit_string_bx, @function
n00337_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_lit_string_α:     mov              r11, 416
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1068_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00338_lit_string_α
.Llit_string_α_1068_0:  .quad            .Llit_string_α_1068_0_s
.Llit_string_α_1068_0_s:
                        .string          "string"
                        .size            n00337_lit_string_bx, .-n00337_lit_string_bx
                        .type            n00338_lit_string_bx, @function
n00338_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_lit_string_α:     mov              r11, 417
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1069_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00339_make_list_α
.Llit_string_α_1069_0:  .quad            .Llit_string_α_1069_0_s
.Llit_string_α_1069_0_s:
                        .string          "block"
                        .size            n00338_lit_string_bx, .-n00338_lit_string_bx
                        .type            n00339_make_list_bx, @function
n00339_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_make_list_α:      mov              r11, 418
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00340_assign_α
                        .size            n00339_make_list_bx, .-n00339_make_list_bx
                        .type            n00340_assign_bx, @function
n00340_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_assign_α:         mov              r11, 419
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [r9 + 352], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 360], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1072_0]
                        .section         .rodata
.Lassign_α_1072_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1072_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_1014_as
n00340_assign_β:         mov              r11, 419;                            jmp   n00326_make_list_α
.Lassign_α_1072_0:      .quad            .Lassign_α_1072_0_s
.Lassign_α_1072_0_s:    .string          "Storage____STATIC__labels"
                        .size            n00340_assign_bx, .-n00340_assign_bx
                        .type            n00330_lit_string_bx, @function
n00330_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_lit_string_α:     mov              r11, 420
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_1073_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00341_call_icon_α
.Llit_string_α_1073_0:  .quad            .Llit_string_α_1073_0_s
.Llit_string_α_1073_0_s:
                        .string          "storage"
                        .size            n00330_lit_string_bx, .-n00330_lit_string_bx
                        .type            n00341_call_icon_bx, @function
n00341_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_call_icon_α:      mov              r11, 421
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1075: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1075]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00342_lit_integer_α
                                                                              jmp   n00342_lit_integer_α
n00341_call_icon_β:      mov              r11, 421;                            jmp   n00342_lit_integer_α
                        .size            n00341_call_icon_bx, .-n00341_call_icon_bx
                        .type            n00342_lit_integer_bx, @function
n00342_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_lit_integer_α:    mov              r11, 422
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1076_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00343_var_α
.Llit_integer_α_1076_0: .quad            1
                        .size            n00342_lit_integer_bx, .-n00342_lit_integer_bx
                        .type            n00343_var_bx, @function
n00343_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_var_α:            mov              r11, 423
                        mov              rax, qword ptr [r9 + 352]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00344_unop_α
                        .size            n00343_var_bx, .-n00343_var_bx
                        .type            n00344_unop_bx, @function
n00344_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_unop_α:           mov              r11, 424
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00345_to_α
                        .size            n00344_unop_bx, .-n00344_unop_bx
                        .type            n00345_to_bx, @function
n00345_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_to_α:             mov              r11, 425
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
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
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_1080_0:          mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00346_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00347_assign_α
n00345_to_β:             mov              r11, 425
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_1080_0
                        .size            n00345_to_bx, .-n00345_to_bx
                        .type            n00347_assign_bx, @function
n00347_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_assign_α:         mov              r11, 426
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00348_bound_α
                        .size            n00347_assign_bx, .-n00347_assign_bx
                        .type            n00348_bound_bx, @function
n00348_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_bound_α:          mov              r11, 427
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00349_var_ref_α
                        .size            n00348_bound_bx, .-n00348_bound_bx
                        .type            n00349_var_ref_bx, @function
n00349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_var_ref_α:        mov              r11, 428
                        mov              rax, 4294967336
                        mov              rdx, 1879052640                      # Storage____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00350_var_α
                        .size            n00349_var_ref_bx, .-n00349_var_ref_bx
                        .type            n00350_var_bx, @function
n00350_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_var_α:            mov              r11, 429
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00351_subscript_α
                        .size            n00350_var_bx, .-n00350_var_bx
                        .type            n00351_subscript_bx, @function
n00351_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_subscript_α:      mov              r11, 430
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00352_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00353_var_ref_α
                        .size            n00351_subscript_bx, .-n00351_subscript_bx
                        .type            n00353_var_ref_bx, @function
n00353_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_var_ref_α:        mov              r11, 431
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00354_var_α
                        .size            n00353_var_ref_bx, .-n00353_var_ref_bx
                        .type            n00354_var_bx, @function
n00354_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_var_α:            mov              r11, 432
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 360], rax;          jmp   n00355_subscript_α
                        .size            n00354_var_bx, .-n00354_var_bx
                        .type            n00355_subscript_bx, @function
n00355_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_subscript_α:      mov              r11, 433
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00352_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00356_lit_integer_α
                        .size            n00355_subscript_bx, .-n00355_subscript_bx
                        .type            n00356_lit_integer_bx, @function
n00356_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_lit_integer_α:    mov              r11, 434
                        mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1094_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00357_deref_α
.Llit_integer_α_1094_0: .quad            8
                        .size            n00356_lit_integer_bx, .-n00356_lit_integer_bx
                        .type            n00357_deref_bx, @function
n00357_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_deref_α:          mov              r11, 435
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
                        cmp              al, 104;                             je    n00352_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00358_call_icon_α
                        .size            n00357_deref_bx, .-n00357_deref_bx
                        .type            n00358_call_icon_bx, @function
n00358_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_call_icon_α:      mov              r11, 436
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1097: .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1097]
                        lea              rsi, [rbp + 288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n00352_unmark_α
                                                                              jmp   n00359_deref_α
n00358_call_icon_β:      mov              r11, 436;                            jmp   n00352_unmark_α
                        .size            n00358_call_icon_bx, .-n00358_call_icon_bx
                        .type            n00359_deref_bx, @function
n00359_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_deref_α:          mov              r11, 437
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
                        cmp              al, 104;                             je    n00352_unmark_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00360_call_icon_α
                        .size            n00359_deref_bx, .-n00359_deref_bx
                        .type            n00360_call_icon_bx, @function
n00360_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_call_icon_α:      mov              r11, 438
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1100: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1100]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00352_unmark_α
                                                                              jmp   n00352_unmark_α
n00360_call_icon_β:      mov              r11, 438;                            jmp   n00352_unmark_α
                        .size            n00360_call_icon_bx, .-n00360_call_icon_bx
                        .type            n00352_unmark_bx, @function
n00352_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_unmark_α:         mov              r11, 439
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00345_to_β
                        .size            n00352_unmark_bx, .-n00352_unmark_bx
                        .type            n00346_return_bx, @function
n00346_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_return_α:         mov              r11, 440
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Storage___γ
                        .size            n00346_return_bx, .-n00346_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Storage___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Storage___β:
                                                                              jmp   Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
Storage___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_1103_248
                        .section         .rodata
.Licn_trace_nm1104:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1104]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_1103_248: mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_1103_249
                        .section         .rodata
.Licn_trace_nm1105:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1105]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_1103_249: mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LStorage___α_1106_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_1106_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_1106_2:   add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_1106_3:   add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Time__:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTime___α_1106_247
                        .section         .rodata
.Licn_trace_nm1107:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1107]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1106_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Time___α_body:
                        .type            n00361_disjunction_bx, @function
n00361_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_disjunction_α:    mov              r11, 441
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0;            jmp   n00362_var_ref_α
.Ldisjunction_γ_1108_as:
                        mov              r11, 441
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1122_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00363_kw_icon_α
.Ldisjunction_α_1122_0:                                                       jmp   n00363_kw_icon_α
n00361_disjunction_β:    mov              r11, 441
                        mov              eax, dword ptr [rbp + 128];          jmp   n00363_kw_icon_α
.Ldisjunction_γ_1108_af:
                        mov              r11, 441
.Ldisjunction_ω_1108_af:
                        mov              r11, 441
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128];          jmp   n00363_kw_icon_α
                        .size            n00361_disjunction_bx, .-n00361_disjunction_bx
                        .type            n00363_kw_icon_bx, @function
n00363_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_kw_icon_α:        mov              r11, 442
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1123_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00364_var_α
n00363_kw_icon_β:        mov              r11, 442;                            jmp   Time___ω
.Lkw_icon_α_1123_0:     .quad            .Lkw_icon_α_1123_0_s
.Lkw_icon_α_1123_0_s:   .string          "&time"
                        .size            n00363_kw_icon_bx, .-n00363_kw_icon_bx
                        .type            n00364_var_bx, @function
n00364_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_var_α:            mov              r11, 443
                        mov              rax, qword ptr [r9 + 384]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00365_coerce_numeric_α
                        .size            n00364_var_bx, .-n00364_var_bx
                        .type            n00365_coerce_numeric_bx, @function
n00365_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_coerce_numeric_α: mov              r11, 444
                        mov              eax, dword ptr [rbp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1126_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1126_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1126_0
.Lcoerce_numeric_α_1126_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00366_coerce_numeric_α
.Lcoerce_numeric_α_1126_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 48]
                        cmp              al, 104;                             je    Time___ω
                                                                              jmp   n00366_coerce_numeric_α
                        .size            n00365_coerce_numeric_bx, .-n00365_coerce_numeric_bx
                        .type            n00366_coerce_numeric_bx, @function
n00366_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_coerce_numeric_α: mov              r11, 445
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1128_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1128_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1128_0
.Lcoerce_numeric_α_1128_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00367_binop_α
.Lcoerce_numeric_α_1128_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 32]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 32]
                        cmp              al, 104;                             je    Time___ω
                                                                              jmp   n00367_binop_α
                        .size            n00366_coerce_numeric_bx, .-n00366_coerce_numeric_bx
                        .type            n00367_binop_bx, @function
n00367_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_binop_α:          mov              r11, 446
                        mov              eax, dword ptr [rbp + 48]
                        mov              ecx, dword ptr [rbp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1129_2
                        mov              rax, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 40]
                        sub              rax, rdx;                            jo    .Lbinop_α_1129_0
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax;           jmp   .Lbinop_α_1129_7
.Lbinop_α_1129_2:       and              edx, 1;                              jz    .Lbinop_α_1129_0
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rbp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1129_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1129_4
.Lbinop_α_1129_3:       movq             xmm0, rsi
.Lbinop_α_1129_4:       cmp              cl, 5;                               je    .Lbinop_α_1129_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1129_6
.Lbinop_α_1129_5:       movq             xmm1, rdi
.Lbinop_α_1129_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1129_0
                        mov              qword ptr [rbp + 16], 5
                        mov              qword ptr [rbp + 24], rax
.Lbinop_α_1129_7:                                                             jmp   n00368_return_α
.Lbinop_α_1129_0:       mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx;           jmp   n00368_return_α
                        .size            n00367_binop_bx, .-n00367_binop_bx
                        .type            n00368_return_bx, @function
n00368_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_return_α:         mov              r11, 447
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   Time___γ
                        .size            n00368_return_bx, .-n00368_return_bx
                        .type            n00362_var_ref_bx, @function
n00362_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_var_ref_α:        mov              r11, 448
                        mov              rax, 4294967336
                        mov              rdx, 1879052688                      # Time____INITFLAG__0
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00369_nulltest_var_α
n00362_var_ref_β:        mov              r11, 448;                            jmp   .Ldisjunction_ω_1108_af
                        .size            n00362_var_ref_bx, .-n00362_var_ref_bx
                        .type            n00369_nulltest_var_bx, @function
n00369_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_nulltest_var_α:   mov              r11, 449
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1108_af
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1108_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1108_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00370_lit_integer_α
                        .size            n00369_nulltest_var_bx, .-n00369_nulltest_var_bx
                        .type            n00370_lit_integer_bx, @function
n00370_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_lit_integer_α:    mov              r11, 450
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1134_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00371_assign_var_α
.Llit_integer_α_1134_0: .quad            1
                        .size            n00370_lit_integer_bx, .-n00370_lit_integer_bx
                        .type            n00371_assign_var_bx, @function
n00371_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_assign_var_α:     mov              r11, 451
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1108_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00372_kw_icon_α
                        .size            n00371_assign_var_bx, .-n00371_assign_var_bx
                        .type            n00372_kw_icon_bx, @function
n00372_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_kw_icon_α:        mov              r11, 452
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1136_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00363_kw_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00373_assign_α
n00372_kw_icon_β:        mov              r11, 452;                            jmp   n00363_kw_icon_α
.Lkw_icon_α_1136_0:     .quad            .Lkw_icon_α_1136_0_s
.Lkw_icon_α_1136_0_s:   .string          "&time"
                        .size            n00372_kw_icon_bx, .-n00372_kw_icon_bx
                        .type            n00373_assign_bx, @function
n00373_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_assign_α:         mov              r11, 453
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [r9 + 384], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 392], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1137_0]
                        .section         .rodata
.Lassign_α_1137_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1137_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_1108_as
n00373_assign_β:         mov              r11, 453;                            jmp   n00363_kw_icon_α
.Lassign_α_1137_0:      .quad            .Lassign_α_1137_0_s
.Lassign_α_1137_0_s:    .string          "Time____STATIC__lasttime"
                        .size            n00373_assign_bx, .-n00373_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
Time___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Time___β:
                                                                              jmp   Time___ω
#-----------------------------------------------------------------------------------------------------------------------
Time___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTime___α_1137_248
                        .section         .rodata
.Licn_trace_nm1138:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1138]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1137_248:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Time___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTime___α_1137_249
                        .section         .rodata
.Licn_trace_nm1139:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1139]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1137_249:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Time___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTime___α_1140_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1140_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1140_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1140_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__shuffle:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshuffle_α_1140_247
                        .section         .rodata
.Licn_trace_nm1141:     .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1141]
                        mov              esi, 1
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshuffle_α_1140_247:   mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
shuffle_α_body:
                        .type            n00374_var_ref_bx, @function
n00374_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00374_var_ref_α:        mov              r11, 454
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00375_deref_α
                        .size            n00374_var_ref_bx, .-n00374_var_ref_bx
                        .type            n00375_deref_bx, @function
n00375_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00375_deref_α:          mov              r11, 455
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
                        cmp              al, 104;                             je    n00376_var_ref_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00377_call_icon_α
                        .size            n00375_deref_bx, .-n00375_deref_bx
                        .type            n00377_call_icon_bx, @function
n00377_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00377_call_icon_α:      mov              r11, 456
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1157: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1157]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00376_var_ref_α
                                                                              jmp   n00378_assign_α
n00377_call_icon_β:      mov              r11, 456;                            jmp   n00376_var_ref_α
                        .size            n00377_call_icon_bx, .-n00377_call_icon_bx
                        .type            n00378_assign_bx, @function
n00378_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00378_assign_α:         mov              r11, 457
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx;           jmp   n00376_var_ref_α
                        .size            n00378_assign_bx, .-n00378_assign_bx
                        .type            n00376_var_ref_bx, @function
n00376_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00376_var_ref_α:        mov              r11, 458
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00379_iterate_α
                        .size            n00376_var_ref_bx, .-n00376_var_ref_bx
                        .type            n00379_iterate_bx, @function
n00379_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00379_iterate_α:        mov              r11, 459
                        mov              qword ptr [rbp + 64], 0
.Literate_α_1162_0:     mov              rdi, qword ptr [rbp + 80]
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
                        cmp              al, 104;                             je    n00380_var_α
                                                                              jmp   n00381_var_ref_α
n00379_iterate_β:        mov              r11, 459
                        inc              qword ptr [rbp + 64];                jmp   .Literate_α_1162_0
                        .size            n00379_iterate_bx, .-n00379_iterate_bx
                        .type            n00381_var_ref_bx, @function
n00381_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00381_var_ref_α:        mov              r11, 460
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00382_random_α
                        .size            n00381_var_ref_bx, .-n00381_var_ref_bx
                        .type            n00382_random_bx, @function
n00382_random_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00382_random_α:         mov              r11, 461
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00380_var_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00383_swap_var_α
                        .size            n00382_random_bx, .-n00382_random_bx
                        .type            n00383_swap_var_bx, @function
n00383_swap_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00383_swap_var_α:       mov              r11, 462
                        mov              rdi, qword ptr [rbp + 48]
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
                        cmp              al, 104;                             je    n00380_var_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00379_iterate_β
                        .size            n00383_swap_var_bx, .-n00383_swap_var_bx
                        .type            n00380_var_bx, @function
n00380_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00380_var_α:            mov              r11, 463
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00384_return_α
                        .size            n00380_var_bx, .-n00380_var_bx
                        .type            n00384_return_bx, @function
n00384_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00384_return_α:         mov              r11, 464
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   shuffle_γ
                        .size            n00384_return_bx, .-n00384_return_bx
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
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshuffle_α_1169_248
                        .section         .rodata
.Licn_trace_nm1170:     .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1170]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshuffle_α_1169_248:   mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 296];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
shuffle_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshuffle_α_1169_249
                        .section         .rodata
.Licn_trace_nm1171:     .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1171]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshuffle_α_1169_249:   mov              rsp, rbx
                        pop              rbx
                        pop              rdx
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
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 296];          jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lshuffle_α_1172_3]
                        push             rcx
                        lea              rcx, [rip + .Lshuffle_α_1172_2]
                        push             rcx;                                 jmp   FN__shuffle
.Lshuffle_α_1172_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshuffle_α_1172_3:     add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 26
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 26
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        call             rt_main_args_bind@PLT
                        mov              r12, qword ptr [0x70000000]
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
.Lgvan7:                .string          "Save__"
.Lgvan8:                .string          "Saves__"
.Lgvan9:                .string          "Name__"
.Lgvan10:               .string          "display__STATIC__bar"
.Lgvan11:               .string          "display__STATIC__offset"
.Lgvan12:               .string          "display__INITFLAG__0"
.Lgvan13:               .string          "show__STATIC__clubmap"
.Lgvan14:               .string          "show__STATIC__diamondmap"
.Lgvan15:               .string          "show__STATIC__heartmap"
.Lgvan16:               .string          "show__STATIC__spademap"
.Lgvan17:               .string          "show__INITFLAG__0"
.Lgvan18:               .string          "Collections____STATIC__labels"
.Lgvan19:               .string          "Collections____INITFLAG__0"
.Lgvan20:               .string          "Regions____STATIC__labels"
.Lgvan21:               .string          "Regions____INITFLAG__0"
.Lgvan22:               .string          "Storage____STATIC__labels"
.Lgvan23:               .string          "Storage____INITFLAG__0"
.Lgvan24:               .string          "Time____STATIC__lasttime"
.Lgvan25:               .string          "Time____INITFLAG__0"
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
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1312
                        mov              qword ptr [rsp + 1304], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 1136
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n00385_lit_string_bx, @function
n00385_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00385_lit_string_α:     mov              r11, 465
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1225_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n00386_call_proc_staged_α
.Llit_string_α_1225_0:  .quad            .Llit_string_α_1225_0_s
.Llit_string_α_1225_0_s:
                        .string          "deal"
                        .size            n00385_lit_string_bx, .-n00385_lit_string_bx
                        .type            n00386_call_proc_staged_bx, @function
n00386_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00386_call_proc_staged_α:
                        mov              r11, 466
                        lea              rsi, [rbp + 1104]
                        call             Init___dcα;                          jmp   .Lcall_proc_staged_α_1227_2
.Lcall_proc_staged_α_1227_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1227_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
.Lcall_proc_staged_α_1227_29:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    n00387_lit_charset_α
                                                                              jmp   n00387_lit_charset_α
n00386_call_proc_staged_β:
                        mov              r11, 466;                            jmp   n00387_lit_charset_α
.Lcall_proc_staged_β_1227_0:
                        .quad            .Lcall_proc_staged_β_1227_0_s
.Lcall_proc_staged_β_1227_0_s:
                        .string          "Init__"
                        .size            n00386_call_proc_staged_bx, .-n00386_call_proc_staged_bx
                        .type            n00387_lit_charset_bx, @function
n00387_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00387_lit_charset_α:    mov              r11, 467
                        mov              qword ptr [rbp + 1024], 2            # result
                        mov              dword ptr [rbp + 1028], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1228_0]
                        mov              qword ptr [rbp + 1032], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1228_0]
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
                        pop              rax;                                 jmp   n00388_call_icon_α
.Llit_charset_α_1228_0: .quad            .Llit_charset_α_1228_0_s
.Llit_charset_α_1228_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00387_lit_charset_bx, .-n00387_lit_charset_bx
                        .type            n00388_call_icon_bx, @function
n00388_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00388_call_icon_α:      mov              r11, 468
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1230: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1230]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n00389_var_α
                                                                              jmp   n00390_assign_α
n00388_call_icon_β:      mov              r11, 468;                            jmp   n00389_var_α
                        .size            n00388_call_icon_bx, .-n00388_call_icon_bx
                        .type            n00390_assign_bx, @function
n00390_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00390_assign_α:         mov              r11, 469
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [r9 + 16], rax             # deckimage
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1231_0]
                        .section         .rodata
.Lassign_α_1231_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1231_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00391_assign_α
.Lassign_α_1231_0:      .quad            .Lassign_α_1231_0_s
.Lassign_α_1231_0_s:    .string          "deckimage"
                        .size            n00390_assign_bx, .-n00390_assign_bx
                        .type            n00391_assign_bx, @function
n00391_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00391_assign_α:         mov              r11, 470
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1232_0]
                        .section         .rodata
.Lassign_α_1232_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1232_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00389_var_α
.Lassign_α_1232_0:      .quad            .Lassign_α_1232_0_s
.Lassign_α_1232_0_s:    .string          "deck"
                        .size            n00391_assign_bx, .-n00391_assign_bx
                        .type            n00389_var_bx, @function
n00389_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00389_var_α:            mov              r11, 471
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 928], rax           # result
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00392_unop_α
                        .size            n00389_var_bx, .-n00389_var_bx
                        .type            n00392_unop_bx, @function
n00392_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00392_unop_α:           mov              r11, 472
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n00393_lit_integer_α
                        .size            n00392_unop_bx, .-n00392_unop_bx
                        .type            n00393_lit_integer_bx, @function
n00393_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00393_lit_integer_α:    mov              r11, 473
                        mov              qword ptr [rbp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1235_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00394_coerce_numeric_α
.Llit_integer_α_1235_0: .quad            4
                        .size            n00393_lit_integer_bx, .-n00393_lit_integer_bx
                        .type            n00394_coerce_numeric_bx, @function
n00394_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00394_coerce_numeric_α: mov              r11, 474
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1237_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1237_0
                        mov              eax, dword ptr [rbp + 944]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1237_0
.Lcoerce_numeric_α_1237_1:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00395_binop_α
.Lcoerce_numeric_α_1237_0:
                        lea              rdi, [rbp + 912]
                        lea              rsi, [rbp + 944]
                        lea              rdx, [rbp + 896]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 896]
                        cmp              al, 104;                             je    n00396_lit_string_α
                                                                              jmp   n00395_binop_α
                        .size            n00394_coerce_numeric_bx, .-n00394_coerce_numeric_bx
                        .type            n00395_binop_bx, @function
n00395_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00395_binop_α:          mov              r11, 475
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00396_lit_string_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00397_assign_α
                        .size            n00395_binop_bx, .-n00395_binop_bx
                        .type            n00397_assign_bx, @function
n00397_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00397_assign_α:         mov              r11, 476
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [r9 + 48], rax             # suitsize
                        mov              qword ptr [r9 + 56], rdx
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1239_0]
                        .section         .rodata
.Lassign_α_1239_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1239_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00398_assign_α
.Lassign_α_1239_0:      .quad            .Lassign_α_1239_0_s
.Lassign_α_1239_0_s:    .string          "suitsize"
                        .size            n00397_assign_bx, .-n00397_assign_bx
                        .type            n00398_assign_bx, @function
n00398_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00398_assign_α:         mov              r11, 477
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [r9 + 32], rax             # handsize
                        mov              qword ptr [r9 + 40], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1240_0]
                        .section         .rodata
.Lassign_α_1240_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1240_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00396_lit_string_α
.Lassign_α_1240_0:      .quad            .Lassign_α_1240_0_s
.Lassign_α_1240_0_s:    .string          "handsize"
                        .size            n00398_assign_bx, .-n00398_assign_bx
                        .type            n00396_lit_string_bx, @function
n00396_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00396_lit_string_α:     mov              r11, 478
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_1241_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00399_assign_α
.Llit_string_α_1241_0:  .quad            .Llit_string_α_1241_0_s
.Llit_string_α_1241_0_s:
                        .string          "AKQJT98765432"
                        .size            n00396_lit_string_bx, .-n00396_lit_string_bx
                        .type            n00399_assign_bx, @function
n00399_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00399_assign_α:         mov              r11, 479
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [r9 + 80], rax             # rank
                        mov              qword ptr [r9 + 88], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1242_0]
                        .section         .rodata
.Lassign_α_1242_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1242_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00400_lit_string_α
.Lassign_α_1242_0:      .quad            .Lassign_α_1242_0_s
.Lassign_α_1242_0_s:    .string          "rank"
                        .size            n00399_assign_bx, .-n00399_assign_bx
                        .type            n00400_lit_string_bx, @function
n00400_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00400_lit_string_α:     mov              r11, 480
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1243_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00401_var_ref_α
.Llit_string_α_1243_0:  .quad            .Llit_string_α_1243_0_s
.Llit_string_α_1243_0_s:
                        .string          " "
                        .size            n00400_lit_string_bx, .-n00400_lit_string_bx
                        .type            n00401_var_ref_bx, @function
n00401_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00401_var_ref_α:        mov              r11, 481
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # suitsize
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n00402_deref_α
                        .size            n00401_var_ref_bx, .-n00401_var_ref_bx
                        .type            n00402_deref_bx, @function
n00402_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00402_deref_α:          mov              r11, 482
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00403_lit_charset_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n00404_call_icon_α
                        .size            n00402_deref_bx, .-n00402_deref_bx
                        .type            n00404_call_icon_bx, @function
n00404_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00404_call_icon_α:      mov              r11, 483
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1248: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1248]
                        lea              rsi, [rbp + 720]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    n00403_lit_charset_α
                                                                              jmp   n00405_assign_α
n00404_call_icon_β:      mov              r11, 483;                            jmp   n00403_lit_charset_α
                        .size            n00404_call_icon_bx, .-n00404_call_icon_bx
                        .type            n00405_assign_bx, @function
n00405_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00405_assign_α:         mov              r11, 484
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [r9 + 96], rax             # blanker
                        mov              qword ptr [r9 + 104], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1249_0]
                        .section         .rodata
.Lassign_α_1249_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1249_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00403_lit_charset_α
.Lassign_α_1249_0:      .quad            .Lassign_α_1249_0_s
.Lassign_α_1249_0_s:    .string          "blanker"
                        .size            n00405_assign_bx, .-n00405_assign_bx
                        .type            n00403_lit_charset_bx, @function
n00403_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00403_lit_charset_α:    mov              r11, 485
                        mov              qword ptr [rbp + 624], 2             # result
                        mov              dword ptr [rbp + 628], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1250_0]
                        mov              qword ptr [rbp + 632], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1250_0]
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
                        pop              rax;                                 jmp   n00406_lit_integer_α
.Llit_charset_α_1250_0: .quad            .Llit_charset_α_1250_0_s
.Llit_charset_α_1250_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n00403_lit_charset_bx, .-n00403_lit_charset_bx
                        .type            n00406_lit_integer_bx, @function
n00406_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00406_lit_integer_α:    mov              r11, 486
                        mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1251_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00407_var_α
.Llit_integer_α_1251_0: .quad            1
                        .size            n00406_lit_integer_bx, .-n00406_lit_integer_bx
                        .type            n00407_var_bx, @function
n00407_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00407_var_α:            mov              r11, 487
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + 672], rax           # result
                        mov              qword ptr [rbp + 680], rdx;          jmp   n00408_binop_α
                        .size            n00407_var_bx, .-n00407_var_bx
                        .type            n00408_binop_bx, @function
n00408_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00408_binop_α:          mov              r11, 488
                        mov              eax, 3
                        mov              ecx, dword ptr [rbp + 672]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1253_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rbp + 680]
                        add              rax, rdx
                        mov              qword ptr [rbp + 688], 3
                        mov              qword ptr [rbp + 696], rax;          jmp   .Lbinop_α_1253_7
.Lbinop_α_1253_2:       and              edx, 1;                              jz    .Lbinop_α_1253_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rbp + 680]
                        cmp              al, 5;                               je    .Lbinop_α_1253_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1253_4
.Lbinop_α_1253_3:       movq             xmm0, rsi
.Lbinop_α_1253_4:       cmp              cl, 5;                               je    .Lbinop_α_1253_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1253_6
.Lbinop_α_1253_5:       movq             xmm1, rdi
.Lbinop_α_1253_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1253_0
                        mov              qword ptr [rbp + 688], 5
                        mov              qword ptr [rbp + 696], rax
.Lbinop_α_1253_7:                                                             jmp   n00409_subscript_α
.Lbinop_α_1253_0:       mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00410_var_ref_α
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00409_subscript_α
                        .size            n00408_binop_bx, .-n00408_binop_bx
                        .type            n00409_subscript_bx, @function
n00409_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00409_subscript_α:      mov              r11, 489
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              r8, qword ptr [rbp + 688]
                        mov              r9, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00410_var_ref_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00411_assign_α
                        .size            n00409_subscript_bx, .-n00409_subscript_bx
                        .type            n00411_assign_bx, @function
n00411_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00411_assign_α:         mov              r11, 490
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [r9 + 64], rax             # denom
                        mov              qword ptr [r9 + 72], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1255_0]
                        .section         .rodata
.Lassign_α_1255_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1255_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00410_var_ref_α
.Lassign_α_1255_0:      .quad            .Lassign_α_1255_0_s
.Lassign_α_1255_0_s:    .string          "denom"
                        .size            n00411_assign_bx, .-n00411_assign_bx
                        .type            n00410_var_ref_bx, @function
n00410_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00410_var_ref_α:        mov              r11, 491
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n00412_lit_string_α
                        .size            n00410_var_ref_bx, .-n00410_var_ref_bx
                        .type            n00412_lit_string_bx, @function
n00412_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00412_lit_string_α:     mov              r11, 492
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1258_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00413_deref_α
.Llit_string_α_1258_0:  .quad            .Llit_string_α_1258_0_s
.Llit_string_α_1258_0_s:
                        .string          "h+s+"
                        .size            n00412_lit_string_bx, .-n00412_lit_string_bx
                        .type            n00413_deref_bx, @function
n00413_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00413_deref_α:          mov              r11, 493
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
                        cmp              al, 104;                             je    n00414_disjunction_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00415_call_proc_staged_α
                        .size            n00413_deref_bx, .-n00413_deref_bx
                        .type            n00415_call_proc_staged_bx, @function
n00415_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00415_call_proc_staged_α:
                        mov              r11, 494
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 560]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1261_2
.Lcall_proc_staged_α_1261_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1261_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
.Lcall_proc_staged_α_1261_29:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n00414_disjunction_α
                                                                              jmp   n00416_assign_α
n00415_call_proc_staged_β:
                        mov              r11, 494;                            jmp   n00414_disjunction_α
.Lcall_proc_staged_β_1261_0:
                        .quad            .Lcall_proc_staged_β_1261_0_s
.Lcall_proc_staged_β_1261_0_s:
                        .string          "options"
                        .size            n00415_call_proc_staged_bx, .-n00415_call_proc_staged_bx
                        .type            n00416_assign_bx, @function
n00416_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00416_assign_α:         mov              r11, 495
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n00414_disjunction_α
                        .size            n00416_assign_bx, .-n00416_assign_bx
                        .type            n00414_disjunction_bx, @function
n00414_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00414_disjunction_α:    mov              r11, 496
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0;            jmp   n00417_var_ref_α
.Ldisjunction_γ_1204_as:
                        mov              r11, 496
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1264_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax;          jmp   n00418_assign_α
.Ldisjunction_α_1264_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1264_1
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 344], rax;          jmp   n00418_assign_α
.Ldisjunction_α_1264_1:                                                       jmp   n00418_assign_α
n00414_disjunction_β:    mov              r11, 496
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1204_af
                                                                              jmp   .Ldisjunction_ω_1204_af
.Ldisjunction_γ_1204_af:
                        mov              r11, 496
.Ldisjunction_ω_1204_af:
                        mov              r11, 496
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1;                              je    n00419_lit_integer_α
                                                                              jmp   n00420_var_ref_α
                        .size            n00414_disjunction_bx, .-n00414_disjunction_bx
                        .type            n00418_assign_bx, @function
n00418_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00418_assign_α:         mov              r11, 497
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n00420_var_ref_α
                        .size            n00418_assign_bx, .-n00418_assign_bx
                        .type            n00420_var_ref_bx, @function
n00420_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00420_var_ref_α:        mov              r11, 498
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00421_lit_string_α
                        .size            n00420_var_ref_bx, .-n00420_var_ref_bx
                        .type            n00421_lit_string_bx, @function
n00421_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00421_lit_string_α:     mov              r11, 499
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1268_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00422_subscript_α
.Llit_string_α_1268_0:  .quad            .Llit_string_α_1268_0_s
.Llit_string_α_1268_0_s:
                        .string          "s"
                        .size            n00421_lit_string_bx, .-n00421_lit_string_bx
                        .type            n00422_subscript_bx, @function
n00422_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00422_subscript_α:      mov              r11, 500
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00423_lit_integer_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00424_deref_α
                        .size            n00422_subscript_bx, .-n00422_subscript_bx
                        .type            n00424_deref_bx, @function
n00424_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00424_deref_α:          mov              r11, 501
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00423_lit_integer_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00425_unop_test_α
                        .size            n00424_deref_bx, .-n00424_deref_bx
                        .type            n00425_unop_test_bx, @function
n00425_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00425_unop_test_α:      mov              r11, 502
                        mov              eax, dword ptr [rbp + 304]
                        cmp              al, 104;                             je    n00423_lit_integer_α
                        cmp              eax, 0;                              je    n00423_lit_integer_α
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00426_kw_assign_α
                        .size            n00425_unop_test_bx, .-n00425_unop_test_bx
                        .type            n00426_kw_assign_bx, @function
n00426_kw_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00426_kw_assign_α:      mov              r11, 503
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_random_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00423_lit_integer_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00423_lit_integer_α
                        .size            n00426_kw_assign_bx, .-n00426_kw_assign_bx
                        .type            n00423_lit_integer_bx, @function
n00423_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00423_lit_integer_α:    mov              r11, 504
                        mov              qword ptr [rbp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1273_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n00427_var_α
.Llit_integer_α_1273_0: .quad            1
                        .size            n00423_lit_integer_bx, .-n00423_lit_integer_bx
                        .type            n00427_var_bx, @function
n00427_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00427_var_α:            mov              r11, 505
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00428_to_α
                        .size            n00427_var_bx, .-n00427_var_bx
                        .type            n00428_to_bx, @function
n00428_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00428_to_α:             mov              r11, 506
                        mov              rdi, qword ptr [rbp + 96]
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
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 80], rax
.Lto_α_1277_0:          mov              rax, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 120]
                        cmp              rax, rcx;                            jg    n00429_call_proc_staged_α
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax;           jmp   n00430_bound_α
n00428_to_β:             mov              r11, 506
                        inc              qword ptr [rbp + 80];                jmp   .Lto_α_1277_0
                        .size            n00428_to_bx, .-n00428_to_bx
                        .type            n00430_bound_bx, @function
n00430_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00430_bound_α:          mov              r11, 507
                        mov              qword ptr [rbp + 128], rsp;          jmp   n00431_call_proc_staged_α
                        .size            n00430_bound_bx, .-n00430_bound_bx
                        .type            n00431_call_proc_staged_bx, @function
n00431_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00431_call_proc_staged_α:
                        mov              r11, 508
                        call             display_dcα;                         jmp   .Lcall_proc_staged_α_1281_2
.Lcall_proc_staged_α_1281_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1281_29
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
.Lcall_proc_staged_α_1281_29:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00432_unmark_α
                                                                              jmp   n00432_unmark_α
n00431_call_proc_staged_β:
                        mov              r11, 508;                            jmp   n00432_unmark_α
.Lcall_proc_staged_β_1281_0:
                        .quad            .Lcall_proc_staged_β_1281_0_s
.Lcall_proc_staged_β_1281_0_s:
                        .string          "display"
                        .size            n00431_call_proc_staged_bx, .-n00431_call_proc_staged_bx
                        .type            n00432_unmark_bx, @function
n00432_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00432_unmark_α:         mov              r11, 509
                        mov              rsp, qword ptr [rbp + 128];          jmp   n00428_to_β
                        .size            n00432_unmark_bx, .-n00432_unmark_bx
                        .type            n00429_call_proc_staged_bx, @function
n00429_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00429_call_proc_staged_α:
                        mov              r11, 510
                        call             Term___dcα;                          jmp   .Lcall_proc_staged_α_1285_2
.Lcall_proc_staged_α_1285_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1285_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
.Lcall_proc_staged_α_1285_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00429_call_proc_staged_β:
                        mov              r11, 510;                            jmp   main_ω
.Lcall_proc_staged_β_1285_0:
                        .quad            .Lcall_proc_staged_β_1285_0_s
.Lcall_proc_staged_β_1285_0_s:
                        .string          "Term__"
                        .size            n00429_call_proc_staged_bx, .-n00429_call_proc_staged_bx
                        .type            n00419_lit_integer_bx, @function
n00419_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00419_lit_integer_α:    mov              r11, 511
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1286_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   .Ldisjunction_γ_1204_as
n00419_lit_integer_β:    mov              r11, 511;                            jmp   .Ldisjunction_ω_1204_af
.Llit_integer_α_1286_0: .quad            1
                        .size            n00419_lit_integer_bx, .-n00419_lit_integer_bx
                        .type            n00417_var_ref_bx, @function
n00417_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00417_var_ref_α:        mov              r11, 512
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00433_lit_string_α
n00417_var_ref_β:        mov              r11, 512;                            jmp   .Ldisjunction_ω_1204_af
                        .size            n00417_var_ref_bx, .-n00417_var_ref_bx
                        .type            n00433_lit_string_bx, @function
n00433_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00433_lit_string_α:     mov              r11, 513
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1289_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00434_subscript_α
.Llit_string_α_1289_0:  .quad            .Llit_string_α_1289_0_s
.Llit_string_α_1289_0_s:
                        .string          "h"
                        .size            n00433_lit_string_bx, .-n00433_lit_string_bx
                        .type            n00434_subscript_bx, @function
n00434_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00434_subscript_α:      mov              r11, 514
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1204_af
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00435_deref_α
                        .size            n00434_subscript_bx, .-n00434_subscript_bx
                        .type            n00435_deref_bx, @function
n00435_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00435_deref_α:          mov              r11, 515
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1204_af
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00436_unop_test_α
                        .size            n00435_deref_bx, .-n00435_deref_bx
                        .type            n00436_unop_test_bx, @function
n00436_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00436_unop_test_α:      mov              r11, 516
                        mov              eax, dword ptr [rbp + 448]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1204_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1204_af
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax;          jmp   .Ldisjunction_γ_1204_as
n00436_unop_test_β:      mov              r11, 516;                            jmp   .Ldisjunction_ω_1204_af
                        .size            n00436_unop_test_bx, .-n00436_unop_test_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_1292_248
                        .section         .rodata
.Licn_trace_nm1293:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1293]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1292_248:      mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_1292_249
                        .section         .rodata
.Licn_trace_nm1294:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1294]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1292_249:      mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "display"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__display
                        .quad            display_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1888
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "show"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__show
                        .quad            show_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1536
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "arrange"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__arrange
                        .quad            arrange_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            416
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "options"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__options
                        .quad            options_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            3264
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "Init__"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__Init__
                        .quad            Init___dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            464
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "Term__"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__Term__
                        .quad            Term___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            528
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "Collections__"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__Collections__
                        .quad            Collections___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1008
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "Regions__"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__Regions__
                        .quad            Regions___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            960
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "Signature__"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__Signature__
                        .quad            Signature___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            256
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "Storage__"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__Storage__
                        .quad            Storage___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            960
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "Time__"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__Time__
                        .quad            Time___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            256
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "shuffle"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__shuffle
                        .quad            shuffle_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            240
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
