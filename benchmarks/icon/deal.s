                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__display:
                        sub              rsp, 1936
                        mov              qword ptr [rsp + 1928], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 1824
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
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              dword ptr [rbp + 1440], 0;           jmp   n2_var_ref_α
.Ldisjunction_γ_1_as:   mov              r11, 1
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_80_0
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n17_var_α
.Ldisjunction_α_80_0:                                                         jmp   n17_var_α
n1_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rbp + 1440];         jmp   n17_var_α
.Ldisjunction_γ_1_af:   mov              r11, 1
.Ldisjunction_ω_1_af:   mov              r11, 1
                        add              dword ptr [rbp + 1440], 1
                        mov              eax, dword ptr [rbp + 1440];         jmp   n17_var_α
                        .size            n1_disjunction_bx, .-n1_disjunction_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # display__INITFLAG__0
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n3_nulltest_var_α
n2_var_ref_β:           mov              r11, 2;                              jmp   .Ldisjunction_ω_1_af
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_nulltest_var_bx, @function
n3_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1_af
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
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
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n4_lit_integer_α
                        .size            n3_nulltest_var_bx, .-n3_nulltest_var_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_84_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n5_assign_var_α
.Llit_integer_α_84_0:   .quad            1
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_assign_var_bx, @function
n5_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n6_lit_string_α
                        .size            n5_assign_var_bx, .-n5_assign_var_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rbp + 1616], 2            # result
                        mov              dword ptr [rbp + 1620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_86_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n7_lit_string_α
.Llit_string_α_86_0:    .quad            .Llit_string_α_86_0_s
.Llit_string_α_86_0_s:  .string          "\n"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rbp + 1712], 2            # result
                        mov              dword ptr [rbp + 1716], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_87_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n8_lit_integer_α
.Llit_string_α_87_0:    .quad            .Llit_string_α_87_0_s
.Llit_string_α_87_0_s:  .string          "-"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rbp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_88_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n9_call_icon_α
.Llit_integer_α_88_0:   .quad            33
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_call_icon_bx, @function
n9_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_icon_α:         mov              r11, 9
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lcall_icon_α_rkfn90:   .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn90]
                        lea              rsi, [rbp + 1664]
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
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              al, 104;                             je    n12_lit_string_α
                                                                              jmp   n10_binop_α
n9_call_icon_β:         mov              r11, 9;                              jmp   n12_lit_string_α
                        .size            n9_call_icon_bx, .-n9_call_icon_bx
                        .type            n10_binop_bx, @function
n10_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:            mov              r11, 10
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_assign_α
                        .size            n10_binop_bx, .-n10_binop_bx
                        .type            n11_assign_bx, @function
n11_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_92_0]
                        .section         .rodata
.Lassign_α_92_1_s:      .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_92_1_s]
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
.Lassign_α_92_0:        .quad            .Lassign_α_92_0_s
.Lassign_α_92_0_s:      .string          "display__STATIC__bar"
                        .size            n11_assign_bx, .-n11_assign_bx
                        .type            n12_lit_string_bx, @function
n12_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rbp + 1552], 2            # result
                        mov              dword ptr [rbp + 1556], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_93_0]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n13_lit_integer_α
.Llit_string_α_93_0:    .quad            .Llit_string_α_93_0_s
.Llit_string_α_93_0_s:  .string          " "
                        .size            n12_lit_string_bx, .-n12_lit_string_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rbp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_94_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n14_call_icon_α
.Llit_integer_α_94_0:   .quad            10
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_call_icon_bx, @function
n14_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_icon_α:        mov              r11, 14
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lcall_icon_α_rkfn96:   .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn96]
                        lea              rsi, [rbp + 1504]
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
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    n17_var_α
                                                                              jmp   n15_assign_α
n14_call_icon_β:        mov              r11, 14;                             jmp   n17_var_α
                        .size            n14_call_icon_bx, .-n14_call_icon_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        mov              qword ptr [r9 + 176], rax            # display__STATIC__offset
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_97_0]
                        .section         .rodata
.Lassign_α_97_1_s:      .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_97_1_s]
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
.Lassign_α_97_0:        .quad            .Lassign_α_97_0_s
.Lassign_α_97_0_s:      .string          "display__STATIC__offset"
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_conjunction_bx, @function
n16_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_conjunction_α:      mov              r11, 16
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1464], rax;         jmp   .Ldisjunction_γ_1_as
n16_conjunction_β:      mov              r11, 16;                             jmp   n17_var_α
                        .size            n16_conjunction_bx, .-n16_conjunction_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 17
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1408], rax          # result
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n18_call_proc_staged_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_call_proc_staged_bx, @function
n18_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α: mov              r11, 18
                        lea              rsi, [rbp + 1408]
                        call             shuffle_dcα;                         jmp   .Lcall_proc_staged_α_101_2
.Lcall_proc_staged_α_101_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_101_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
.Lcall_proc_staged_α_101_29:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    n20_make_list_α
                                                                              jmp   n19_assign_α
n18_call_proc_staged_β: mov              r11, 18;                             jmp   n20_make_list_α
.Lcall_proc_staged_β_101_0:
                        .quad            .Lcall_proc_staged_β_101_0_s
.Lcall_proc_staged_β_101_0_s:
                        .string          "shuffle"
                        .size            n18_call_proc_staged_bx, .-n18_call_proc_staged_bx
                        .type            n19_assign_bx, @function
n19_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_102_0]
                        .section         .rodata
.Lassign_α_102_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_102_1_s]
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
                        pop              rax;                                 jmp   n20_make_list_α
.Lassign_α_102_0:       .quad            .Lassign_α_102_0_s
.Lassign_α_102_0_s:     .string          "deck"
                        .size            n19_assign_bx, .-n19_assign_bx
                        .type            n20_make_list_bx, @function
n20_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_make_list_α:        mov              r11, 20
                        lea              rdi, [rbp + 1360]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n21_assign_α
                        .size            n20_make_list_bx, .-n20_make_list_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n22_var_α
                        .size            n21_assign_bx, .-n21_assign_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n23_var_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 23
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1120], rax          # result
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n24_lit_integer_α
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 24
                        mov              qword ptr [rbp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_109_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n25_lit_integer_α
.Llit_integer_α_109_0:  .quad            0
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rbp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_110_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n26_to_α
.Llit_integer_α_110_0:  .quad            3
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_to_bx, @function
n26_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_to_α:               mov              r11, 26
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
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
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], 3
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1232], rax
.Lto_α_112_0:           mov              rax, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1272]
                        cmp              rax, rcx;                            jg    n39_call_icon_α
                        mov              qword ptr [rbp + 1216], 3
                        mov              qword ptr [rbp + 1224], rax;         jmp   n27_var_α
n26_to_β:               mov              r11, 26
                        inc              qword ptr [rbp + 1232];              jmp   .Lto_α_112_0
                        .size            n26_to_bx, .-n26_to_bx
                        .type            n27_var_bx, @function
n27_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              r11, 27
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 1280], rax          # result
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n28_coerce_numeric_α
                        .size            n27_var_bx, .-n27_var_bx
                        .type            n28_coerce_numeric_bx, @function
n28_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:   mov              r11, 28
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_115_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_115_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_115_0
.Lcoerce_numeric_α_115_1:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n29_coerce_numeric_α
.Lcoerce_numeric_α_115_0:
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
                        cmp              al, 104;                             je    n39_call_icon_α
                                                                              jmp   n29_coerce_numeric_α
                        .size            n28_coerce_numeric_bx, .-n28_coerce_numeric_bx
                        .type            n29_coerce_numeric_bx, @function
n29_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:   mov              r11, 29
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_117_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_117_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_117_0
.Lcoerce_numeric_α_117_1:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n30_binop_α
.Lcoerce_numeric_α_117_0:
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
                        cmp              al, 104;                             je    n39_call_icon_α
                                                                              jmp   n30_binop_α
                        .size            n29_coerce_numeric_bx, .-n29_coerce_numeric_bx
                        .type            n30_binop_bx, @function
n30_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:            mov              r11, 30
                        mov              eax, dword ptr [rbp + 1200]
                        mov              ecx, dword ptr [rbp + 1184]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_118_2
                        mov              rax, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1192]
                        imul             rax, rdx;                            jo    .Lbinop_α_118_0
                        mov              qword ptr [rbp + 1168], 3
                        mov              qword ptr [rbp + 1176], rax;         jmp   .Lbinop_α_118_7
.Lbinop_α_118_2:        and              edx, 1;                              jz    .Lbinop_α_118_0
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdi, qword ptr [rbp + 1192]
                        cmp              al, 5;                               je    .Lbinop_α_118_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_118_4
.Lbinop_α_118_3:        movq             xmm0, rsi
.Lbinop_α_118_4:        cmp              cl, 5;                               je    .Lbinop_α_118_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_118_6
.Lbinop_α_118_5:        movq             xmm1, rdi
.Lbinop_α_118_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_118_0
                        mov              qword ptr [rbp + 1168], 5
                        mov              qword ptr [rbp + 1176], rax
.Lbinop_α_118_7:                                                              jmp   n31_lit_integer_α
.Lbinop_α_118_0:        mov              rdi, qword ptr [rbp + 1200]
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
                        cmp              al, 104;                             je    n39_call_icon_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n31_lit_integer_α
                        .size            n30_binop_bx, .-n30_binop_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rbp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_119_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n32_coerce_numeric_α
.Llit_integer_α_119_0:  .quad            1
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_coerce_numeric_bx, @function
n32_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_numeric_α:   mov              r11, 32
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_121_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_121_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_121_0
.Lcoerce_numeric_α_121_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n33_binop_α
.Lcoerce_numeric_α_121_0:
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
                        cmp              al, 104;                             je    n39_call_icon_α
                                                                              jmp   n33_binop_α
                        .size            n32_coerce_numeric_bx, .-n32_coerce_numeric_bx
                        .type            n33_binop_bx, @function
n33_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:            mov              r11, 33
                        mov              eax, dword ptr [rbp + 1152]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_122_2
                        mov              rax, qword ptr [rbp + 1160]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_122_0
                        mov              qword ptr [rbp + 1136], 3
                        mov              qword ptr [rbp + 1144], rax;         jmp   .Lbinop_α_122_7
.Lbinop_α_122_2:        and              edx, 1;                              jz    .Lbinop_α_122_0
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_122_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_122_4
.Lbinop_α_122_3:        movq             xmm0, rsi
.Lbinop_α_122_4:        cmp              cl, 5;                               je    .Lbinop_α_122_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_122_6
.Lbinop_α_122_5:        movq             xmm1, rdi
.Lbinop_α_122_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_122_0
                        mov              qword ptr [rbp + 1136], 5
                        mov              qword ptr [rbp + 1144], rax
.Lbinop_α_122_7:                                                              jmp   n34_var_α
.Lbinop_α_122_0:        mov              rdi, qword ptr [rbp + 1152]
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
                        cmp              al, 104;                             je    n39_call_icon_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n34_var_α
                        .size            n33_binop_bx, .-n33_binop_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 34
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 1312], rax          # result
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n35_binop_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_binop_bx, @function
n35_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:            mov              r11, 35
                        mov              eax, dword ptr [rbp + 1136]
                        mov              ecx, dword ptr [rbp + 1312]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_124_2
                        mov              rax, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1320]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1328], 3
                        mov              qword ptr [rbp + 1336], rax;         jmp   .Lbinop_α_124_7
.Lbinop_α_124_2:        and              edx, 1;                              jz    .Lbinop_α_124_0
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdi, qword ptr [rbp + 1320]
                        cmp              al, 5;                               je    .Lbinop_α_124_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_124_4
.Lbinop_α_124_3:        movq             xmm0, rsi
.Lbinop_α_124_4:        cmp              cl, 5;                               je    .Lbinop_α_124_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_124_6
.Lbinop_α_124_5:        movq             xmm1, rdi
.Lbinop_α_124_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_124_0
                        mov              qword ptr [rbp + 1328], 5
                        mov              qword ptr [rbp + 1336], rax
.Lbinop_α_124_7:                                                              jmp   n36_subscript_α
.Lbinop_α_124_0:        mov              rdi, qword ptr [rbp + 1136]
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
                        cmp              al, 104;                             je    n26_to_β
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n36_subscript_α
                        .size            n35_binop_bx, .-n35_binop_bx
                        .type            n36_subscript_bx, @function
n36_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_subscript_α:        mov              r11, 36
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
                        cmp              al, 104;                             je    n26_to_β
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n37_call_proc_staged_α
                        .size            n36_subscript_bx, .-n36_subscript_bx
                        .type            n37_call_proc_staged_bx, @function
n37_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α: mov              r11, 37
                        lea              rsi, [rbp + 1104]
                        call             show_dcα;                            jmp   .Lcall_proc_staged_α_127_2
.Lcall_proc_staged_α_127_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_127_29
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
.Lcall_proc_staged_α_127_29:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    n26_to_β
                                                                              jmp   n38_call_icon_α
n37_call_proc_staged_β: mov              r11, 37;                             jmp   n26_to_β
.Lcall_proc_staged_β_127_0:
                        .quad            .Lcall_proc_staged_β_127_0_s
.Lcall_proc_staged_β_127_0_s:
                        .string          "show"
                        .size            n37_call_proc_staged_bx, .-n37_call_proc_staged_bx
                        .type            n38_call_icon_bx, @function
n38_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_icon_α:        mov              r11, 38
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn129:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn129]
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
                        cmp              al, 104;                             je    n26_to_β
                                                                              jmp   n26_to_β
n38_call_icon_β:        mov              r11, 38;                             jmp   n26_to_β
                        .size            n38_call_icon_bx, .-n38_call_icon_bx
                        .type            n39_call_icon_bx, @function
n39_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_icon_α:        mov              r11, 39
                        .section         .rodata
.Lcall_icon_α_rkfn131:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn131]
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
                        cmp              al, 104;                             je    n40_var_α
                                                                              jmp   n40_var_α
n39_call_icon_β:        mov              r11, 39;                             jmp   n40_var_α
                        .size            n39_call_icon_bx, .-n39_call_icon_bx
                        .type            n40_var_bx, @function
n40_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              r11, 40
                        mov              rax, qword ptr [r9 + 176]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 832], rax           # result
                        mov              qword ptr [rbp + 840], rdx;          jmp   n41_var_ref_α
                        .size            n40_var_bx, .-n40_var_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n42_lit_integer_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_lit_integer_bx, @function
n42_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_135_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n43_subscript_α
.Llit_integer_α_135_0:  .quad            1
                        .size            n42_lit_integer_bx, .-n42_lit_integer_bx
                        .type            n43_subscript_bx, @function
n43_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_subscript_α:        mov              r11, 43
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
                        cmp              al, 104;                             je    n47_call_icon_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n44_deref_α
                        .size            n43_subscript_bx, .-n43_subscript_bx
                        .type            n44_deref_bx, @function
n44_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_deref_α:            mov              r11, 44
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
                        cmp              al, 104;                             je    n47_call_icon_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n45_iterate_α
                        .size            n44_deref_bx, .-n44_deref_bx
                        .type            n45_iterate_bx, @function
n45_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_iterate_α:          mov              r11, 45
                        mov              qword ptr [rbp + 864], 0
.Literate_α_139_0:      mov              rdi, qword ptr [rbp + 928]
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
                        cmp              al, 104;                             je    n47_call_icon_α
                                                                              jmp   n46_call_icon_α
n45_iterate_β:          mov              r11, 45
                        inc              qword ptr [rbp + 864];               jmp   .Literate_α_139_0
                        .size            n45_iterate_bx, .-n45_iterate_bx
                        .type            n46_call_icon_bx, @function
n46_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_icon_α:        mov              r11, 46
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lcall_icon_α_rkfn141:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn141]
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
                        cmp              al, 104;                             je    n45_iterate_β
                                                                              jmp   n45_iterate_β
n46_call_icon_β:        mov              r11, 46;                             jmp   n45_iterate_β
                        .size            n46_call_icon_bx, .-n46_call_icon_bx
                        .type            n47_call_icon_bx, @function
n47_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_icon_α:        mov              r11, 47
                        .section         .rodata
.Lcall_icon_α_rkfn143:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn143]
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
                        cmp              al, 104;                             je    n48_lit_integer_α
                                                                              jmp   n48_lit_integer_α
n47_call_icon_β:        mov              r11, 47;                             jmp   n48_lit_integer_α
                        .size            n47_call_icon_bx, .-n47_call_icon_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_144_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n49_lit_integer_α
.Llit_integer_α_144_0:  .quad            1
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_lit_integer_bx, @function
n49_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rbp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_145_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n50_to_α
.Llit_integer_α_145_0:  .quad            4
                        .size            n49_lit_integer_bx, .-n49_lit_integer_bx
                        .type            n50_to_bx, @function
n50_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_to_α:               mov              r11, 50
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
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
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], 3
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 304], rax
.Lto_α_147_0:           mov              rax, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 344]
                        cmp              rax, rcx;                            jg    n69_call_icon_α
                        mov              qword ptr [rbp + 288], 3
                        mov              qword ptr [rbp + 296], rax;          jmp   n51_assign_α
n50_to_β:               mov              r11, 50
                        inc              qword ptr [rbp + 304];               jmp   .Lto_α_147_0
                        .size            n50_to_bx, .-n50_to_bx
                        .type            n51_assign_bx, @function
n51_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n52_bound_α
                        .size            n51_assign_bx, .-n51_assign_bx
                        .type            n52_bound_bx, @function
n52_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_bound_α:            mov              r11, 52
                        mov              qword ptr [rbp + 352], rsp;          jmp   n53_var_ref_α
                        .size            n52_bound_bx, .-n52_bound_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n54_lit_integer_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_lit_integer_bx, @function
n54_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              r11, 54
                        mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_153_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n55_subscript_α
.Llit_integer_α_153_0:  .quad            4
                        .size            n54_lit_integer_bx, .-n54_lit_integer_bx
                        .type            n55_subscript_bx, @function
n55_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:        mov              r11, 55
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
                        cmp              al, 104;                             je    n68_unmark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n56_var_α
                        .size            n55_subscript_bx, .-n55_subscript_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              mov              r11, 56
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 584], rax;          jmp   n57_subscript_α
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_subscript_bx, @function
n57_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_subscript_α:        mov              r11, 57
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
                        cmp              al, 104;                             je    n68_unmark_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n58_deref_α
                        .size            n57_subscript_bx, .-n57_subscript_bx
                        .type            n58_deref_bx, @function
n58_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_deref_α:            mov              r11, 58
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
                        cmp              al, 104;                             je    n68_unmark_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n59_lit_integer_α
                        .size            n58_deref_bx, .-n58_deref_bx
                        .type            n59_lit_integer_bx, @function
n59_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rbp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n60_call_icon_α
.Llit_integer_α_159_0:  .quad            20
                        .size            n59_lit_integer_bx, .-n59_lit_integer_bx
                        .type            n60_call_icon_bx, @function
n60_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_icon_α:        mov              r11, 60
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lcall_icon_α_rkfn161:  .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn161]
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
                        cmp              al, 104;                             je    n68_unmark_α
                                                                              jmp   n61_var_ref_α
n60_call_icon_β:        mov              r11, 60;                             jmp   n68_unmark_α
                        .size            n60_call_icon_bx, .-n60_call_icon_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n62_lit_integer_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      mov              r11, 62
                        mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_164_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n63_subscript_α
.Llit_integer_α_164_0:  .quad            2
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_subscript_bx, @function
n63_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:        mov              r11, 63
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
                        cmp              al, 104;                             je    n68_unmark_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n64_var_α
                        .size            n63_subscript_bx, .-n63_subscript_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              r11, 64
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 696], rax;          jmp   n65_subscript_α
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_subscript_bx, @function
n65_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:        mov              r11, 65
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
                        cmp              al, 104;                             je    n68_unmark_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n66_deref_α
                        .size            n65_subscript_bx, .-n65_subscript_bx
                        .type            n66_deref_bx, @function
n66_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            mov              r11, 66
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
                        cmp              al, 104;                             je    n68_unmark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n67_call_icon_α
                        .size            n66_deref_bx, .-n66_deref_bx
                        .type            n67_call_icon_bx, @function
n67_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_icon_α:        mov              r11, 67
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn171:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn171]
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
                        cmp              al, 104;                             je    n68_unmark_α
                                                                              jmp   n68_unmark_α
n67_call_icon_β:        mov              r11, 67;                             jmp   n68_unmark_α
                        .size            n67_call_icon_bx, .-n67_call_icon_bx
                        .type            n68_unmark_bx, @function
n68_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_unmark_α:           mov              r11, 68
                        mov              rsp, qword ptr [rbp + 352];          jmp   n50_to_β
                        .size            n68_unmark_bx, .-n68_unmark_bx
                        .type            n69_call_icon_bx, @function
n69_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_icon_α:        mov              r11, 69
                        .section         .rodata
.Lcall_icon_α_rkfn175:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn175]
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
                        cmp              al, 104;                             je    n70_var_α
                                                                              jmp   n70_var_α
n69_call_icon_β:        mov              r11, 69;                             jmp   n70_var_α
                        .size            n69_call_icon_bx, .-n69_call_icon_bx
                        .type            n70_var_bx, @function
n70_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              mov              r11, 70
                        mov              rax, qword ptr [r9 + 176]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 128], rax           # result
                        mov              qword ptr [rbp + 136], rdx;          jmp   n71_var_ref_α
                        .size            n70_var_bx, .-n70_var_bx
                        .type            n71_var_ref_bx, @function
n71_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n72_lit_integer_α
                        .size            n71_var_ref_bx, .-n71_var_ref_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              r11, 72
                        mov              qword ptr [rbp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_179_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n73_subscript_α
.Llit_integer_α_179_0:  .quad            3
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_subscript_bx, @function
n73_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_subscript_α:        mov              r11, 73
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
                        cmp              al, 104;                             je    n77_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n74_deref_α
                        .size            n73_subscript_bx, .-n73_subscript_bx
                        .type            n74_deref_bx, @function
n74_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:            mov              r11, 74
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
                        cmp              al, 104;                             je    n77_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n75_iterate_α
                        .size            n74_deref_bx, .-n74_deref_bx
                        .type            n75_iterate_bx, @function
n75_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_iterate_α:          mov              r11, 75
                        mov              qword ptr [rbp + 160], 0
.Literate_α_183_0:      mov              rdi, qword ptr [rbp + 224]
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
                        cmp              al, 104;                             je    n77_var_α
                                                                              jmp   n76_call_icon_α
n75_iterate_β:          mov              r11, 75
                        inc              qword ptr [rbp + 160];               jmp   .Literate_α_183_0
                        .size            n75_iterate_bx, .-n75_iterate_bx
                        .type            n76_call_icon_bx, @function
n76_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_icon_α:        mov              r11, 76
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn185:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn185]
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
                        cmp              al, 104;                             je    n75_iterate_β
                                                                              jmp   n75_iterate_β
n76_call_icon_β:        mov              r11, 76;                             jmp   n75_iterate_β
                        .size            n76_call_icon_bx, .-n76_call_icon_bx
                        .type            n77_var_bx, @function
n77_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              r11, 77
                        mov              rax, qword ptr [r9 + 160]            # display__STATIC__bar
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rbp + 48], rax            # result
                        mov              qword ptr [rbp + 56], rdx;           jmp   n78_call_icon_α
                        .size            n77_var_bx, .-n77_var_bx
                        .type            n78_call_icon_bx, @function
n78_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_icon_α:        mov              r11, 78
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn188:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn188]
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
n78_call_icon_β:        mov              r11, 78;                             jmp   display_ω
                        .size            n78_call_icon_bx, .-n78_call_icon_bx
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
                        cmp              rax, 0;                              je    .Ldisplay_α_187_248
                        .section         .rodata
.Licn_trace_nm189:      .string          "display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm189]
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
.Ldisplay_α_187_248:    mov              rsp, rbx
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
                        lea              rsp, [rbp + 1936]
                        mov              rbp, qword ptr [rbp + 1928];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
display_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ldisplay_α_187_249
                        .section         .rodata
.Licn_trace_nm190:      .string          "display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm190]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldisplay_α_187_249:    mov              rsp, rbx
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
                        lea              rsp, [rbp + 1936]
                        mov              rbp, qword ptr [rbp + 1928];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
display_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Ldisplay_α_191_3]
                        push             rcx
                        lea              rcx, [rip + .Ldisplay_α_191_2]
                        push             rcx;                                 jmp   FN__display
.Ldisplay_α_191_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ldisplay_α_191_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1464], rbp
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
                        cmp              rax, 0;                              je    .Lshow_α_191_247
                        .section         .rodata
.Licn_trace_nm192:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm192]
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
.Lshow_α_191_247:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
show_α_body:
                        .type            n00001_disjunction_bx, @function
n00001_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_disjunction_α:     mov              r11, 79
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0;            jmp   n00002_var_ref_α
.Ldisjunction_γ_193_as: mov              r11, 79
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_250_0
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00003_lit_string_α
.Ldisjunction_α_250_0:                                                        jmp   n00003_lit_string_α
n00001_disjunction_β:     mov              r11, 79
                        mov              eax, dword ptr [rbp + 704];          jmp   n00003_lit_string_α
.Ldisjunction_γ_193_af: mov              r11, 79
.Ldisjunction_ω_193_af: mov              r11, 79
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704];          jmp   n00003_lit_string_α
                        .size            n00001_disjunction_bx, .-n00001_disjunction_bx
                        .type            n00002_var_ref_bx, @function
n00002_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                      # show__INITFLAG__0
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n00004_nulltest_var_α
n00002_var_ref_β:         mov              r11, 80;                             jmp   .Ldisjunction_ω_193_af
                        .size            n00002_var_ref_bx, .-n00002_var_ref_bx
                        .type            n00004_nulltest_var_bx, @function
n00004_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_nulltest_var_α:    mov              r11, 81
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              al, 104;                             je    .Ldisjunction_ω_193_af
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_193_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_193_af
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00005_lit_integer_α
                        .size            n00004_nulltest_var_bx, .-n00004_nulltest_var_bx
                        .type            n00005_lit_integer_bx, @function
n00005_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rbp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_254_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n00006_assign_var_α
.Llit_integer_α_254_0:  .quad            1
                        .size            n00005_lit_integer_bx, .-n00005_lit_integer_bx
                        .type            n00006_assign_var_bx, @function
n00006_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_assign_var_α:      mov              r11, 83
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_193_af
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n00007_var_α
                        .size            n00006_assign_var_bx, .-n00006_assign_var_bx
                        .type            n00007_var_bx, @function
n00007_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_α:             mov              r11, 84
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1232], rax          # result
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n00008_var_α
                        .size            n00007_var_bx, .-n00007_var_bx
                        .type            n00008_var_bx, @function
n00008_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_α:             mov              r11, 85
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1312], rax          # result
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n00009_lit_integer_α
                        .size            n00008_var_bx, .-n00008_var_bx
                        .type            n00009_lit_integer_bx, @function
n00009_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rbp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_258_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n00010_call_icon_α
.Llit_integer_α_258_0:  .quad            3
                        .size            n00009_lit_integer_bx, .-n00009_lit_integer_bx
                        .type            n00010_call_icon_bx, @function
n00010_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_call_icon_α:       mov              r11, 87
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lcall_icon_α_rkfn260:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn260]
                        lea              rsi, [rbp + 1264]
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
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    n00011_var_α
                                                                              jmp   n00012_binop_α
n00010_call_icon_β:       mov              r11, 87;                             jmp   n00011_var_α
                        .size            n00010_call_icon_bx, .-n00010_call_icon_bx
                        .type            n00012_binop_bx, @function
n00012_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_binop_α:           mov              r11, 88
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00013_assign_α
                        .size            n00012_binop_bx, .-n00012_binop_bx
                        .type            n00013_assign_bx, @function
n00013_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_assign_α:          mov              r11, 89
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_262_0]
                        .section         .rodata
.Lassign_α_262_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_262_1_s]
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
.Lassign_α_262_0:       .quad            .Lassign_α_262_0_s
.Lassign_α_262_0_s:     .string          "show__STATIC__clubmap"
                        .size            n00013_assign_bx, .-n00013_assign_bx
                        .type            n00011_var_bx, @function
n00011_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_var_α:             mov              r11, 90
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1088], rax          # result
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00014_var_α
                        .size            n00011_var_bx, .-n00011_var_bx
                        .type            n00014_var_bx, @function
n00014_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:             mov              r11, 91
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1104], rax          # result
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00015_binop_α
                        .size            n00014_var_bx, .-n00014_var_bx
                        .type            n00015_binop_bx, @function
n00015_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_binop_α:           mov              r11, 92
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00016_var_α
                        .size            n00015_binop_bx, .-n00015_binop_bx
                        .type            n00016_var_bx, @function
n00016_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_var_α:             mov              r11, 93
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1184], rax          # result
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n00017_lit_integer_α
                        .size            n00016_var_bx, .-n00016_var_bx
                        .type            n00017_lit_integer_bx, @function
n00017_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rbp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_267_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n00018_call_icon_α
.Llit_integer_α_267_0:  .quad            2
                        .size            n00017_lit_integer_bx, .-n00017_lit_integer_bx
                        .type            n00018_call_icon_bx, @function
n00018_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_call_icon_α:       mov              r11, 95
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lcall_icon_α_rkfn269:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn269]
                        lea              rsi, [rbp + 1136]
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
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    n00019_var_α
                                                                              jmp   n00020_binop_α
n00018_call_icon_β:       mov              r11, 95;                             jmp   n00019_var_α
                        .size            n00018_call_icon_bx, .-n00018_call_icon_bx
                        .type            n00020_binop_bx, @function
n00020_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_binop_α:           mov              r11, 96
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00021_assign_α
                        .size            n00020_binop_bx, .-n00020_binop_bx
                        .type            n00021_assign_bx, @function
n00021_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_assign_α:          mov              r11, 97
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_271_0]
                        .section         .rodata
.Lassign_α_271_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_271_1_s]
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
                        pop              rax;                                 jmp   n00019_var_α
.Lassign_α_271_0:       .quad            .Lassign_α_271_0_s
.Lassign_α_271_0_s:     .string          "show__STATIC__diamondmap"
                        .size            n00021_assign_bx, .-n00021_assign_bx
                        .type            n00019_var_bx, @function
n00019_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_α:             mov              r11, 98
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 992], rax           # result
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n00022_lit_integer_α
                        .size            n00019_var_bx, .-n00019_var_bx
                        .type            n00022_lit_integer_bx, @function
n00022_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rbp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_273_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n00023_call_icon_α
.Llit_integer_α_273_0:  .quad            2
                        .size            n00022_lit_integer_bx, .-n00022_lit_integer_bx
                        .type            n00023_call_icon_bx, @function
n00023_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_call_icon_α:       mov              r11, 100
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lcall_icon_α_rkfn275:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn275]
                        lea              rsi, [rbp + 944]
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
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n00024_var_α
                                                                              jmp   n00025_var_α
n00023_call_icon_β:       mov              r11, 100;                            jmp   n00024_var_α
                        .size            n00023_call_icon_bx, .-n00023_call_icon_bx
                        .type            n00025_var_bx, @function
n00025_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_var_α:             mov              r11, 101
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 1024], rax          # result
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n00026_binop_α
                        .size            n00025_var_bx, .-n00025_var_bx
                        .type            n00026_binop_bx, @function
n00026_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_binop_α:           mov              r11, 102
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00027_var_α
                        .size            n00026_binop_bx, .-n00026_binop_bx
                        .type            n00027_var_bx, @function
n00027_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_α:             mov              r11, 103
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 1040], rax          # result
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00028_binop_α
                        .size            n00027_var_bx, .-n00027_var_bx
                        .type            n00028_binop_bx, @function
n00028_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_binop_α:           mov              r11, 104
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00029_assign_α
                        .size            n00028_binop_bx, .-n00028_binop_bx
                        .type            n00029_assign_bx, @function
n00029_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_280_0]
                        .section         .rodata
.Lassign_α_280_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_280_1_s]
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
                        pop              rax;                                 jmp   n00024_var_α
.Lassign_α_280_0:       .quad            .Lassign_α_280_0_s
.Lassign_α_280_0_s:     .string          "show__STATIC__heartmap"
                        .size            n00029_assign_bx, .-n00029_assign_bx
                        .type            n00024_var_bx, @function
n00024_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_var_α:             mov              r11, 106
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 832], rax           # result
                        mov              qword ptr [rbp + 840], rdx;          jmp   n00030_lit_integer_α
                        .size            n00024_var_bx, .-n00024_var_bx
                        .type            n00030_lit_integer_bx, @function
n00030_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rbp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_282_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00031_call_icon_α
.Llit_integer_α_282_0:  .quad            3
                        .size            n00030_lit_integer_bx, .-n00030_lit_integer_bx
                        .type            n00031_call_icon_bx, @function
n00031_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_call_icon_α:       mov              r11, 108
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lcall_icon_α_rkfn284:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn284]
                        lea              rsi, [rbp + 784]
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
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    n00003_lit_string_α
                                                                              jmp   n00032_var_α
n00031_call_icon_β:       mov              r11, 108;                            jmp   n00003_lit_string_α
                        .size            n00031_call_icon_bx, .-n00031_call_icon_bx
                        .type            n00032_var_bx, @function
n00032_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_α:             mov              r11, 109
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 864], rax           # result
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00033_binop_α
                        .size            n00032_var_bx, .-n00032_var_bx
                        .type            n00033_binop_bx, @function
n00033_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_binop_α:           mov              r11, 110
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00034_assign_α
                        .size            n00033_binop_bx, .-n00033_binop_bx
                        .type            n00034_assign_bx, @function
n00034_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [r9 + 256], rax            # show__STATIC__spademap
                        mov              qword ptr [r9 + 264], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_287_0]
                        .section         .rodata
.Lassign_α_287_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_287_1_s]
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
                        pop              rax;                                 jmp   n00035_conjunction_α
.Lassign_α_287_0:       .quad            .Lassign_α_287_0_s
.Lassign_α_287_0_s:     .string          "show__STATIC__spademap"
                        .size            n00034_assign_bx, .-n00034_assign_bx
                        .type            n00035_conjunction_bx, @function
n00035_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_conjunction_α:     mov              r11, 112
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax;          jmp   .Ldisjunction_γ_193_as
n00035_conjunction_β:     mov              r11, 112;                            jmp   n00003_lit_string_α
                        .size            n00035_conjunction_bx, .-n00035_conjunction_bx
                        .type            n00003_lit_string_bx, @function
n00003_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_289_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00036_var_α
.Llit_string_α_289_0:   .quad            .Llit_string_α_289_0_s
.Llit_string_α_289_0_s: .string          "S: "
                        .size            n00003_lit_string_bx, .-n00003_lit_string_bx
                        .type            n00036_var_bx, @function
n00036_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00037_var_α
                        .size            n00036_var_bx, .-n00036_var_bx
                        .type            n00037_var_bx, @function
n00037_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_var_α:             mov              r11, 115
                        mov              rax, qword ptr [r9 + 256]            # show__STATIC__spademap
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rbp + 240], rax           # result
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00038_call_proc_staged_α
                        .size            n00037_var_bx, .-n00037_var_bx
                        .type            n00038_call_proc_staged_bx, @function
n00038_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_call_proc_staged_α:
                        mov              r11, 116
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 240]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_294_2
.Lcall_proc_staged_α_294_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_294_29
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
.Lcall_proc_staged_α_294_29:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00039_binop_α
n00038_call_proc_staged_β:
                        mov              r11, 116;                            jmp   show_ω
.Lcall_proc_staged_β_294_0:
                        .quad            .Lcall_proc_staged_β_294_0_s
.Lcall_proc_staged_β_294_0_s:
                        .string          "arrange"
                        .size            n00038_call_proc_staged_bx, .-n00038_call_proc_staged_bx
                        .type            n00039_binop_bx, @function
n00039_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_binop_α:           mov              r11, 117
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00040_lit_string_α
                        .size            n00039_binop_bx, .-n00039_binop_bx
                        .type            n00040_lit_string_bx, @function
n00040_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_296_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00041_var_α
.Llit_string_α_296_0:   .quad            .Llit_string_α_296_0_s
.Llit_string_α_296_0_s: .string          "H: "
                        .size            n00040_lit_string_bx, .-n00040_lit_string_bx
                        .type            n00041_var_bx, @function
n00041_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:             mov              r11, 119
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00042_var_α
                        .size            n00041_var_bx, .-n00041_var_bx
                        .type            n00042_var_bx, @function
n00042_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:             mov              r11, 120
                        mov              rax, qword ptr [r9 + 240]            # show__STATIC__heartmap
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rbp + 384], rax           # result
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00043_call_proc_staged_α
                        .size            n00042_var_bx, .-n00042_var_bx
                        .type            n00043_call_proc_staged_bx, @function
n00043_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_call_proc_staged_α:
                        mov              r11, 121
                        lea              rsi, [rbp + 368]
                        lea              rdx, [rbp + 384]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_301_2
.Lcall_proc_staged_α_301_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_301_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
.Lcall_proc_staged_α_301_29:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00044_binop_α
n00043_call_proc_staged_β:
                        mov              r11, 121;                            jmp   show_ω
.Lcall_proc_staged_β_301_0:
                        .quad            .Lcall_proc_staged_β_301_0_s
.Lcall_proc_staged_β_301_0_s:
                        .string          "arrange"
                        .size            n00043_call_proc_staged_bx, .-n00043_call_proc_staged_bx
                        .type            n00044_binop_bx, @function
n00044_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_binop_α:           mov              r11, 122
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00045_lit_string_α
                        .size            n00044_binop_bx, .-n00044_binop_bx
                        .type            n00045_lit_string_bx, @function
n00045_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_303_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00046_var_α
.Llit_string_α_303_0:   .quad            .Llit_string_α_303_0_s
.Llit_string_α_303_0_s: .string          "D: "
                        .size            n00045_lit_string_bx, .-n00045_lit_string_bx
                        .type            n00046_var_bx, @function
n00046_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00047_var_α
                        .size            n00046_var_bx, .-n00046_var_bx
                        .type            n00047_var_bx, @function
n00047_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:             mov              r11, 125
                        mov              rax, qword ptr [r9 + 224]            # show__STATIC__diamondmap
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rbp + 528], rax           # result
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00048_call_proc_staged_α
                        .size            n00047_var_bx, .-n00047_var_bx
                        .type            n00048_call_proc_staged_bx, @function
n00048_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_call_proc_staged_α:
                        mov              r11, 126
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 528]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_308_2
.Lcall_proc_staged_α_308_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_308_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
.Lcall_proc_staged_α_308_29:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00049_binop_α
n00048_call_proc_staged_β:
                        mov              r11, 126;                            jmp   show_ω
.Lcall_proc_staged_β_308_0:
                        .quad            .Lcall_proc_staged_β_308_0_s
.Lcall_proc_staged_β_308_0_s:
                        .string          "arrange"
                        .size            n00048_call_proc_staged_bx, .-n00048_call_proc_staged_bx
                        .type            n00049_binop_bx, @function
n00049_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_binop_α:           mov              r11, 127
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00050_lit_string_α
                        .size            n00049_binop_bx, .-n00049_binop_bx
                        .type            n00050_lit_string_bx, @function
n00050_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_310_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00051_var_α
.Llit_string_α_310_0:   .quad            .Llit_string_α_310_0_s
.Llit_string_α_310_0_s: .string          "C: "
                        .size            n00050_lit_string_bx, .-n00050_lit_string_bx
                        .type            n00051_var_bx, @function
n00051_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00052_var_α
                        .size            n00051_var_bx, .-n00051_var_bx
                        .type            n00052_var_bx, @function
n00052_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:             mov              r11, 130
                        mov              rax, qword ptr [r9 + 208]            # show__STATIC__clubmap
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rbp + 672], rax           # result
                        mov              qword ptr [rbp + 680], rdx;          jmp   n00053_call_proc_staged_α
                        .size            n00052_var_bx, .-n00052_var_bx
                        .type            n00053_call_proc_staged_bx, @function
n00053_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_call_proc_staged_α:
                        mov              r11, 131
                        lea              rsi, [rbp + 656]
                        lea              rdx, [rbp + 672]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_315_2
.Lcall_proc_staged_α_315_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_315_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
.Lcall_proc_staged_α_315_29:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00054_binop_α
n00053_call_proc_staged_β:
                        mov              r11, 131;                            jmp   show_ω
.Lcall_proc_staged_β_315_0:
                        .quad            .Lcall_proc_staged_β_315_0_s
.Lcall_proc_staged_β_315_0_s:
                        .string          "arrange"
                        .size            n00053_call_proc_staged_bx, .-n00053_call_proc_staged_bx
                        .type            n00054_binop_bx, @function
n00054_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           mov              r11, 132
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00055_make_list_α
                        .size            n00054_binop_bx, .-n00054_binop_bx
                        .type            n00055_make_list_bx, @function
n00055_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_make_list_α:       mov              r11, 133
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
                        mov              qword ptr [rbp + 40], rdx;           jmp   n00056_return_α
                        .size            n00055_make_list_bx, .-n00055_make_list_bx
                        .type            n00056_return_bx, @function
n00056_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_return_α:          mov              r11, 134
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   show_γ
                        .size            n00056_return_bx, .-n00056_return_bx
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
                        cmp              rax, 0;                              je    .Lshow_α_319_248
                        .section         .rodata
.Licn_trace_nm320:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm320]
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
.Lshow_α_319_248:       mov              rsp, rbx
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
                        lea              rsp, [rbp + 1472]
                        mov              rbp, qword ptr [rbp + 1464];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshow_α_319_249
                        .section         .rodata
.Licn_trace_nm321:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm321]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshow_α_319_249:       mov              rsp, rbx
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
                        lea              rsp, [rbp + 1472]
                        mov              rbp, qword ptr [rbp + 1464];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lshow_α_322_3]
                        push             rcx
                        lea              rcx, [rip + .Lshow_α_322_2]
                        push             rcx;                                 jmp   FN__show
.Lshow_α_322_2:         add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshow_α_322_3:         add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__arrange:
                        sub              rsp, 416
                        mov              qword ptr [rsp + 408], rbp
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
                        cmp              rax, 0;                              je    .Larrange_α_322_247
                        .section         .rodata
.Licn_trace_nm323:      .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm323]
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
.Larrange_α_322_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
arrange_α_body:
                        .type            n00057_var_bx, @function
n00057_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_α:             mov              r11, 135
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00058_var_α
                        .size            n00057_var_bx, .-n00057_var_bx
                        .type            n00058_var_bx, @function
n00058_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:             mov              r11, 136
                        mov              rax, qword ptr [r9 + 16]             # deckimage
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 240], rax           # result
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00059_var_α
                        .size            n00058_var_bx, .-n00058_var_bx
                        .type            n00059_var_bx, @function
n00059_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_var_α:             mov              r11, 137
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00060_call_icon_α
                        .size            n00059_var_bx, .-n00059_var_bx
                        .type            n00060_call_icon_bx, @function
n00060_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_call_icon_α:       mov              r11, 138
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn340:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn340]
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
                                                                              jmp   n00061_lit_charset_α
n00060_call_icon_β:       mov              r11, 138;                            jmp   arrange_ω
                        .size            n00060_call_icon_bx, .-n00060_call_icon_bx
                        .type            n00061_lit_charset_bx, @function
n00061_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_lit_charset_α:     mov              r11, 139
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_341_0]
                        mov              qword ptr [rbp + 280], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_341_0]
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
                        pop              rax;                                 jmp   n00062_binop_α
.Llit_charset_α_341_0:  .quad            .Llit_charset_α_341_0_s
.Llit_charset_α_341_0_s:
                        .string          " "
                        .size            n00061_lit_charset_bx, .-n00061_lit_charset_bx
                        .type            n00062_binop_bx, @function
n00062_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_binop_α:           mov              r11, 140
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
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
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00063_var_α
                        .size            n00062_binop_bx, .-n00062_binop_bx
                        .type            n00063_var_bx, @function
n00063_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:             mov              r11, 141
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 304], rax           # result
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00064_var_α
                        .size            n00063_var_bx, .-n00063_var_bx
                        .type            n00064_var_bx, @function
n00064_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_α:             mov              r11, 142
                        mov              rax, qword ptr [r9 + 80]             # rank
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rbp + 320], rax           # result
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00065_call_icon_α
                        .size            n00064_var_bx, .-n00064_var_bx
                        .type            n00065_call_icon_bx, @function
n00065_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_call_icon_α:       mov              r11, 143
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn346:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn346]
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
                                                                              jmp   n00066_return_α
n00065_call_icon_β:       mov              r11, 143;                            jmp   arrange_ω
                        .size            n00065_call_icon_bx, .-n00065_call_icon_bx
                        .type            n00066_return_bx, @function
n00066_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_return_α:          mov              r11, 144
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   arrange_γ
                        .size            n00066_return_bx, .-n00066_return_bx
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
                        cmp              rax, 0;                              je    .Larrange_α_347_248
                        .section         .rodata
.Licn_trace_nm348:      .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm348]
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
.Larrange_α_347_248:    mov              rsp, rbx
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
                        lea              rsp, [rbp + 416]
                        mov              rbp, qword ptr [rbp + 408];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
arrange_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Larrange_α_347_249
                        .section         .rodata
.Licn_trace_nm349:      .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm349]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Larrange_α_347_249:    mov              rsp, rbx
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
                        lea              rsp, [rbp + 416]
                        mov              rbp, qword ptr [rbp + 408];          jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Larrange_α_350_3]
                        push             rcx
                        lea              rcx, [rip + .Larrange_α_350_2]
                        push             rcx;                                 jmp   FN__arrange
.Larrange_α_350_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Larrange_α_350_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3248
                        mov              qword ptr [rsp + 3240], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 2896
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
                        cmp              rax, 0;                              je    .Loptions_α_350_247
                        .section         .rodata
.Licn_trace_nm351:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm351]
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
.Loptions_α_350_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
options_α_body:
                        .type            n00067_var_ref_bx, @function
n00067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n00068_nulltest_var_α
                        .size            n00067_var_ref_bx, .-n00067_var_ref_bx
                        .type            n00068_nulltest_var_bx, @function
n00068_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_nulltest_var_α:    mov              r11, 146
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              rdi, qword ptr [rbp + 2768]
                        mov              rsi, qword ptr [rbp + 2776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        cmp              eax, 0;                              jne   n00069_call_icon_α
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2792], rax;         jmp   n00070_lit_charset_α
                        .size            n00068_nulltest_var_bx, .-n00068_nulltest_var_bx
                        .type            n00070_lit_charset_bx, @function
n00070_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_charset_α:     mov              r11, 147
                        mov              qword ptr [rbp + 2864], 2            # result
                        mov              dword ptr [rbp + 2868], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_465_0]
                        mov              qword ptr [rbp + 2872], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_465_0]
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
                        pop              rax;                                 jmp   n00071_call_icon_α
.Llit_charset_α_465_0:  .quad            .Llit_charset_α_465_0_s
.Llit_charset_α_465_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00070_lit_charset_bx, .-n00070_lit_charset_bx
                        .type            n00071_call_icon_bx, @function
n00071_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_call_icon_α:       mov              r11, 148
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2840], rax
                        .section         .rodata
.Lcall_icon_α_rkfn467:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn467]
                        lea              rsi, [rbp + 2832]
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
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              al, 104;                             je    n00069_call_icon_α
                                                                              jmp   n00072_assign_var_α
n00071_call_icon_β:       mov              r11, 148;                            jmp   n00069_call_icon_α
                        .size            n00071_call_icon_bx, .-n00071_call_icon_bx
                        .type            n00072_assign_var_bx, @function
n00072_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_assign_var_α:      mov              r11, 149
                        mov              rdi, qword ptr [rbp + 2784]
                        mov              rsi, qword ptr [rbp + 2792]
                        mov              rdx, qword ptr [rbp + 2816]
                        mov              rcx, qword ptr [rbp + 2824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n00069_call_icon_α
                        .size            n00072_assign_var_bx, .-n00072_assign_var_bx
                        .type            n00069_call_icon_bx, @function
n00069_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_call_icon_α:       mov              r11, 150
                        .section         .rodata
.Lcall_icon_α_rkfn470:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn470]
                        lea              rsi, [rbp + 2752]
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
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    n00073_make_list_α
                                                                              jmp   n00074_assign_α
n00069_call_icon_β:       mov              r11, 150;                            jmp   n00073_make_list_α
                        .size            n00069_call_icon_bx, .-n00069_call_icon_bx
                        .type            n00074_assign_bx, @function
n00074_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n00073_make_list_α
                        .size            n00074_assign_bx, .-n00074_assign_bx
                        .type            n00073_make_list_bx, @function
n00073_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_make_list_α:       mov              r11, 152
                        lea              rdi, [rbp + 2736]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx;         jmp   n00075_assign_α
                        .size            n00073_make_list_bx, .-n00073_make_list_bx
                        .type            n00075_assign_bx, @function
n00075_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_assign_α:          mov              r11, 153
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx;         jmp   n00076_var_α
                        .size            n00075_assign_bx, .-n00075_assign_bx
                        .type            n00076_var_bx, @function
n00076_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00077_call_icon_α
                        .size            n00076_var_bx, .-n00076_var_bx
                        .type            n00077_call_icon_bx, @function
n00077_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_call_icon_α:       mov              r11, 155
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn478:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn478]
                        lea              rsi, [rbp + 256]
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
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n00078_var_α
                                                                              jmp   n00079_assign_α
n00077_call_icon_β:       mov              r11, 155;                            jmp   n00078_var_α
                        .size            n00077_call_icon_bx, .-n00077_call_icon_bx
                        .type            n00079_assign_bx, @function
n00079_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_assign_α:          mov              r11, 156
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n00080_var_α
                        .size            n00079_assign_bx, .-n00079_assign_bx
                        .type            n00080_var_bx, @function
n00080_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n00081_scan_enter_α
                        .size            n00080_var_bx, .-n00080_var_bx
                        .type            n00081_scan_enter_bx, @function
n00081_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_scan_enter_α:      mov              r11, 158
                        mov              qword ptr [rbp + 320], r13
                        mov              qword ptr [rbp + 328], r14
                        mov              qword ptr [rbp + 336], r15
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
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
                        mov              r14, 0;                              jmp   n00082_disjunction_α
                        .size            n00081_scan_enter_bx, .-n00081_scan_enter_bx
                        .type            n00082_disjunction_bx, @function
n00082_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_disjunction_α:     mov              r11, 159
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              dword ptr [rbp + 400], 0;            jmp   n00083_lit_string_α
.Ldisjunction_γ_366_as: mov              r11, 159
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_485_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00084_scan_α
.Ldisjunction_α_485_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_485_1
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00084_scan_α
.Ldisjunction_α_485_1:                                                        jmp   n00084_scan_α
n00082_disjunction_β:     mov              r11, 159
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0;                              je    n00085_disjunction_β
                                                                              jmp   n00086_scan_α
.Ldisjunction_γ_366_af: mov              r11, 159
.Ldisjunction_ω_366_af: mov              r11, 159
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 1;                              je    n00087_var_α
                                                                              jmp   n00086_scan_α
                        .size            n00082_disjunction_bx, .-n00082_disjunction_bx
                        .type            n00084_scan_bx, @function
n00084_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_scan_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 320]
                        mov              r14, qword ptr [rbp + 328]
                        mov              r15, qword ptr [rbp + 336];          jmp   n00076_var_α
n00084_scan_β:            mov              r11, 160
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
                        mov              r14, rax;                            jmp   n00082_disjunction_β
                                                                              jmp   n00076_var_α
                        .size            n00084_scan_bx, .-n00084_scan_bx
                        .type            n00088_conjunction_bx, @function
n00088_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_conjunction_α:     mov              r11, 161;                            jmp   .Ldisjunction_γ_366_as
n00088_conjunction_β:     mov              r11, 161;                            jmp   n00086_scan_α
                        .size            n00088_conjunction_bx, .-n00088_conjunction_bx
                        .type            n00087_var_bx, @function
n00087_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_α:             mov              r11, 162
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n00089_var_α
n00087_var_β:             mov              r11, 162;                            jmp   n00086_scan_α
                        .size            n00087_var_bx, .-n00087_var_bx
                        .type            n00089_var_bx, @function
n00089_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n00090_call_icon_α
                        .size            n00089_var_bx, .-n00089_var_bx
                        .type            n00090_call_icon_bx, @function
n00090_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_icon_α:       mov              r11, 164
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2632], rax
                        .section         .rodata
.Lcall_icon_α_rkfn494:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn494]
                        lea              rsi, [rbp + 2624]
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
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              al, 104;                             je    n00086_scan_α
                                                                              jmp   .Ldisjunction_γ_366_as
n00090_call_icon_β:       mov              r11, 164;                            jmp   n00086_scan_α
                        .size            n00090_call_icon_bx, .-n00090_call_icon_bx
                        .type            n00083_lit_string_bx, @function
n00083_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rbp + 2576], 2            # result
                        mov              dword ptr [rbp + 2580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_495_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n00091_scan_match_α
n00083_lit_string_β:      mov              r11, 165;                            jmp   .Ldisjunction_ω_366_af
.Llit_string_α_495_0:   .quad            .Llit_string_α_495_0_s
.Llit_string_α_495_0_s: .string          "-"
                        .size            n00083_lit_string_bx, .-n00083_lit_string_bx
                        .type            n00091_scan_match_bx, @function
n00091_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_scan_match_α:      mov              r11, 166
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_366_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_497_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_366_af
                        mov              qword ptr [rbp + 2544], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2552], rax;         jmp   n00092_scan_tab_α
.Lscan_match_α_497_0:   .quad            .Lscan_match_α_497_0_s
.Lscan_match_α_497_0_s: .string          "-"
                        .size            n00091_scan_match_bx, .-n00091_scan_match_bx
                        .type            n00092_scan_tab_bx, @function
n00092_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_scan_tab_α:        mov              r11, 167
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_499_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_499_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_366_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_366_af
                        mov              qword ptr [rbp + 2528], r14
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
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n00093_lit_integer_α
n00092_scan_tab_β:        mov              r11, 167
                        mov              r14, qword ptr [rbp + 2528];         jmp   .Ldisjunction_ω_366_af
                        .size            n00092_scan_tab_bx, .-n00092_scan_tab_bx
                        .type            n00093_lit_integer_bx, @function
n00093_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rbp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_500_0]
                        mov              qword ptr [rbp + 2504], rax;         jmp   n00094_scan_pos_α
.Llit_integer_α_500_0:  .quad            0
                        .size            n00093_lit_integer_bx, .-n00093_lit_integer_bx
                        .type            n00094_scan_pos_bx, @function
n00094_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_scan_pos_α:        mov              r11, 169
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_502_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_502_0:     cmp              rax, 1;                              jl    n00095_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00095_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00095_var_α
                        mov              qword ptr [rbp + 2480], 3
                        mov              qword ptr [rbp + 2488], rax;         jmp   n00092_scan_tab_β
                        .size            n00094_scan_pos_bx, .-n00094_scan_pos_bx
                        .type            n00095_var_bx, @function
n00095_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_α:             mov              r11, 170
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0;           jmp   n00096_conjunction_α
n00095_var_β:             mov              r11, 170;                            jmp   n00092_scan_tab_β
                        .size            n00095_var_bx, .-n00095_var_bx
                        .type            n00096_conjunction_bx, @function
n00096_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_conjunction_α:     mov              r11, 171
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n00097_disjunction_α
n00096_conjunction_β:     mov              r11, 171;                            jmp   .Ldisjunction_ω_366_af
                        .size            n00096_conjunction_bx, .-n00096_conjunction_bx
                        .type            n00097_disjunction_bx, @function
n00097_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_disjunction_α:     mov              r11, 172
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0;           jmp   n00098_lit_string_α
.Ldisjunction_γ_379_as: mov              r11, 172
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_506_0
                                                                              jmp   n00099_lit_integer_α
.Ldisjunction_α_506_0:                                                        jmp   n00099_lit_integer_α
n00097_disjunction_β:     mov              r11, 172
                        mov              eax, dword ptr [rbp + 2256];         jmp   n00099_lit_integer_α
.Ldisjunction_γ_379_af: mov              r11, 172
.Ldisjunction_ω_379_af: mov              r11, 172
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256];         jmp   n00099_lit_integer_α
                        .size            n00097_disjunction_bx, .-n00097_disjunction_bx
                        .type            n00099_lit_integer_bx, @function
n00099_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rbp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_507_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00100_scan_move_α
.Llit_integer_α_507_0:  .quad            1
                        .size            n00099_lit_integer_bx, .-n00099_lit_integer_bx
                        .type            n00100_scan_move_bx, @function
n00100_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_scan_move_α:       mov              r11, 174
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00086_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00086_scan_α
                        mov              qword ptr [rbp + 464], r14
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
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00101_assign_α
n00100_scan_move_β:       mov              r11, 174
                        mov              r14, qword ptr [rbp + 464];          jmp   n00086_scan_α
                        .size            n00100_scan_move_bx, .-n00100_scan_move_bx
                        .type            n00101_assign_bx, @function
n00101_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n00085_disjunction_α
                        .size            n00101_assign_bx, .-n00101_assign_bx
                        .type            n00085_disjunction_bx, @function
n00085_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_disjunction_α:     mov              r11, 176
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 504], 0
                        mov              dword ptr [rbp + 512], 0;            jmp   n00102_var_α
.Ldisjunction_γ_383_as: mov              r11, 176
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_512_0
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00099_lit_integer_α
.Ldisjunction_α_512_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_512_1
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00099_lit_integer_α
.Ldisjunction_α_512_1:                                                        jmp   n00099_lit_integer_α
n00085_disjunction_β:     mov              r11, 176
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0;                              je    n00103_disjunction_β
                                                                              jmp   n00099_lit_integer_α
.Ldisjunction_γ_383_af: mov              r11, 176
.Ldisjunction_ω_383_af: mov              r11, 176
                        add              dword ptr [rbp + 512], 1
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 1;                              je    n00104_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00085_disjunction_bx, .-n00085_disjunction_bx
                        .type            n00104_lit_string_bx, @function
n00104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rbp + 2192], 2            # result
                        mov              dword ptr [rbp + 2196], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_513_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n00105_var_α
n00104_lit_string_β:      mov              r11, 177;                            jmp   n00099_lit_integer_α
.Llit_string_α_513_0:   .quad            .Llit_string_α_513_0_s
.Llit_string_α_513_0_s: .string          "Unrecognized option: -"
                        .size            n00104_lit_string_bx, .-n00104_lit_string_bx
                        .type            n00105_var_bx, @function
n00105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n00106_call_icon_α
                        .size            n00105_var_bx, .-n00105_var_bx
                        .type            n00106_call_icon_bx, @function
n00106_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_icon_α:       mov              r11, 179
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn517:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn517]
                        lea              rsi, [rbp + 2144]
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
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   .Ldisjunction_γ_383_as
n00106_call_icon_β:       mov              r11, 179;                            jmp   n00099_lit_integer_α
                        .size            n00106_call_icon_bx, .-n00106_call_icon_bx
                        .type            n00102_var_bx, @function
n00102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n00107_var_α
n00102_var_β:             mov              r11, 180;                            jmp   .Ldisjunction_ω_383_af
                        .size            n00102_var_bx, .-n00102_var_bx
                        .type            n00107_var_bx, @function
n00107_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n00108_call_builtin_gen_α
                        .size            n00107_var_bx, .-n00107_var_bx
                        .type            n00108_call_builtin_gen_bx, @function
n00108_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_call_builtin_gen_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        mov              qword ptr [rbp + 2064], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_522_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn182: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn182]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 2
                        lea              rcx, [rbp + 2064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_383_af
                                                                              jmp   n00109_lit_integer_α
n00108_call_builtin_gen_β:
                        mov              r11, 182;                            jmp   .Lcall_builtin_gen_α_522_60
                        .size            n00108_call_builtin_gen_bx, .-n00108_call_builtin_gen_bx
                        .type            n00109_lit_integer_bx, @function
n00109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_523_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n00110_coerce_numeric_α
.Llit_integer_α_523_0:  .quad            1
                        .size            n00109_lit_integer_bx, .-n00109_lit_integer_bx
                        .type            n00110_coerce_numeric_bx, @function
n00110_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_coerce_numeric_α:  mov              r11, 184
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_525_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_525_0
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_525_0
.Lcoerce_numeric_α_525_1:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2008], rax;         jmp   n00111_binop_α
.Lcoerce_numeric_α_525_0:
                        lea              rdi, [rbp + 2016]
                        lea              rsi, [rbp + 2112]
                        lea              rdx, [rbp + 2000]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              al, 104;                             je    .Ldisjunction_ω_383_af
                                                                              jmp   n00111_binop_α
                        .size            n00110_coerce_numeric_bx, .-n00110_coerce_numeric_bx
                        .type            n00111_binop_bx, @function
n00111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_binop_α:           mov              r11, 185
                        mov              eax, dword ptr [rbp + 2000]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_526_2
                        mov              rax, qword ptr [rbp + 2008]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_526_0
                        mov              qword ptr [rbp + 1984], 3
                        mov              qword ptr [rbp + 1992], rax;         jmp   .Lbinop_α_526_7
.Lbinop_α_526_2:        and              edx, 1;                              jz    .Lbinop_α_526_0
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_526_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_526_4
.Lbinop_α_526_3:        movq             xmm0, rsi
.Lbinop_α_526_4:        cmp              cl, 5;                               je    .Lbinop_α_526_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_526_6
.Lbinop_α_526_5:        movq             xmm1, rdi
.Lbinop_α_526_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_526_0
                        mov              qword ptr [rbp + 1984], 5
                        mov              qword ptr [rbp + 1992], rax
.Lbinop_α_526_7:                                                              jmp   n00112_assign_α
.Lbinop_α_526_0:        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_383_af
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n00112_assign_α
                        .size            n00111_binop_bx, .-n00111_binop_bx
                        .type            n00112_assign_bx, @function
n00112_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00113_var_ref_α
                        .size            n00112_assign_bx, .-n00112_assign_bx
                        .type            n00113_var_ref_bx, @function
n00113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2896]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00114_var_α
                        .size            n00113_var_ref_bx, .-n00113_var_ref_bx
                        .type            n00114_var_bx, @function
n00114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00115_subscript_α
                        .size            n00114_var_bx, .-n00114_var_bx
                        .type            n00115_subscript_bx, @function
n00115_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_subscript_α:       mov              r11, 189
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
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n00103_disjunction_α
                        .size            n00115_subscript_bx, .-n00115_subscript_bx
                        .type            n00103_disjunction_bx, @function
n00103_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_disjunction_α:     mov              r11, 190
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0;            jmp   n00116_lit_charset_α
.Ldisjunction_γ_397_as: mov              r11, 190
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_534_0
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00117_assign_var_α
.Ldisjunction_α_534_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_534_1
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00117_assign_var_α
.Ldisjunction_α_534_1:                                                        jmp   n00117_assign_var_α
n00103_disjunction_β:     mov              r11, 190
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              je    n00099_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
.Ldisjunction_γ_397_af: mov              r11, 190
.Ldisjunction_ω_397_af: mov              r11, 190
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1;                              je    n00118_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00103_disjunction_bx, .-n00103_disjunction_bx
                        .type            n00117_assign_var_bx, @function
n00117_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_var_α:      mov              r11, 191
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   .Ldisjunction_γ_383_as
n00117_assign_var_β:      mov              r11, 191;                            jmp   n00099_lit_integer_α
                        .size            n00117_assign_var_bx, .-n00117_assign_var_bx
                        .type            n00118_lit_integer_bx, @function
n00118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_lit_integer_α:     mov              r11, 192
                        mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_536_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   .Ldisjunction_γ_397_as
n00118_lit_integer_β:     mov              r11, 192;                            jmp   n00099_lit_integer_α
.Llit_integer_α_536_0:  .quad            1
                        .size            n00118_lit_integer_bx, .-n00118_lit_integer_bx
                        .type            n00116_lit_charset_bx, @function
n00116_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_lit_charset_α:     mov              r11, 193
                        mov              qword ptr [rbp + 1856], 2            # result
                        mov              dword ptr [rbp + 1860], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_537_0]
                        mov              qword ptr [rbp + 1864], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_537_0]
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
                        pop              rax;                                 jmp   n00119_var_ref_α
n00116_lit_charset_β:     mov              r11, 193;                            jmp   .Ldisjunction_ω_397_af
.Llit_charset_α_537_0:  .quad            .Llit_charset_α_537_0_s
.Llit_charset_α_537_0_s:
                        .string          "+.:"
                        .size            n00116_lit_charset_bx, .-n00116_lit_charset_bx
                        .type            n00119_var_ref_bx, @function
n00119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n00120_var_α
                        .size            n00119_var_ref_bx, .-n00119_var_ref_bx
                        .type            n00120_var_bx, @function
n00120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n00121_subscript_α
                        .size            n00120_var_bx, .-n00120_var_bx
                        .type            n00121_subscript_bx, @function
n00121_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_subscript_α:       mov              r11, 196
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_397_af
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n00122_deref_α
                        .size            n00121_subscript_bx, .-n00121_subscript_bx
                        .type            n00122_deref_bx, @function
n00122_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_deref_α:           mov              r11, 197
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_397_af
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n00123_assign_α
                        .size            n00122_deref_bx, .-n00122_deref_bx
                        .type            n00123_assign_bx, @function
n00123_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n00124_call_icon_α
                        .size            n00123_assign_bx, .-n00123_assign_bx
                        .type            n00124_call_icon_bx, @function
n00124_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_icon_α:       mov              r11, 199
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
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
.Lcall_icon_α_bynamefn199: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn199]
                        lea              rsi, [rbp + 1808]
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
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_397_af
                                                                              jmp   n00125_disjunction_α
n00124_call_icon_β:       mov              r11, 199;                            jmp   .Ldisjunction_ω_397_af
                        .size            n00124_call_icon_bx, .-n00124_call_icon_bx
                        .type            n00125_disjunction_bx, @function
n00125_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_disjunction_α:     mov              r11, 200
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                        mov              dword ptr [rbp + 1504], 0;           jmp   n00126_lit_string_α
.Ldisjunction_γ_407_as: mov              r11, 200
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_547_0
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00127_assign_α
.Ldisjunction_α_547_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_547_1
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00127_assign_α
.Ldisjunction_α_547_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_547_2
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00127_assign_α
.Ldisjunction_α_547_2:                                                        jmp   n00127_assign_α
n00125_disjunction_β:     mov              r11, 200
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0;                              je    n00128_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_407_af
                                                                              jmp   .Ldisjunction_ω_407_af
.Ldisjunction_γ_407_af: mov              r11, 200
.Ldisjunction_ω_407_af: mov              r11, 200
                        add              dword ptr [rbp + 1504], 1
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 1;                              je    n00129_var_α
                        cmp              eax, 2;                              je    n00130_lit_string_α
                                                                              jmp   n00131_var_α
                        .size            n00125_disjunction_bx, .-n00125_disjunction_bx
                        .type            n00127_assign_bx, @function
n00127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_α:          mov              r11, 201
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n00131_var_α
                        .size            n00127_assign_bx, .-n00127_assign_bx
                        .type            n00131_var_bx, @function
n00131_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00132_lit_string_α
                        .size            n00131_var_bx, .-n00131_var_bx
                        .type            n00132_lit_string_bx, @function
n00132_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_551_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00133_call_builtin_α
.Llit_string_α_551_0:   .quad            .Llit_string_α_551_0_s
.Llit_string_α_551_0_s: .string          ":"
                        .size            n00132_lit_string_bx, .-n00132_lit_string_bx
                        .type            n00133_call_builtin_bx, @function
n00133_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_call_builtin_α:    mov              r11, 204
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn553: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn553]
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
                        cmp              al, 104;                             je    n00134_lit_string_α
                                                                              jmp   n00135_var_α
n00133_call_builtin_β:    mov              r11, 204;                            jmp   n00134_lit_string_α
                        .size            n00133_call_builtin_bx, .-n00133_call_builtin_bx
                        .type            n00135_var_bx, @function
n00135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n00136_assign_α
                        .size            n00135_var_bx, .-n00135_var_bx
                        .type            n00136_assign_bx, @function
n00136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_α:          mov              r11, 206
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n00137_var_α
                        .size            n00136_assign_bx, .-n00136_assign_bx
                        .type            n00134_lit_string_bx, @function
n00134_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rbp + 1024], 2            # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_557_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n00138_call_builtin_α
.Llit_string_α_557_0:   .quad            .Llit_string_α_557_0_s
.Llit_string_α_557_0_s: .string          "+"
                        .size            n00134_lit_string_bx, .-n00134_lit_string_bx
                        .type            n00138_call_builtin_bx, @function
n00138_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_call_builtin_α:    mov              r11, 208
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn559: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn559]
                        lea              rsi, [rbp + 1328]
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
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n00139_lit_string_α
                                                                              jmp   n00140_disjunction_α
n00138_call_builtin_β:    mov              r11, 208;                            jmp   n00139_lit_string_α
                        .size            n00138_call_builtin_bx, .-n00138_call_builtin_bx
                        .type            n00140_disjunction_bx, @function
n00140_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_disjunction_α:     mov              r11, 209
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0;           jmp   n00141_var_α
.Ldisjunction_γ_416_as: mov              r11, 209
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_561_0
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00142_assign_α
.Ldisjunction_α_561_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_561_1
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00142_assign_α
.Ldisjunction_α_561_1:                                                        jmp   n00142_assign_α
n00140_disjunction_β:     mov              r11, 209
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_416_af
                                                                              jmp   .Ldisjunction_ω_416_af
.Ldisjunction_γ_416_af: mov              r11, 209
.Ldisjunction_ω_416_af: mov              r11, 209
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 1;                              je    n00143_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00140_disjunction_bx, .-n00140_disjunction_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              r11, 210
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n00137_var_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00143_lit_string_bx, @function
n00143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_563_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n00144_var_α
n00143_lit_string_β:      mov              r11, 211;                            jmp   .Ldisjunction_ω_416_af
.Llit_string_α_563_0:   .quad            .Llit_string_α_563_0_s
.Llit_string_α_563_0_s: .string          "-"
                        .size            n00143_lit_string_bx, .-n00143_lit_string_bx
                        .type            n00144_var_bx, @function
n00144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00145_lit_string_α
                        .size            n00144_var_bx, .-n00144_var_bx
                        .type            n00145_lit_string_bx, @function
n00145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rbp + 1280], 2            # result
                        mov              dword ptr [rbp + 1284], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_566_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n00146_call_icon_α
.Llit_string_α_566_0:   .quad            .Llit_string_α_566_0_s
.Llit_string_α_566_0_s: .string          " needs numeric parameter"
                        .size            n00145_lit_string_bx, .-n00145_lit_string_bx
                        .type            n00146_call_icon_bx, @function
n00146_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_call_icon_α:       mov              r11, 214
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lcall_icon_α_rkfn568:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn568]
                        lea              rsi, [rbp + 1168]
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
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_416_af
                                                                              jmp   .Ldisjunction_γ_416_as
n00146_call_icon_β:       mov              r11, 214;                            jmp   .Ldisjunction_ω_416_af
                        .size            n00146_call_icon_bx, .-n00146_call_icon_bx
                        .type            n00141_var_bx, @function
n00141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00147_call_icon_α
n00141_var_β:             mov              r11, 215;                            jmp   .Ldisjunction_ω_416_af
                        .size            n00141_var_bx, .-n00141_var_bx
                        .type            n00147_call_icon_bx, @function
n00147_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_call_icon_α:       mov              r11, 216
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn572:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn572]
                        lea              rsi, [rbp + 1104]
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
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_416_af
                                                                              jmp   .Ldisjunction_γ_416_as
n00147_call_icon_β:       mov              r11, 216;                            jmp   .Ldisjunction_ω_416_af
                        .size            n00147_call_icon_bx, .-n00147_call_icon_bx
                        .type            n00139_lit_string_bx, @function
n00139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_573_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n00148_call_builtin_α
.Llit_string_α_573_0:   .quad            .Llit_string_α_573_0_s
.Llit_string_α_573_0_s: .string          "."
                        .size            n00139_lit_string_bx, .-n00139_lit_string_bx
                        .type            n00148_call_builtin_bx, @function
n00148_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_call_builtin_α:    mov              r11, 218
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn575: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn575]
                        lea              rsi, [rbp + 976]
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
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   n00149_disjunction_α
n00148_call_builtin_β:    mov              r11, 218;                            jmp   n00099_lit_integer_α
                        .size            n00148_call_builtin_bx, .-n00148_call_builtin_bx
                        .type            n00149_disjunction_bx, @function
n00149_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_disjunction_α:     mov              r11, 219
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0;            jmp   n00150_var_α
.Ldisjunction_γ_426_as: mov              r11, 219
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_577_0
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00151_assign_α
.Ldisjunction_α_577_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_577_1
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00151_assign_α
.Ldisjunction_α_577_1:                                                        jmp   n00151_assign_α
n00149_disjunction_β:     mov              r11, 219
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_426_af
                                                                              jmp   .Ldisjunction_ω_426_af
.Ldisjunction_γ_426_af: mov              r11, 219
.Ldisjunction_ω_426_af: mov              r11, 219
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 1;                              je    n00152_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00149_disjunction_bx, .-n00149_disjunction_bx
                        .type            n00151_assign_bx, @function
n00151_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n00137_var_α
                        .size            n00151_assign_bx, .-n00151_assign_bx
                        .type            n00137_var_bx, @function
n00137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00153_conjunction_α
                        .size            n00137_var_bx, .-n00137_var_bx
                        .type            n00153_conjunction_bx, @function
n00153_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_conjunction_α:     mov              r11, 222
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 632], rax;          jmp   .Ldisjunction_γ_397_as
n00153_conjunction_β:     mov              r11, 222;                            jmp   n00099_lit_integer_α
                        .size            n00153_conjunction_bx, .-n00153_conjunction_bx
                        .type            n00152_lit_string_bx, @function
n00152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_582_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00154_var_α
n00152_lit_string_β:      mov              r11, 223;                            jmp   .Ldisjunction_ω_426_af
.Llit_string_α_582_0:   .quad            .Llit_string_α_582_0_s
.Llit_string_α_582_0_s: .string          "-"
                        .size            n00152_lit_string_bx, .-n00152_lit_string_bx
                        .type            n00154_var_bx, @function
n00154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00155_lit_string_α
                        .size            n00154_var_bx, .-n00154_var_bx
                        .type            n00155_lit_string_bx, @function
n00155_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_585_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00156_call_icon_α
.Llit_string_α_585_0:   .quad            .Llit_string_α_585_0_s
.Llit_string_α_585_0_s: .string          " needs numeric parameter"
                        .size            n00155_lit_string_bx, .-n00155_lit_string_bx
                        .type            n00156_call_icon_bx, @function
n00156_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_call_icon_α:       mov              r11, 226
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn587:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn587]
                        lea              rsi, [rbp + 816]
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
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_426_af
                                                                              jmp   .Ldisjunction_γ_426_as
n00156_call_icon_β:       mov              r11, 226;                            jmp   .Ldisjunction_ω_426_af
                        .size            n00156_call_icon_bx, .-n00156_call_icon_bx
                        .type            n00150_var_bx, @function
n00150_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00157_call_icon_α
n00150_var_β:             mov              r11, 227;                            jmp   .Ldisjunction_ω_426_af
                        .size            n00150_var_bx, .-n00150_var_bx
                        .type            n00157_call_icon_bx, @function
n00157_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_call_icon_α:       mov              r11, 228
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn591:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn591]
                        lea              rsi, [rbp + 752]
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_426_af
                                                                              jmp   .Ldisjunction_γ_426_as
n00157_call_icon_β:       mov              r11, 228;                            jmp   .Ldisjunction_ω_426_af
                        .size            n00157_call_icon_bx, .-n00157_call_icon_bx
                        .type            n00130_lit_string_bx, @function
n00130_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rbp + 1744], 2            # result
                        mov              dword ptr [rbp + 1748], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_592_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n00158_var_α
n00130_lit_string_β:      mov              r11, 229;                            jmp   .Ldisjunction_ω_407_af
.Llit_string_α_592_0:   .quad            .Llit_string_α_592_0_s
.Llit_string_α_592_0_s: .string          "No parameter following -"
                        .size            n00130_lit_string_bx, .-n00130_lit_string_bx
                        .type            n00158_var_bx, @function
n00158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n00159_call_icon_α
                        .size            n00158_var_bx, .-n00158_var_bx
                        .type            n00159_call_icon_bx, @function
n00159_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_icon_α:       mov              r11, 231
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        .section         .rodata
.Lcall_icon_α_rkfn596:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn596]
                        lea              rsi, [rbp + 1696]
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
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_407_af
                                                                              jmp   .Ldisjunction_γ_407_as
n00159_call_icon_β:       mov              r11, 231;                            jmp   .Ldisjunction_ω_407_af
                        .size            n00159_call_icon_bx, .-n00159_call_icon_bx
                        .type            n00129_var_bx, @function
n00129_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n00160_call_icon_α
n00129_var_β:             mov              r11, 232;                            jmp   .Ldisjunction_ω_407_af
                        .size            n00129_var_bx, .-n00129_var_bx
                        .type            n00160_call_icon_bx, @function
n00160_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_call_icon_α:       mov              r11, 233
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn600:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn600]
                        lea              rsi, [rbp + 1632]
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
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_407_af
                                                                              jmp   .Ldisjunction_γ_407_as
n00160_call_icon_β:       mov              r11, 233;                            jmp   .Ldisjunction_ω_407_af
                        .size            n00160_call_icon_bx, .-n00160_call_icon_bx
                        .type            n00126_lit_string_bx, @function
n00126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_601_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00161_lit_integer_α
n00126_lit_string_β:      mov              r11, 234;                            jmp   .Ldisjunction_ω_407_af
.Llit_string_α_601_0:   .quad            .Llit_string_α_601_0_s
.Llit_string_α_601_0_s: .string          ""
                        .size            n00126_lit_string_bx, .-n00126_lit_string_bx
                        .type            n00161_lit_integer_bx, @function
n00161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rbp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_602_0]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00128_scan_tab_α
.Llit_integer_α_602_0:  .quad            0
                        .size            n00161_lit_integer_bx, .-n00161_lit_integer_bx
                        .type            n00128_scan_tab_bx, @function
n00128_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_scan_tab_α:        mov              r11, 236
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_604_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_604_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_407_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_407_af
                        mov              qword ptr [rbp + 1584], r14
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
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n00162_binop_test_α
n00128_scan_tab_β:        mov              r11, 236
                        mov              r14, qword ptr [rbp + 1584];         jmp   .Ldisjunction_ω_407_af
                        .size            n00128_scan_tab_bx, .-n00128_scan_tab_bx
                        .type            n00162_binop_test_bx, @function
n00162_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_binop_test_α:      mov              r11, 237
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00128_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_407_as
n00162_binop_test_β:      mov              r11, 237;                            jmp   n00128_scan_tab_β
                        .size            n00162_binop_test_bx, .-n00162_binop_test_bx
                        .type            n00086_scan_bx, @function
n00086_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_scan_α:            mov              r11, 238
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 320]
                        mov              r14, qword ptr [rbp + 328]
                        mov              r15, qword ptr [rbp + 336];          jmp   n00076_var_α
n00086_scan_β:            mov              r11, 238;                            jmp   n00076_var_α
                        .size            n00086_scan_bx, .-n00086_scan_bx
                        .type            n00098_lit_string_bx, @function
n00098_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rbp + 2416], 2            # result
                        mov              dword ptr [rbp + 2420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_608_0]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n00163_scan_match_α
n00098_lit_string_β:      mov              r11, 239;                            jmp   .Ldisjunction_ω_379_af
.Llit_string_α_608_0:   .quad            .Llit_string_α_608_0_s
.Llit_string_α_608_0_s: .string          "-"
                        .size            n00098_lit_string_bx, .-n00098_lit_string_bx
                        .type            n00163_scan_match_bx, @function
n00163_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_match_α:      mov              r11, 240
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_379_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_610_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_379_af
                        mov              qword ptr [rbp + 2384], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2392], rax;         jmp   n00164_scan_tab_α
.Lscan_match_α_610_0:   .quad            .Lscan_match_α_610_0_s
.Lscan_match_α_610_0_s: .string          "-"
                        .size            n00163_scan_match_bx, .-n00163_scan_match_bx
                        .type            n00164_scan_tab_bx, @function
n00164_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_scan_tab_α:        mov              r11, 241
                        mov              rdi, qword ptr [rbp + 2384]
                        mov              rsi, qword ptr [rbp + 2392]
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
                        cmp              rax, 1;                              jge   .Lscan_tab_α_612_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_612_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_379_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_379_af
                        mov              qword ptr [rbp + 2368], r14
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
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n00165_lit_integer_α
n00164_scan_tab_β:        mov              r11, 241
                        mov              r14, qword ptr [rbp + 2368];         jmp   .Ldisjunction_ω_379_af
                        .size            n00164_scan_tab_bx, .-n00164_scan_tab_bx
                        .type            n00165_lit_integer_bx, @function
n00165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_integer_α:     mov              r11, 242
                        mov              qword ptr [rbp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_613_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n00166_scan_pos_α
.Llit_integer_α_613_0:  .quad            0
                        .size            n00165_lit_integer_bx, .-n00165_lit_integer_bx
                        .type            n00166_scan_pos_bx, @function
n00166_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_scan_pos_α:        mov              r11, 243
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_615_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_615_0:     cmp              rax, 1;                              jl    n00164_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00164_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00164_scan_tab_β
                        mov              qword ptr [rbp + 2320], 3
                        mov              qword ptr [rbp + 2328], rax;         jmp   n00167_conjunction_α
                        .size            n00166_scan_pos_bx, .-n00166_scan_pos_bx
                        .type            n00167_conjunction_bx, @function
n00167_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_conjunction_α:     mov              r11, 244
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n00168_scan_α
n00167_conjunction_β:     mov              r11, 244;                            jmp   .Ldisjunction_ω_379_af
                        .size            n00167_conjunction_bx, .-n00167_conjunction_bx
                        .type            n00168_scan_bx, @function
n00168_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_scan_α:            mov              r11, 245
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 320]
                        mov              r14, qword ptr [rbp + 328]
                        mov              r15, qword ptr [rbp + 336];          jmp   n00169_var_α
n00168_scan_β:            mov              r11, 245;                            jmp   n00169_var_α
                        .size            n00168_scan_bx, .-n00168_scan_bx
                        .type            n00169_var_bx, @function
n00169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_α:             mov              r11, 246
                        mov              qword ptr [rbp + 2272], 0
                        mov              qword ptr [rbp + 2280], 0;           jmp   n00170_assign_α
n00169_var_β:             mov              r11, 246;                            jmp   n00171_var_α
                        .size            n00169_var_bx, .-n00169_var_bx
                        .type            n00170_assign_bx, @function
n00170_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_assign_α:          mov              r11, 247
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n00171_var_α
                        .size            n00170_assign_bx, .-n00170_assign_bx
                        .type            n00171_var_bx, @function
n00171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00078_var_α
                        .size            n00171_var_bx, .-n00171_var_bx
                        .type            n00078_var_bx, @function
n00078_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00172_var_α
                        .size            n00078_var_bx, .-n00078_var_bx
                        .type            n00172_var_bx, @function
n00172_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_var_α:             mov              r11, 250
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 200], rax;          jmp   n00173_call_icon_α
                        .size            n00172_var_bx, .-n00172_var_bx
                        .type            n00173_call_icon_bx, @function
n00173_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_call_icon_α:       mov              r11, 251
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn628:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn628]
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
                        cmp              al, 104;                             je    n00174_var_α
                                                                              jmp   n00175_call_icon_α
n00173_call_icon_β:       mov              r11, 251;                            jmp   n00174_var_α
                        .size            n00173_call_icon_bx, .-n00173_call_icon_bx
                        .type            n00175_call_icon_bx, @function
n00175_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_call_icon_α:       mov              r11, 252
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn630:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn630]
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
                        cmp              al, 104;                             je    n00174_var_α
                                                                              jmp   n00078_var_α
n00175_call_icon_β:       mov              r11, 252;                            jmp   n00174_var_α
                        .size            n00175_call_icon_bx, .-n00175_call_icon_bx
                        .type            n00174_var_bx, @function
n00174_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00176_return_α
                        .size            n00174_var_bx, .-n00174_var_bx
                        .type            n00176_return_bx, @function
n00176_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_return_α:          mov              r11, 254
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00176_return_bx, .-n00176_return_bx
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
                        cmp              rax, 0;                              je    .Loptions_α_633_248
                        .section         .rodata
.Licn_trace_nm634:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm634]
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
.Loptions_α_633_248:    mov              rsp, rbx
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
                        lea              rsp, [rbp + 3248]
                        mov              rbp, qword ptr [rbp + 3240];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_633_249
                        .section         .rodata
.Licn_trace_nm635:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm635]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_633_249:    mov              rsp, rbx
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
                        lea              rsp, [rbp + 3248]
                        mov              rbp, qword ptr [rbp + 3240];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_636_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_636_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_636_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_636_3:      add              rsp, 24
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
                        cmp              rax, 0;                              je    .LInit___α_636_247
                        .section         .rodata
.Licn_trace_nm637:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm637]
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
.LInit___α_636_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Init___α_body:
                        .type            n00177_var_bx, @function
n00177_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_var_α:             mov              r11, 255
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00178_assign_α
                        .size            n00177_var_bx, .-n00177_var_bx
                        .type            n00178_assign_bx, @function
n00178_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_assign_α:          mov              r11, 256
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
                        mov              rdi, qword ptr [rip + .Lassign_α_660_0]
                        .section         .rodata
.Lassign_α_660_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_660_1_s]
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
                        pop              rax;                                 jmp   n00179_call_proc_staged_α
.Lassign_α_660_0:       .quad            .Lassign_α_660_0_s
.Lassign_α_660_0_s:     .string          "Name__"
                        .size            n00178_assign_bx, .-n00178_assign_bx
                        .type            n00179_call_proc_staged_bx, @function
n00179_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_call_proc_staged_α:
                        mov              r11, 257
                        call             Signature___dcα;                     jmp   .Lcall_proc_staged_α_662_2
.Lcall_proc_staged_α_662_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_662_29
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
.Lcall_proc_staged_α_662_29:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n00180_call_proc_staged_α
                                                                              jmp   n00180_call_proc_staged_α
n00179_call_proc_staged_β:
                        mov              r11, 257;                            jmp   n00180_call_proc_staged_α
.Lcall_proc_staged_β_662_0:
                        .quad            .Lcall_proc_staged_β_662_0_s
.Lcall_proc_staged_β_662_0_s:
                        .string          "Signature__"
                        .size            n00179_call_proc_staged_bx, .-n00179_call_proc_staged_bx
                        .type            n00180_call_proc_staged_bx, @function
n00180_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_call_proc_staged_α:
                        mov              r11, 258
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_664_2
.Lcall_proc_staged_α_664_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_664_29
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
.Lcall_proc_staged_α_664_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n00181_call_proc_staged_α
                                                                              jmp   n00181_call_proc_staged_α
n00180_call_proc_staged_β:
                        mov              r11, 258;                            jmp   n00181_call_proc_staged_α
.Lcall_proc_staged_β_664_0:
                        .quad            .Lcall_proc_staged_β_664_0_s
.Lcall_proc_staged_β_664_0_s:
                        .string          "Regions__"
                        .size            n00180_call_proc_staged_bx, .-n00180_call_proc_staged_bx
                        .type            n00181_call_proc_staged_bx, @function
n00181_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_call_proc_staged_α:
                        mov              r11, 259
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_666_2
.Lcall_proc_staged_α_666_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_666_29
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
.Lcall_proc_staged_α_666_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n00182_disjunction_α
                                                                              jmp   n00182_disjunction_α
n00181_call_proc_staged_β:
                        mov              r11, 259;                            jmp   n00182_disjunction_α
.Lcall_proc_staged_β_666_0:
                        .quad            .Lcall_proc_staged_β_666_0_s
.Lcall_proc_staged_β_666_0_s:
                        .string          "Time__"
                        .size            n00181_call_proc_staged_bx, .-n00181_call_proc_staged_bx
                        .type            n00182_disjunction_bx, @function
n00182_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_disjunction_α:     mov              r11, 260
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0;            jmp   n00183_lit_string_α
.Ldisjunction_γ_643_as: mov              r11, 260
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_668_0
                                                                              jmp   n00184_var_α
.Ldisjunction_α_668_0:                                                        jmp   n00184_var_α
n00182_disjunction_β:     mov              r11, 260
                        mov              eax, dword ptr [rbp + 128];          jmp   n00184_var_α
.Ldisjunction_γ_643_af: mov              r11, 260
.Ldisjunction_ω_643_af: mov              r11, 260
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128];          jmp   n00184_var_α
                        .size            n00182_disjunction_bx, .-n00182_disjunction_bx
                        .type            n00184_var_bx, @function
n00184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_var_α:             mov              r11, 261
                        mov              rdi, qword ptr [rip + .Lvar_α_669_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00185_var_α
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00186_assign_α
.Lvar_α_669_0:          .quad            .Lvar_α_669_0_s
.Lvar_α_669_0_s:        .string          "write"
                        .size            n00184_var_bx, .-n00184_var_bx
                        .type            n00186_assign_bx, @function
n00186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              r11, 262
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
                        mov              rdi, qword ptr [rip + .Lassign_α_670_0]
                        .section         .rodata
.Lassign_α_670_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_670_1_s]
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
                        pop              rax;                                 jmp   n00185_var_α
.Lassign_α_670_0:       .quad            .Lassign_α_670_0_s
.Lassign_α_670_0_s:     .string          "Save__"
                        .size            n00186_assign_bx, .-n00186_assign_bx
                        .type            n00185_var_bx, @function
n00185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:             mov              r11, 263
                        mov              rdi, qword ptr [rip + .Lvar_α_671_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00187_lit_integer_α
                        mov              qword ptr [rbp + 80], rax            # result
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00188_assign_α
.Lvar_α_671_0:          .quad            .Lvar_α_671_0_s
.Lvar_α_671_0_s:        .string          "writes"
                        .size            n00185_var_bx, .-n00185_var_bx
                        .type            n00188_assign_bx, @function
n00188_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_assign_α:          mov              r11, 264
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
                        mov              rdi, qword ptr [rip + .Lassign_α_672_0]
                        .section         .rodata
.Lassign_α_672_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_672_1_s]
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
                        pop              rax;                                 jmp   n00187_lit_integer_α
.Lassign_α_672_0:       .quad            .Lassign_α_672_0_s
.Lassign_α_672_0_s:     .string          "Saves__"
                        .size            n00188_assign_bx, .-n00188_assign_bx
                        .type            n00187_lit_integer_bx, @function
n00187_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_lit_integer_α:     mov              r11, 265
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_673_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00189_assign_α
.Llit_integer_α_673_0:  .quad            1
                        .size            n00187_lit_integer_bx, .-n00187_lit_integer_bx
                        .type            n00189_assign_bx, @function
n00189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_assign_α:          mov              r11, 266
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
                        mov              rdi, qword ptr [rip + .Lassign_α_674_0]
                        .section         .rodata
.Lassign_α_674_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_674_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_674_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00190_assign_α
.Lassign_α_674_0:       .quad            .Lassign_α_674_0_s
.Lassign_α_674_0_s:     .string          "writes"
                        .size            n00189_assign_bx, .-n00189_assign_bx
                        .type            n00190_assign_bx, @function
n00190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_assign_α:          mov              r11, 267
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
                        mov              rdi, qword ptr [rip + .Lassign_α_675_0]
                        .section         .rodata
.Lassign_α_675_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_675_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_675_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00191_return_α
.Lassign_α_675_0:       .quad            .Lassign_α_675_0_s
.Lassign_α_675_0_s:     .string          "write"
                        .size            n00190_assign_bx, .-n00190_assign_bx
                        .type            n00191_return_bx, @function
n00191_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_return_α:          mov              r11, 268
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Init___γ
                        .size            n00191_return_bx, .-n00191_return_bx
                        .type            n00192_conjunction_bx, @function
n00192_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_conjunction_α:     mov              r11, 269;                            jmp   .Ldisjunction_γ_643_as
n00192_conjunction_β:     mov              r11, 269;                            jmp   n00184_var_α
                        .size            n00192_conjunction_bx, .-n00192_conjunction_bx
                        .type            n00183_lit_string_bx, @function
n00183_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_string_α:      mov              r11, 270
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_678_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00193_call_icon_α
n00183_lit_string_β:      mov              r11, 270;                            jmp   .Ldisjunction_ω_643_af
.Llit_string_α_678_0:   .quad            .Llit_string_α_678_0_s
.Llit_string_α_678_0_s: .string          "OUTPUT"
                        .size            n00183_lit_string_bx, .-n00183_lit_string_bx
                        .type            n00193_call_icon_bx, @function
n00193_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_call_icon_α:       mov              r11, 271
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn680:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn680]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_643_af
                                                                              jmp   n00194_lit_string_α
n00193_call_icon_β:       mov              r11, 271;                            jmp   .Ldisjunction_ω_643_af
                        .size            n00193_call_icon_bx, .-n00193_call_icon_bx
                        .type            n00194_lit_string_bx, @function
n00194_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_681_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00195_call_icon_α
.Llit_string_α_681_0:   .quad            .Llit_string_α_681_0_s
.Llit_string_α_681_0_s: .string          "*** Benchmarking with output ***"
                        .size            n00194_lit_string_bx, .-n00194_lit_string_bx
                        .type            n00195_call_icon_bx, @function
n00195_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_call_icon_α:       mov              r11, 273
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn683:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn683]
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
                        cmp              al, 104;                             je    n00196_return_α
                                                                              jmp   n00196_return_α
n00195_call_icon_β:       mov              r11, 273;                            jmp   n00196_return_α
                        .size            n00195_call_icon_bx, .-n00195_call_icon_bx
                        .type            n00196_return_bx, @function
n00196_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_return_α:          mov              r11, 274
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Init___γ
                        .size            n00196_return_bx, .-n00196_return_bx
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
                        cmp              rax, 0;                              je    .LInit___α_684_248
                        .section         .rodata
.Licn_trace_nm685:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm685]
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
.LInit___α_684_248:     mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .LInit___α_684_249
                        .section         .rodata
.Licn_trace_nm686:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm686]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_684_249:     mov              rsp, rbx
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
                        lea              rcx, [rip + .LInit___α_687_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_687_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_687_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_687_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 480
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
                        cmp              rax, 0;                              je    .LTerm___α_687_247
                        .section         .rodata
.Licn_trace_nm688:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm688]
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
.LTerm___α_687_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Term___α_body:
                        .type            n00197_disjunction_bx, @function
n00197_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_disjunction_α:     mov              r11, 275
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0;            jmp   n00198_lit_string_α
.Ldisjunction_γ_689_as: mov              r11, 275
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_707_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00199_var_α
.Ldisjunction_α_707_0:                                                        jmp   n00199_var_α
n00197_disjunction_β:     mov              r11, 275
                        mov              eax, dword ptr [rbp + 288];          jmp   n00199_var_α
.Ldisjunction_γ_689_af: mov              r11, 275
.Ldisjunction_ω_689_af: mov              r11, 275
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288];          jmp   n00199_var_α
                        .size            n00197_disjunction_bx, .-n00197_disjunction_bx
                        .type            n00198_lit_string_bx, @function
n00198_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_lit_string_α:      mov              r11, 276
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_708_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00200_call_icon_α
n00198_lit_string_β:      mov              r11, 276;                            jmp   n00201_var_α
.Llit_string_α_708_0:   .quad            .Llit_string_α_708_0_s
.Llit_string_α_708_0_s: .string          "OUTPUT"
                        .size            n00198_lit_string_bx, .-n00198_lit_string_bx
                        .type            n00200_call_icon_bx, @function
n00200_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_call_icon_α:       mov              r11, 277
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn710:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn710]
                        lea              rsi, [rbp + 416]
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
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n00201_var_α
                                                                              jmp   .Ldisjunction_γ_689_af
n00200_call_icon_β:       mov              r11, 277;                            jmp   n00201_var_α
                        .size            n00200_call_icon_bx, .-n00200_call_icon_bx
                        .type            n00201_var_bx, @function
n00201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_α:             mov              r11, 278
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0;            jmp   n00202_var_α
n00201_var_β:             mov              r11, 278;                            jmp   .Ldisjunction_ω_689_af
                        .size            n00201_var_bx, .-n00201_var_bx
                        .type            n00202_var_bx, @function
n00202_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_α:             mov              r11, 279
                        mov              rax, qword ptr [r9 + 112]            # Save__
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 368], rax           # result
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00203_assign_α
                        .size            n00202_var_bx, .-n00202_var_bx
                        .type            n00203_assign_bx, @function
n00203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_assign_α:          mov              r11, 280
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_713_0]
                        .section         .rodata
.Lassign_α_713_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_713_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_713_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00204_var_α
.Lassign_α_713_0:       .quad            .Lassign_α_713_0_s
.Lassign_α_713_0_s:     .string          "write"
                        .size            n00203_assign_bx, .-n00203_assign_bx
                        .type            n00204_var_bx, @function
n00204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_α:             mov              r11, 281
                        mov              rax, qword ptr [r9 + 128]            # Saves__
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 336], rax           # result
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00205_assign_α
                        .size            n00204_var_bx, .-n00204_var_bx
                        .type            n00205_assign_bx, @function
n00205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_715_0]
                        .section         .rodata
.Lassign_α_715_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_715_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_715_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00206_conjunction_α
.Lassign_α_715_0:       .quad            .Lassign_α_715_0_s
.Lassign_α_715_0_s:     .string          "writes"
                        .size            n00205_assign_bx, .-n00205_assign_bx
                        .type            n00206_conjunction_bx, @function
n00206_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_conjunction_α:     mov              r11, 283
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax;          jmp   .Ldisjunction_γ_689_as
n00206_conjunction_β:     mov              r11, 283;                            jmp   n00199_var_α
                        .size            n00206_conjunction_bx, .-n00206_conjunction_bx
                        .type            n00199_var_bx, @function
n00199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:             mov              r11, 284
                        mov              rax, qword ptr [r9 + 144]            # Name__
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rbp + 192], rax           # result
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00207_lit_string_α
                        .size            n00199_var_bx, .-n00199_var_bx
                        .type            n00207_lit_string_bx, @function
n00207_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_lit_string_α:      mov              r11, 285
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_718_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00208_call_proc_staged_α
.Llit_string_α_718_0:   .quad            .Llit_string_α_718_0_s
.Llit_string_α_718_0_s: .string          " elapsed time = "
                        .size            n00207_lit_string_bx, .-n00207_lit_string_bx
                        .type            n00208_call_proc_staged_bx, @function
n00208_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_call_proc_staged_α:
                        mov              r11, 286
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_720_2
.Lcall_proc_staged_α_720_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_720_29
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
.Lcall_proc_staged_α_720_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n00209_call_proc_staged_α
                                                                              jmp   n00210_call_icon_α
n00208_call_proc_staged_β:
                        mov              r11, 286;                            jmp   n00209_call_proc_staged_α
.Lcall_proc_staged_β_720_0:
                        .quad            .Lcall_proc_staged_β_720_0_s
.Lcall_proc_staged_β_720_0_s:
                        .string          "Time__"
                        .size            n00208_call_proc_staged_bx, .-n00208_call_proc_staged_bx
                        .type            n00210_call_icon_bx, @function
n00210_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_call_icon_α:       mov              r11, 287
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn722:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn722]
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
                        cmp              al, 104;                             je    n00209_call_proc_staged_α
                                                                              jmp   n00209_call_proc_staged_α
n00210_call_icon_β:       mov              r11, 287;                            jmp   n00209_call_proc_staged_α
                        .size            n00210_call_icon_bx, .-n00210_call_icon_bx
                        .type            n00209_call_proc_staged_bx, @function
n00209_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_call_proc_staged_α:
                        mov              r11, 288
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_724_2
.Lcall_proc_staged_α_724_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_724_29
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
.Lcall_proc_staged_α_724_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n00211_call_proc_staged_α
                                                                              jmp   n00211_call_proc_staged_α
n00209_call_proc_staged_β:
                        mov              r11, 288;                            jmp   n00211_call_proc_staged_α
.Lcall_proc_staged_β_724_0:
                        .quad            .Lcall_proc_staged_β_724_0_s
.Lcall_proc_staged_β_724_0_s:
                        .string          "Regions__"
                        .size            n00209_call_proc_staged_bx, .-n00209_call_proc_staged_bx
                        .type            n00211_call_proc_staged_bx, @function
n00211_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_proc_staged_α:
                        mov              r11, 289
                        call             Storage___dcα;                       jmp   .Lcall_proc_staged_α_726_2
.Lcall_proc_staged_α_726_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_726_29
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
.Lcall_proc_staged_α_726_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n00212_call_proc_staged_α
                                                                              jmp   n00212_call_proc_staged_α
n00211_call_proc_staged_β:
                        mov              r11, 289;                            jmp   n00212_call_proc_staged_α
.Lcall_proc_staged_β_726_0:
                        .quad            .Lcall_proc_staged_β_726_0_s
.Lcall_proc_staged_β_726_0_s:
                        .string          "Storage__"
                        .size            n00211_call_proc_staged_bx, .-n00211_call_proc_staged_bx
                        .type            n00212_call_proc_staged_bx, @function
n00212_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_call_proc_staged_α:
                        mov              r11, 290
                        call             Collections___dcα;                   jmp   .Lcall_proc_staged_α_728_2
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
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
.Lcall_proc_staged_α_728_29:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    n00213_return_α
                                                                              jmp   n00213_return_α
n00212_call_proc_staged_β:
                        mov              r11, 290;                            jmp   n00213_return_α
.Lcall_proc_staged_β_728_0:
                        .quad            .Lcall_proc_staged_β_728_0_s
.Lcall_proc_staged_β_728_0_s:
                        .string          "Collections__"
                        .size            n00212_call_proc_staged_bx, .-n00212_call_proc_staged_bx
                        .type            n00213_return_bx, @function
n00213_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_return_α:          mov              r11, 291
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Term___γ
                        .size            n00213_return_bx, .-n00213_return_bx
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
                        cmp              rax, 0;                              je    .LTerm___α_729_248
                        .section         .rodata
.Licn_trace_nm730:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm730]
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
.LTerm___α_729_248:     mov              rsp, rbx
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
                        lea              rsp, [rbp + 560]
                        mov              rbp, qword ptr [rbp + 552];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_729_249
                        .section         .rodata
.Licn_trace_nm731:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm731]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_729_249:     mov              rsp, rbx
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
                        lea              rsp, [rbp + 560]
                        mov              rbp, qword ptr [rbp + 552];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTerm___α_732_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_732_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_732_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_732_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 960
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
                        cmp              rax, 0;                              je    .LCollections___α_732_247
                        .section         .rodata
.Licn_trace_nm733:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm733]
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
.LCollections___α_732_247:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Collections___α_body:
                        .type            n00214_disjunction_bx, @function
n00214_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_disjunction_α:     mov              r11, 292
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0;            jmp   n00215_var_ref_α
.Ldisjunction_γ_734_as: mov              r11, 292
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_772_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00216_make_list_α
.Ldisjunction_α_772_0:                                                        jmp   n00216_make_list_α
n00214_disjunction_β:     mov              r11, 292
                        mov              eax, dword ptr [rbp + 656];          jmp   n00216_make_list_α
.Ldisjunction_γ_734_af: mov              r11, 292
.Ldisjunction_ω_734_af: mov              r11, 292
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656];          jmp   n00216_make_list_α
                        .size            n00214_disjunction_bx, .-n00214_disjunction_bx
                        .type            n00216_make_list_bx, @function
n00216_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_make_list_α:       mov              r11, 293
                        lea              rdi, [rbp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00217_assign_α
                        .size            n00216_make_list_bx, .-n00216_make_list_bx
                        .type            n00217_assign_bx, @function
n00217_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_assign_α:          mov              r11, 294
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n00218_var_α
                        .size            n00217_assign_bx, .-n00217_assign_bx
                        .type            n00218_var_bx, @function
n00218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_α:             mov              r11, 295
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00219_kw_icon_gen_α
                        .size            n00218_var_bx, .-n00218_var_bx
                        .type            n00219_kw_icon_gen_bx, @function
n00219_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_kw_icon_gen_α:     mov              r11, 296
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_778_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_778_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00220_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00221_call_icon_α
n00219_kw_icon_gen_β:     mov              r11, 296;                            jmp   .Lkw_icon_gen_α_778_1
.Lkw_icon_gen_α_778_0:  .quad            .Lkw_icon_gen_α_778_0_s
.Lkw_icon_gen_α_778_0_s:
                        .string          "&collections"
                        .size            n00219_kw_icon_gen_bx, .-n00219_kw_icon_gen_bx
                        .type            n00221_call_icon_bx, @function
n00221_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_call_icon_α:       mov              r11, 297
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn780:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn780]
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
                        cmp              al, 104;                             je    n00219_kw_icon_gen_β
                                                                              jmp   n00219_kw_icon_gen_β
n00221_call_icon_β:       mov              r11, 297;                            jmp   n00219_kw_icon_gen_β
                        .size            n00221_call_icon_bx, .-n00221_call_icon_bx
                        .type            n00220_lit_string_bx, @function
n00220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_781_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00222_call_icon_α
.Llit_string_α_781_0:   .quad            .Llit_string_α_781_0_s
.Llit_string_α_781_0_s: .string          "collections"
                        .size            n00220_lit_string_bx, .-n00220_lit_string_bx
                        .type            n00222_call_icon_bx, @function
n00222_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_icon_α:       mov              r11, 299
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn783:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn783]
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
                        cmp              al, 104;                             je    n00223_lit_integer_α
                                                                              jmp   n00223_lit_integer_α
n00222_call_icon_β:       mov              r11, 299;                            jmp   n00223_lit_integer_α
                        .size            n00222_call_icon_bx, .-n00222_call_icon_bx
                        .type            n00223_lit_integer_bx, @function
n00223_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_lit_integer_α:     mov              r11, 300
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_784_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00224_var_α
.Llit_integer_α_784_0:  .quad            1
                        .size            n00223_lit_integer_bx, .-n00223_lit_integer_bx
                        .type            n00224_var_bx, @function
n00224_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_var_α:             mov              r11, 301
                        mov              rax, qword ptr [r9 + 288]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00225_unop_α
                        .size            n00224_var_bx, .-n00224_var_bx
                        .type            n00225_unop_bx, @function
n00225_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_unop_α:            mov              r11, 302
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
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00226_to_α
                        .size            n00225_unop_bx, .-n00225_unop_bx
                        .type            n00226_to_bx, @function
n00226_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_to_α:              mov              r11, 303
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
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
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_788_0:           mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00227_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00228_assign_α
n00226_to_β:              mov              r11, 303
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_788_0
                        .size            n00226_to_bx, .-n00226_to_bx
                        .type            n00228_assign_bx, @function
n00228_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n00229_bound_α
                        .size            n00228_assign_bx, .-n00228_assign_bx
                        .type            n00229_bound_bx, @function
n00229_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_bound_α:           mov              r11, 305
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00230_var_ref_α
                        .size            n00229_bound_bx, .-n00229_bound_bx
                        .type            n00230_var_ref_bx, @function
n00230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Collections____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00231_var_α
                        .size            n00230_var_ref_bx, .-n00230_var_ref_bx
                        .type            n00231_var_bx, @function
n00231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_α:             mov              r11, 307
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00232_subscript_α
                        .size            n00231_var_bx, .-n00231_var_bx
                        .type            n00232_subscript_bx, @function
n00232_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_subscript_α:       mov              r11, 308
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
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00234_deref_α
                        .size            n00232_subscript_bx, .-n00232_subscript_bx
                        .type            n00234_deref_bx, @function
n00234_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_deref_α:           mov              r11, 309
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
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00235_var_ref_α
                        .size            n00234_deref_bx, .-n00234_deref_bx
                        .type            n00235_var_ref_bx, @function
n00235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_var_ref_α:         mov              r11, 310
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00236_var_α
                        .size            n00235_var_ref_bx, .-n00235_var_ref_bx
                        .type            n00236_var_bx, @function
n00236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_var_α:             mov              r11, 311
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00237_subscript_α
                        .size            n00236_var_bx, .-n00236_var_bx
                        .type            n00237_subscript_bx, @function
n00237_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_subscript_α:       mov              r11, 312
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00238_deref_α
                        .size            n00237_subscript_bx, .-n00237_subscript_bx
                        .type            n00238_deref_bx, @function
n00238_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_deref_α:           mov              r11, 313
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
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00239_lit_integer_α
                        .size            n00238_deref_bx, .-n00238_deref_bx
                        .type            n00239_lit_integer_bx, @function
n00239_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_integer_α:     mov              r11, 314
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_804_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00240_call_icon_α
.Llit_integer_α_804_0:  .quad            8
                        .size            n00239_lit_integer_bx, .-n00239_lit_integer_bx
                        .type            n00240_call_icon_bx, @function
n00240_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_call_icon_α:       mov              r11, 315
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn806:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn806]
                        lea              rsi, [rbp + 304]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n00233_unmark_α
                                                                              jmp   n00241_call_icon_α
n00240_call_icon_β:       mov              r11, 315;                            jmp   n00233_unmark_α
                        .size            n00240_call_icon_bx, .-n00240_call_icon_bx
                        .type            n00241_call_icon_bx, @function
n00241_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_call_icon_α:       mov              r11, 316
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn808:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn808]
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
                        cmp              al, 104;                             je    n00233_unmark_α
                                                                              jmp   n00233_unmark_α
n00241_call_icon_β:       mov              r11, 316;                            jmp   n00233_unmark_α
                        .size            n00241_call_icon_bx, .-n00241_call_icon_bx
                        .type            n00233_unmark_bx, @function
n00233_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_unmark_α:          mov              r11, 317
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00226_to_β
                        .size            n00233_unmark_bx, .-n00233_unmark_bx
                        .type            n00227_return_bx, @function
n00227_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_return_α:          mov              r11, 318
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Collections___γ
                        .size            n00227_return_bx, .-n00227_return_bx
                        .type            n00215_var_ref_bx, @function
n00215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_ref_α:         mov              r11, 319
                        mov              rax, 4294967336
                        mov              rdx, 1879052592                      # Collections____INITFLAG__0
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00242_nulltest_var_α
n00215_var_ref_β:         mov              r11, 319;                            jmp   .Ldisjunction_ω_734_af
                        .size            n00215_var_ref_bx, .-n00215_var_ref_bx
                        .type            n00242_nulltest_var_bx, @function
n00242_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_nulltest_var_α:    mov              r11, 320
                        mov              eax, dword ptr [rbp + 896]
                        cmp              al, 104;                             je    .Ldisjunction_ω_734_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_734_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_734_af
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00243_lit_integer_α
                        .size            n00242_nulltest_var_bx, .-n00242_nulltest_var_bx
                        .type            n00243_lit_integer_bx, @function
n00243_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_integer_α:     mov              r11, 321
                        mov              qword ptr [rbp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_815_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00244_assign_var_α
.Llit_integer_α_815_0:  .quad            1
                        .size            n00243_lit_integer_bx, .-n00243_lit_integer_bx
                        .type            n00244_assign_var_bx, @function
n00244_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_assign_var_α:      mov              r11, 322
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_734_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00245_lit_string_α
                        .size            n00244_assign_var_bx, .-n00244_assign_var_bx
                        .type            n00245_lit_string_bx, @function
n00245_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_817_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00246_lit_string_α
.Llit_string_α_817_0:   .quad            .Llit_string_α_817_0_s
.Llit_string_α_817_0_s: .string          "total"
                        .size            n00245_lit_string_bx, .-n00245_lit_string_bx
                        .type            n00246_lit_string_bx, @function
n00246_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_lit_string_α:      mov              r11, 324
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_818_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00247_lit_string_α
.Llit_string_α_818_0:   .quad            .Llit_string_α_818_0_s
.Llit_string_α_818_0_s: .string          "static"
                        .size            n00246_lit_string_bx, .-n00246_lit_string_bx
                        .type            n00247_lit_string_bx, @function
n00247_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_lit_string_α:      mov              r11, 325
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_819_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00248_lit_string_α
.Llit_string_α_819_0:   .quad            .Llit_string_α_819_0_s
.Llit_string_α_819_0_s: .string          "string"
                        .size            n00247_lit_string_bx, .-n00247_lit_string_bx
                        .type            n00248_lit_string_bx, @function
n00248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_lit_string_α:      mov              r11, 326
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_820_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00249_make_list_α
.Llit_string_α_820_0:   .quad            .Llit_string_α_820_0_s
.Llit_string_α_820_0_s: .string          "block"
                        .size            n00248_lit_string_bx, .-n00248_lit_string_bx
                        .type            n00249_make_list_bx, @function
n00249_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_make_list_α:       mov              r11, 327
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00250_assign_α
                        .size            n00249_make_list_bx, .-n00249_make_list_bx
                        .type            n00250_assign_bx, @function
n00250_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_assign_α:          mov              r11, 328
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [r9 + 288], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 296], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_823_0]
                        .section         .rodata
.Lassign_α_823_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_823_1_s]
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
                        pop              rax;                                 jmp   .Ldisjunction_γ_734_as
n00250_assign_β:          mov              r11, 328;                            jmp   n00216_make_list_α
.Lassign_α_823_0:       .quad            .Lassign_α_823_0_s
.Lassign_α_823_0_s:     .string          "Collections____STATIC__labels"
                        .size            n00250_assign_bx, .-n00250_assign_bx
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
                        cmp              rax, 0;                              je    .LCollections___α_823_248
                        .section         .rodata
.Licn_trace_nm824:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm824]
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
.LCollections___α_823_248:
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
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_823_249
                        .section         .rodata
.Licn_trace_nm825:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm825]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_823_249:
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
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LCollections___α_826_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_826_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_826_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_826_3:
                        add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 912
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
                        cmp              rax, 0;                              je    .LRegions___α_826_247
                        .section         .rodata
.Licn_trace_nm827:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm827]
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
.LRegions___α_826_247:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Regions___α_body:
                        .type            n00251_disjunction_bx, @function
n00251_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_disjunction_α:     mov              r11, 329
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0;            jmp   n00252_var_ref_α
.Ldisjunction_γ_828_as: mov              r11, 329
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_865_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00253_make_list_α
.Ldisjunction_α_865_0:                                                        jmp   n00253_make_list_α
n00251_disjunction_β:     mov              r11, 329
                        mov              eax, dword ptr [rbp + 656];          jmp   n00253_make_list_α
.Ldisjunction_γ_828_af: mov              r11, 329
.Ldisjunction_ω_828_af: mov              r11, 329
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656];          jmp   n00253_make_list_α
                        .size            n00251_disjunction_bx, .-n00251_disjunction_bx
                        .type            n00253_make_list_bx, @function
n00253_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_make_list_α:       mov              r11, 330
                        lea              rdi, [rbp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00254_assign_α
                        .size            n00253_make_list_bx, .-n00253_make_list_bx
                        .type            n00254_assign_bx, @function
n00254_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_assign_α:          mov              r11, 331
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00255_var_α
                        .size            n00254_assign_bx, .-n00254_assign_bx
                        .type            n00255_var_bx, @function
n00255_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_var_α:             mov              r11, 332
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00256_kw_icon_gen_α
                        .size            n00255_var_bx, .-n00255_var_bx
                        .type            n00256_kw_icon_gen_bx, @function
n00256_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_kw_icon_gen_α:     mov              r11, 333
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_871_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_871_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00257_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00258_call_icon_α
n00256_kw_icon_gen_β:     mov              r11, 333;                            jmp   .Lkw_icon_gen_α_871_1
.Lkw_icon_gen_α_871_0:  .quad            .Lkw_icon_gen_α_871_0_s
.Lkw_icon_gen_α_871_0_s:
                        .string          "&regions"
                        .size            n00256_kw_icon_gen_bx, .-n00256_kw_icon_gen_bx
                        .type            n00258_call_icon_bx, @function
n00258_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_call_icon_α:       mov              r11, 334
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn873:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn873]
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
                        cmp              al, 104;                             je    n00256_kw_icon_gen_β
                                                                              jmp   n00256_kw_icon_gen_β
n00258_call_icon_β:       mov              r11, 334;                            jmp   n00256_kw_icon_gen_β
                        .size            n00258_call_icon_bx, .-n00258_call_icon_bx
                        .type            n00257_lit_string_bx, @function
n00257_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_lit_string_α:      mov              r11, 335
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_874_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00259_call_icon_α
.Llit_string_α_874_0:   .quad            .Llit_string_α_874_0_s
.Llit_string_α_874_0_s: .string          "regions"
                        .size            n00257_lit_string_bx, .-n00257_lit_string_bx
                        .type            n00259_call_icon_bx, @function
n00259_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_call_icon_α:       mov              r11, 336
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn876:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn876]
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
                        cmp              al, 104;                             je    n00260_lit_integer_α
                                                                              jmp   n00260_lit_integer_α
n00259_call_icon_β:       mov              r11, 336;                            jmp   n00260_lit_integer_α
                        .size            n00259_call_icon_bx, .-n00259_call_icon_bx
                        .type            n00260_lit_integer_bx, @function
n00260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_lit_integer_α:     mov              r11, 337
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_877_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00261_var_α
.Llit_integer_α_877_0:  .quad            1
                        .size            n00260_lit_integer_bx, .-n00260_lit_integer_bx
                        .type            n00261_var_bx, @function
n00261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_var_α:             mov              r11, 338
                        mov              rax, qword ptr [r9 + 320]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00262_unop_α
                        .size            n00261_var_bx, .-n00261_var_bx
                        .type            n00262_unop_bx, @function
n00262_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_unop_α:            mov              r11, 339
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
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00263_to_α
                        .size            n00262_unop_bx, .-n00262_unop_bx
                        .type            n00263_to_bx, @function
n00263_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_to_α:              mov              r11, 340
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
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
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_881_0:           mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00264_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00265_assign_α
n00263_to_β:              mov              r11, 340
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_881_0
                        .size            n00263_to_bx, .-n00263_to_bx
                        .type            n00265_assign_bx, @function
n00265_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_assign_α:          mov              r11, 341
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n00266_bound_α
                        .size            n00265_assign_bx, .-n00265_assign_bx
                        .type            n00266_bound_bx, @function
n00266_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_bound_α:           mov              r11, 342
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00267_var_ref_α
                        .size            n00266_bound_bx, .-n00266_bound_bx
                        .type            n00267_var_ref_bx, @function
n00267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_ref_α:         mov              r11, 343
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Regions____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00268_var_α
                        .size            n00267_var_ref_bx, .-n00267_var_ref_bx
                        .type            n00268_var_bx, @function
n00268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00269_subscript_α
                        .size            n00268_var_bx, .-n00268_var_bx
                        .type            n00269_subscript_bx, @function
n00269_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_subscript_α:       mov              r11, 345
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
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00271_deref_α
                        .size            n00269_subscript_bx, .-n00269_subscript_bx
                        .type            n00271_deref_bx, @function
n00271_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_deref_α:           mov              r11, 346
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
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00272_var_ref_α
                        .size            n00271_deref_bx, .-n00271_deref_bx
                        .type            n00272_var_ref_bx, @function
n00272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00273_var_α
                        .size            n00272_var_ref_bx, .-n00272_var_ref_bx
                        .type            n00273_var_bx, @function
n00273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_α:             mov              r11, 348
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00274_subscript_α
                        .size            n00273_var_bx, .-n00273_var_bx
                        .type            n00274_subscript_bx, @function
n00274_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_subscript_α:       mov              r11, 349
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00275_deref_α
                        .size            n00274_subscript_bx, .-n00274_subscript_bx
                        .type            n00275_deref_bx, @function
n00275_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_deref_α:           mov              r11, 350
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
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00276_lit_integer_α
                        .size            n00275_deref_bx, .-n00275_deref_bx
                        .type            n00276_lit_integer_bx, @function
n00276_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_lit_integer_α:     mov              r11, 351
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_897_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00277_call_icon_α
.Llit_integer_α_897_0:  .quad            8
                        .size            n00276_lit_integer_bx, .-n00276_lit_integer_bx
                        .type            n00277_call_icon_bx, @function
n00277_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_call_icon_α:       mov              r11, 352
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn899:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn899]
                        lea              rsi, [rbp + 304]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n00270_unmark_α
                                                                              jmp   n00278_call_icon_α
n00277_call_icon_β:       mov              r11, 352;                            jmp   n00270_unmark_α
                        .size            n00277_call_icon_bx, .-n00277_call_icon_bx
                        .type            n00278_call_icon_bx, @function
n00278_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_call_icon_α:       mov              r11, 353
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn901:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn901]
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
                        cmp              al, 104;                             je    n00270_unmark_α
                                                                              jmp   n00270_unmark_α
n00278_call_icon_β:       mov              r11, 353;                            jmp   n00270_unmark_α
                        .size            n00278_call_icon_bx, .-n00278_call_icon_bx
                        .type            n00270_unmark_bx, @function
n00270_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_unmark_α:          mov              r11, 354
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00263_to_β
                        .size            n00270_unmark_bx, .-n00270_unmark_bx
                        .type            n00264_return_bx, @function
n00264_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_return_α:          mov              r11, 355
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Regions___γ
                        .size            n00264_return_bx, .-n00264_return_bx
                        .type            n00252_var_ref_bx, @function
n00252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_ref_α:         mov              r11, 356
                        mov              rax, 4294967336
                        mov              rdx, 1879052624                      # Regions____INITFLAG__0
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00279_nulltest_var_α
n00252_var_ref_β:         mov              r11, 356;                            jmp   .Ldisjunction_ω_828_af
                        .size            n00252_var_ref_bx, .-n00252_var_ref_bx
                        .type            n00279_nulltest_var_bx, @function
n00279_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_nulltest_var_α:    mov              r11, 357
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_828_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_828_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_828_af
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00280_lit_integer_α
                        .size            n00279_nulltest_var_bx, .-n00279_nulltest_var_bx
                        .type            n00280_lit_integer_bx, @function
n00280_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_lit_integer_α:     mov              r11, 358
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_908_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00281_assign_var_α
.Llit_integer_α_908_0:  .quad            1
                        .size            n00280_lit_integer_bx, .-n00280_lit_integer_bx
                        .type            n00281_assign_var_bx, @function
n00281_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_assign_var_α:      mov              r11, 359
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_828_af
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00282_lit_string_α
                        .size            n00281_assign_var_bx, .-n00281_assign_var_bx
                        .type            n00282_lit_string_bx, @function
n00282_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_910_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00283_lit_string_α
.Llit_string_α_910_0:   .quad            .Llit_string_α_910_0_s
.Llit_string_α_910_0_s: .string          "static"
                        .size            n00282_lit_string_bx, .-n00282_lit_string_bx
                        .type            n00283_lit_string_bx, @function
n00283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_lit_string_α:      mov              r11, 361
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_911_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00284_lit_string_α
.Llit_string_α_911_0:   .quad            .Llit_string_α_911_0_s
.Llit_string_α_911_0_s: .string          "string"
                        .size            n00283_lit_string_bx, .-n00283_lit_string_bx
                        .type            n00284_lit_string_bx, @function
n00284_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_912_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00285_make_list_α
.Llit_string_α_912_0:   .quad            .Llit_string_α_912_0_s
.Llit_string_α_912_0_s: .string          "block"
                        .size            n00284_lit_string_bx, .-n00284_lit_string_bx
                        .type            n00285_make_list_bx, @function
n00285_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_make_list_α:       mov              r11, 363
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00286_assign_α
                        .size            n00285_make_list_bx, .-n00285_make_list_bx
                        .type            n00286_assign_bx, @function
n00286_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_assign_α:          mov              r11, 364
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [r9 + 320], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 328], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_915_0]
                        .section         .rodata
.Lassign_α_915_1_s:     .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_915_1_s]
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
                        pop              rax;                                 jmp   .Ldisjunction_γ_828_as
n00286_assign_β:          mov              r11, 364;                            jmp   n00253_make_list_α
.Lassign_α_915_0:       .quad            .Lassign_α_915_0_s
.Lassign_α_915_0_s:     .string          "Regions____STATIC__labels"
                        .size            n00286_assign_bx, .-n00286_assign_bx
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
                        cmp              rax, 0;                              je    .LRegions___α_915_248
                        .section         .rodata
.Licn_trace_nm916:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm916]
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
.LRegions___α_915_248:  mov              rsp, rbx
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
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_915_249
                        .section         .rodata
.Licn_trace_nm917:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm917]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_915_249:  mov              rsp, rbx
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
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LRegions___α_918_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_918_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_918_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_918_3:    add              rsp, 24
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
                        cmp              rax, 0;                              je    .LSignature___α_918_247
                        .section         .rodata
.Licn_trace_nm919:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm919]
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
.LSignature___α_918_247:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Signature___α_body:
                        .type            n00287_kw_icon_bx, @function
n00287_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_kw_icon_α:         mov              r11, 365
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_927_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00288_kw_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00289_call_icon_α
n00287_kw_icon_β:         mov              r11, 365;                            jmp   n00288_kw_icon_α
.Lkw_icon_α_927_0:      .quad            .Lkw_icon_α_927_0_s
.Lkw_icon_α_927_0_s:    .string          "&version"
                        .size            n00287_kw_icon_bx, .-n00287_kw_icon_bx
                        .type            n00289_call_icon_bx, @function
n00289_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_call_icon_α:       mov              r11, 366
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn929:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn929]
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
                        cmp              al, 104;                             je    n00288_kw_icon_α
                                                                              jmp   n00288_kw_icon_α
n00289_call_icon_β:       mov              r11, 366;                            jmp   n00288_kw_icon_α
                        .size            n00289_call_icon_bx, .-n00289_call_icon_bx
                        .type            n00288_kw_icon_bx, @function
n00288_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_kw_icon_α:         mov              r11, 367
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_930_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00290_kw_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00291_call_icon_α
n00288_kw_icon_β:         mov              r11, 367;                            jmp   n00290_kw_icon_gen_α
.Lkw_icon_α_930_0:      .quad            .Lkw_icon_α_930_0_s
.Lkw_icon_α_930_0_s:    .string          "&host"
                        .size            n00288_kw_icon_bx, .-n00288_kw_icon_bx
                        .type            n00291_call_icon_bx, @function
n00291_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_call_icon_α:       mov              r11, 368
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn932:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn932]
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
                        cmp              al, 104;                             je    n00290_kw_icon_gen_α
                                                                              jmp   n00290_kw_icon_gen_α
n00291_call_icon_β:       mov              r11, 368;                            jmp   n00290_kw_icon_gen_α
                        .size            n00291_call_icon_bx, .-n00291_call_icon_bx
                        .type            n00290_kw_icon_gen_bx, @function
n00290_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_kw_icon_gen_α:     mov              r11, 369
                        mov              qword ptr [rbp + 80], 0
.Lkw_icon_gen_α_933_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_933_0]
                        mov              rsi, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00292_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax;           jmp   n00293_call_icon_α
n00290_kw_icon_gen_β:     mov              r11, 369;                            jmp   .Lkw_icon_gen_α_933_1
.Lkw_icon_gen_α_933_0:  .quad            .Lkw_icon_gen_α_933_0_s
.Lkw_icon_gen_α_933_0_s:
                        .string          "&features"
                        .size            n00290_kw_icon_gen_bx, .-n00290_kw_icon_gen_bx
                        .type            n00293_call_icon_bx, @function
n00293_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_call_icon_α:       mov              r11, 370
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn935:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn935]
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
                        cmp              al, 104;                             je    n00290_kw_icon_gen_β
                                                                              jmp   n00290_kw_icon_gen_β
n00293_call_icon_β:       mov              r11, 370;                            jmp   n00290_kw_icon_gen_β
                        .size            n00293_call_icon_bx, .-n00293_call_icon_bx
                        .type            n00292_return_bx, @function
n00292_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_return_α:          mov              r11, 371
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Signature___γ
                        .size            n00292_return_bx, .-n00292_return_bx
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
                        cmp              rax, 0;                              je    .LSignature___α_936_248
                        .section         .rodata
.Licn_trace_nm937:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm937]
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
.LSignature___α_936_248:
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
                        cmp              rax, 0;                              je    .LSignature___α_936_249
                        .section         .rodata
.Licn_trace_nm938:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm938]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_936_249:
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
                        lea              rcx, [rip + .LSignature___α_939_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_939_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_939_2:  add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_939_3:  add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 912
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
                        cmp              rax, 0;                              je    .LStorage___α_939_247
                        .section         .rodata
.Licn_trace_nm940:      .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm940]
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
.LStorage___α_939_247:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Storage___α_body:
                        .type            n00294_disjunction_bx, @function
n00294_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_disjunction_α:     mov              r11, 372
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0;            jmp   n00295_var_ref_α
.Ldisjunction_γ_941_as: mov              r11, 372
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_978_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00296_make_list_α
.Ldisjunction_α_978_0:                                                        jmp   n00296_make_list_α
n00294_disjunction_β:     mov              r11, 372
                        mov              eax, dword ptr [rbp + 656];          jmp   n00296_make_list_α
.Ldisjunction_γ_941_af: mov              r11, 372
.Ldisjunction_ω_941_af: mov              r11, 372
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656];          jmp   n00296_make_list_α
                        .size            n00294_disjunction_bx, .-n00294_disjunction_bx
                        .type            n00296_make_list_bx, @function
n00296_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_make_list_α:       mov              r11, 373
                        lea              rdi, [rbp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00297_assign_α
                        .size            n00296_make_list_bx, .-n00296_make_list_bx
                        .type            n00297_assign_bx, @function
n00297_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_assign_α:          mov              r11, 374
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00298_var_α
                        .size            n00297_assign_bx, .-n00297_assign_bx
                        .type            n00298_var_bx, @function
n00298_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_α:             mov              r11, 375
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00299_kw_icon_gen_α
                        .size            n00298_var_bx, .-n00298_var_bx
                        .type            n00299_kw_icon_gen_bx, @function
n00299_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_kw_icon_gen_α:     mov              r11, 376
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_984_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_984_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00300_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00301_call_icon_α
n00299_kw_icon_gen_β:     mov              r11, 376;                            jmp   .Lkw_icon_gen_α_984_1
.Lkw_icon_gen_α_984_0:  .quad            .Lkw_icon_gen_α_984_0_s
.Lkw_icon_gen_α_984_0_s:
                        .string          "&storage"
                        .size            n00299_kw_icon_gen_bx, .-n00299_kw_icon_gen_bx
                        .type            n00301_call_icon_bx, @function
n00301_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_call_icon_α:       mov              r11, 377
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn986:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn986]
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
                        cmp              al, 104;                             je    n00299_kw_icon_gen_β
                                                                              jmp   n00299_kw_icon_gen_β
n00301_call_icon_β:       mov              r11, 377;                            jmp   n00299_kw_icon_gen_β
                        .size            n00301_call_icon_bx, .-n00301_call_icon_bx
                        .type            n00300_lit_string_bx, @function
n00300_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_lit_string_α:      mov              r11, 378
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_987_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00302_call_icon_α
.Llit_string_α_987_0:   .quad            .Llit_string_α_987_0_s
.Llit_string_α_987_0_s: .string          "storage"
                        .size            n00300_lit_string_bx, .-n00300_lit_string_bx
                        .type            n00302_call_icon_bx, @function
n00302_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_call_icon_α:       mov              r11, 379
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn989:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn989]
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
                        cmp              al, 104;                             je    n00303_lit_integer_α
                                                                              jmp   n00303_lit_integer_α
n00302_call_icon_β:       mov              r11, 379;                            jmp   n00303_lit_integer_α
                        .size            n00302_call_icon_bx, .-n00302_call_icon_bx
                        .type            n00303_lit_integer_bx, @function
n00303_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_lit_integer_α:     mov              r11, 380
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_990_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00304_var_α
.Llit_integer_α_990_0:  .quad            1
                        .size            n00303_lit_integer_bx, .-n00303_lit_integer_bx
                        .type            n00304_var_bx, @function
n00304_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_var_α:             mov              r11, 381
                        mov              rax, qword ptr [r9 + 352]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00305_unop_α
                        .size            n00304_var_bx, .-n00304_var_bx
                        .type            n00305_unop_bx, @function
n00305_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_unop_α:            mov              r11, 382
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
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00306_to_α
                        .size            n00305_unop_bx, .-n00305_unop_bx
                        .type            n00306_to_bx, @function
n00306_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_to_α:              mov              r11, 383
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
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
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_994_0:           mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00307_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00308_assign_α
n00306_to_β:              mov              r11, 383
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_994_0
                        .size            n00306_to_bx, .-n00306_to_bx
                        .type            n00308_assign_bx, @function
n00308_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_assign_α:          mov              r11, 384
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n00309_bound_α
                        .size            n00308_assign_bx, .-n00308_assign_bx
                        .type            n00309_bound_bx, @function
n00309_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_bound_α:           mov              r11, 385
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00310_var_ref_α
                        .size            n00309_bound_bx, .-n00309_bound_bx
                        .type            n00310_var_ref_bx, @function
n00310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_var_ref_α:         mov              r11, 386
                        mov              rax, 4294967336
                        mov              rdx, 1879052640                      # Storage____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00311_var_α
                        .size            n00310_var_ref_bx, .-n00310_var_ref_bx
                        .type            n00311_var_bx, @function
n00311_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_α:             mov              r11, 387
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00312_subscript_α
                        .size            n00311_var_bx, .-n00311_var_bx
                        .type            n00312_subscript_bx, @function
n00312_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_subscript_α:       mov              r11, 388
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
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00314_deref_α
                        .size            n00312_subscript_bx, .-n00312_subscript_bx
                        .type            n00314_deref_bx, @function
n00314_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_deref_α:           mov              r11, 389
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
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00315_var_ref_α
                        .size            n00314_deref_bx, .-n00314_deref_bx
                        .type            n00315_var_ref_bx, @function
n00315_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00316_var_α
                        .size            n00315_var_ref_bx, .-n00315_var_ref_bx
                        .type            n00316_var_bx, @function
n00316_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_α:             mov              r11, 391
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00317_subscript_α
                        .size            n00316_var_bx, .-n00316_var_bx
                        .type            n00317_subscript_bx, @function
n00317_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_subscript_α:       mov              r11, 392
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00318_deref_α
                        .size            n00317_subscript_bx, .-n00317_subscript_bx
                        .type            n00318_deref_bx, @function
n00318_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_deref_α:           mov              r11, 393
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
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00319_lit_integer_α
                        .size            n00318_deref_bx, .-n00318_deref_bx
                        .type            n00319_lit_integer_bx, @function
n00319_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_integer_α:     mov              r11, 394
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1010_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00320_call_icon_α
.Llit_integer_α_1010_0: .quad            8
                        .size            n00319_lit_integer_bx, .-n00319_lit_integer_bx
                        .type            n00320_call_icon_bx, @function
n00320_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_call_icon_α:       mov              r11, 395
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1012: .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1012]
                        lea              rsi, [rbp + 304]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n00313_unmark_α
                                                                              jmp   n00321_call_icon_α
n00320_call_icon_β:       mov              r11, 395;                            jmp   n00313_unmark_α
                        .size            n00320_call_icon_bx, .-n00320_call_icon_bx
                        .type            n00321_call_icon_bx, @function
n00321_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_icon_α:       mov              r11, 396
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1014: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1014]
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
                        cmp              al, 104;                             je    n00313_unmark_α
                                                                              jmp   n00313_unmark_α
n00321_call_icon_β:       mov              r11, 396;                            jmp   n00313_unmark_α
                        .size            n00321_call_icon_bx, .-n00321_call_icon_bx
                        .type            n00313_unmark_bx, @function
n00313_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_unmark_α:          mov              r11, 397
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00306_to_β
                        .size            n00313_unmark_bx, .-n00313_unmark_bx
                        .type            n00307_return_bx, @function
n00307_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_return_α:          mov              r11, 398
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Storage___γ
                        .size            n00307_return_bx, .-n00307_return_bx
                        .type            n00295_var_ref_bx, @function
n00295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_ref_α:         mov              r11, 399
                        mov              rax, 4294967336
                        mov              rdx, 1879052656                      # Storage____INITFLAG__0
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00322_nulltest_var_α
n00295_var_ref_β:         mov              r11, 399;                            jmp   .Ldisjunction_ω_941_af
                        .size            n00295_var_ref_bx, .-n00295_var_ref_bx
                        .type            n00322_nulltest_var_bx, @function
n00322_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_nulltest_var_α:    mov              r11, 400
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_941_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_941_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_941_af
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00323_lit_integer_α
                        .size            n00322_nulltest_var_bx, .-n00322_nulltest_var_bx
                        .type            n00323_lit_integer_bx, @function
n00323_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_integer_α:     mov              r11, 401
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1021_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00324_assign_var_α
.Llit_integer_α_1021_0: .quad            1
                        .size            n00323_lit_integer_bx, .-n00323_lit_integer_bx
                        .type            n00324_assign_var_bx, @function
n00324_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_assign_var_α:      mov              r11, 402
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_941_af
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00325_lit_string_α
                        .size            n00324_assign_var_bx, .-n00324_assign_var_bx
                        .type            n00325_lit_string_bx, @function
n00325_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_lit_string_α:      mov              r11, 403
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1023_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00326_lit_string_α
.Llit_string_α_1023_0:  .quad            .Llit_string_α_1023_0_s
.Llit_string_α_1023_0_s:
                        .string          "static"
                        .size            n00325_lit_string_bx, .-n00325_lit_string_bx
                        .type            n00326_lit_string_bx, @function
n00326_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_lit_string_α:      mov              r11, 404
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1024_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00327_lit_string_α
.Llit_string_α_1024_0:  .quad            .Llit_string_α_1024_0_s
.Llit_string_α_1024_0_s:
                        .string          "string"
                        .size            n00326_lit_string_bx, .-n00326_lit_string_bx
                        .type            n00327_lit_string_bx, @function
n00327_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_lit_string_α:      mov              r11, 405
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1025_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00328_make_list_α
.Llit_string_α_1025_0:  .quad            .Llit_string_α_1025_0_s
.Llit_string_α_1025_0_s:
                        .string          "block"
                        .size            n00327_lit_string_bx, .-n00327_lit_string_bx
                        .type            n00328_make_list_bx, @function
n00328_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_make_list_α:       mov              r11, 406
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00329_assign_α
                        .size            n00328_make_list_bx, .-n00328_make_list_bx
                        .type            n00329_assign_bx, @function
n00329_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_assign_α:          mov              r11, 407
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [r9 + 352], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 360], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1028_0]
                        .section         .rodata
.Lassign_α_1028_1_s:    .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1028_1_s]
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
                        pop              rax;                                 jmp   .Ldisjunction_γ_941_as
n00329_assign_β:          mov              r11, 407;                            jmp   n00296_make_list_α
.Lassign_α_1028_0:      .quad            .Lassign_α_1028_0_s
.Lassign_α_1028_0_s:    .string          "Storage____STATIC__labels"
                        .size            n00329_assign_bx, .-n00329_assign_bx
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
                        cmp              rax, 0;                              je    .LStorage___α_1028_248
                        .section         .rodata
.Licn_trace_nm1029:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1029]
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
.LStorage___α_1028_248: mov              rsp, rbx
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
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_1028_249
                        .section         .rodata
.Licn_trace_nm1030:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1030]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_1028_249: mov              rsp, rbx
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
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LStorage___α_1031_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_1031_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_1031_2:   add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_1031_3:   add              rsp, 24
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
                        cmp              rax, 0;                              je    .LTime___α_1031_247
                        .section         .rodata
.Licn_trace_nm1032:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1032]
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
.LTime___α_1031_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Time___α_body:
                        .type            n00330_disjunction_bx, @function
n00330_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_disjunction_α:    mov              r11, 408
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0;            jmp   n00331_var_ref_α
.Ldisjunction_γ_1033_as:
                        mov              r11, 408
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1047_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00332_kw_icon_α
.Ldisjunction_α_1047_0:                                                       jmp   n00332_kw_icon_α
n00330_disjunction_β:    mov              r11, 408
                        mov              eax, dword ptr [rbp + 128];          jmp   n00332_kw_icon_α
.Ldisjunction_γ_1033_af:
                        mov              r11, 408
.Ldisjunction_ω_1033_af:
                        mov              r11, 408
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128];          jmp   n00332_kw_icon_α
                        .size            n00330_disjunction_bx, .-n00330_disjunction_bx
                        .type            n00332_kw_icon_bx, @function
n00332_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_kw_icon_α:        mov              r11, 409
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1048_0]
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
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00333_var_α
n00332_kw_icon_β:        mov              r11, 409;                            jmp   Time___ω
.Lkw_icon_α_1048_0:     .quad            .Lkw_icon_α_1048_0_s
.Lkw_icon_α_1048_0_s:   .string          "&time"
                        .size            n00332_kw_icon_bx, .-n00332_kw_icon_bx
                        .type            n00333_var_bx, @function
n00333_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_var_α:            mov              r11, 410
                        mov              rax, qword ptr [r9 + 384]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00334_coerce_numeric_α
                        .size            n00333_var_bx, .-n00333_var_bx
                        .type            n00334_coerce_numeric_bx, @function
n00334_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_coerce_numeric_α: mov              r11, 411
                        mov              eax, dword ptr [rbp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1051_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1051_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1051_0
.Lcoerce_numeric_α_1051_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00335_coerce_numeric_α
.Lcoerce_numeric_α_1051_0:
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
                                                                              jmp   n00335_coerce_numeric_α
                        .size            n00334_coerce_numeric_bx, .-n00334_coerce_numeric_bx
                        .type            n00335_coerce_numeric_bx, @function
n00335_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_coerce_numeric_α: mov              r11, 412
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1053_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1053_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1053_0
.Lcoerce_numeric_α_1053_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00336_binop_α
.Lcoerce_numeric_α_1053_0:
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
                                                                              jmp   n00336_binop_α
                        .size            n00335_coerce_numeric_bx, .-n00335_coerce_numeric_bx
                        .type            n00336_binop_bx, @function
n00336_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_binop_α:          mov              r11, 413
                        mov              eax, dword ptr [rbp + 48]
                        mov              ecx, dword ptr [rbp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1054_2
                        mov              rax, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 40]
                        sub              rax, rdx;                            jo    .Lbinop_α_1054_0
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax;           jmp   .Lbinop_α_1054_7
.Lbinop_α_1054_2:       and              edx, 1;                              jz    .Lbinop_α_1054_0
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rbp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1054_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1054_4
.Lbinop_α_1054_3:       movq             xmm0, rsi
.Lbinop_α_1054_4:       cmp              cl, 5;                               je    .Lbinop_α_1054_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1054_6
.Lbinop_α_1054_5:       movq             xmm1, rdi
.Lbinop_α_1054_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1054_0
                        mov              qword ptr [rbp + 16], 5
                        mov              qword ptr [rbp + 24], rax
.Lbinop_α_1054_7:                                                             jmp   n00337_return_α
.Lbinop_α_1054_0:       mov              rdi, qword ptr [rbp + 48]
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
                        mov              qword ptr [rbp + 24], rdx;           jmp   n00337_return_α
                        .size            n00336_binop_bx, .-n00336_binop_bx
                        .type            n00337_return_bx, @function
n00337_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_return_α:         mov              r11, 414
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   Time___γ
                        .size            n00337_return_bx, .-n00337_return_bx
                        .type            n00331_var_ref_bx, @function
n00331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_var_ref_α:        mov              r11, 415
                        mov              rax, 4294967336
                        mov              rdx, 1879052688                      # Time____INITFLAG__0
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00338_nulltest_var_α
n00331_var_ref_β:        mov              r11, 415;                            jmp   .Ldisjunction_ω_1033_af
                        .size            n00331_var_ref_bx, .-n00331_var_ref_bx
                        .type            n00338_nulltest_var_bx, @function
n00338_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_nulltest_var_α:   mov              r11, 416
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1033_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1033_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1033_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00339_lit_integer_α
                        .size            n00338_nulltest_var_bx, .-n00338_nulltest_var_bx
                        .type            n00339_lit_integer_bx, @function
n00339_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_integer_α:    mov              r11, 417
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1059_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00340_assign_var_α
.Llit_integer_α_1059_0: .quad            1
                        .size            n00339_lit_integer_bx, .-n00339_lit_integer_bx
                        .type            n00340_assign_var_bx, @function
n00340_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_assign_var_α:     mov              r11, 418
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1033_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00341_kw_icon_α
                        .size            n00340_assign_var_bx, .-n00340_assign_var_bx
                        .type            n00341_kw_icon_bx, @function
n00341_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_kw_icon_α:        mov              r11, 419
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1061_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00332_kw_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00342_assign_α
n00341_kw_icon_β:        mov              r11, 419;                            jmp   n00332_kw_icon_α
.Lkw_icon_α_1061_0:     .quad            .Lkw_icon_α_1061_0_s
.Lkw_icon_α_1061_0_s:   .string          "&time"
                        .size            n00341_kw_icon_bx, .-n00341_kw_icon_bx
                        .type            n00342_assign_bx, @function
n00342_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_α:         mov              r11, 420
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1062_0]
                        .section         .rodata
.Lassign_α_1062_1_s:    .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1062_1_s]
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
                        pop              rax;                                 jmp   .Ldisjunction_γ_1033_as
n00342_assign_β:         mov              r11, 420;                            jmp   n00332_kw_icon_α
.Lassign_α_1062_0:      .quad            .Lassign_α_1062_0_s
.Lassign_α_1062_0_s:    .string          "Time____STATIC__lasttime"
                        .size            n00342_assign_bx, .-n00342_assign_bx
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
                        cmp              rax, 0;                              je    .LTime___α_1062_248
                        .section         .rodata
.Licn_trace_nm1063:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1063]
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
.LTime___α_1062_248:    mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .LTime___α_1062_249
                        .section         .rodata
.Licn_trace_nm1064:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1062_249:    mov              rsp, rbx
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
                        lea              rcx, [rip + .LTime___α_1065_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1065_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1065_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1065_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__shuffle:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 280], rbp
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
                        cmp              rax, 0;                              je    .Lshuffle_α_1065_247
                        .section         .rodata
.Licn_trace_nm1066:     .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1066]
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
.Lshuffle_α_1065_247:   mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
shuffle_α_body:
                        .type            n00343_var_bx, @function
n00343_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_var_α:            mov              r11, 421
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00344_call_icon_α
                        .size            n00343_var_bx, .-n00343_var_bx
                        .type            n00344_call_icon_bx, @function
n00344_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_call_icon_α:      mov              r11, 422
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1080: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1080]
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
                        cmp              al, 104;                             je    n00345_var_ref_α
                                                                              jmp   n00346_assign_α
n00344_call_icon_β:      mov              r11, 422;                            jmp   n00345_var_ref_α
                        .size            n00344_call_icon_bx, .-n00344_call_icon_bx
                        .type            n00346_assign_bx, @function
n00346_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_assign_α:         mov              r11, 423
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx;           jmp   n00345_var_ref_α
                        .size            n00346_assign_bx, .-n00346_assign_bx
                        .type            n00345_var_ref_bx, @function
n00345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_ref_α:        mov              r11, 424
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00347_iterate_α
                        .size            n00345_var_ref_bx, .-n00345_var_ref_bx
                        .type            n00347_iterate_bx, @function
n00347_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_iterate_α:        mov              r11, 425
                        mov              qword ptr [rbp + 64], 0
.Literate_α_1085_0:     mov              rdi, qword ptr [rbp + 80]
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
                        cmp              al, 104;                             je    n00348_var_α
                                                                              jmp   n00349_var_ref_α
n00347_iterate_β:        mov              r11, 425
                        inc              qword ptr [rbp + 64];                jmp   .Literate_α_1085_0
                        .size            n00347_iterate_bx, .-n00347_iterate_bx
                        .type            n00349_var_ref_bx, @function
n00349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_var_ref_α:        mov              r11, 426
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00350_random_α
                        .size            n00349_var_ref_bx, .-n00349_var_ref_bx
                        .type            n00350_random_bx, @function
n00350_random_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_random_α:         mov              r11, 427
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
                        cmp              al, 104;                             je    n00348_var_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00351_swap_var_α
                        .size            n00350_random_bx, .-n00350_random_bx
                        .type            n00351_swap_var_bx, @function
n00351_swap_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_swap_var_α:       mov              r11, 428
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
                        cmp              al, 104;                             je    n00348_var_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00347_iterate_β
                        .size            n00351_swap_var_bx, .-n00351_swap_var_bx
                        .type            n00348_var_bx, @function
n00348_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_var_α:            mov              r11, 429
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00352_return_α
                        .size            n00348_var_bx, .-n00348_var_bx
                        .type            n00352_return_bx, @function
n00352_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_return_α:         mov              r11, 430
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   shuffle_γ
                        .size            n00352_return_bx, .-n00352_return_bx
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
                        cmp              rax, 0;                              je    .Lshuffle_α_1092_248
                        .section         .rodata
.Licn_trace_nm1093:     .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1093]
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
.Lshuffle_α_1092_248:   mov              rsp, rbx
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
                        lea              rsp, [rbp + 288]
                        mov              rbp, qword ptr [rbp + 280];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
shuffle_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshuffle_α_1092_249
                        .section         .rodata
.Licn_trace_nm1094:     .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1094]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshuffle_α_1092_249:   mov              rsp, rbx
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
                        lea              rsp, [rbp + 288]
                        mov              rbp, qword ptr [rbp + 280];          jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lshuffle_α_1095_3]
                        push             rcx
                        lea              rcx, [rip + .Lshuffle_α_1095_2]
                        push             rcx;                                 jmp   FN__shuffle
.Lshuffle_α_1095_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshuffle_α_1095_3:     add              rsp, 24
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
                        sub              rsp, 1280
                        mov              qword ptr [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 1104
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n00353_lit_string_bx, @function
n00353_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_lit_string_α:     mov              r11, 431
                        mov              qword ptr [rbp + 1072], 2            # result
                        mov              dword ptr [rbp + 1076], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1146_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00354_call_proc_staged_α
.Llit_string_α_1146_0:  .quad            .Llit_string_α_1146_0_s
.Llit_string_α_1146_0_s:
                        .string          "deal"
                        .size            n00353_lit_string_bx, .-n00353_lit_string_bx
                        .type            n00354_call_proc_staged_bx, @function
n00354_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_call_proc_staged_α:
                        mov              r11, 432
                        lea              rsi, [rbp + 1072]
                        call             Init___dcα;                          jmp   .Lcall_proc_staged_α_1148_2
.Lcall_proc_staged_α_1148_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1148_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
.Lcall_proc_staged_α_1148_29:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n00355_lit_charset_α
                                                                              jmp   n00355_lit_charset_α
n00354_call_proc_staged_β:
                        mov              r11, 432;                            jmp   n00355_lit_charset_α
.Lcall_proc_staged_β_1148_0:
                        .quad            .Lcall_proc_staged_β_1148_0_s
.Lcall_proc_staged_β_1148_0_s:
                        .string          "Init__"
                        .size            n00354_call_proc_staged_bx, .-n00354_call_proc_staged_bx
                        .type            n00355_lit_charset_bx, @function
n00355_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_lit_charset_α:    mov              r11, 433
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1149_0]
                        mov              qword ptr [rbp + 1000], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1149_0]
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
                        pop              rax;                                 jmp   n00356_call_icon_α
.Llit_charset_α_1149_0: .quad            .Llit_charset_α_1149_0_s
.Llit_charset_α_1149_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00355_lit_charset_bx, .-n00355_lit_charset_bx
                        .type            n00356_call_icon_bx, @function
n00356_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_call_icon_α:      mov              r11, 434
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1151: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1151]
                        lea              rsi, [rbp + 960]
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
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    n00357_var_α
                                                                              jmp   n00358_assign_α
n00356_call_icon_β:      mov              r11, 434;                            jmp   n00357_var_α
                        .size            n00356_call_icon_bx, .-n00356_call_icon_bx
                        .type            n00358_assign_bx, @function
n00358_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_assign_α:         mov              r11, 435
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [r9 + 16], rax             # deckimage
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1152_0]
                        .section         .rodata
.Lassign_α_1152_1_s:    .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1152_1_s]
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
                        pop              rax;                                 jmp   n00359_assign_α
.Lassign_α_1152_0:      .quad            .Lassign_α_1152_0_s
.Lassign_α_1152_0_s:    .string          "deckimage"
                        .size            n00358_assign_bx, .-n00358_assign_bx
                        .type            n00359_assign_bx, @function
n00359_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_assign_α:         mov              r11, 436
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1153_0]
                        .section         .rodata
.Lassign_α_1153_1_s:    .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1153_1_s]
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
                        pop              rax;                                 jmp   n00357_var_α
.Lassign_α_1153_0:      .quad            .Lassign_α_1153_0_s
.Lassign_α_1153_0_s:    .string          "deck"
                        .size            n00359_assign_bx, .-n00359_assign_bx
                        .type            n00357_var_bx, @function
n00357_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_var_α:            mov              r11, 437
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 896], rax           # result
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00360_unop_α
                        .size            n00357_var_bx, .-n00357_var_bx
                        .type            n00360_unop_bx, @function
n00360_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_unop_α:           mov              r11, 438
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00361_lit_integer_α
                        .size            n00360_unop_bx, .-n00360_unop_bx
                        .type            n00361_lit_integer_bx, @function
n00361_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_lit_integer_α:    mov              r11, 439
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1156_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00362_coerce_numeric_α
.Llit_integer_α_1156_0: .quad            4
                        .size            n00361_lit_integer_bx, .-n00361_lit_integer_bx
                        .type            n00362_coerce_numeric_bx, @function
n00362_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_coerce_numeric_α: mov              r11, 440
                        mov              eax, dword ptr [rbp + 880]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1158_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1158_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1158_0
.Lcoerce_numeric_α_1158_1:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00363_binop_α
.Lcoerce_numeric_α_1158_0:
                        lea              rdi, [rbp + 880]
                        lea              rsi, [rbp + 912]
                        lea              rdx, [rbp + 864]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 104;                             je    n00364_lit_string_α
                                                                              jmp   n00363_binop_α
                        .size            n00362_coerce_numeric_bx, .-n00362_coerce_numeric_bx
                        .type            n00363_binop_bx, @function
n00363_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_binop_α:          mov              r11, 441
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00364_lit_string_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00365_assign_α
                        .size            n00363_binop_bx, .-n00363_binop_bx
                        .type            n00365_assign_bx, @function
n00365_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_assign_α:         mov              r11, 442
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [r9 + 48], rax             # suitsize
                        mov              qword ptr [r9 + 56], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1160_0]
                        .section         .rodata
.Lassign_α_1160_1_s:    .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1160_1_s]
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
                        pop              rax;                                 jmp   n00366_assign_α
.Lassign_α_1160_0:      .quad            .Lassign_α_1160_0_s
.Lassign_α_1160_0_s:    .string          "suitsize"
                        .size            n00365_assign_bx, .-n00365_assign_bx
                        .type            n00366_assign_bx, @function
n00366_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_assign_α:         mov              r11, 443
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1161_0]
                        .section         .rodata
.Lassign_α_1161_1_s:    .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1161_1_s]
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
                        pop              rax;                                 jmp   n00364_lit_string_α
.Lassign_α_1161_0:      .quad            .Lassign_α_1161_0_s
.Lassign_α_1161_0_s:    .string          "handsize"
                        .size            n00366_assign_bx, .-n00366_assign_bx
                        .type            n00364_lit_string_bx, @function
n00364_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_lit_string_α:     mov              r11, 444
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_1162_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00367_assign_α
.Llit_string_α_1162_0:  .quad            .Llit_string_α_1162_0_s
.Llit_string_α_1162_0_s:
                        .string          "AKQJT98765432"
                        .size            n00364_lit_string_bx, .-n00364_lit_string_bx
                        .type            n00367_assign_bx, @function
n00367_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_assign_α:         mov              r11, 445
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1163_0]
                        .section         .rodata
.Lassign_α_1163_1_s:    .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1163_1_s]
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
                        pop              rax;                                 jmp   n00368_lit_string_α
.Lassign_α_1163_0:      .quad            .Lassign_α_1163_0_s
.Lassign_α_1163_0_s:    .string          "rank"
                        .size            n00367_assign_bx, .-n00367_assign_bx
                        .type            n00368_lit_string_bx, @function
n00368_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_lit_string_α:     mov              r11, 446
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1164_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00369_var_α
.Llit_string_α_1164_0:  .quad            .Llit_string_α_1164_0_s
.Llit_string_α_1164_0_s:
                        .string          " "
                        .size            n00368_lit_string_bx, .-n00368_lit_string_bx
                        .type            n00369_var_bx, @function
n00369_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_var_α:            mov              r11, 447
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + 784], rax           # result
                        mov              qword ptr [rbp + 792], rdx;          jmp   n00370_call_icon_α
                        .size            n00369_var_bx, .-n00369_var_bx
                        .type            n00370_call_icon_bx, @function
n00370_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_call_icon_α:      mov              r11, 448
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1167: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1167]
                        lea              rsi, [rbp + 704]
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
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    n00371_lit_charset_α
                                                                              jmp   n00372_assign_α
n00370_call_icon_β:      mov              r11, 448;                            jmp   n00371_lit_charset_α
                        .size            n00370_call_icon_bx, .-n00370_call_icon_bx
                        .type            n00372_assign_bx, @function
n00372_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_assign_α:         mov              r11, 449
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1168_0]
                        .section         .rodata
.Lassign_α_1168_1_s:    .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1168_1_s]
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
                        pop              rax;                                 jmp   n00371_lit_charset_α
.Lassign_α_1168_0:      .quad            .Lassign_α_1168_0_s
.Lassign_α_1168_0_s:    .string          "blanker"
                        .size            n00372_assign_bx, .-n00372_assign_bx
                        .type            n00371_lit_charset_bx, @function
n00371_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_lit_charset_α:    mov              r11, 450
                        mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1169_0]
                        mov              qword ptr [rbp + 616], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1169_0]
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
                        pop              rax;                                 jmp   n00373_lit_integer_α
.Llit_charset_α_1169_0: .quad            .Llit_charset_α_1169_0_s
.Llit_charset_α_1169_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n00371_lit_charset_bx, .-n00371_lit_charset_bx
                        .type            n00373_lit_integer_bx, @function
n00373_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_lit_integer_α:    mov              r11, 451
                        mov              qword ptr [rbp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1170_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00374_var_α
.Llit_integer_α_1170_0: .quad            1
                        .size            n00373_lit_integer_bx, .-n00373_lit_integer_bx
                        .type            n00374_var_bx, @function
n00374_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00374_var_α:            mov              r11, 452
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + 656], rax           # result
                        mov              qword ptr [rbp + 664], rdx;          jmp   n00375_binop_α
                        .size            n00374_var_bx, .-n00374_var_bx
                        .type            n00375_binop_bx, @function
n00375_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00375_binop_α:          mov              r11, 453
                        mov              eax, 3
                        mov              ecx, dword ptr [rbp + 656]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1172_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rbp + 664]
                        add              rax, rdx
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax;          jmp   .Lbinop_α_1172_7
.Lbinop_α_1172_2:       and              edx, 1;                              jz    .Lbinop_α_1172_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rbp + 664]
                        cmp              al, 5;                               je    .Lbinop_α_1172_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1172_4
.Lbinop_α_1172_3:       movq             xmm0, rsi
.Lbinop_α_1172_4:       cmp              cl, 5;                               je    .Lbinop_α_1172_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1172_6
.Lbinop_α_1172_5:       movq             xmm1, rdi
.Lbinop_α_1172_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1172_0
                        mov              qword ptr [rbp + 672], 5
                        mov              qword ptr [rbp + 680], rax
.Lbinop_α_1172_7:                                                             jmp   n00376_subscript_α
.Lbinop_α_1172_0:       mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00377_var_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n00376_subscript_α
                        .size            n00375_binop_bx, .-n00375_binop_bx
                        .type            n00376_subscript_bx, @function
n00376_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00376_subscript_α:      mov              r11, 454
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              r8, qword ptr [rbp + 672]
                        mov              r9, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00377_var_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00378_assign_α
                        .size            n00376_subscript_bx, .-n00376_subscript_bx
                        .type            n00378_assign_bx, @function
n00378_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00378_assign_α:         mov              r11, 455
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1174_0]
                        .section         .rodata
.Lassign_α_1174_1_s:    .string          "/home/claude_coo/corpus/benchmarks/icon/deal.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1174_1_s]
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
                        pop              rax;                                 jmp   n00377_var_α
.Lassign_α_1174_0:      .quad            .Lassign_α_1174_0_s
.Lassign_α_1174_0_s:    .string          "denom"
                        .size            n00378_assign_bx, .-n00378_assign_bx
                        .type            n00377_var_bx, @function
n00377_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00377_var_α:            mov              r11, 456
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00379_lit_string_α
                        .size            n00377_var_bx, .-n00377_var_bx
                        .type            n00379_lit_string_bx, @function
n00379_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00379_lit_string_α:     mov              r11, 457
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1177_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00380_call_proc_staged_α
.Llit_string_α_1177_0:  .quad            .Llit_string_α_1177_0_s
.Llit_string_α_1177_0_s:
                        .string          "h+s+"
                        .size            n00379_lit_string_bx, .-n00379_lit_string_bx
                        .type            n00380_call_proc_staged_bx, @function
n00380_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00380_call_proc_staged_α:
                        mov              r11, 458
                        lea              rsi, [rbp + 544]
                        lea              rdx, [rbp + 560]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1179_2
.Lcall_proc_staged_α_1179_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1179_29
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
.Lcall_proc_staged_α_1179_29:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n00381_disjunction_α
                                                                              jmp   n00382_assign_α
n00380_call_proc_staged_β:
                        mov              r11, 458;                            jmp   n00381_disjunction_α
.Lcall_proc_staged_β_1179_0:
                        .quad            .Lcall_proc_staged_β_1179_0_s
.Lcall_proc_staged_β_1179_0_s:
                        .string          "options"
                        .size            n00380_call_proc_staged_bx, .-n00380_call_proc_staged_bx
                        .type            n00382_assign_bx, @function
n00382_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00382_assign_α:         mov              r11, 459
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n00381_disjunction_α
                        .size            n00382_assign_bx, .-n00382_assign_bx
                        .type            n00381_disjunction_bx, @function
n00381_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00381_disjunction_α:    mov              r11, 460
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0;            jmp   n00383_var_ref_α
.Ldisjunction_γ_1125_as:
                        mov              r11, 460
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1182_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax;          jmp   n00384_assign_α
.Ldisjunction_α_1182_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1182_1
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 344], rax;          jmp   n00384_assign_α
.Ldisjunction_α_1182_1:                                                       jmp   n00384_assign_α
n00381_disjunction_β:    mov              r11, 460
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1125_af
                                                                              jmp   .Ldisjunction_ω_1125_af
.Ldisjunction_γ_1125_af:
                        mov              r11, 460
.Ldisjunction_ω_1125_af:
                        mov              r11, 460
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1;                              je    n00385_lit_integer_α
                                                                              jmp   n00386_var_ref_α
                        .size            n00381_disjunction_bx, .-n00381_disjunction_bx
                        .type            n00384_assign_bx, @function
n00384_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00384_assign_α:         mov              r11, 461
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00386_var_ref_α
                        .size            n00384_assign_bx, .-n00384_assign_bx
                        .type            n00386_var_ref_bx, @function
n00386_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00386_var_ref_α:        mov              r11, 462
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00387_lit_string_α
                        .size            n00386_var_ref_bx, .-n00386_var_ref_bx
                        .type            n00387_lit_string_bx, @function
n00387_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00387_lit_string_α:     mov              r11, 463
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1186_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00388_subscript_α
.Llit_string_α_1186_0:  .quad            .Llit_string_α_1186_0_s
.Llit_string_α_1186_0_s:
                        .string          "s"
                        .size            n00387_lit_string_bx, .-n00387_lit_string_bx
                        .type            n00388_subscript_bx, @function
n00388_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00388_subscript_α:      mov              r11, 464
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
                        cmp              al, 104;                             je    n00389_lit_integer_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00390_deref_α
                        .size            n00388_subscript_bx, .-n00388_subscript_bx
                        .type            n00390_deref_bx, @function
n00390_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00390_deref_α:          mov              r11, 465
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
                        cmp              al, 104;                             je    n00389_lit_integer_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00391_unop_test_α
                        .size            n00390_deref_bx, .-n00390_deref_bx
                        .type            n00391_unop_test_bx, @function
n00391_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00391_unop_test_α:      mov              r11, 466
                        mov              eax, dword ptr [rbp + 304]
                        cmp              al, 104;                             je    n00389_lit_integer_α
                        cmp              eax, 0;                              je    n00389_lit_integer_α
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00392_kw_assign_α
                        .size            n00391_unop_test_bx, .-n00391_unop_test_bx
                        .type            n00392_kw_assign_bx, @function
n00392_kw_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00392_kw_assign_α:      mov              r11, 467
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
                        cmp              al, 104;                             je    n00389_lit_integer_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00389_lit_integer_α
                        .size            n00392_kw_assign_bx, .-n00392_kw_assign_bx
                        .type            n00389_lit_integer_bx, @function
n00389_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00389_lit_integer_α:    mov              r11, 468
                        mov              qword ptr [rbp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1191_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n00393_var_α
.Llit_integer_α_1191_0: .quad            1
                        .size            n00389_lit_integer_bx, .-n00389_lit_integer_bx
                        .type            n00393_var_bx, @function
n00393_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00393_var_α:            mov              r11, 469
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00394_to_α
                        .size            n00393_var_bx, .-n00393_var_bx
                        .type            n00394_to_bx, @function
n00394_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00394_to_α:             mov              r11, 470
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
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
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 80], rax
.Lto_α_1195_0:          mov              rax, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 120]
                        cmp              rax, rcx;                            jg    n00395_call_proc_staged_α
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax;           jmp   n00396_bound_α
n00394_to_β:             mov              r11, 470
                        inc              qword ptr [rbp + 80];                jmp   .Lto_α_1195_0
                        .size            n00394_to_bx, .-n00394_to_bx
                        .type            n00396_bound_bx, @function
n00396_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00396_bound_α:          mov              r11, 471
                        mov              qword ptr [rbp + 128], rsp;          jmp   n00397_call_proc_staged_α
                        .size            n00396_bound_bx, .-n00396_bound_bx
                        .type            n00397_call_proc_staged_bx, @function
n00397_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00397_call_proc_staged_α:
                        mov              r11, 472
                        call             display_dcα;                         jmp   .Lcall_proc_staged_α_1199_2
.Lcall_proc_staged_α_1199_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1199_29
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
.Lcall_proc_staged_α_1199_29:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00398_unmark_α
                                                                              jmp   n00398_unmark_α
n00397_call_proc_staged_β:
                        mov              r11, 472;                            jmp   n00398_unmark_α
.Lcall_proc_staged_β_1199_0:
                        .quad            .Lcall_proc_staged_β_1199_0_s
.Lcall_proc_staged_β_1199_0_s:
                        .string          "display"
                        .size            n00397_call_proc_staged_bx, .-n00397_call_proc_staged_bx
                        .type            n00398_unmark_bx, @function
n00398_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00398_unmark_α:         mov              r11, 473
                        mov              rsp, qword ptr [rbp + 128];          jmp   n00394_to_β
                        .size            n00398_unmark_bx, .-n00398_unmark_bx
                        .type            n00395_call_proc_staged_bx, @function
n00395_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00395_call_proc_staged_α:
                        mov              r11, 474
                        call             Term___dcα;                          jmp   .Lcall_proc_staged_α_1203_2
.Lcall_proc_staged_α_1203_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1203_29
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
.Lcall_proc_staged_α_1203_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00395_call_proc_staged_β:
                        mov              r11, 474;                            jmp   main_ω
.Lcall_proc_staged_β_1203_0:
                        .quad            .Lcall_proc_staged_β_1203_0_s
.Lcall_proc_staged_β_1203_0_s:
                        .string          "Term__"
                        .size            n00395_call_proc_staged_bx, .-n00395_call_proc_staged_bx
                        .type            n00385_lit_integer_bx, @function
n00385_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00385_lit_integer_α:    mov              r11, 475
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1204_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   .Ldisjunction_γ_1125_as
n00385_lit_integer_β:    mov              r11, 475;                            jmp   .Ldisjunction_ω_1125_af
.Llit_integer_α_1204_0: .quad            1
                        .size            n00385_lit_integer_bx, .-n00385_lit_integer_bx
                        .type            n00383_var_ref_bx, @function
n00383_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00383_var_ref_α:        mov              r11, 476
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00399_lit_string_α
n00383_var_ref_β:        mov              r11, 476;                            jmp   .Ldisjunction_ω_1125_af
                        .size            n00383_var_ref_bx, .-n00383_var_ref_bx
                        .type            n00399_lit_string_bx, @function
n00399_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00399_lit_string_α:     mov              r11, 477
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1207_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00400_subscript_α
.Llit_string_α_1207_0:  .quad            .Llit_string_α_1207_0_s
.Llit_string_α_1207_0_s:
                        .string          "h"
                        .size            n00399_lit_string_bx, .-n00399_lit_string_bx
                        .type            n00400_subscript_bx, @function
n00400_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00400_subscript_α:      mov              r11, 478
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1125_af
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00401_deref_α
                        .size            n00400_subscript_bx, .-n00400_subscript_bx
                        .type            n00401_deref_bx, @function
n00401_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00401_deref_α:          mov              r11, 479
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1125_af
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00402_unop_test_α
                        .size            n00401_deref_bx, .-n00401_deref_bx
                        .type            n00402_unop_test_bx, @function
n00402_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00402_unop_test_α:      mov              r11, 480
                        mov              eax, dword ptr [rbp + 448]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1125_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1125_af
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax;          jmp   .Ldisjunction_γ_1125_as
n00402_unop_test_β:      mov              r11, 480;                            jmp   .Ldisjunction_ω_1125_af
                        .size            n00402_unop_test_bx, .-n00402_unop_test_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_1210_248
                        .section         .rodata
.Licn_trace_nm1211:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1211]
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
.Lmain_α_1210_248:      mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_1210_249
                        .section         .rodata
.Licn_trace_nm1212:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1212]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1210_249:      mov              rsp, rbx
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
                        .long            1856
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
                        .long            1408
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
                        .long            336
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
                        .long            3040
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
                        .long            512
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
                        .long            992
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
                        .long            944
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
                        .long            944
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
                        .long            224
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
