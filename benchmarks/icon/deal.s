                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__display:
                        sub              rsp, 1936
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
display_α_body:
                        .type            n0_disjunction_bx, @function
n0_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              dword ptr [rsp + 1440], 0;           jmp   n1_var_ref_α
.Ldisjunction_γ_0_as:   mov              r11, 1
                        mov              eax, dword ptr [rsp + 1440]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_79_0
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n16_var_α
.Ldisjunction_α_79_0:                                                         jmp   n16_var_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 1440];         jmp   n16_var_α
.Ldisjunction_γ_0_af:   mov              r11, 1
.Ldisjunction_ω_0_af:   mov              r11, 1
                        add              dword ptr [rsp + 1440], 1
                        mov              eax, dword ptr [rsp + 1440];         jmp   n16_var_α
                        .size            n0_disjunction_bx, .-n0_disjunction_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # display__INITFLAG__0
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n2_nulltest_var_α
n1_var_ref_β:           mov              r11, 2;                              jmp   .Ldisjunction_ω_0_af
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_nulltest_var_bx, @function
n2_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 1760]
                        cmp              al, 104;                             je    .Ldisjunction_ω_0_af
                        mov              rdi, qword ptr [rsp + 1760]
                        mov              rsi, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_0_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_0_af
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n3_lit_integer_α
                        .size            n2_nulltest_var_bx, .-n2_nulltest_var_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_83_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n4_assign_var_α
.Llit_integer_α_83_0:   .quad            1
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_assign_var_bx, @function
n4_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_0_af
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n5_lit_string_α
                        .size            n4_assign_var_bx, .-n4_assign_var_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_85_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n6_lit_string_α
.Llit_string_α_85_0:    .quad            .Llit_string_α_85_0_s
.Llit_string_α_85_0_s:  .string          "\n"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_86_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n7_lit_integer_α
.Llit_string_α_86_0:    .quad            .Llit_string_α_86_0_s
.Llit_string_α_86_0_s:  .string          "-"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_87_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n8_call_icon_α
.Llit_integer_α_87_0:   .quad            33
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_call_icon_bx, @function
n8_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_icon_α:         mov              r11, 9
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lcall_icon_α_rkfn89:   .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn89]
                        lea              rsi, [rsp + 1664]
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
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n11_lit_string_α
                                                                              jmp   n9_binop_α
n8_call_icon_β:         mov              r11, 9;                              jmp   n11_lit_string_α
                        .size            n8_call_icon_bx, .-n8_call_icon_bx
                        .type            n9_binop_bx, @function
n9_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:             mov              r11, 10
                        mov              rdi, qword ptr [rsp + 1616]
                        mov              rsi, qword ptr [rsp + 1624]
                        mov              rdx, qword ptr [rsp + 1648]
                        mov              rcx, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_assign_α
                        .size            n9_binop_bx, .-n9_binop_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        mov              qword ptr [r9 + 160], rax            # display__STATIC__bar
                        mov              qword ptr [r9 + 168], rdx;           jmp   n11_lit_string_α
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_lit_string_bx, @function
n11_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_92_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n12_lit_integer_α
.Llit_string_α_92_0:    .quad            .Llit_string_α_92_0_s
.Llit_string_α_92_0_s:  .string          " "
                        .size            n11_lit_string_bx, .-n11_lit_string_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_93_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n13_call_icon_α
.Llit_integer_α_93_0:   .quad            10
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_call_icon_bx, @function
n13_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_icon_α:        mov              r11, 14
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1528], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1512], rax
                        .section         .rodata
.Lcall_icon_α_rkfn95:   .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn95]
                        lea              rsi, [rsp + 1504]
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
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n16_var_α
                                                                              jmp   n14_assign_α
n13_call_icon_β:        mov              r11, 14;                             jmp   n16_var_α
                        .size            n13_call_icon_bx, .-n13_call_icon_bx
                        .type            n14_assign_bx, @function
n14_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [r9 + 176], rax            # display__STATIC__offset
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n15_conjunction_α
                        .size            n14_assign_bx, .-n14_assign_bx
                        .type            n15_conjunction_bx, @function
n15_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_conjunction_α:      mov              r11, 16
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1464], rax;         jmp   .Ldisjunction_γ_0_as
n15_conjunction_β:      mov              r11, 16;                             jmp   n16_var_α
                        .size            n15_conjunction_bx, .-n15_conjunction_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1408], rax          # result
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n17_call_proc_staged_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_call_proc_staged_bx, @function
n17_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α: mov              r11, 18
                        lea              rsi, [rsp + 1408]
                        call             shuffle_dcα;                         jmp   .Lcall_proc_staged_α_100_2
.Lcall_proc_staged_α_100_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_100_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
.Lcall_proc_staged_α_100_29:
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n19_make_list_α
                                                                              jmp   n18_assign_α
n17_call_proc_staged_β: mov              r11, 18;                             jmp   n19_make_list_α
.Lcall_proc_staged_β_100_0:
                        .quad            .Lcall_proc_staged_β_100_0_s
.Lcall_proc_staged_β_100_0_s:
                        .string          "shuffle"
                        .size            n17_call_proc_staged_bx, .-n17_call_proc_staged_bx
                        .type            n18_assign_bx, @function
n18_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n19_make_list_α
                        .size            n18_assign_bx, .-n18_assign_bx
                        .type            n19_make_list_bx, @function
n19_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_make_list_α:        mov              r11, 20
                        lea              rdi, [rsp + 1360]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n20_assign_α
                        .size            n19_make_list_bx, .-n19_make_list_bx
                        .type            n20_assign_bx, @function
n20_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n21_var_α
                        .size            n20_assign_bx, .-n20_assign_bx
                        .type            n21_var_bx, @function
n21_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n22_var_α
                        .size            n21_var_bx, .-n21_var_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              r11, 23
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1120], rax          # result
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n23_lit_integer_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_lit_integer_bx, @function
n23_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      mov              r11, 24
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_108_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n24_lit_integer_α
.Llit_integer_α_108_0:  .quad            0
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_109_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n25_to_α
.Llit_integer_α_109_0:  .quad            3
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_to_bx, @function
n25_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_to_α:               mov              r11, 26
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], 3
                        mov              qword ptr [rsp + 1256], rax
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1264], 3
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1232], rax
.Lto_α_111_0:           mov              rax, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1272]
                        cmp              rax, rcx;                            jg    n38_call_icon_α
                        mov              qword ptr [rsp + 1216], 3
                        mov              qword ptr [rsp + 1224], rax;         jmp   n26_var_α
n25_to_β:               mov              r11, 26
                        inc              qword ptr [rsp + 1232];              jmp   .Lto_α_111_0
                        .size            n25_to_bx, .-n25_to_bx
                        .type            n26_var_bx, @function
n26_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 1280], rax          # result
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n27_coerce_numeric_α
                        .size            n26_var_bx, .-n26_var_bx
                        .type            n27_coerce_numeric_bx, @function
n27_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   mov              r11, 28
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_114_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_114_0
                        mov              eax, dword ptr [rsp + 1280]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_114_0
.Lcoerce_numeric_α_114_1:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n28_coerce_numeric_α
.Lcoerce_numeric_α_114_0:
                        lea              rdi, [rsp + 1216]
                        lea              rsi, [rsp + 1280]
                        lea              rdx, [rsp + 1200]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_coerce_numeric_α
                        .size            n27_coerce_numeric_bx, .-n27_coerce_numeric_bx
                        .type            n28_coerce_numeric_bx, @function
n28_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:   mov              r11, 29
                        mov              eax, dword ptr [rsp + 1280]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_116_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_116_0
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_116_0
.Lcoerce_numeric_α_116_1:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n29_binop_α
.Lcoerce_numeric_α_116_0:
                        lea              rdi, [rsp + 1280]
                        lea              rsi, [rsp + 1216]
                        lea              rdx, [rsp + 1184]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_binop_α
                        .size            n28_coerce_numeric_bx, .-n28_coerce_numeric_bx
                        .type            n29_binop_bx, @function
n29_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            mov              r11, 30
                        mov              eax, dword ptr [rsp + 1200]
                        mov              ecx, dword ptr [rsp + 1184]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_117_2
                        mov              rax, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1192]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1168], 3
                        mov              qword ptr [rsp + 1176], rax;         jmp   .Lbinop_α_117_7
.Lbinop_α_117_2:        and              edx, 1;                              jz    .Lbinop_α_117_0
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdi, qword ptr [rsp + 1192]
                        cmp              al, 5;                               je    .Lbinop_α_117_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_117_4
.Lbinop_α_117_3:        movq             xmm0, rsi
.Lbinop_α_117_4:        cmp              cl, 5;                               je    .Lbinop_α_117_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_117_6
.Lbinop_α_117_5:        movq             xmm1, rdi
.Lbinop_α_117_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1168], 5
                        mov              qword ptr [rsp + 1176], rax
.Lbinop_α_117_7:                                                              jmp   n30_lit_integer_α
.Lbinop_α_117_0:        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n38_call_icon_α
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n30_lit_integer_α
                        .size            n29_binop_bx, .-n29_binop_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_118_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n31_coerce_numeric_α
.Llit_integer_α_118_0:  .quad            1
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_coerce_numeric_bx, @function
n31_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:   mov              r11, 32
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_120_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_120_0
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_120_0
.Lcoerce_numeric_α_120_1:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n32_binop_α
.Lcoerce_numeric_α_120_0:
                        lea              rdi, [rsp + 1168]
                        lea              rsi, [rsp + 1296]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_binop_α
                        .size            n31_coerce_numeric_bx, .-n31_coerce_numeric_bx
                        .type            n32_binop_bx, @function
n32_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            mov              r11, 33
                        mov              eax, dword ptr [rsp + 1152]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_121_2
                        mov              rax, qword ptr [rsp + 1160]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1136], 3
                        mov              qword ptr [rsp + 1144], rax;         jmp   .Lbinop_α_121_7
.Lbinop_α_121_2:        and              edx, 1;                              jz    .Lbinop_α_121_0
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_121_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_121_4
.Lbinop_α_121_3:        movq             xmm0, rsi
.Lbinop_α_121_4:        cmp              cl, 5;                               je    .Lbinop_α_121_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_121_6
.Lbinop_α_121_5:        movq             xmm1, rdi
.Lbinop_α_121_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1136], 5
                        mov              qword ptr [rsp + 1144], rax
.Lbinop_α_121_7:                                                              jmp   n33_var_α
.Lbinop_α_121_0:        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n38_call_icon_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n33_var_α
                        .size            n32_binop_bx, .-n32_binop_bx
                        .type            n33_var_bx, @function
n33_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 1312], rax          # result
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n34_binop_α
                        .size            n33_var_bx, .-n33_var_bx
                        .type            n34_binop_bx, @function
n34_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            mov              r11, 35
                        mov              eax, dword ptr [rsp + 1136]
                        mov              ecx, dword ptr [rsp + 1312]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_123_2
                        mov              rax, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1320]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1328], 3
                        mov              qword ptr [rsp + 1336], rax;         jmp   .Lbinop_α_123_7
.Lbinop_α_123_2:        and              edx, 1;                              jz    .Lbinop_α_123_0
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdi, qword ptr [rsp + 1320]
                        cmp              al, 5;                               je    .Lbinop_α_123_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_123_4
.Lbinop_α_123_3:        movq             xmm0, rsi
.Lbinop_α_123_4:        cmp              cl, 5;                               je    .Lbinop_α_123_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_123_6
.Lbinop_α_123_5:        movq             xmm1, rdi
.Lbinop_α_123_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1328], 5
                        mov              qword ptr [rsp + 1336], rax
.Lbinop_α_123_7:                                                              jmp   n35_subscript_α
.Lbinop_α_123_0:        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_to_β
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n35_subscript_α
                        .size            n34_binop_bx, .-n34_binop_bx
                        .type            n35_subscript_bx, @function
n35_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:        mov              r11, 36
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              r8, qword ptr [rsp + 1328]
                        mov              r9, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_to_β
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n36_call_proc_staged_α
                        .size            n35_subscript_bx, .-n35_subscript_bx
                        .type            n36_call_proc_staged_bx, @function
n36_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_proc_staged_α: mov              r11, 37
                        lea              rsi, [rsp + 1104]
                        call             show_dcα;                            jmp   .Lcall_proc_staged_α_126_2
.Lcall_proc_staged_α_126_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_126_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
.Lcall_proc_staged_α_126_29:
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n25_to_β
                                                                              jmp   n37_call_icon_α
n36_call_proc_staged_β: mov              r11, 37;                             jmp   n25_to_β
.Lcall_proc_staged_β_126_0:
                        .quad            .Lcall_proc_staged_β_126_0_s
.Lcall_proc_staged_β_126_0_s:
                        .string          "show"
                        .size            n36_call_proc_staged_bx, .-n36_call_proc_staged_bx
                        .type            n37_call_icon_bx, @function
n37_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_icon_α:        mov              r11, 38
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn128:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn128]
                        lea              rsi, [rsp + 992]
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
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n25_to_β
                                                                              jmp   n25_to_β
n37_call_icon_β:        mov              r11, 38;                             jmp   n25_to_β
                        .size            n37_call_icon_bx, .-n37_call_icon_bx
                        .type            n38_call_icon_bx, @function
n38_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_icon_α:        mov              r11, 39
                        .section         .rodata
.Lcall_icon_α_rkfn130:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn130]
                        lea              rsi, [rsp + 960]
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
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n39_var_α
                                                                              jmp   n39_var_α
n38_call_icon_β:        mov              r11, 39;                             jmp   n39_var_α
                        .size            n38_call_icon_bx, .-n38_call_icon_bx
                        .type            n39_var_bx, @function
n39_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [r9 + 176]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 832], rax           # result
                        mov              qword ptr [rsp + 840], rdx;          jmp   n40_var_ref_α
                        .size            n39_var_bx, .-n39_var_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1824]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n41_lit_integer_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_134_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n42_subscript_α
.Llit_integer_α_134_0:  .quad            1
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_subscript_bx, @function
n42_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_subscript_α:        mov              r11, 43
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n46_call_icon_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n43_deref_α
                        .size            n42_subscript_bx, .-n42_subscript_bx
                        .type            n43_deref_bx, @function
n43_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_deref_α:            mov              r11, 44
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n46_call_icon_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n44_iterate_α
                        .size            n43_deref_bx, .-n43_deref_bx
                        .type            n44_iterate_bx, @function
n44_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_iterate_α:          mov              r11, 45
                        mov              qword ptr [rsp + 864], 0
.Literate_α_138_0:      mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n46_call_icon_α
                                                                              jmp   n45_call_icon_α
n44_iterate_β:          mov              r11, 45
                        inc              qword ptr [rsp + 864];               jmp   .Literate_α_138_0
                        .size            n44_iterate_bx, .-n44_iterate_bx
                        .type            n45_call_icon_bx, @function
n45_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_icon_α:        mov              r11, 46
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lcall_icon_α_rkfn140:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn140]
                        lea              rsi, [rsp + 784]
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
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n44_iterate_β
                                                                              jmp   n44_iterate_β
n45_call_icon_β:        mov              r11, 46;                             jmp   n44_iterate_β
                        .size            n45_call_icon_bx, .-n45_call_icon_bx
                        .type            n46_call_icon_bx, @function
n46_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_icon_α:        mov              r11, 47
                        .section         .rodata
.Lcall_icon_α_rkfn142:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn142]
                        lea              rsi, [rsp + 752]
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
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n47_lit_integer_α
                                                                              jmp   n47_lit_integer_α
n46_call_icon_β:        mov              r11, 47;                             jmp   n47_lit_integer_α
                        .size            n46_call_icon_bx, .-n46_call_icon_bx
                        .type            n47_lit_integer_bx, @function
n47_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_143_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n48_lit_integer_α
.Llit_integer_α_143_0:  .quad            1
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_144_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n49_to_α
.Llit_integer_α_144_0:  .quad            4
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_to_bx, @function
n49_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_to_α:               mov              r11, 50
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], 3
                        mov              qword ptr [rsp + 328], rax
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], 3
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 304], rax
.Lto_α_146_0:           mov              rax, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 344]
                        cmp              rax, rcx;                            jg    n68_call_icon_α
                        mov              qword ptr [rsp + 288], 3
                        mov              qword ptr [rsp + 296], rax;          jmp   n50_assign_α
n49_to_β:               mov              r11, 50
                        inc              qword ptr [rsp + 304];               jmp   .Lto_α_146_0
                        .size            n49_to_bx, .-n49_to_bx
                        .type            n50_assign_bx, @function
n50_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n51_bound_α
                        .size            n50_assign_bx, .-n50_assign_bx
                        .type            n51_bound_bx, @function
n51_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_bound_α:            mov              r11, 52
                        mov              qword ptr [rsp + 352], rsp;          jmp   n52_var_ref_α
                        .size            n51_bound_bx, .-n51_bound_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1824]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n53_lit_integer_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              r11, 54
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_152_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n54_subscript_α
.Llit_integer_α_152_0:  .quad            4
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_subscript_bx, @function
n54_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:        mov              r11, 55
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n67_unmark_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n55_var_α
                        .size            n54_subscript_bx, .-n54_subscript_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              r11, 56
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 584], rax;          jmp   n56_subscript_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_subscript_bx, @function
n56_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:        mov              r11, 57
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n67_unmark_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n57_deref_α
                        .size            n56_subscript_bx, .-n56_subscript_bx
                        .type            n57_deref_bx, @function
n57_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_deref_α:            mov              r11, 58
                        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n67_unmark_α
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n58_lit_integer_α
                        .size            n57_deref_bx, .-n57_deref_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_158_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n59_call_icon_α
.Llit_integer_α_158_0:  .quad            20
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_call_icon_bx, @function
n59_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_icon_α:        mov              r11, 60
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lcall_icon_α_rkfn160:  .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn160]
                        lea              rsi, [rsp + 480]
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
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n67_unmark_α
                                                                              jmp   n60_var_ref_α
n59_call_icon_β:        mov              r11, 60;                             jmp   n67_unmark_α
                        .size            n59_call_icon_bx, .-n59_call_icon_bx
                        .type            n60_var_ref_bx, @function
n60_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1824]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n61_lit_integer_α
                        .size            n60_var_ref_bx, .-n60_var_ref_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              r11, 62
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_163_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n62_subscript_α
.Llit_integer_α_163_0:  .quad            2
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_subscript_bx, @function
n62_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:        mov              r11, 63
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n67_unmark_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n63_var_α
                        .size            n62_subscript_bx, .-n62_subscript_bx
                        .type            n63_var_bx, @function
n63_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              r11, 64
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 696], rax;          jmp   n64_subscript_α
                        .size            n63_var_bx, .-n63_var_bx
                        .type            n64_subscript_bx, @function
n64_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_subscript_α:        mov              r11, 65
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n67_unmark_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n65_deref_α
                        .size            n64_subscript_bx, .-n64_subscript_bx
                        .type            n65_deref_bx, @function
n65_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_deref_α:            mov              r11, 66
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n67_unmark_α
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n66_call_icon_α
                        .size            n65_deref_bx, .-n65_deref_bx
                        .type            n66_call_icon_bx, @function
n66_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_icon_α:        mov              r11, 67
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn170:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn170]
                        lea              rsi, [rsp + 416]
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
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n67_unmark_α
                                                                              jmp   n67_unmark_α
n66_call_icon_β:        mov              r11, 67;                             jmp   n67_unmark_α
                        .size            n66_call_icon_bx, .-n66_call_icon_bx
                        .type            n67_unmark_bx, @function
n67_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_unmark_α:           mov              r11, 68
                        mov              rsp, qword ptr [rsp + 352];          jmp   n49_to_β
                        .size            n67_unmark_bx, .-n67_unmark_bx
                        .type            n68_call_icon_bx, @function
n68_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_icon_α:        mov              r11, 69
                        .section         .rodata
.Lcall_icon_α_rkfn174:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn174]
                        lea              rsi, [rsp + 256]
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
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n69_var_α
                                                                              jmp   n69_var_α
n68_call_icon_β:        mov              r11, 69;                             jmp   n69_var_α
                        .size            n68_call_icon_bx, .-n68_call_icon_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 70
                        mov              rax, qword ptr [r9 + 176]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 128], rax           # result
                        mov              qword ptr [rsp + 136], rdx;          jmp   n70_var_ref_α
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1824]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n71_lit_integer_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              r11, 72
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_178_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n72_subscript_α
.Llit_integer_α_178_0:  .quad            3
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_subscript_bx, @function
n72_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_subscript_α:        mov              r11, 73
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n76_var_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n73_deref_α
                        .size            n72_subscript_bx, .-n72_subscript_bx
                        .type            n73_deref_bx, @function
n73_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_deref_α:            mov              r11, 74
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n76_var_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n74_iterate_α
                        .size            n73_deref_bx, .-n73_deref_bx
                        .type            n74_iterate_bx, @function
n74_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_iterate_α:          mov              r11, 75
                        mov              qword ptr [rsp + 160], 0
.Literate_α_182_0:      mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n76_var_α
                                                                              jmp   n75_call_icon_α
n74_iterate_β:          mov              r11, 75
                        inc              qword ptr [rsp + 160];               jmp   .Literate_α_182_0
                        .size            n74_iterate_bx, .-n74_iterate_bx
                        .type            n75_call_icon_bx, @function
n75_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_icon_α:        mov              r11, 76
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn184:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn184]
                        lea              rsi, [rsp + 80]
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
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n74_iterate_β
                                                                              jmp   n74_iterate_β
n75_call_icon_β:        mov              r11, 76;                             jmp   n74_iterate_β
                        .size            n75_call_icon_bx, .-n75_call_icon_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              r11, 77
                        mov              rax, qword ptr [r9 + 160]            # display__STATIC__bar
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 48], rax            # result
                        mov              qword ptr [rsp + 56], rdx;           jmp   n77_call_icon_α
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_call_icon_bx, @function
n77_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_icon_α:        mov              r11, 78
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn187:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn187]
                        lea              rsi, [rsp + 16]
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
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    display_ω
                                                                              jmp   display_ω
n77_call_icon_β:        mov              r11, 78;                             jmp   display_ω
                        .size            n77_call_icon_bx, .-n77_call_icon_bx
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
                        add              rsp, 1936;                           jmp   qword ptr [rsp]
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
                        add              rsp, 1936;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
display_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Ldisplay_α_188_3]
                        push             rcx
                        lea              rcx, [rip + .Ldisplay_α_188_2]
                        push             rcx;                                 jmp   FN__display
.Ldisplay_α_188_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ldisplay_α_188_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1472
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
show_α_body:
                        .type            n00001_disjunction_bx, @function
n00001_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_disjunction_α:     mov              r11, 79
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n00002_var_ref_α
.Ldisjunction_γ_189_as: mov              r11, 79
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_246_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00003_lit_string_α
.Ldisjunction_α_246_0:                                                        jmp   n00003_lit_string_α
n00001_disjunction_β:     mov              r11, 79
                        mov              eax, dword ptr [rsp + 704];          jmp   n00003_lit_string_α
.Ldisjunction_γ_189_af: mov              r11, 79
.Ldisjunction_ω_189_af: mov              r11, 79
                        add              dword ptr [rsp + 704], 1
                        mov              eax, dword ptr [rsp + 704];          jmp   n00003_lit_string_α
                        .size            n00001_disjunction_bx, .-n00001_disjunction_bx
                        .type            n00002_var_ref_bx, @function
n00002_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                      # show__INITFLAG__0
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n00004_nulltest_var_α
n00002_var_ref_β:         mov              r11, 80;                             jmp   .Ldisjunction_ω_189_af
                        .size            n00002_var_ref_bx, .-n00002_var_ref_bx
                        .type            n00004_nulltest_var_bx, @function
n00004_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_nulltest_var_α:    mov              r11, 81
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              al, 104;                             je    .Ldisjunction_ω_189_af
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_189_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_189_af
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n00005_lit_integer_α
                        .size            n00004_nulltest_var_bx, .-n00004_nulltest_var_bx
                        .type            n00005_lit_integer_bx, @function
n00005_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_250_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00006_assign_var_α
.Llit_integer_α_250_0:  .quad            1
                        .size            n00005_lit_integer_bx, .-n00005_lit_integer_bx
                        .type            n00006_assign_var_bx, @function
n00006_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_assign_var_α:      mov              r11, 83
                        mov              rdi, qword ptr [rsp + 1360]
                        mov              rsi, qword ptr [rsp + 1368]
                        mov              rdx, qword ptr [rsp + 1392]
                        mov              rcx, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_189_af
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n00007_var_α
                        .size            n00006_assign_var_bx, .-n00006_assign_var_bx
                        .type            n00007_var_bx, @function
n00007_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_α:             mov              r11, 84
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1232], rax          # result
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n00008_var_α
                        .size            n00007_var_bx, .-n00007_var_bx
                        .type            n00008_var_bx, @function
n00008_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_α:             mov              r11, 85
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1312], rax          # result
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n00009_lit_integer_α
                        .size            n00008_var_bx, .-n00008_var_bx
                        .type            n00009_lit_integer_bx, @function
n00009_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rsp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_254_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n00010_call_icon_α
.Llit_integer_α_254_0:  .quad            3
                        .size            n00009_lit_integer_bx, .-n00009_lit_integer_bx
                        .type            n00010_call_icon_bx, @function
n00010_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_call_icon_α:       mov              r11, 87
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1272], rax
                        .section         .rodata
.Lcall_icon_α_rkfn256:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn256]
                        lea              rsi, [rsp + 1264]
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
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n00011_var_α
                                                                              jmp   n00012_binop_α
n00010_call_icon_β:       mov              r11, 87;                             jmp   n00011_var_α
                        .size            n00010_call_icon_bx, .-n00010_call_icon_bx
                        .type            n00012_binop_bx, @function
n00012_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_binop_α:           mov              r11, 88
                        mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
                        mov              rdx, qword ptr [rsp + 1248]
                        mov              rcx, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00013_assign_α
                        .size            n00012_binop_bx, .-n00012_binop_bx
                        .type            n00013_assign_bx, @function
n00013_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_assign_α:          mov              r11, 89
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [r9 + 208], rax            # show__STATIC__clubmap
                        mov              qword ptr [r9 + 216], rdx;           jmp   n00011_var_α
                        .size            n00013_assign_bx, .-n00013_assign_bx
                        .type            n00011_var_bx, @function
n00011_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_var_α:             mov              r11, 90
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1088], rax          # result
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n00014_var_α
                        .size            n00011_var_bx, .-n00011_var_bx
                        .type            n00014_var_bx, @function
n00014_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:             mov              r11, 91
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1104], rax          # result
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n00015_binop_α
                        .size            n00014_var_bx, .-n00014_var_bx
                        .type            n00015_binop_bx, @function
n00015_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_binop_α:           mov              r11, 92
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
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
                        mov              qword ptr [rsp + 1184], rax          # result
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n00017_lit_integer_α
                        .size            n00016_var_bx, .-n00016_var_bx
                        .type            n00017_lit_integer_bx, @function
n00017_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_263_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00018_call_icon_α
.Llit_integer_α_263_0:  .quad            2
                        .size            n00017_lit_integer_bx, .-n00017_lit_integer_bx
                        .type            n00018_call_icon_bx, @function
n00018_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_call_icon_α:       mov              r11, 95
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lcall_icon_α_rkfn265:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn265]
                        lea              rsi, [rsp + 1136]
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
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n00019_var_α
                                                                              jmp   n00020_binop_α
n00018_call_icon_β:       mov              r11, 95;                             jmp   n00019_var_α
                        .size            n00018_call_icon_bx, .-n00018_call_icon_bx
                        .type            n00020_binop_bx, @function
n00020_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_binop_α:           mov              r11, 96
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00021_assign_α
                        .size            n00020_binop_bx, .-n00020_binop_bx
                        .type            n00021_assign_bx, @function
n00021_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_assign_α:          mov              r11, 97
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [r9 + 224], rax            # show__STATIC__diamondmap
                        mov              qword ptr [r9 + 232], rdx;           jmp   n00019_var_α
                        .size            n00021_assign_bx, .-n00021_assign_bx
                        .type            n00019_var_bx, @function
n00019_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_α:             mov              r11, 98
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 992], rax           # result
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n00022_lit_integer_α
                        .size            n00019_var_bx, .-n00019_var_bx
                        .type            n00022_lit_integer_bx, @function
n00022_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_269_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n00023_call_icon_α
.Llit_integer_α_269_0:  .quad            2
                        .size            n00022_lit_integer_bx, .-n00022_lit_integer_bx
                        .type            n00023_call_icon_bx, @function
n00023_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_call_icon_α:       mov              r11, 100
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lcall_icon_α_rkfn271:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn271]
                        lea              rsi, [rsp + 944]
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
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
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
                        mov              qword ptr [rsp + 1024], rax          # result
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n00026_binop_α
                        .size            n00025_var_bx, .-n00025_var_bx
                        .type            n00026_binop_bx, @function
n00026_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_binop_α:           mov              r11, 102
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
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
                        mov              qword ptr [rsp + 1040], rax          # result
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n00028_binop_α
                        .size            n00027_var_bx, .-n00027_var_bx
                        .type            n00028_binop_bx, @function
n00028_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_binop_α:           mov              r11, 104
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00029_assign_α
                        .size            n00028_binop_bx, .-n00028_binop_bx
                        .type            n00029_assign_bx, @function
n00029_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [r9 + 240], rax            # show__STATIC__heartmap
                        mov              qword ptr [r9 + 248], rdx;           jmp   n00024_var_α
                        .size            n00029_assign_bx, .-n00029_assign_bx
                        .type            n00024_var_bx, @function
n00024_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_var_α:             mov              r11, 106
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 832], rax           # result
                        mov              qword ptr [rsp + 840], rdx;          jmp   n00030_lit_integer_α
                        .size            n00024_var_bx, .-n00024_var_bx
                        .type            n00030_lit_integer_bx, @function
n00030_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_278_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00031_call_icon_α
.Llit_integer_α_278_0:  .quad            3
                        .size            n00030_lit_integer_bx, .-n00030_lit_integer_bx
                        .type            n00031_call_icon_bx, @function
n00031_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_call_icon_α:       mov              r11, 108
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lcall_icon_α_rkfn280:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn280]
                        lea              rsi, [rsp + 784]
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
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
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
                        mov              qword ptr [rsp + 864], rax           # result
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00033_binop_α
                        .size            n00032_var_bx, .-n00032_var_bx
                        .type            n00033_binop_bx, @function
n00033_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_binop_α:           mov              r11, 110
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00034_assign_α
                        .size            n00033_binop_bx, .-n00033_binop_bx
                        .type            n00034_assign_bx, @function
n00034_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [r9 + 256], rax            # show__STATIC__spademap
                        mov              qword ptr [r9 + 264], rdx
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n00035_conjunction_α
                        .size            n00034_assign_bx, .-n00034_assign_bx
                        .type            n00035_conjunction_bx, @function
n00035_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_conjunction_α:     mov              r11, 112
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 728], rax;          jmp   .Ldisjunction_γ_189_as
n00035_conjunction_β:     mov              r11, 112;                            jmp   n00003_lit_string_α
                        .size            n00035_conjunction_bx, .-n00035_conjunction_bx
                        .type            n00003_lit_string_bx, @function
n00003_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_285_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00036_var_α
.Llit_string_α_285_0:   .quad            .Llit_string_α_285_0_s
.Llit_string_α_285_0_s: .string          "S: "
                        .size            n00003_lit_string_bx, .-n00003_lit_string_bx
                        .type            n00036_var_bx, @function
n00036_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00037_var_α
                        .size            n00036_var_bx, .-n00036_var_bx
                        .type            n00037_var_bx, @function
n00037_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_var_α:             mov              r11, 115
                        mov              rax, qword ptr [r9 + 256]            # show__STATIC__spademap
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 240], rax           # result
                        mov              qword ptr [rsp + 248], rdx;          jmp   n00038_call_proc_staged_α
                        .size            n00037_var_bx, .-n00037_var_bx
                        .type            n00038_call_proc_staged_bx, @function
n00038_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_call_proc_staged_α:
                        mov              r11, 116
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 240]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_290_2
.Lcall_proc_staged_α_290_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_290_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lcall_proc_staged_α_290_29:
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00039_binop_α
n00038_call_proc_staged_β:
                        mov              r11, 116;                            jmp   show_ω
.Lcall_proc_staged_β_290_0:
                        .quad            .Lcall_proc_staged_β_290_0_s
.Lcall_proc_staged_β_290_0_s:
                        .string          "arrange"
                        .size            n00038_call_proc_staged_bx, .-n00038_call_proc_staged_bx
                        .type            n00039_binop_bx, @function
n00039_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_binop_α:           mov              r11, 117
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00040_lit_string_α
                        .size            n00039_binop_bx, .-n00039_binop_bx
                        .type            n00040_lit_string_bx, @function
n00040_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_292_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00041_var_α
.Llit_string_α_292_0:   .quad            .Llit_string_α_292_0_s
.Llit_string_α_292_0_s: .string          "H: "
                        .size            n00040_lit_string_bx, .-n00040_lit_string_bx
                        .type            n00041_var_bx, @function
n00041_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:             mov              r11, 119
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00042_var_α
                        .size            n00041_var_bx, .-n00041_var_bx
                        .type            n00042_var_bx, @function
n00042_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:             mov              r11, 120
                        mov              rax, qword ptr [r9 + 240]            # show__STATIC__heartmap
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 384], rax           # result
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00043_call_proc_staged_α
                        .size            n00042_var_bx, .-n00042_var_bx
                        .type            n00043_call_proc_staged_bx, @function
n00043_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_call_proc_staged_α:
                        mov              r11, 121
                        lea              rsi, [rsp + 368]
                        lea              rdx, [rsp + 384]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_297_2
.Lcall_proc_staged_α_297_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_297_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
.Lcall_proc_staged_α_297_29:
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00044_binop_α
n00043_call_proc_staged_β:
                        mov              r11, 121;                            jmp   show_ω
.Lcall_proc_staged_β_297_0:
                        .quad            .Lcall_proc_staged_β_297_0_s
.Lcall_proc_staged_β_297_0_s:
                        .string          "arrange"
                        .size            n00043_call_proc_staged_bx, .-n00043_call_proc_staged_bx
                        .type            n00044_binop_bx, @function
n00044_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_binop_α:           mov              r11, 122
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00045_lit_string_α
                        .size            n00044_binop_bx, .-n00044_binop_bx
                        .type            n00045_lit_string_bx, @function
n00045_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_299_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00046_var_α
.Llit_string_α_299_0:   .quad            .Llit_string_α_299_0_s
.Llit_string_α_299_0_s: .string          "D: "
                        .size            n00045_lit_string_bx, .-n00045_lit_string_bx
                        .type            n00046_var_bx, @function
n00046_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00047_var_α
                        .size            n00046_var_bx, .-n00046_var_bx
                        .type            n00047_var_bx, @function
n00047_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:             mov              r11, 125
                        mov              rax, qword ptr [r9 + 224]            # show__STATIC__diamondmap
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 528], rax           # result
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00048_call_proc_staged_α
                        .size            n00047_var_bx, .-n00047_var_bx
                        .type            n00048_call_proc_staged_bx, @function
n00048_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_call_proc_staged_α:
                        mov              r11, 126
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 528]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_304_2
.Lcall_proc_staged_α_304_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_304_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lcall_proc_staged_α_304_29:
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00049_binop_α
n00048_call_proc_staged_β:
                        mov              r11, 126;                            jmp   show_ω
.Lcall_proc_staged_β_304_0:
                        .quad            .Lcall_proc_staged_β_304_0_s
.Lcall_proc_staged_β_304_0_s:
                        .string          "arrange"
                        .size            n00048_call_proc_staged_bx, .-n00048_call_proc_staged_bx
                        .type            n00049_binop_bx, @function
n00049_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_binop_α:           mov              r11, 127
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00050_lit_string_α
                        .size            n00049_binop_bx, .-n00049_binop_bx
                        .type            n00050_lit_string_bx, @function
n00050_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_306_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00051_var_α
.Llit_string_α_306_0:   .quad            .Llit_string_α_306_0_s
.Llit_string_α_306_0_s: .string          "C: "
                        .size            n00050_lit_string_bx, .-n00050_lit_string_bx
                        .type            n00051_var_bx, @function
n00051_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00052_var_α
                        .size            n00051_var_bx, .-n00051_var_bx
                        .type            n00052_var_bx, @function
n00052_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:             mov              r11, 130
                        mov              rax, qword ptr [r9 + 208]            # show__STATIC__clubmap
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 672], rax           # result
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00053_call_proc_staged_α
                        .size            n00052_var_bx, .-n00052_var_bx
                        .type            n00053_call_proc_staged_bx, @function
n00053_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_call_proc_staged_α:
                        mov              r11, 131
                        lea              rsi, [rsp + 656]
                        lea              rdx, [rsp + 672]
                        call             arrange_dcα;                         jmp   .Lcall_proc_staged_α_311_2
.Lcall_proc_staged_α_311_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_311_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lcall_proc_staged_α_311_29:
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00054_binop_α
n00053_call_proc_staged_β:
                        mov              r11, 131;                            jmp   show_ω
.Lcall_proc_staged_β_311_0:
                        .quad            .Lcall_proc_staged_β_311_0_s
.Lcall_proc_staged_β_311_0_s:
                        .string          "arrange"
                        .size            n00053_call_proc_staged_bx, .-n00053_call_proc_staged_bx
                        .type            n00054_binop_bx, @function
n00054_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           mov              r11, 132
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00055_make_list_α
                        .size            n00054_binop_bx, .-n00054_binop_bx
                        .type            n00055_make_list_bx, @function
n00055_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_make_list_α:       mov              r11, 133
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 48]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n00056_return_α
                        .size            n00055_make_list_bx, .-n00055_make_list_bx
                        .type            n00056_return_bx, @function
n00056_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_return_α:          mov              r11, 134
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   show_γ
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
                        add              rsp, 1472;                           jmp   qword ptr [rsp]
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
                        add              rsp, 1472;                           jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lshow_α_316_3]
                        push             rcx
                        lea              rcx, [rip + .Lshow_α_316_2]
                        push             rcx;                                 jmp   FN__show
.Lshow_α_316_2:         add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshow_α_316_3:         add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__arrange:
                        sub              rsp, 416
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
arrange_α_body:
                        .type            n00057_var_bx, @function
n00057_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_α:             mov              r11, 135
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00058_var_α
                        .size            n00057_var_bx, .-n00057_var_bx
                        .type            n00058_var_bx, @function
n00058_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:             mov              r11, 136
                        mov              rax, qword ptr [r9 + 16]             # deckimage
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 240], rax           # result
                        mov              qword ptr [rsp + 248], rdx;          jmp   n00059_var_α
                        .size            n00058_var_bx, .-n00058_var_bx
                        .type            n00059_var_bx, @function
n00059_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_var_α:             mov              r11, 137
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00060_call_icon_α
                        .size            n00059_var_bx, .-n00059_var_bx
                        .type            n00060_call_icon_bx, @function
n00060_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_call_icon_α:       mov              r11, 138
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn333:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn333]
                        lea              rsi, [rsp + 160]
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
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    arrange_ω
                                                                              jmp   n00061_lit_charset_α
n00060_call_icon_β:       mov              r11, 138;                            jmp   arrange_ω
                        .size            n00060_call_icon_bx, .-n00060_call_icon_bx
                        .type            n00061_lit_charset_bx, @function
n00061_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_lit_charset_α:     mov              r11, 139
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_334_0]
                        mov              qword ptr [rsp + 280], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_334_0]
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
.Llit_charset_α_334_0:  .quad            .Llit_charset_α_334_0_s
.Llit_charset_α_334_0_s:
                        .string          " "
                        .size            n00061_lit_charset_bx, .-n00061_lit_charset_bx
                        .type            n00062_binop_bx, @function
n00062_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_binop_α:           mov              r11, 140
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    arrange_ω
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00063_var_α
                        .size            n00062_binop_bx, .-n00062_binop_bx
                        .type            n00063_var_bx, @function
n00063_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:             mov              r11, 141
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 304], rax           # result
                        mov              qword ptr [rsp + 312], rdx;          jmp   n00064_var_α
                        .size            n00063_var_bx, .-n00063_var_bx
                        .type            n00064_var_bx, @function
n00064_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_α:             mov              r11, 142
                        mov              rax, qword ptr [r9 + 80]             # rank
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00065_call_icon_α
                        .size            n00064_var_bx, .-n00064_var_bx
                        .type            n00065_call_icon_bx, @function
n00065_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_call_icon_α:       mov              r11, 143
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn339:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn339]
                        lea              rsi, [rsp + 64]
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
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    arrange_ω
                                                                              jmp   n00066_return_α
n00065_call_icon_β:       mov              r11, 143;                            jmp   arrange_ω
                        .size            n00065_call_icon_bx, .-n00065_call_icon_bx
                        .type            n00066_return_bx, @function
n00066_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_return_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   arrange_γ
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
                        add              rsp, 416;                            jmp   qword ptr [rsp]
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
                        add              rsp, 416;                            jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Larrange_α_341_3]
                        push             rcx
                        lea              rcx, [rip + .Larrange_α_341_2]
                        push             rcx;                                 jmp   FN__arrange
.Larrange_α_341_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Larrange_α_341_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3344
                        mov              rdi, rsp
                        add              rdi, 2896
                        xor              eax, eax
                        mov              ecx, 144
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 14
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
options_α_body:
                        .type            n00067_var_ref_bx, @function
n00067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx;         jmp   n00068_nulltest_var_α
                        .size            n00067_var_ref_bx, .-n00067_var_ref_bx
                        .type            n00068_nulltest_var_bx, @function
n00068_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_nulltest_var_α:    mov              r11, 146
                        mov              eax, dword ptr [rsp + 2768]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              rdi, qword ptr [rsp + 2768]
                        mov              rsi, qword ptr [rsp + 2776]
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
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n00070_lit_charset_α
                        .size            n00068_nulltest_var_bx, .-n00068_nulltest_var_bx
                        .type            n00070_lit_charset_bx, @function
n00070_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_charset_α:     mov              r11, 147
                        mov              qword ptr [rsp + 2864], 2            # result
                        mov              dword ptr [rsp + 2868], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_455_0]
                        mov              qword ptr [rsp + 2872], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_455_0]
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
.Llit_charset_α_455_0:  .quad            .Llit_charset_α_455_0_s
.Llit_charset_α_455_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00070_lit_charset_bx, .-n00070_lit_charset_bx
                        .type            n00071_call_icon_bx, @function
n00071_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_call_icon_α:       mov              r11, 148
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2840], rax
                        .section         .rodata
.Lcall_icon_α_rkfn457:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn457]
                        lea              rsi, [rsp + 2832]
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
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              al, 104;                             je    n00069_call_icon_α
                                                                              jmp   n00072_assign_var_α
n00071_call_icon_β:       mov              r11, 148;                            jmp   n00069_call_icon_α
                        .size            n00071_call_icon_bx, .-n00071_call_icon_bx
                        .type            n00072_assign_var_bx, @function
n00072_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_assign_var_α:      mov              r11, 149
                        mov              rdi, qword ptr [rsp + 2784]
                        mov              rsi, qword ptr [rsp + 2792]
                        mov              rdx, qword ptr [rsp + 2816]
                        mov              rcx, qword ptr [rsp + 2824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx;         jmp   n00069_call_icon_α
                        .size            n00072_assign_var_bx, .-n00072_assign_var_bx
                        .type            n00069_call_icon_bx, @function
n00069_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_call_icon_α:       mov              r11, 150
                        .section         .rodata
.Lcall_icon_α_rkfn460:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn460]
                        lea              rsi, [rsp + 2752]
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
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        cmp              al, 104;                             je    n00073_make_list_α
                                                                              jmp   n00074_assign_α
n00069_call_icon_β:       mov              r11, 150;                            jmp   n00073_make_list_α
                        .size            n00069_call_icon_bx, .-n00069_call_icon_bx
                        .type            n00074_assign_bx, @function
n00074_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 2736]
                        mov              rdx, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n00073_make_list_α
                        .size            n00074_assign_bx, .-n00074_assign_bx
                        .type            n00073_make_list_bx, @function
n00073_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_make_list_α:       mov              r11, 152
                        lea              rdi, [rsp + 2736]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n00075_assign_α
                        .size            n00073_make_list_bx, .-n00073_make_list_bx
                        .type            n00075_assign_bx, @function
n00075_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_assign_α:          mov              r11, 153
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n00076_var_α
                        .size            n00075_assign_bx, .-n00075_assign_bx
                        .type            n00076_var_bx, @function
n00076_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00077_call_icon_α
                        .size            n00076_var_bx, .-n00076_var_bx
                        .type            n00077_call_icon_bx, @function
n00077_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_call_icon_α:       mov              r11, 155
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn468:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn468]
                        lea              rsi, [rsp + 256]
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
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00078_var_α
                                                                              jmp   n00079_assign_α
n00077_call_icon_β:       mov              r11, 155;                            jmp   n00078_var_α
                        .size            n00077_call_icon_bx, .-n00077_call_icon_bx
                        .type            n00079_assign_bx, @function
n00079_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_assign_α:          mov              r11, 156
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n00080_var_α
                        .size            n00079_assign_bx, .-n00079_assign_bx
                        .type            n00080_var_bx, @function
n00080_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n00081_scan_enter_α
                        .size            n00080_var_bx, .-n00080_var_bx
                        .type            n00081_scan_enter_bx, @function
n00081_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_scan_enter_α:      mov              r11, 158
                        mov              qword ptr [rsp + 320], r13
                        mov              qword ptr [rsp + 328], r14
                        mov              qword ptr [rsp + 336], r15
                        mov              rdi, qword ptr [rsp + 2704]
                        mov              rsi, qword ptr [rsp + 2712]
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
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              dword ptr [rsp + 400], 0;            jmp   n00083_lit_string_α
.Ldisjunction_γ_356_as: mov              r11, 159
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_475_0
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00084_scan_α
.Ldisjunction_α_475_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_475_1
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00084_scan_α
.Ldisjunction_α_475_1:                                                        jmp   n00084_scan_α
n00082_disjunction_β:     mov              r11, 159
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              je    n00085_disjunction_β
                                                                              jmp   n00086_scan_α
.Ldisjunction_γ_356_af: mov              r11, 159
.Ldisjunction_ω_356_af: mov              r11, 159
                        add              dword ptr [rsp + 400], 1
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 1;                              je    n00087_var_α
                                                                              jmp   n00086_scan_α
                        .size            n00082_disjunction_bx, .-n00082_disjunction_bx
                        .type            n00084_scan_bx, @function
n00084_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_scan_α:            mov              r11, 160
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 320]
                        mov              r14, qword ptr [rsp + 328]
                        mov              r15, qword ptr [rsp + 336];          jmp   n00076_var_α
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
n00088_conjunction_α:     mov              r11, 161;                            jmp   .Ldisjunction_γ_356_as
n00088_conjunction_β:     mov              r11, 161;                            jmp   n00086_scan_α
                        .size            n00088_conjunction_bx, .-n00088_conjunction_bx
                        .type            n00087_var_bx, @function
n00087_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_α:             mov              r11, 162
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n00089_var_α
n00087_var_β:             mov              r11, 162;                            jmp   n00086_scan_α
                        .size            n00087_var_bx, .-n00087_var_bx
                        .type            n00089_var_bx, @function
n00089_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n00090_call_icon_α
                        .size            n00089_var_bx, .-n00089_var_bx
                        .type            n00090_call_icon_bx, @function
n00090_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_icon_α:       mov              r11, 164
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2632], rax
                        .section         .rodata
.Lcall_icon_α_rkfn484:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn484]
                        lea              rsi, [rsp + 2624]
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
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n00086_scan_α
                                                                              jmp   .Ldisjunction_γ_356_as
n00090_call_icon_β:       mov              r11, 164;                            jmp   n00086_scan_α
                        .size            n00090_call_icon_bx, .-n00090_call_icon_bx
                        .type            n00083_lit_string_bx, @function
n00083_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 2576], 2            # result
                        mov              dword ptr [rsp + 2580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_485_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n00091_scan_match_α
n00083_lit_string_β:      mov              r11, 165;                            jmp   .Ldisjunction_ω_356_af
.Llit_string_α_485_0:   .quad            .Llit_string_α_485_0_s
.Llit_string_α_485_0_s: .string          "-"
                        .size            n00083_lit_string_bx, .-n00083_lit_string_bx
                        .type            n00091_scan_match_bx, @function
n00091_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_scan_match_α:      mov              r11, 166
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_356_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_487_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_356_af
                        mov              qword ptr [rsp + 2544], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2552], rax;         jmp   n00092_scan_tab_α
.Lscan_match_α_487_0:   .quad            .Lscan_match_α_487_0_s
.Lscan_match_α_487_0_s: .string          "-"
                        .size            n00091_scan_match_bx, .-n00091_scan_match_bx
                        .type            n00092_scan_tab_bx, @function
n00092_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_scan_tab_α:        mov              r11, 167
                        mov              rax, qword ptr [rsp + 2552]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_489_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_489_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_356_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_356_af
                        mov              qword ptr [rsp + 2528], r14
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
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n00093_lit_integer_α
n00092_scan_tab_β:        mov              r11, 167
                        mov              r14, qword ptr [rsp + 2528];         jmp   .Ldisjunction_ω_356_af
                        .size            n00092_scan_tab_bx, .-n00092_scan_tab_bx
                        .type            n00093_lit_integer_bx, @function
n00093_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_490_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n00094_scan_pos_α
.Llit_integer_α_490_0:  .quad            0
                        .size            n00093_lit_integer_bx, .-n00093_lit_integer_bx
                        .type            n00094_scan_pos_bx, @function
n00094_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_scan_pos_α:        mov              r11, 169
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_492_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_492_0:     cmp              rax, 1;                              jl    n00095_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00095_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00095_var_α
                        mov              qword ptr [rsp + 2480], 3
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00092_scan_tab_β
                        .size            n00094_scan_pos_bx, .-n00094_scan_pos_bx
                        .type            n00095_var_bx, @function
n00095_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_α:             mov              r11, 170
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0;           jmp   n00096_conjunction_α
n00095_var_β:             mov              r11, 170;                            jmp   n00092_scan_tab_β
                        .size            n00095_var_bx, .-n00095_var_bx
                        .type            n00096_conjunction_bx, @function
n00096_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_conjunction_α:     mov              r11, 171
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n00097_disjunction_α
n00096_conjunction_β:     mov              r11, 171;                            jmp   .Ldisjunction_ω_356_af
                        .size            n00096_conjunction_bx, .-n00096_conjunction_bx
                        .type            n00097_disjunction_bx, @function
n00097_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_disjunction_α:     mov              r11, 172
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n00098_lit_string_α
.Ldisjunction_γ_369_as: mov              r11, 172
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_496_0
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00099_lit_integer_α
.Ldisjunction_α_496_0:                                                        jmp   n00099_lit_integer_α
n00097_disjunction_β:     mov              r11, 172
                        mov              eax, dword ptr [rsp + 2256];         jmp   n00099_lit_integer_α
.Ldisjunction_γ_369_af: mov              r11, 172
.Ldisjunction_ω_369_af: mov              r11, 172
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256];         jmp   n00099_lit_integer_α
                        .size            n00097_disjunction_bx, .-n00097_disjunction_bx
                        .type            n00099_lit_integer_bx, @function
n00099_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_497_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00100_scan_move_α
.Llit_integer_α_497_0:  .quad            1
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
                        mov              qword ptr [rsp + 464], r14
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
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00101_assign_α
n00100_scan_move_β:       mov              r11, 174
                        mov              r14, qword ptr [rsp + 464];          jmp   n00086_scan_α
                        .size            n00100_scan_move_bx, .-n00100_scan_move_bx
                        .type            n00101_assign_bx, @function
n00101_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n00085_disjunction_α
                        .size            n00101_assign_bx, .-n00101_assign_bx
                        .type            n00085_disjunction_bx, @function
n00085_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_disjunction_α:     mov              r11, 176
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n00102_var_α
.Ldisjunction_γ_373_as: mov              r11, 176
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_502_0
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00099_lit_integer_α
.Ldisjunction_α_502_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_502_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00099_lit_integer_α
.Ldisjunction_α_502_1:                                                        jmp   n00099_lit_integer_α
n00085_disjunction_β:     mov              r11, 176
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n00103_disjunction_β
                                                                              jmp   n00099_lit_integer_α
.Ldisjunction_γ_373_af: mov              r11, 176
.Ldisjunction_ω_373_af: mov              r11, 176
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n00104_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00085_disjunction_bx, .-n00085_disjunction_bx
                        .type            n00104_lit_string_bx, @function
n00104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_503_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00105_var_α
n00104_lit_string_β:      mov              r11, 177;                            jmp   n00099_lit_integer_α
.Llit_string_α_503_0:   .quad            .Llit_string_α_503_0_s
.Llit_string_α_503_0_s: .string          "Unrecognized option: -"
                        .size            n00104_lit_string_bx, .-n00104_lit_string_bx
                        .type            n00105_var_bx, @function
n00105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n00106_call_icon_α
                        .size            n00105_var_bx, .-n00105_var_bx
                        .type            n00106_call_icon_bx, @function
n00106_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_icon_α:       mov              r11, 179
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn507:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn507]
                        lea              rsi, [rsp + 2144]
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
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   .Ldisjunction_γ_373_as
n00106_call_icon_β:       mov              r11, 179;                            jmp   n00099_lit_integer_α
                        .size            n00106_call_icon_bx, .-n00106_call_icon_bx
                        .type            n00102_var_bx, @function
n00102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00107_var_α
n00102_var_β:             mov              r11, 180;                            jmp   .Ldisjunction_ω_373_af
                        .size            n00102_var_bx, .-n00102_var_bx
                        .type            n00107_var_bx, @function
n00107_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n00108_call_builtin_gen_α
                        .size            n00107_var_bx, .-n00107_var_bx
                        .type            n00108_call_builtin_gen_bx, @function
n00108_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_call_builtin_gen_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2040], rax
                        mov              qword ptr [rsp + 2064], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_512_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn182: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn182]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 2
                        lea              rcx, [rsp + 2064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_373_af
                                                                              jmp   n00109_lit_integer_α
n00108_call_builtin_gen_β:
                        mov              r11, 182;                            jmp   .Lcall_builtin_gen_α_512_60
                        .size            n00108_call_builtin_gen_bx, .-n00108_call_builtin_gen_bx
                        .type            n00109_lit_integer_bx, @function
n00109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_513_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n00110_coerce_numeric_α
.Llit_integer_α_513_0:  .quad            1
                        .size            n00109_lit_integer_bx, .-n00109_lit_integer_bx
                        .type            n00110_coerce_numeric_bx, @function
n00110_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_coerce_numeric_α:  mov              r11, 184
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_515_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_515_0
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_515_0
.Lcoerce_numeric_α_515_1:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n00111_binop_α
.Lcoerce_numeric_α_515_0:
                        lea              rdi, [rsp + 2016]
                        lea              rsi, [rsp + 2112]
                        lea              rdx, [rsp + 2000]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00111_binop_α
                        .size            n00110_coerce_numeric_bx, .-n00110_coerce_numeric_bx
                        .type            n00111_binop_bx, @function
n00111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_binop_α:           mov              r11, 185
                        mov              eax, dword ptr [rsp + 2000]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_516_2
                        mov              rax, qword ptr [rsp + 2008]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1984], 3
                        mov              qword ptr [rsp + 1992], rax;         jmp   .Lbinop_α_516_7
.Lbinop_α_516_2:        and              edx, 1;                              jz    .Lbinop_α_516_0
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_516_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_516_4
.Lbinop_α_516_3:        movq             xmm0, rsi
.Lbinop_α_516_4:        cmp              cl, 5;                               je    .Lbinop_α_516_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_516_6
.Lbinop_α_516_5:        movq             xmm1, rdi
.Lbinop_α_516_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1984], 5
                        mov              qword ptr [rsp + 1992], rax
.Lbinop_α_516_7:                                                              jmp   n00112_assign_α
.Lbinop_α_516_0:        mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_373_af
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n00112_assign_α
                        .size            n00111_binop_bx, .-n00111_binop_bx
                        .type            n00112_assign_bx, @function
n00112_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx;         jmp   n00113_var_ref_α
                        .size            n00112_assign_bx, .-n00112_assign_bx
                        .type            n00113_var_ref_bx, @function
n00113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2896]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00114_var_α
                        .size            n00113_var_ref_bx, .-n00113_var_ref_bx
                        .type            n00114_var_bx, @function
n00114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00115_subscript_α
                        .size            n00114_var_bx, .-n00114_var_bx
                        .type            n00115_subscript_bx, @function
n00115_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_subscript_α:       mov              r11, 189
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n00103_disjunction_α
                        .size            n00115_subscript_bx, .-n00115_subscript_bx
                        .type            n00103_disjunction_bx, @function
n00103_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_disjunction_α:     mov              r11, 190
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n00116_lit_charset_α
.Ldisjunction_γ_387_as: mov              r11, 190
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_524_0
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00117_assign_var_α
.Ldisjunction_α_524_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_524_1
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00117_assign_var_α
.Ldisjunction_α_524_1:                                                        jmp   n00117_assign_var_α
n00103_disjunction_β:     mov              r11, 190
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n00099_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
.Ldisjunction_γ_387_af: mov              r11, 190
.Ldisjunction_ω_387_af: mov              r11, 190
                        add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n00118_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00103_disjunction_bx, .-n00103_disjunction_bx
                        .type            n00117_assign_var_bx, @function
n00117_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_var_α:      mov              r11, 191
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   .Ldisjunction_γ_373_as
n00117_assign_var_β:      mov              r11, 191;                            jmp   n00099_lit_integer_α
                        .size            n00117_assign_var_bx, .-n00117_assign_var_bx
                        .type            n00118_lit_integer_bx, @function
n00118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_lit_integer_α:     mov              r11, 192
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_526_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   .Ldisjunction_γ_387_as
n00118_lit_integer_β:     mov              r11, 192;                            jmp   n00099_lit_integer_α
.Llit_integer_α_526_0:  .quad            1
                        .size            n00118_lit_integer_bx, .-n00118_lit_integer_bx
                        .type            n00116_lit_charset_bx, @function
n00116_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_lit_charset_α:     mov              r11, 193
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_527_0]
                        mov              qword ptr [rsp + 1864], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_527_0]
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
n00116_lit_charset_β:     mov              r11, 193;                            jmp   .Ldisjunction_ω_387_af
.Llit_charset_α_527_0:  .quad            .Llit_charset_α_527_0_s
.Llit_charset_α_527_0_s:
                        .string          "+.:"
                        .size            n00116_lit_charset_bx, .-n00116_lit_charset_bx
                        .type            n00119_var_ref_bx, @function
n00119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n00120_var_α
                        .size            n00119_var_ref_bx, .-n00119_var_ref_bx
                        .type            n00120_var_bx, @function
n00120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n00121_subscript_α
                        .size            n00120_var_bx, .-n00120_var_bx
                        .type            n00121_subscript_bx, @function
n00121_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_subscript_α:       mov              r11, 196
                        mov              rdi, qword ptr [rsp + 1904]
                        mov              rsi, qword ptr [rsp + 1912]
                        mov              rdx, qword ptr [rsp + 1920]
                        mov              rcx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_387_af
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n00122_deref_α
                        .size            n00121_subscript_bx, .-n00121_subscript_bx
                        .type            n00122_deref_bx, @function
n00122_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_deref_α:           mov              r11, 197
                        mov              rdi, qword ptr [rsp + 1936]
                        mov              rsi, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_387_af
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n00123_assign_α
                        .size            n00122_deref_bx, .-n00122_deref_bx
                        .type            n00123_assign_bx, @function
n00123_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n00124_call_icon_α
                        .size            n00123_assign_bx, .-n00123_assign_bx
                        .type            n00124_call_icon_bx, @function
n00124_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_icon_α:       mov              r11, 199
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1816], rax
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
                        lea              rsi, [rsp + 1808]
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
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_387_af
                                                                              jmp   n00125_disjunction_α
n00124_call_icon_β:       mov              r11, 199;                            jmp   .Ldisjunction_ω_387_af
                        .size            n00124_call_icon_bx, .-n00124_call_icon_bx
                        .type            n00125_disjunction_bx, @function
n00125_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_disjunction_α:     mov              r11, 200
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              dword ptr [rsp + 1504], 0;           jmp   n00126_lit_string_α
.Ldisjunction_γ_397_as: mov              r11, 200
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_537_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n00127_assign_α
.Ldisjunction_α_537_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_537_1
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n00127_assign_α
.Ldisjunction_α_537_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_537_2
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n00127_assign_α
.Ldisjunction_α_537_2:                                                        jmp   n00127_assign_α
n00125_disjunction_β:     mov              r11, 200
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              je    n00128_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_397_af
                                                                              jmp   .Ldisjunction_ω_397_af
.Ldisjunction_γ_397_af: mov              r11, 200
.Ldisjunction_ω_397_af: mov              r11, 200
                        add              dword ptr [rsp + 1504], 1
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 1;                              je    n00129_var_α
                        cmp              eax, 2;                              je    n00130_lit_string_α
                                                                              jmp   n00131_var_α
                        .size            n00125_disjunction_bx, .-n00125_disjunction_bx
                        .type            n00127_assign_bx, @function
n00127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_α:          mov              r11, 201
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n00131_var_α
                        .size            n00127_assign_bx, .-n00127_assign_bx
                        .type            n00131_var_bx, @function
n00131_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00132_lit_string_α
                        .size            n00131_var_bx, .-n00131_var_bx
                        .type            n00132_lit_string_bx, @function
n00132_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_541_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00133_call_builtin_α
.Llit_string_α_541_0:   .quad            .Llit_string_α_541_0_s
.Llit_string_α_541_0_s: .string          ":"
                        .size            n00132_lit_string_bx, .-n00132_lit_string_bx
                        .type            n00133_call_builtin_bx, @function
n00133_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_call_builtin_α:    mov              r11, 204
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn543: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn543]
                        lea              rsi, [rsp + 1440]
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
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n00134_lit_string_α
                                                                              jmp   n00135_var_α
n00133_call_builtin_β:    mov              r11, 204;                            jmp   n00134_lit_string_α
                        .size            n00133_call_builtin_bx, .-n00133_call_builtin_bx
                        .type            n00135_var_bx, @function
n00135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n00136_assign_α
                        .size            n00135_var_bx, .-n00135_var_bx
                        .type            n00136_assign_bx, @function
n00136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_α:          mov              r11, 206
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n00137_var_α
                        .size            n00136_assign_bx, .-n00136_assign_bx
                        .type            n00134_lit_string_bx, @function
n00134_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_547_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n00138_call_builtin_α
.Llit_string_α_547_0:   .quad            .Llit_string_α_547_0_s
.Llit_string_α_547_0_s: .string          "+"
                        .size            n00134_lit_string_bx, .-n00134_lit_string_bx
                        .type            n00138_call_builtin_bx, @function
n00138_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_call_builtin_α:    mov              r11, 208
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn549: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn549]
                        lea              rsi, [rsp + 1328]
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
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n00139_lit_string_α
                                                                              jmp   n00140_disjunction_α
n00138_call_builtin_β:    mov              r11, 208;                            jmp   n00139_lit_string_α
                        .size            n00138_call_builtin_bx, .-n00138_call_builtin_bx
                        .type            n00140_disjunction_bx, @function
n00140_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_disjunction_α:     mov              r11, 209
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n00141_var_α
.Ldisjunction_γ_406_as: mov              r11, 209
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_551_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00142_assign_α
.Ldisjunction_α_551_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_551_1
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00142_assign_α
.Ldisjunction_α_551_1:                                                        jmp   n00142_assign_α
n00140_disjunction_β:     mov              r11, 209
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_406_af
                                                                              jmp   .Ldisjunction_ω_406_af
.Ldisjunction_γ_406_af: mov              r11, 209
.Ldisjunction_ω_406_af: mov              r11, 209
                        add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 1;                              je    n00143_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00140_disjunction_bx, .-n00140_disjunction_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              r11, 210
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n00137_var_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00143_lit_string_bx, @function
n00143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_553_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00144_var_α
n00143_lit_string_β:      mov              r11, 211;                            jmp   .Ldisjunction_ω_406_af
.Llit_string_α_553_0:   .quad            .Llit_string_α_553_0_s
.Llit_string_α_553_0_s: .string          "-"
                        .size            n00143_lit_string_bx, .-n00143_lit_string_bx
                        .type            n00144_var_bx, @function
n00144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n00145_lit_string_α
                        .size            n00144_var_bx, .-n00144_var_bx
                        .type            n00145_lit_string_bx, @function
n00145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_556_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n00146_call_icon_α
.Llit_string_α_556_0:   .quad            .Llit_string_α_556_0_s
.Llit_string_α_556_0_s: .string          " needs numeric parameter"
                        .size            n00145_lit_string_bx, .-n00145_lit_string_bx
                        .type            n00146_call_icon_bx, @function
n00146_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_call_icon_α:       mov              r11, 214
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lcall_icon_α_rkfn558:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn558]
                        lea              rsi, [rsp + 1168]
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
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_406_af
                                                                              jmp   .Ldisjunction_γ_406_as
n00146_call_icon_β:       mov              r11, 214;                            jmp   .Ldisjunction_ω_406_af
                        .size            n00146_call_icon_bx, .-n00146_call_icon_bx
                        .type            n00141_var_bx, @function
n00141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00147_call_icon_α
n00141_var_β:             mov              r11, 215;                            jmp   .Ldisjunction_ω_406_af
                        .size            n00141_var_bx, .-n00141_var_bx
                        .type            n00147_call_icon_bx, @function
n00147_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_call_icon_α:       mov              r11, 216
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn562:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn562]
                        lea              rsi, [rsp + 1104]
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
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_406_af
                                                                              jmp   .Ldisjunction_γ_406_as
n00147_call_icon_β:       mov              r11, 216;                            jmp   .Ldisjunction_ω_406_af
                        .size            n00147_call_icon_bx, .-n00147_call_icon_bx
                        .type            n00139_lit_string_bx, @function
n00139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_563_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00148_call_builtin_α
.Llit_string_α_563_0:   .quad            .Llit_string_α_563_0_s
.Llit_string_α_563_0_s: .string          "."
                        .size            n00139_lit_string_bx, .-n00139_lit_string_bx
                        .type            n00148_call_builtin_bx, @function
n00148_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_call_builtin_α:    mov              r11, 218
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn565: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn565]
                        lea              rsi, [rsp + 976]
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
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   n00149_disjunction_α
n00148_call_builtin_β:    mov              r11, 218;                            jmp   n00099_lit_integer_α
                        .size            n00148_call_builtin_bx, .-n00148_call_builtin_bx
                        .type            n00149_disjunction_bx, @function
n00149_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_disjunction_α:     mov              r11, 219
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              dword ptr [rsp + 720], 0;            jmp   n00150_var_α
.Ldisjunction_γ_416_as: mov              r11, 219
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_567_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00151_assign_α
.Ldisjunction_α_567_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_567_1
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00151_assign_α
.Ldisjunction_α_567_1:                                                        jmp   n00151_assign_α
n00149_disjunction_β:     mov              r11, 219
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_416_af
                                                                              jmp   .Ldisjunction_ω_416_af
.Ldisjunction_γ_416_af: mov              r11, 219
.Ldisjunction_ω_416_af: mov              r11, 219
                        add              dword ptr [rsp + 720], 1
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 1;                              je    n00152_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00149_disjunction_bx, .-n00149_disjunction_bx
                        .type            n00151_assign_bx, @function
n00151_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n00137_var_α
                        .size            n00151_assign_bx, .-n00151_assign_bx
                        .type            n00137_var_bx, @function
n00137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00153_conjunction_α
                        .size            n00137_var_bx, .-n00137_var_bx
                        .type            n00153_conjunction_bx, @function
n00153_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_conjunction_α:     mov              r11, 222
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax;          jmp   .Ldisjunction_γ_387_as
n00153_conjunction_β:     mov              r11, 222;                            jmp   n00099_lit_integer_α
                        .size            n00153_conjunction_bx, .-n00153_conjunction_bx
                        .type            n00152_lit_string_bx, @function
n00152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_572_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00154_var_α
n00152_lit_string_β:      mov              r11, 223;                            jmp   .Ldisjunction_ω_416_af
.Llit_string_α_572_0:   .quad            .Llit_string_α_572_0_s
.Llit_string_α_572_0_s: .string          "-"
                        .size            n00152_lit_string_bx, .-n00152_lit_string_bx
                        .type            n00154_var_bx, @function
n00154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00155_lit_string_α
                        .size            n00154_var_bx, .-n00154_var_bx
                        .type            n00155_lit_string_bx, @function
n00155_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_575_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n00156_call_icon_α
.Llit_string_α_575_0:   .quad            .Llit_string_α_575_0_s
.Llit_string_α_575_0_s: .string          " needs numeric parameter"
                        .size            n00155_lit_string_bx, .-n00155_lit_string_bx
                        .type            n00156_call_icon_bx, @function
n00156_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_call_icon_α:       mov              r11, 226
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn577:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn577]
                        lea              rsi, [rsp + 816]
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
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_416_af
                                                                              jmp   .Ldisjunction_γ_416_as
n00156_call_icon_β:       mov              r11, 226;                            jmp   .Ldisjunction_ω_416_af
                        .size            n00156_call_icon_bx, .-n00156_call_icon_bx
                        .type            n00150_var_bx, @function
n00150_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00157_call_icon_α
n00150_var_β:             mov              r11, 227;                            jmp   .Ldisjunction_ω_416_af
                        .size            n00150_var_bx, .-n00150_var_bx
                        .type            n00157_call_icon_bx, @function
n00157_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_call_icon_α:       mov              r11, 228
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn581:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn581]
                        lea              rsi, [rsp + 752]
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
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_416_af
                                                                              jmp   .Ldisjunction_γ_416_as
n00157_call_icon_β:       mov              r11, 228;                            jmp   .Ldisjunction_ω_416_af
                        .size            n00157_call_icon_bx, .-n00157_call_icon_bx
                        .type            n00130_lit_string_bx, @function
n00130_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_582_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n00158_var_α
n00130_lit_string_β:      mov              r11, 229;                            jmp   .Ldisjunction_ω_397_af
.Llit_string_α_582_0:   .quad            .Llit_string_α_582_0_s
.Llit_string_α_582_0_s: .string          "No parameter following -"
                        .size            n00130_lit_string_bx, .-n00130_lit_string_bx
                        .type            n00158_var_bx, @function
n00158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00159_call_icon_α
                        .size            n00158_var_bx, .-n00158_var_bx
                        .type            n00159_call_icon_bx, @function
n00159_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_icon_α:       mov              r11, 231
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lcall_icon_α_rkfn586:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn586]
                        lea              rsi, [rsp + 1696]
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
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_397_af
                                                                              jmp   .Ldisjunction_γ_397_as
n00159_call_icon_β:       mov              r11, 231;                            jmp   .Ldisjunction_ω_397_af
                        .size            n00159_call_icon_bx, .-n00159_call_icon_bx
                        .type            n00129_var_bx, @function
n00129_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n00160_call_icon_α
n00129_var_β:             mov              r11, 232;                            jmp   .Ldisjunction_ω_397_af
                        .size            n00129_var_bx, .-n00129_var_bx
                        .type            n00160_call_icon_bx, @function
n00160_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_call_icon_α:       mov              r11, 233
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn590:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn590]
                        lea              rsi, [rsp + 1632]
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
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_397_af
                                                                              jmp   .Ldisjunction_γ_397_as
n00160_call_icon_β:       mov              r11, 233;                            jmp   .Ldisjunction_ω_397_af
                        .size            n00160_call_icon_bx, .-n00160_call_icon_bx
                        .type            n00126_lit_string_bx, @function
n00126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_591_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n00161_lit_integer_α
n00126_lit_string_β:      mov              r11, 234;                            jmp   .Ldisjunction_ω_397_af
.Llit_string_α_591_0:   .quad            .Llit_string_α_591_0_s
.Llit_string_α_591_0_s: .string          ""
                        .size            n00126_lit_string_bx, .-n00126_lit_string_bx
                        .type            n00161_lit_integer_bx, @function
n00161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_592_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n00128_scan_tab_α
.Llit_integer_α_592_0:  .quad            0
                        .size            n00161_lit_integer_bx, .-n00161_lit_integer_bx
                        .type            n00128_scan_tab_bx, @function
n00128_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_scan_tab_α:        mov              r11, 236
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_594_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_594_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_397_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_397_af
                        mov              qword ptr [rsp + 1584], r14
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
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n00162_binop_test_α
n00128_scan_tab_β:        mov              r11, 236
                        mov              r14, qword ptr [rsp + 1584];         jmp   .Ldisjunction_ω_397_af
                        .size            n00128_scan_tab_bx, .-n00128_scan_tab_bx
                        .type            n00162_binop_test_bx, @function
n00162_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_binop_test_α:      mov              r11, 237
                        mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              rcx, qword ptr [rsp + 1576]
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
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_397_as
n00162_binop_test_β:      mov              r11, 237;                            jmp   n00128_scan_tab_β
                        .size            n00162_binop_test_bx, .-n00162_binop_test_bx
                        .type            n00086_scan_bx, @function
n00086_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_scan_α:            mov              r11, 238
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 320]
                        mov              r14, qword ptr [rsp + 328]
                        mov              r15, qword ptr [rsp + 336];          jmp   n00076_var_α
n00086_scan_β:            mov              r11, 238;                            jmp   n00076_var_α
                        .size            n00086_scan_bx, .-n00086_scan_bx
                        .type            n00098_lit_string_bx, @function
n00098_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_598_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n00163_scan_match_α
n00098_lit_string_β:      mov              r11, 239;                            jmp   .Ldisjunction_ω_369_af
.Llit_string_α_598_0:   .quad            .Llit_string_α_598_0_s
.Llit_string_α_598_0_s: .string          "-"
                        .size            n00098_lit_string_bx, .-n00098_lit_string_bx
                        .type            n00163_scan_match_bx, @function
n00163_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_match_α:      mov              r11, 240
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_369_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_600_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_369_af
                        mov              qword ptr [rsp + 2384], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2392], rax;         jmp   n00164_scan_tab_α
.Lscan_match_α_600_0:   .quad            .Lscan_match_α_600_0_s
.Lscan_match_α_600_0_s: .string          "-"
                        .size            n00163_scan_match_bx, .-n00163_scan_match_bx
                        .type            n00164_scan_tab_bx, @function
n00164_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_scan_tab_α:        mov              r11, 241
                        mov              rax, qword ptr [rsp + 2392]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_602_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_602_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_369_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_369_af
                        mov              qword ptr [rsp + 2368], r14
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
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n00165_lit_integer_α
n00164_scan_tab_β:        mov              r11, 241
                        mov              r14, qword ptr [rsp + 2368];         jmp   .Ldisjunction_ω_369_af
                        .size            n00164_scan_tab_bx, .-n00164_scan_tab_bx
                        .type            n00165_lit_integer_bx, @function
n00165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_integer_α:     mov              r11, 242
                        mov              qword ptr [rsp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_603_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n00166_scan_pos_α
.Llit_integer_α_603_0:  .quad            0
                        .size            n00165_lit_integer_bx, .-n00165_lit_integer_bx
                        .type            n00166_scan_pos_bx, @function
n00166_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_scan_pos_α:        mov              r11, 243
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_605_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_605_0:     cmp              rax, 1;                              jl    n00164_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00164_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00164_scan_tab_β
                        mov              qword ptr [rsp + 2320], 3
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00167_conjunction_α
                        .size            n00166_scan_pos_bx, .-n00166_scan_pos_bx
                        .type            n00167_conjunction_bx, @function
n00167_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_conjunction_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n00168_scan_α
n00167_conjunction_β:     mov              r11, 244;                            jmp   .Ldisjunction_ω_369_af
                        .size            n00167_conjunction_bx, .-n00167_conjunction_bx
                        .type            n00168_scan_bx, @function
n00168_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_scan_α:            mov              r11, 245
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 320]
                        mov              r14, qword ptr [rsp + 328]
                        mov              r15, qword ptr [rsp + 336];          jmp   n00169_var_α
n00168_scan_β:            mov              r11, 245;                            jmp   n00169_var_α
                        .size            n00168_scan_bx, .-n00168_scan_bx
                        .type            n00169_var_bx, @function
n00169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_α:             mov              r11, 246
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0;           jmp   n00170_assign_α
n00169_var_β:             mov              r11, 246;                            jmp   n00171_var_α
                        .size            n00169_var_bx, .-n00169_var_bx
                        .type            n00170_assign_bx, @function
n00170_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_assign_α:          mov              r11, 247
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n00171_var_α
                        .size            n00170_assign_bx, .-n00170_assign_bx
                        .type            n00171_var_bx, @function
n00171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00078_var_α
                        .size            n00171_var_bx, .-n00171_var_bx
                        .type            n00078_var_bx, @function
n00078_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00172_var_α
                        .size            n00078_var_bx, .-n00078_var_bx
                        .type            n00172_var_bx, @function
n00172_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_var_α:             mov              r11, 250
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00173_call_icon_α
                        .size            n00172_var_bx, .-n00172_var_bx
                        .type            n00173_call_icon_bx, @function
n00173_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_call_icon_α:       mov              r11, 251
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn618:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn618]
                        lea              rsi, [rsp + 160]
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
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n00174_var_α
                                                                              jmp   n00175_call_icon_α
n00173_call_icon_β:       mov              r11, 251;                            jmp   n00174_var_α
                        .size            n00173_call_icon_bx, .-n00173_call_icon_bx
                        .type            n00175_call_icon_bx, @function
n00175_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_call_icon_α:       mov              r11, 252
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn620:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn620]
                        lea              rsi, [rsp + 80]
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
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n00174_var_α
                                                                              jmp   n00078_var_α
n00175_call_icon_β:       mov              r11, 252;                            jmp   n00174_var_α
                        .size            n00175_call_icon_bx, .-n00175_call_icon_bx
                        .type            n00174_var_bx, @function
n00174_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00176_return_α
                        .size            n00174_var_bx, .-n00174_var_bx
                        .type            n00176_return_bx, @function
n00176_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_return_α:          mov              r11, 254
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
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
                        add              rsp, 3344;                           jmp   qword ptr [rsp]
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
                        add              rsp, 3344;                           jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_624_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_624_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_624_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_624_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Init__:
                        sub              rsp, 528
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
Init___α_body:
                        .type            n00177_var_bx, @function
n00177_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_var_α:             mov              r11, 255
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00178_assign_α
                        .size            n00177_var_bx, .-n00177_var_bx
                        .type            n00178_assign_bx, @function
n00178_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_assign_α:          mov              r11, 256
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [r9 + 144], rax            # Name__
                        mov              qword ptr [r9 + 152], rdx;           jmp   n00179_call_proc_staged_α
                        .size            n00178_assign_bx, .-n00178_assign_bx
                        .type            n00179_call_proc_staged_bx, @function
n00179_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_call_proc_staged_α:
                        mov              r11, 257
                        call             Signature___dcα;                     jmp   .Lcall_proc_staged_α_649_2
.Lcall_proc_staged_α_649_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_649_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
.Lcall_proc_staged_α_649_29:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n00180_call_proc_staged_α
                                                                              jmp   n00180_call_proc_staged_α
n00179_call_proc_staged_β:
                        mov              r11, 257;                            jmp   n00180_call_proc_staged_α
.Lcall_proc_staged_β_649_0:
                        .quad            .Lcall_proc_staged_β_649_0_s
.Lcall_proc_staged_β_649_0_s:
                        .string          "Signature__"
                        .size            n00179_call_proc_staged_bx, .-n00179_call_proc_staged_bx
                        .type            n00180_call_proc_staged_bx, @function
n00180_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_call_proc_staged_α:
                        mov              r11, 258
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_651_2
.Lcall_proc_staged_α_651_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_651_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lcall_proc_staged_α_651_29:
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n00181_call_proc_staged_α
                                                                              jmp   n00181_call_proc_staged_α
n00180_call_proc_staged_β:
                        mov              r11, 258;                            jmp   n00181_call_proc_staged_α
.Lcall_proc_staged_β_651_0:
                        .quad            .Lcall_proc_staged_β_651_0_s
.Lcall_proc_staged_β_651_0_s:
                        .string          "Regions__"
                        .size            n00180_call_proc_staged_bx, .-n00180_call_proc_staged_bx
                        .type            n00181_call_proc_staged_bx, @function
n00181_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_call_proc_staged_α:
                        mov              r11, 259
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_653_2
.Lcall_proc_staged_α_653_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_653_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lcall_proc_staged_α_653_29:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n00182_disjunction_α
                                                                              jmp   n00182_disjunction_α
n00181_call_proc_staged_β:
                        mov              r11, 259;                            jmp   n00182_disjunction_α
.Lcall_proc_staged_β_653_0:
                        .quad            .Lcall_proc_staged_β_653_0_s
.Lcall_proc_staged_β_653_0_s:
                        .string          "Time__"
                        .size            n00181_call_proc_staged_bx, .-n00181_call_proc_staged_bx
                        .type            n00182_disjunction_bx, @function
n00182_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_disjunction_α:     mov              r11, 260
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00183_lit_string_α
.Ldisjunction_γ_630_as: mov              r11, 260
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_655_0
                                                                              jmp   n00184_var_α
.Ldisjunction_α_655_0:                                                        jmp   n00184_var_α
n00182_disjunction_β:     mov              r11, 260
                        mov              eax, dword ptr [rsp + 128];          jmp   n00184_var_α
.Ldisjunction_γ_630_af: mov              r11, 260
.Ldisjunction_ω_630_af: mov              r11, 260
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00184_var_α
                        .size            n00182_disjunction_bx, .-n00182_disjunction_bx
                        .type            n00184_var_bx, @function
n00184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_var_α:             mov              r11, 261
                        mov              rdi, qword ptr [rip + .Lvar_α_656_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00185_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00186_assign_α
.Lvar_α_656_0:          .quad            .Lvar_α_656_0_s
.Lvar_α_656_0_s:        .string          "write"
                        .size            n00184_var_bx, .-n00184_var_bx
                        .type            n00186_assign_bx, @function
n00186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              r11, 262
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 112], rax            # Save__
                        mov              qword ptr [r9 + 120], rdx;           jmp   n00185_var_α
                        .size            n00186_assign_bx, .-n00186_assign_bx
                        .type            n00185_var_bx, @function
n00185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:             mov              r11, 263
                        mov              rdi, qword ptr [rip + .Lvar_α_658_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00187_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00188_assign_α
.Lvar_α_658_0:          .quad            .Lvar_α_658_0_s
.Lvar_α_658_0_s:        .string          "writes"
                        .size            n00185_var_bx, .-n00185_var_bx
                        .type            n00188_assign_bx, @function
n00188_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_assign_α:          mov              r11, 264
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 128], rax            # Saves__
                        mov              qword ptr [r9 + 136], rdx;           jmp   n00187_lit_integer_α
                        .size            n00188_assign_bx, .-n00188_assign_bx
                        .type            n00187_lit_integer_bx, @function
n00187_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_lit_integer_α:     mov              r11, 265
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_660_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00189_assign_α
.Llit_integer_α_660_0:  .quad            1
                        .size            n00187_lit_integer_bx, .-n00187_lit_integer_bx
                        .type            n00189_assign_bx, @function
n00189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_assign_α:          mov              r11, 266
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lassign_α_661_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00190_assign_α
.Lassign_α_661_0:       .quad            .Lassign_α_661_0_s
.Lassign_α_661_0_s:     .string          "writes"
                        .size            n00189_assign_bx, .-n00189_assign_bx
                        .type            n00190_assign_bx, @function
n00190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_assign_α:          mov              r11, 267
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lassign_α_662_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00191_return_α
.Lassign_α_662_0:       .quad            .Lassign_α_662_0_s
.Lassign_α_662_0_s:     .string          "write"
                        .size            n00190_assign_bx, .-n00190_assign_bx
                        .type            n00191_return_bx, @function
n00191_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_return_α:          mov              r11, 268
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Init___γ
                        .size            n00191_return_bx, .-n00191_return_bx
                        .type            n00192_conjunction_bx, @function
n00192_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_conjunction_α:     mov              r11, 269;                            jmp   .Ldisjunction_γ_630_as
n00192_conjunction_β:     mov              r11, 269;                            jmp   n00184_var_α
                        .size            n00192_conjunction_bx, .-n00192_conjunction_bx
                        .type            n00183_lit_string_bx, @function
n00183_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_string_α:      mov              r11, 270
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_665_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00193_call_icon_α
n00183_lit_string_β:      mov              r11, 270;                            jmp   .Ldisjunction_ω_630_af
.Llit_string_α_665_0:   .quad            .Llit_string_α_665_0_s
.Llit_string_α_665_0_s: .string          "OUTPUT"
                        .size            n00183_lit_string_bx, .-n00183_lit_string_bx
                        .type            n00193_call_icon_bx, @function
n00193_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_call_icon_α:       mov              r11, 271
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn667:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn667]
                        lea              rsi, [rsp + 256]
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
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_630_af
                                                                              jmp   n00194_lit_string_α
n00193_call_icon_β:       mov              r11, 271;                            jmp   .Ldisjunction_ω_630_af
                        .size            n00193_call_icon_bx, .-n00193_call_icon_bx
                        .type            n00194_lit_string_bx, @function
n00194_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_668_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00195_call_icon_α
.Llit_string_α_668_0:   .quad            .Llit_string_α_668_0_s
.Llit_string_α_668_0_s: .string          "*** Benchmarking with output ***"
                        .size            n00194_lit_string_bx, .-n00194_lit_string_bx
                        .type            n00195_call_icon_bx, @function
n00195_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_call_icon_α:       mov              r11, 273
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn670:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn670]
                        lea              rsi, [rsp + 176]
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
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00196_return_α
                                                                              jmp   n00196_return_α
n00195_call_icon_β:       mov              r11, 273;                            jmp   n00196_return_α
                        .size            n00195_call_icon_bx, .-n00195_call_icon_bx
                        .type            n00196_return_bx, @function
n00196_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_return_α:          mov              r11, 274
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Init___γ
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
                        add              rsp, 528;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
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
                        add              rsp, 528;                            jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .LInit___α_672_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_672_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_672_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_672_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 560
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
Term___α_body:
                        .type            n00197_disjunction_bx, @function
n00197_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_disjunction_α:     mov              r11, 275
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n00198_lit_string_α
.Ldisjunction_γ_673_as: mov              r11, 275
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_691_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00199_var_α
.Ldisjunction_α_691_0:                                                        jmp   n00199_var_α
n00197_disjunction_β:     mov              r11, 275
                        mov              eax, dword ptr [rsp + 288];          jmp   n00199_var_α
.Ldisjunction_γ_673_af: mov              r11, 275
.Ldisjunction_ω_673_af: mov              r11, 275
                        add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288];          jmp   n00199_var_α
                        .size            n00197_disjunction_bx, .-n00197_disjunction_bx
                        .type            n00198_lit_string_bx, @function
n00198_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_lit_string_α:      mov              r11, 276
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_692_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00200_call_icon_α
n00198_lit_string_β:      mov              r11, 276;                            jmp   n00201_var_α
.Llit_string_α_692_0:   .quad            .Llit_string_α_692_0_s
.Llit_string_α_692_0_s: .string          "OUTPUT"
                        .size            n00198_lit_string_bx, .-n00198_lit_string_bx
                        .type            n00200_call_icon_bx, @function
n00200_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_call_icon_α:       mov              r11, 277
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn694:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn694]
                        lea              rsi, [rsp + 416]
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
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n00201_var_α
                                                                              jmp   .Ldisjunction_γ_673_af
n00200_call_icon_β:       mov              r11, 277;                            jmp   n00201_var_α
                        .size            n00200_call_icon_bx, .-n00200_call_icon_bx
                        .type            n00201_var_bx, @function
n00201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_α:             mov              r11, 278
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0;            jmp   n00202_var_α
n00201_var_β:             mov              r11, 278;                            jmp   .Ldisjunction_ω_673_af
                        .size            n00201_var_bx, .-n00201_var_bx
                        .type            n00202_var_bx, @function
n00202_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_α:             mov              r11, 279
                        mov              rax, qword ptr [r9 + 112]            # Save__
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 368], rax           # result
                        mov              qword ptr [rsp + 376], rdx;          jmp   n00203_assign_α
                        .size            n00202_var_bx, .-n00202_var_bx
                        .type            n00203_assign_bx, @function
n00203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_assign_α:          mov              r11, 280
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              rdi, qword ptr [rip + .Lassign_α_697_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00204_var_α
.Lassign_α_697_0:       .quad            .Lassign_α_697_0_s
.Lassign_α_697_0_s:     .string          "write"
                        .size            n00203_assign_bx, .-n00203_assign_bx
                        .type            n00204_var_bx, @function
n00204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_α:             mov              r11, 281
                        mov              rax, qword ptr [r9 + 128]            # Saves__
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 336], rax           # result
                        mov              qword ptr [rsp + 344], rdx;          jmp   n00205_assign_α
                        .size            n00204_var_bx, .-n00204_var_bx
                        .type            n00205_assign_bx, @function
n00205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_assign_α:          mov              r11, 282
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              rdi, qword ptr [rip + .Lassign_α_699_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00206_conjunction_α
.Lassign_α_699_0:       .quad            .Lassign_α_699_0_s
.Lassign_α_699_0_s:     .string          "writes"
                        .size            n00205_assign_bx, .-n00205_assign_bx
                        .type            n00206_conjunction_bx, @function
n00206_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_conjunction_α:     mov              r11, 283
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   .Ldisjunction_γ_673_as
n00206_conjunction_β:     mov              r11, 283;                            jmp   n00199_var_α
                        .size            n00206_conjunction_bx, .-n00206_conjunction_bx
                        .type            n00199_var_bx, @function
n00199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:             mov              r11, 284
                        mov              rax, qword ptr [r9 + 144]            # Name__
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00207_lit_string_α
                        .size            n00199_var_bx, .-n00199_var_bx
                        .type            n00207_lit_string_bx, @function
n00207_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_lit_string_α:      mov              r11, 285
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_702_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00208_call_proc_staged_α
.Llit_string_α_702_0:   .quad            .Llit_string_α_702_0_s
.Llit_string_α_702_0_s: .string          " elapsed time = "
                        .size            n00207_lit_string_bx, .-n00207_lit_string_bx
                        .type            n00208_call_proc_staged_bx, @function
n00208_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_call_proc_staged_α:
                        mov              r11, 286
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_704_2
.Lcall_proc_staged_α_704_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_704_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lcall_proc_staged_α_704_29:
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00209_call_proc_staged_α
                                                                              jmp   n00210_call_icon_α
n00208_call_proc_staged_β:
                        mov              r11, 286;                            jmp   n00209_call_proc_staged_α
.Lcall_proc_staged_β_704_0:
                        .quad            .Lcall_proc_staged_β_704_0_s
.Lcall_proc_staged_β_704_0_s:
                        .string          "Time__"
                        .size            n00208_call_proc_staged_bx, .-n00208_call_proc_staged_bx
                        .type            n00210_call_icon_bx, @function
n00210_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_call_icon_α:       mov              r11, 287
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn706:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn706]
                        lea              rsi, [rsp + 128]
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
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n00209_call_proc_staged_α
                                                                              jmp   n00209_call_proc_staged_α
n00210_call_icon_β:       mov              r11, 287;                            jmp   n00209_call_proc_staged_α
                        .size            n00210_call_icon_bx, .-n00210_call_icon_bx
                        .type            n00209_call_proc_staged_bx, @function
n00209_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_call_proc_staged_α:
                        mov              r11, 288
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_708_2
.Lcall_proc_staged_α_708_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_708_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lcall_proc_staged_α_708_29:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00211_call_proc_staged_α
                                                                              jmp   n00211_call_proc_staged_α
n00209_call_proc_staged_β:
                        mov              r11, 288;                            jmp   n00211_call_proc_staged_α
.Lcall_proc_staged_β_708_0:
                        .quad            .Lcall_proc_staged_β_708_0_s
.Lcall_proc_staged_β_708_0_s:
                        .string          "Regions__"
                        .size            n00209_call_proc_staged_bx, .-n00209_call_proc_staged_bx
                        .type            n00211_call_proc_staged_bx, @function
n00211_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_proc_staged_α:
                        mov              r11, 289
                        call             Storage___dcα;                       jmp   .Lcall_proc_staged_α_710_2
.Lcall_proc_staged_α_710_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_710_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lcall_proc_staged_α_710_29:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n00212_call_proc_staged_α
                                                                              jmp   n00212_call_proc_staged_α
n00211_call_proc_staged_β:
                        mov              r11, 289;                            jmp   n00212_call_proc_staged_α
.Lcall_proc_staged_β_710_0:
                        .quad            .Lcall_proc_staged_β_710_0_s
.Lcall_proc_staged_β_710_0_s:
                        .string          "Storage__"
                        .size            n00211_call_proc_staged_bx, .-n00211_call_proc_staged_bx
                        .type            n00212_call_proc_staged_bx, @function
n00212_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_call_proc_staged_α:
                        mov              r11, 290
                        call             Collections___dcα;                   jmp   .Lcall_proc_staged_α_712_2
.Lcall_proc_staged_α_712_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_712_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
.Lcall_proc_staged_α_712_29:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n00213_return_α
                                                                              jmp   n00213_return_α
n00212_call_proc_staged_β:
                        mov              r11, 290;                            jmp   n00213_return_α
.Lcall_proc_staged_β_712_0:
                        .quad            .Lcall_proc_staged_β_712_0_s
.Lcall_proc_staged_β_712_0_s:
                        .string          "Collections__"
                        .size            n00212_call_proc_staged_bx, .-n00212_call_proc_staged_bx
                        .type            n00213_return_bx, @function
n00213_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_return_α:          mov              r11, 291
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Term___γ
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
                        add              rsp, 560;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
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
                        add              rsp, 560;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTerm___α_714_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_714_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_714_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_714_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 1088
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
Collections___α_body:
                        .type            n00214_disjunction_bx, @function
n00214_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_disjunction_α:     mov              r11, 292
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00215_var_ref_α
.Ldisjunction_γ_715_as: mov              r11, 292
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_753_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00216_make_list_α
.Ldisjunction_α_753_0:                                                        jmp   n00216_make_list_α
n00214_disjunction_β:     mov              r11, 292
                        mov              eax, dword ptr [rsp + 656];          jmp   n00216_make_list_α
.Ldisjunction_γ_715_af: mov              r11, 292
.Ldisjunction_ω_715_af: mov              r11, 292
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00216_make_list_α
                        .size            n00214_disjunction_bx, .-n00214_disjunction_bx
                        .type            n00216_make_list_bx, @function
n00216_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_make_list_α:       mov              r11, 293
                        lea              rdi, [rsp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00217_assign_α
                        .size            n00216_make_list_bx, .-n00216_make_list_bx
                        .type            n00217_assign_bx, @function
n00217_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_assign_α:          mov              r11, 294
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00218_var_α
                        .size            n00217_assign_bx, .-n00217_assign_bx
                        .type            n00218_var_bx, @function
n00218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_α:             mov              r11, 295
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00219_kw_icon_gen_α
                        .size            n00218_var_bx, .-n00218_var_bx
                        .type            n00219_kw_icon_gen_bx, @function
n00219_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_kw_icon_gen_α:     mov              r11, 296
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_759_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_759_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00220_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00221_call_icon_α
n00219_kw_icon_gen_β:     mov              r11, 296;                            jmp   .Lkw_icon_gen_α_759_1
.Lkw_icon_gen_α_759_0:  .quad            .Lkw_icon_gen_α_759_0_s
.Lkw_icon_gen_α_759_0_s:
                        .string          "&collections"
                        .size            n00219_kw_icon_gen_bx, .-n00219_kw_icon_gen_bx
                        .type            n00221_call_icon_bx, @function
n00221_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_call_icon_α:       mov              r11, 297
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn761:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn761]
                        lea              rsi, [rsp + 528]
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
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n00219_kw_icon_gen_β
                                                                              jmp   n00219_kw_icon_gen_β
n00221_call_icon_β:       mov              r11, 297;                            jmp   n00219_kw_icon_gen_β
                        .size            n00221_call_icon_bx, .-n00221_call_icon_bx
                        .type            n00220_lit_string_bx, @function
n00220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_762_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00222_call_icon_α
.Llit_string_α_762_0:   .quad            .Llit_string_α_762_0_s
.Llit_string_α_762_0_s: .string          "collections"
                        .size            n00220_lit_string_bx, .-n00220_lit_string_bx
                        .type            n00222_call_icon_bx, @function
n00222_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_icon_α:       mov              r11, 299
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn764:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn764]
                        lea              rsi, [rsp + 448]
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
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n00223_lit_integer_α
                                                                              jmp   n00223_lit_integer_α
n00222_call_icon_β:       mov              r11, 299;                            jmp   n00223_lit_integer_α
                        .size            n00222_call_icon_bx, .-n00222_call_icon_bx
                        .type            n00223_lit_integer_bx, @function
n00223_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_lit_integer_α:     mov              r11, 300
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_765_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00224_var_α
.Llit_integer_α_765_0:  .quad            1
                        .size            n00223_lit_integer_bx, .-n00223_lit_integer_bx
                        .type            n00224_var_bx, @function
n00224_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_var_α:             mov              r11, 301
                        mov              rax, qword ptr [r9 + 288]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00225_unop_α
                        .size            n00224_var_bx, .-n00224_var_bx
                        .type            n00225_unop_bx, @function
n00225_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_unop_α:            mov              r11, 302
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00226_to_α
                        .size            n00225_unop_bx, .-n00225_unop_bx
                        .type            n00226_to_bx, @function
n00226_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_to_α:              mov              r11, 303
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.Lto_α_769_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00227_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00228_assign_α
n00226_to_β:              mov              r11, 303
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_769_0
                        .size            n00226_to_bx, .-n00226_to_bx
                        .type            n00228_assign_bx, @function
n00228_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n00229_bound_α
                        .size            n00228_assign_bx, .-n00228_assign_bx
                        .type            n00229_bound_bx, @function
n00229_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_bound_α:           mov              r11, 305
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00230_var_ref_α
                        .size            n00229_bound_bx, .-n00229_bound_bx
                        .type            n00230_var_ref_bx, @function
n00230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00231_var_α
                        .size            n00230_var_ref_bx, .-n00230_var_ref_bx
                        .type            n00231_var_bx, @function
n00231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_α:             mov              r11, 307
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00232_subscript_α
                        .size            n00231_var_bx, .-n00231_var_bx
                        .type            n00232_subscript_bx, @function
n00232_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_subscript_α:       mov              r11, 308
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00234_deref_α
                        .size            n00232_subscript_bx, .-n00232_subscript_bx
                        .type            n00234_deref_bx, @function
n00234_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_deref_α:           mov              r11, 309
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00235_var_ref_α
                        .size            n00234_deref_bx, .-n00234_deref_bx
                        .type            n00235_var_ref_bx, @function
n00235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_var_ref_α:         mov              r11, 310
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00236_var_α
                        .size            n00235_var_ref_bx, .-n00235_var_ref_bx
                        .type            n00236_var_bx, @function
n00236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_var_α:             mov              r11, 311
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00237_subscript_α
                        .size            n00236_var_bx, .-n00236_var_bx
                        .type            n00237_subscript_bx, @function
n00237_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_subscript_α:       mov              r11, 312
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00238_deref_α
                        .size            n00237_subscript_bx, .-n00237_subscript_bx
                        .type            n00238_deref_bx, @function
n00238_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_deref_α:           mov              r11, 313
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00239_lit_integer_α
                        .size            n00238_deref_bx, .-n00238_deref_bx
                        .type            n00239_lit_integer_bx, @function
n00239_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_integer_α:     mov              r11, 314
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_785_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00240_call_icon_α
.Llit_integer_α_785_0:  .quad            8
                        .size            n00239_lit_integer_bx, .-n00239_lit_integer_bx
                        .type            n00240_call_icon_bx, @function
n00240_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_call_icon_α:       mov              r11, 315
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn787:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn787]
                        lea              rsi, [rsp + 304]
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
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n00233_unmark_α
                                                                              jmp   n00241_call_icon_α
n00240_call_icon_β:       mov              r11, 315;                            jmp   n00233_unmark_α
                        .size            n00240_call_icon_bx, .-n00240_call_icon_bx
                        .type            n00241_call_icon_bx, @function
n00241_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_call_icon_α:       mov              r11, 316
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn789:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn789]
                        lea              rsi, [rsp + 176]
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
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00233_unmark_α
                                                                              jmp   n00233_unmark_α
n00241_call_icon_β:       mov              r11, 316;                            jmp   n00233_unmark_α
                        .size            n00241_call_icon_bx, .-n00241_call_icon_bx
                        .type            n00233_unmark_bx, @function
n00233_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_unmark_α:          mov              r11, 317
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00226_to_β
                        .size            n00233_unmark_bx, .-n00233_unmark_bx
                        .type            n00227_return_bx, @function
n00227_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_return_α:          mov              r11, 318
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Collections___γ
                        .size            n00227_return_bx, .-n00227_return_bx
                        .type            n00215_var_ref_bx, @function
n00215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_ref_α:         mov              r11, 319
                        mov              rax, 4294967336
                        mov              rdx, 1879052592                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00242_nulltest_var_α
n00215_var_ref_β:         mov              r11, 319;                            jmp   .Ldisjunction_ω_715_af
                        .size            n00215_var_ref_bx, .-n00215_var_ref_bx
                        .type            n00242_nulltest_var_bx, @function
n00242_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_nulltest_var_α:    mov              r11, 320
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 104;                             je    .Ldisjunction_ω_715_af
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_715_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_715_af
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00243_lit_integer_α
                        .size            n00242_nulltest_var_bx, .-n00242_nulltest_var_bx
                        .type            n00243_lit_integer_bx, @function
n00243_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_integer_α:     mov              r11, 321
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_796_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00244_assign_var_α
.Llit_integer_α_796_0:  .quad            1
                        .size            n00243_lit_integer_bx, .-n00243_lit_integer_bx
                        .type            n00244_assign_var_bx, @function
n00244_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_assign_var_α:      mov              r11, 322
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_715_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00245_lit_string_α
                        .size            n00244_assign_var_bx, .-n00244_assign_var_bx
                        .type            n00245_lit_string_bx, @function
n00245_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_798_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00246_lit_string_α
.Llit_string_α_798_0:   .quad            .Llit_string_α_798_0_s
.Llit_string_α_798_0_s: .string          "total"
                        .size            n00245_lit_string_bx, .-n00245_lit_string_bx
                        .type            n00246_lit_string_bx, @function
n00246_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_lit_string_α:      mov              r11, 324
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_799_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00247_lit_string_α
.Llit_string_α_799_0:   .quad            .Llit_string_α_799_0_s
.Llit_string_α_799_0_s: .string          "static"
                        .size            n00246_lit_string_bx, .-n00246_lit_string_bx
                        .type            n00247_lit_string_bx, @function
n00247_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_lit_string_α:      mov              r11, 325
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_800_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00248_lit_string_α
.Llit_string_α_800_0:   .quad            .Llit_string_α_800_0_s
.Llit_string_α_800_0_s: .string          "string"
                        .size            n00247_lit_string_bx, .-n00247_lit_string_bx
                        .type            n00248_lit_string_bx, @function
n00248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_lit_string_α:      mov              r11, 326
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_801_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00249_make_list_α
.Llit_string_α_801_0:   .quad            .Llit_string_α_801_0_s
.Llit_string_α_801_0_s: .string          "block"
                        .size            n00248_lit_string_bx, .-n00248_lit_string_bx
                        .type            n00249_make_list_bx, @function
n00249_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_make_list_α:       mov              r11, 327
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00250_assign_α
                        .size            n00249_make_list_bx, .-n00249_make_list_bx
                        .type            n00250_assign_bx, @function
n00250_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_assign_α:          mov              r11, 328
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 288], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 296], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_715_as
n00250_assign_β:          mov              r11, 328;                            jmp   n00216_make_list_α
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
                        add              rsp, 1088;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
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
                        add              rsp, 1088;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LCollections___α_805_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_805_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_805_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_805_3:
                        add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 1040
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
Regions___α_body:
                        .type            n00251_disjunction_bx, @function
n00251_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_disjunction_α:     mov              r11, 329
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00252_var_ref_α
.Ldisjunction_γ_806_as: mov              r11, 329
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_843_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00253_make_list_α
.Ldisjunction_α_843_0:                                                        jmp   n00253_make_list_α
n00251_disjunction_β:     mov              r11, 329
                        mov              eax, dword ptr [rsp + 656];          jmp   n00253_make_list_α
.Ldisjunction_γ_806_af: mov              r11, 329
.Ldisjunction_ω_806_af: mov              r11, 329
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00253_make_list_α
                        .size            n00251_disjunction_bx, .-n00251_disjunction_bx
                        .type            n00253_make_list_bx, @function
n00253_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_make_list_α:       mov              r11, 330
                        lea              rdi, [rsp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00254_assign_α
                        .size            n00253_make_list_bx, .-n00253_make_list_bx
                        .type            n00254_assign_bx, @function
n00254_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_assign_α:          mov              r11, 331
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00255_var_α
                        .size            n00254_assign_bx, .-n00254_assign_bx
                        .type            n00255_var_bx, @function
n00255_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_var_α:             mov              r11, 332
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00256_kw_icon_gen_α
                        .size            n00255_var_bx, .-n00255_var_bx
                        .type            n00256_kw_icon_gen_bx, @function
n00256_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_kw_icon_gen_α:     mov              r11, 333
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_849_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_849_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00257_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00258_call_icon_α
n00256_kw_icon_gen_β:     mov              r11, 333;                            jmp   .Lkw_icon_gen_α_849_1
.Lkw_icon_gen_α_849_0:  .quad            .Lkw_icon_gen_α_849_0_s
.Lkw_icon_gen_α_849_0_s:
                        .string          "&regions"
                        .size            n00256_kw_icon_gen_bx, .-n00256_kw_icon_gen_bx
                        .type            n00258_call_icon_bx, @function
n00258_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_call_icon_α:       mov              r11, 334
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn851:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn851]
                        lea              rsi, [rsp + 528]
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
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n00256_kw_icon_gen_β
                                                                              jmp   n00256_kw_icon_gen_β
n00258_call_icon_β:       mov              r11, 334;                            jmp   n00256_kw_icon_gen_β
                        .size            n00258_call_icon_bx, .-n00258_call_icon_bx
                        .type            n00257_lit_string_bx, @function
n00257_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_lit_string_α:      mov              r11, 335
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_852_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00259_call_icon_α
.Llit_string_α_852_0:   .quad            .Llit_string_α_852_0_s
.Llit_string_α_852_0_s: .string          "regions"
                        .size            n00257_lit_string_bx, .-n00257_lit_string_bx
                        .type            n00259_call_icon_bx, @function
n00259_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_call_icon_α:       mov              r11, 336
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn854:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn854]
                        lea              rsi, [rsp + 448]
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
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n00260_lit_integer_α
                                                                              jmp   n00260_lit_integer_α
n00259_call_icon_β:       mov              r11, 336;                            jmp   n00260_lit_integer_α
                        .size            n00259_call_icon_bx, .-n00259_call_icon_bx
                        .type            n00260_lit_integer_bx, @function
n00260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_lit_integer_α:     mov              r11, 337
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_855_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00261_var_α
.Llit_integer_α_855_0:  .quad            1
                        .size            n00260_lit_integer_bx, .-n00260_lit_integer_bx
                        .type            n00261_var_bx, @function
n00261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_var_α:             mov              r11, 338
                        mov              rax, qword ptr [r9 + 320]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00262_unop_α
                        .size            n00261_var_bx, .-n00261_var_bx
                        .type            n00262_unop_bx, @function
n00262_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_unop_α:            mov              r11, 339
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00263_to_α
                        .size            n00262_unop_bx, .-n00262_unop_bx
                        .type            n00263_to_bx, @function
n00263_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_to_α:              mov              r11, 340
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.Lto_α_859_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00264_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00265_assign_α
n00263_to_β:              mov              r11, 340
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_859_0
                        .size            n00263_to_bx, .-n00263_to_bx
                        .type            n00265_assign_bx, @function
n00265_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_assign_α:          mov              r11, 341
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00266_bound_α
                        .size            n00265_assign_bx, .-n00265_assign_bx
                        .type            n00266_bound_bx, @function
n00266_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_bound_α:           mov              r11, 342
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00267_var_ref_α
                        .size            n00266_bound_bx, .-n00266_bound_bx
                        .type            n00267_var_ref_bx, @function
n00267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_ref_α:         mov              r11, 343
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00268_var_α
                        .size            n00267_var_ref_bx, .-n00267_var_ref_bx
                        .type            n00268_var_bx, @function
n00268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00269_subscript_α
                        .size            n00268_var_bx, .-n00268_var_bx
                        .type            n00269_subscript_bx, @function
n00269_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_subscript_α:       mov              r11, 345
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00271_deref_α
                        .size            n00269_subscript_bx, .-n00269_subscript_bx
                        .type            n00271_deref_bx, @function
n00271_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_deref_α:           mov              r11, 346
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00272_var_ref_α
                        .size            n00271_deref_bx, .-n00271_deref_bx
                        .type            n00272_var_ref_bx, @function
n00272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00273_var_α
                        .size            n00272_var_ref_bx, .-n00272_var_ref_bx
                        .type            n00273_var_bx, @function
n00273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_α:             mov              r11, 348
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00274_subscript_α
                        .size            n00273_var_bx, .-n00273_var_bx
                        .type            n00274_subscript_bx, @function
n00274_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_subscript_α:       mov              r11, 349
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00275_deref_α
                        .size            n00274_subscript_bx, .-n00274_subscript_bx
                        .type            n00275_deref_bx, @function
n00275_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_deref_α:           mov              r11, 350
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00276_lit_integer_α
                        .size            n00275_deref_bx, .-n00275_deref_bx
                        .type            n00276_lit_integer_bx, @function
n00276_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_lit_integer_α:     mov              r11, 351
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_875_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00277_call_icon_α
.Llit_integer_α_875_0:  .quad            8
                        .size            n00276_lit_integer_bx, .-n00276_lit_integer_bx
                        .type            n00277_call_icon_bx, @function
n00277_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_call_icon_α:       mov              r11, 352
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn877:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn877]
                        lea              rsi, [rsp + 304]
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
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n00270_unmark_α
                                                                              jmp   n00278_call_icon_α
n00277_call_icon_β:       mov              r11, 352;                            jmp   n00270_unmark_α
                        .size            n00277_call_icon_bx, .-n00277_call_icon_bx
                        .type            n00278_call_icon_bx, @function
n00278_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_call_icon_α:       mov              r11, 353
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn879:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn879]
                        lea              rsi, [rsp + 176]
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
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00270_unmark_α
                                                                              jmp   n00270_unmark_α
n00278_call_icon_β:       mov              r11, 353;                            jmp   n00270_unmark_α
                        .size            n00278_call_icon_bx, .-n00278_call_icon_bx
                        .type            n00270_unmark_bx, @function
n00270_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_unmark_α:          mov              r11, 354
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00263_to_β
                        .size            n00270_unmark_bx, .-n00270_unmark_bx
                        .type            n00264_return_bx, @function
n00264_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_return_α:          mov              r11, 355
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Regions___γ
                        .size            n00264_return_bx, .-n00264_return_bx
                        .type            n00252_var_ref_bx, @function
n00252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_ref_α:         mov              r11, 356
                        mov              rax, 4294967336
                        mov              rdx, 1879052624                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00279_nulltest_var_α
n00252_var_ref_β:         mov              r11, 356;                            jmp   .Ldisjunction_ω_806_af
                        .size            n00252_var_ref_bx, .-n00252_var_ref_bx
                        .type            n00279_nulltest_var_bx, @function
n00279_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_nulltest_var_α:    mov              r11, 357
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_806_af
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_806_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_806_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00280_lit_integer_α
                        .size            n00279_nulltest_var_bx, .-n00279_nulltest_var_bx
                        .type            n00280_lit_integer_bx, @function
n00280_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_lit_integer_α:     mov              r11, 358
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_886_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00281_assign_var_α
.Llit_integer_α_886_0:  .quad            1
                        .size            n00280_lit_integer_bx, .-n00280_lit_integer_bx
                        .type            n00281_assign_var_bx, @function
n00281_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_assign_var_α:      mov              r11, 359
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_806_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00282_lit_string_α
                        .size            n00281_assign_var_bx, .-n00281_assign_var_bx
                        .type            n00282_lit_string_bx, @function
n00282_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_888_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00283_lit_string_α
.Llit_string_α_888_0:   .quad            .Llit_string_α_888_0_s
.Llit_string_α_888_0_s: .string          "static"
                        .size            n00282_lit_string_bx, .-n00282_lit_string_bx
                        .type            n00283_lit_string_bx, @function
n00283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_lit_string_α:      mov              r11, 361
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_889_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00284_lit_string_α
.Llit_string_α_889_0:   .quad            .Llit_string_α_889_0_s
.Llit_string_α_889_0_s: .string          "string"
                        .size            n00283_lit_string_bx, .-n00283_lit_string_bx
                        .type            n00284_lit_string_bx, @function
n00284_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_890_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00285_make_list_α
.Llit_string_α_890_0:   .quad            .Llit_string_α_890_0_s
.Llit_string_α_890_0_s: .string          "block"
                        .size            n00284_lit_string_bx, .-n00284_lit_string_bx
                        .type            n00285_make_list_bx, @function
n00285_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_make_list_α:       mov              r11, 363
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00286_assign_α
                        .size            n00285_make_list_bx, .-n00285_make_list_bx
                        .type            n00286_assign_bx, @function
n00286_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_assign_α:          mov              r11, 364
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 320], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 328], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_806_as
n00286_assign_β:          mov              r11, 364;                            jmp   n00253_make_list_α
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
                        add              rsp, 1040;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
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
                        add              rsp, 1040;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LRegions___α_894_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_894_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_894_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_894_3:    add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Signature__:
                        sub              rsp, 352
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
Signature___α_body:
                        .type            n00287_kw_icon_bx, @function
n00287_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_kw_icon_α:         mov              r11, 365
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_902_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00288_kw_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00289_call_icon_α
n00287_kw_icon_β:         mov              r11, 365;                            jmp   n00288_kw_icon_α
.Lkw_icon_α_902_0:      .quad            .Lkw_icon_α_902_0_s
.Lkw_icon_α_902_0_s:    .string          "&version"
                        .size            n00287_kw_icon_bx, .-n00287_kw_icon_bx
                        .type            n00289_call_icon_bx, @function
n00289_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_call_icon_α:       mov              r11, 366
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn904:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn904]
                        lea              rsi, [rsp + 192]
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
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n00288_kw_icon_α
                                                                              jmp   n00288_kw_icon_α
n00289_call_icon_β:       mov              r11, 366;                            jmp   n00288_kw_icon_α
                        .size            n00289_call_icon_bx, .-n00289_call_icon_bx
                        .type            n00288_kw_icon_bx, @function
n00288_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_kw_icon_α:         mov              r11, 367
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_905_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00290_kw_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00291_call_icon_α
n00288_kw_icon_β:         mov              r11, 367;                            jmp   n00290_kw_icon_gen_α
.Lkw_icon_α_905_0:      .quad            .Lkw_icon_α_905_0_s
.Lkw_icon_α_905_0_s:    .string          "&host"
                        .size            n00288_kw_icon_bx, .-n00288_kw_icon_bx
                        .type            n00291_call_icon_bx, @function
n00291_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_call_icon_α:       mov              r11, 368
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn907:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn907]
                        lea              rsi, [rsp + 112]
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
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n00290_kw_icon_gen_α
                                                                              jmp   n00290_kw_icon_gen_α
n00291_call_icon_β:       mov              r11, 368;                            jmp   n00290_kw_icon_gen_α
                        .size            n00291_call_icon_bx, .-n00291_call_icon_bx
                        .type            n00290_kw_icon_gen_bx, @function
n00290_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_kw_icon_gen_α:     mov              r11, 369
                        mov              qword ptr [rsp + 80], 0
.Lkw_icon_gen_α_908_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_908_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00292_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n00293_call_icon_α
n00290_kw_icon_gen_β:     mov              r11, 369;                            jmp   .Lkw_icon_gen_α_908_1
.Lkw_icon_gen_α_908_0:  .quad            .Lkw_icon_gen_α_908_0_s
.Lkw_icon_gen_α_908_0_s:
                        .string          "&features"
                        .size            n00290_kw_icon_gen_bx, .-n00290_kw_icon_gen_bx
                        .type            n00293_call_icon_bx, @function
n00293_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_call_icon_α:       mov              r11, 370
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn910:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn910]
                        lea              rsi, [rsp + 32]
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
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n00290_kw_icon_gen_β
                                                                              jmp   n00290_kw_icon_gen_β
n00293_call_icon_β:       mov              r11, 370;                            jmp   n00290_kw_icon_gen_β
                        .size            n00293_call_icon_bx, .-n00293_call_icon_bx
                        .type            n00292_return_bx, @function
n00292_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_return_α:          mov              r11, 371
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Signature___γ
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
                        add              rsp, 352;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Signature___ω:
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
                        add              rsp, 352;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Signature___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LSignature___α_912_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_912_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_912_2:  add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_912_3:  add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 1040
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
Storage___α_body:
                        .type            n00294_disjunction_bx, @function
n00294_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_disjunction_α:     mov              r11, 372
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00295_var_ref_α
.Ldisjunction_γ_913_as: mov              r11, 372
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_950_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00296_make_list_α
.Ldisjunction_α_950_0:                                                        jmp   n00296_make_list_α
n00294_disjunction_β:     mov              r11, 372
                        mov              eax, dword ptr [rsp + 656];          jmp   n00296_make_list_α
.Ldisjunction_γ_913_af: mov              r11, 372
.Ldisjunction_ω_913_af: mov              r11, 372
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00296_make_list_α
                        .size            n00294_disjunction_bx, .-n00294_disjunction_bx
                        .type            n00296_make_list_bx, @function
n00296_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_make_list_α:       mov              r11, 373
                        lea              rdi, [rsp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00297_assign_α
                        .size            n00296_make_list_bx, .-n00296_make_list_bx
                        .type            n00297_assign_bx, @function
n00297_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_assign_α:          mov              r11, 374
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00298_var_α
                        .size            n00297_assign_bx, .-n00297_assign_bx
                        .type            n00298_var_bx, @function
n00298_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_α:             mov              r11, 375
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00299_kw_icon_gen_α
                        .size            n00298_var_bx, .-n00298_var_bx
                        .type            n00299_kw_icon_gen_bx, @function
n00299_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_kw_icon_gen_α:     mov              r11, 376
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_956_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_956_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00300_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00301_call_icon_α
n00299_kw_icon_gen_β:     mov              r11, 376;                            jmp   .Lkw_icon_gen_α_956_1
.Lkw_icon_gen_α_956_0:  .quad            .Lkw_icon_gen_α_956_0_s
.Lkw_icon_gen_α_956_0_s:
                        .string          "&storage"
                        .size            n00299_kw_icon_gen_bx, .-n00299_kw_icon_gen_bx
                        .type            n00301_call_icon_bx, @function
n00301_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_call_icon_α:       mov              r11, 377
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn958:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn958]
                        lea              rsi, [rsp + 528]
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
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n00299_kw_icon_gen_β
                                                                              jmp   n00299_kw_icon_gen_β
n00301_call_icon_β:       mov              r11, 377;                            jmp   n00299_kw_icon_gen_β
                        .size            n00301_call_icon_bx, .-n00301_call_icon_bx
                        .type            n00300_lit_string_bx, @function
n00300_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_lit_string_α:      mov              r11, 378
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_959_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00302_call_icon_α
.Llit_string_α_959_0:   .quad            .Llit_string_α_959_0_s
.Llit_string_α_959_0_s: .string          "storage"
                        .size            n00300_lit_string_bx, .-n00300_lit_string_bx
                        .type            n00302_call_icon_bx, @function
n00302_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_call_icon_α:       mov              r11, 379
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn961:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn961]
                        lea              rsi, [rsp + 448]
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
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n00303_lit_integer_α
                                                                              jmp   n00303_lit_integer_α
n00302_call_icon_β:       mov              r11, 379;                            jmp   n00303_lit_integer_α
                        .size            n00302_call_icon_bx, .-n00302_call_icon_bx
                        .type            n00303_lit_integer_bx, @function
n00303_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_lit_integer_α:     mov              r11, 380
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_962_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00304_var_α
.Llit_integer_α_962_0:  .quad            1
                        .size            n00303_lit_integer_bx, .-n00303_lit_integer_bx
                        .type            n00304_var_bx, @function
n00304_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_var_α:             mov              r11, 381
                        mov              rax, qword ptr [r9 + 352]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00305_unop_α
                        .size            n00304_var_bx, .-n00304_var_bx
                        .type            n00305_unop_bx, @function
n00305_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_unop_α:            mov              r11, 382
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00306_to_α
                        .size            n00305_unop_bx, .-n00305_unop_bx
                        .type            n00306_to_bx, @function
n00306_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_to_α:              mov              r11, 383
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.Lto_α_966_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00307_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00308_assign_α
n00306_to_β:              mov              r11, 383
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_966_0
                        .size            n00306_to_bx, .-n00306_to_bx
                        .type            n00308_assign_bx, @function
n00308_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_assign_α:          mov              r11, 384
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00309_bound_α
                        .size            n00308_assign_bx, .-n00308_assign_bx
                        .type            n00309_bound_bx, @function
n00309_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_bound_α:           mov              r11, 385
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00310_var_ref_α
                        .size            n00309_bound_bx, .-n00309_bound_bx
                        .type            n00310_var_ref_bx, @function
n00310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_var_ref_α:         mov              r11, 386
                        mov              rax, 4294967336
                        mov              rdx, 1879052640                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00311_var_α
                        .size            n00310_var_ref_bx, .-n00310_var_ref_bx
                        .type            n00311_var_bx, @function
n00311_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_α:             mov              r11, 387
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00312_subscript_α
                        .size            n00311_var_bx, .-n00311_var_bx
                        .type            n00312_subscript_bx, @function
n00312_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_subscript_α:       mov              r11, 388
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00314_deref_α
                        .size            n00312_subscript_bx, .-n00312_subscript_bx
                        .type            n00314_deref_bx, @function
n00314_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_deref_α:           mov              r11, 389
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00315_var_ref_α
                        .size            n00314_deref_bx, .-n00314_deref_bx
                        .type            n00315_var_ref_bx, @function
n00315_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00316_var_α
                        .size            n00315_var_ref_bx, .-n00315_var_ref_bx
                        .type            n00316_var_bx, @function
n00316_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_α:             mov              r11, 391
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00317_subscript_α
                        .size            n00316_var_bx, .-n00316_var_bx
                        .type            n00317_subscript_bx, @function
n00317_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_subscript_α:       mov              r11, 392
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00318_deref_α
                        .size            n00317_subscript_bx, .-n00317_subscript_bx
                        .type            n00318_deref_bx, @function
n00318_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_deref_α:           mov              r11, 393
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00319_lit_integer_α
                        .size            n00318_deref_bx, .-n00318_deref_bx
                        .type            n00319_lit_integer_bx, @function
n00319_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_integer_α:     mov              r11, 394
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_982_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00320_call_icon_α
.Llit_integer_α_982_0:  .quad            8
                        .size            n00319_lit_integer_bx, .-n00319_lit_integer_bx
                        .type            n00320_call_icon_bx, @function
n00320_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_call_icon_α:       mov              r11, 395
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn984:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn984]
                        lea              rsi, [rsp + 304]
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
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n00313_unmark_α
                                                                              jmp   n00321_call_icon_α
n00320_call_icon_β:       mov              r11, 395;                            jmp   n00313_unmark_α
                        .size            n00320_call_icon_bx, .-n00320_call_icon_bx
                        .type            n00321_call_icon_bx, @function
n00321_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_icon_α:       mov              r11, 396
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn986:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn986]
                        lea              rsi, [rsp + 176]
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
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00313_unmark_α
                                                                              jmp   n00313_unmark_α
n00321_call_icon_β:       mov              r11, 396;                            jmp   n00313_unmark_α
                        .size            n00321_call_icon_bx, .-n00321_call_icon_bx
                        .type            n00313_unmark_bx, @function
n00313_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_unmark_α:          mov              r11, 397
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00306_to_β
                        .size            n00313_unmark_bx, .-n00313_unmark_bx
                        .type            n00307_return_bx, @function
n00307_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_return_α:          mov              r11, 398
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Storage___γ
                        .size            n00307_return_bx, .-n00307_return_bx
                        .type            n00295_var_ref_bx, @function
n00295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_ref_α:         mov              r11, 399
                        mov              rax, 4294967336
                        mov              rdx, 1879052656                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00322_nulltest_var_α
n00295_var_ref_β:         mov              r11, 399;                            jmp   .Ldisjunction_ω_913_af
                        .size            n00295_var_ref_bx, .-n00295_var_ref_bx
                        .type            n00322_nulltest_var_bx, @function
n00322_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_nulltest_var_α:    mov              r11, 400
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_913_af
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_913_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_913_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00323_lit_integer_α
                        .size            n00322_nulltest_var_bx, .-n00322_nulltest_var_bx
                        .type            n00323_lit_integer_bx, @function
n00323_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_integer_α:     mov              r11, 401
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_993_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00324_assign_var_α
.Llit_integer_α_993_0:  .quad            1
                        .size            n00323_lit_integer_bx, .-n00323_lit_integer_bx
                        .type            n00324_assign_var_bx, @function
n00324_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_assign_var_α:      mov              r11, 402
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_913_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00325_lit_string_α
                        .size            n00324_assign_var_bx, .-n00324_assign_var_bx
                        .type            n00325_lit_string_bx, @function
n00325_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_lit_string_α:      mov              r11, 403
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_995_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00326_lit_string_α
.Llit_string_α_995_0:   .quad            .Llit_string_α_995_0_s
.Llit_string_α_995_0_s: .string          "static"
                        .size            n00325_lit_string_bx, .-n00325_lit_string_bx
                        .type            n00326_lit_string_bx, @function
n00326_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_lit_string_α:      mov              r11, 404
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_996_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00327_lit_string_α
.Llit_string_α_996_0:   .quad            .Llit_string_α_996_0_s
.Llit_string_α_996_0_s: .string          "string"
                        .size            n00326_lit_string_bx, .-n00326_lit_string_bx
                        .type            n00327_lit_string_bx, @function
n00327_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_lit_string_α:      mov              r11, 405
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_997_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00328_make_list_α
.Llit_string_α_997_0:   .quad            .Llit_string_α_997_0_s
.Llit_string_α_997_0_s: .string          "block"
                        .size            n00327_lit_string_bx, .-n00327_lit_string_bx
                        .type            n00328_make_list_bx, @function
n00328_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_make_list_α:       mov              r11, 406
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00329_assign_α
                        .size            n00328_make_list_bx, .-n00328_make_list_bx
                        .type            n00329_assign_bx, @function
n00329_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_assign_α:          mov              r11, 407
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 352], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 360], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_913_as
n00329_assign_β:          mov              r11, 407;                            jmp   n00296_make_list_α
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
                        add              rsp, 1040;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
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
                        add              rsp, 1040;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LStorage___α_1001_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_1001_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_1001_2:   add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_1001_3:   add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Time__:
                        sub              rsp, 320
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
Time___α_body:
                        .type            n00330_disjunction_bx, @function
n00330_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_disjunction_α:    mov              r11, 408
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00331_var_ref_α
.Ldisjunction_γ_1002_as:
                        mov              r11, 408
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1016_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00332_kw_icon_α
.Ldisjunction_α_1016_0:                                                       jmp   n00332_kw_icon_α
n00330_disjunction_β:    mov              r11, 408
                        mov              eax, dword ptr [rsp + 128];          jmp   n00332_kw_icon_α
.Ldisjunction_γ_1002_af:
                        mov              r11, 408
.Ldisjunction_ω_1002_af:
                        mov              r11, 408
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00332_kw_icon_α
                        .size            n00330_disjunction_bx, .-n00330_disjunction_bx
                        .type            n00332_kw_icon_bx, @function
n00332_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_kw_icon_α:        mov              r11, 409
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1017_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00333_var_α
n00332_kw_icon_β:        mov              r11, 409;                            jmp   Time___ω
.Lkw_icon_α_1017_0:     .quad            .Lkw_icon_α_1017_0_s
.Lkw_icon_α_1017_0_s:   .string          "&time"
                        .size            n00332_kw_icon_bx, .-n00332_kw_icon_bx
                        .type            n00333_var_bx, @function
n00333_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_var_α:            mov              r11, 410
                        mov              rax, qword ptr [r9 + 384]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00334_coerce_numeric_α
                        .size            n00333_var_bx, .-n00333_var_bx
                        .type            n00334_coerce_numeric_bx, @function
n00334_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_coerce_numeric_α: mov              r11, 411
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1020_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1020_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1020_0
.Lcoerce_numeric_α_1020_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00335_coerce_numeric_α
.Lcoerce_numeric_α_1020_0:
                        lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 48]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00335_coerce_numeric_α
                        .size            n00334_coerce_numeric_bx, .-n00334_coerce_numeric_bx
                        .type            n00335_coerce_numeric_bx, @function
n00335_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_coerce_numeric_α: mov              r11, 412
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1022_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1022_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1022_0
.Lcoerce_numeric_α_1022_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00336_binop_α
.Lcoerce_numeric_α_1022_0:
                        lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 32]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00336_binop_α
                        .size            n00335_coerce_numeric_bx, .-n00335_coerce_numeric_bx
                        .type            n00336_binop_bx, @function
n00336_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_binop_α:          mov              r11, 413
                        mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1023_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lbinop_α_1023_7
.Lbinop_α_1023_2:       and              edx, 1;                              jz    .Lbinop_α_1023_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1023_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1023_4
.Lbinop_α_1023_3:       movq             xmm0, rsi
.Lbinop_α_1023_4:       cmp              cl, 5;                               je    .Lbinop_α_1023_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1023_6
.Lbinop_α_1023_5:       movq             xmm1, rdi
.Lbinop_α_1023_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lbinop_α_1023_7:                                                             jmp   n00337_return_α
.Lbinop_α_1023_0:       mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n00337_return_α
                        .size            n00336_binop_bx, .-n00336_binop_bx
                        .type            n00337_return_bx, @function
n00337_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_return_α:         mov              r11, 414
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
                        .size            n00337_return_bx, .-n00337_return_bx
                        .type            n00331_var_ref_bx, @function
n00331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_var_ref_α:        mov              r11, 415
                        mov              rax, 4294967336
                        mov              rdx, 1879052688                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00338_nulltest_var_α
n00331_var_ref_β:        mov              r11, 415;                            jmp   .Ldisjunction_ω_1002_af
                        .size            n00331_var_ref_bx, .-n00331_var_ref_bx
                        .type            n00338_nulltest_var_bx, @function
n00338_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_nulltest_var_α:   mov              r11, 416
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1002_af
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1002_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1002_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00339_lit_integer_α
                        .size            n00338_nulltest_var_bx, .-n00338_nulltest_var_bx
                        .type            n00339_lit_integer_bx, @function
n00339_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_integer_α:    mov              r11, 417
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1028_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00340_assign_var_α
.Llit_integer_α_1028_0: .quad            1
                        .size            n00339_lit_integer_bx, .-n00339_lit_integer_bx
                        .type            n00340_assign_var_bx, @function
n00340_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_assign_var_α:     mov              r11, 418
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1002_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00341_kw_icon_α
                        .size            n00340_assign_var_bx, .-n00340_assign_var_bx
                        .type            n00341_kw_icon_bx, @function
n00341_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_kw_icon_α:        mov              r11, 419
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1030_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00332_kw_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00342_assign_α
n00341_kw_icon_β:        mov              r11, 419;                            jmp   n00332_kw_icon_α
.Lkw_icon_α_1030_0:     .quad            .Lkw_icon_α_1030_0_s
.Lkw_icon_α_1030_0_s:   .string          "&time"
                        .size            n00341_kw_icon_bx, .-n00341_kw_icon_bx
                        .type            n00342_assign_bx, @function
n00342_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_α:         mov              r11, 420
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 384], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 392], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   .Ldisjunction_γ_1002_as
n00342_assign_β:         mov              r11, 420;                            jmp   n00332_kw_icon_α
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
                        add              rsp, 320;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Time___ω:
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
                        add              rsp, 320;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Time___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTime___α_1032_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1032_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1032_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1032_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__shuffle:
                        sub              rsp, 288
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
shuffle_α_body:
                        .type            n00343_var_bx, @function
n00343_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_var_α:            mov              r11, 421
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00344_call_icon_α
                        .size            n00343_var_bx, .-n00343_var_bx
                        .type            n00344_call_icon_bx, @function
n00344_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_call_icon_α:      mov              r11, 422
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1046: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1046]
                        lea              rsi, [rsp + 176]
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
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00345_var_ref_α
                                                                              jmp   n00346_assign_α
n00344_call_icon_β:      mov              r11, 422;                            jmp   n00345_var_ref_α
                        .size            n00344_call_icon_bx, .-n00344_call_icon_bx
                        .type            n00346_assign_bx, @function
n00346_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_assign_α:         mov              r11, 423
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n00345_var_ref_α
                        .size            n00346_assign_bx, .-n00346_assign_bx
                        .type            n00345_var_ref_bx, @function
n00345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_ref_α:        mov              r11, 424
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00347_iterate_α
                        .size            n00345_var_ref_bx, .-n00345_var_ref_bx
                        .type            n00347_iterate_bx, @function
n00347_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_iterate_α:        mov              r11, 425
                        mov              qword ptr [rsp + 64], 0
.Literate_α_1051_0:     mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n00348_var_α
                                                                              jmp   n00349_var_ref_α
n00347_iterate_β:        mov              r11, 425
                        inc              qword ptr [rsp + 64];                jmp   .Literate_α_1051_0
                        .size            n00347_iterate_bx, .-n00347_iterate_bx
                        .type            n00349_var_ref_bx, @function
n00349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_var_ref_α:        mov              r11, 426
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n00350_random_α
                        .size            n00349_var_ref_bx, .-n00349_var_ref_bx
                        .type            n00350_random_bx, @function
n00350_random_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_random_α:         mov              r11, 427
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00348_var_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00351_swap_var_α
                        .size            n00350_random_bx, .-n00350_random_bx
                        .type            n00351_swap_var_bx, @function
n00351_swap_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_swap_var_α:       mov              r11, 428
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_swap_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00348_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00347_iterate_β
                        .size            n00351_swap_var_bx, .-n00351_swap_var_bx
                        .type            n00348_var_bx, @function
n00348_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_var_α:            mov              r11, 429
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00352_return_α
                        .size            n00348_var_bx, .-n00348_var_bx
                        .type            n00352_return_bx, @function
n00352_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_return_α:         mov              r11, 430
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   shuffle_γ
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
                        add              rsp, 288;                            jmp   qword ptr [rsp]
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
                        add              rsp, 288;                            jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lshuffle_α_1059_3]
                        push             rcx
                        lea              rcx, [rip + .Lshuffle_α_1059_2]
                        push             rcx;                                 jmp   FN__shuffle
.Lshuffle_α_1059_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshuffle_α_1059_3:     add              rsp, 24
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                                                                              jmp   main_α
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
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1110_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n00354_call_proc_staged_α
.Llit_string_α_1110_0:  .quad            .Llit_string_α_1110_0_s
.Llit_string_α_1110_0_s:
                        .string          "deal"
                        .size            n00353_lit_string_bx, .-n00353_lit_string_bx
                        .type            n00354_call_proc_staged_bx, @function
n00354_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_call_proc_staged_α:
                        mov              r11, 432
                        lea              rsi, [rsp + 1072]
                        call             Init___dcα;                          jmp   .Lcall_proc_staged_α_1112_2
.Lcall_proc_staged_α_1112_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1112_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
.Lcall_proc_staged_α_1112_29:
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n00355_lit_charset_α
                                                                              jmp   n00355_lit_charset_α
n00354_call_proc_staged_β:
                        mov              r11, 432;                            jmp   n00355_lit_charset_α
.Lcall_proc_staged_β_1112_0:
                        .quad            .Lcall_proc_staged_β_1112_0_s
.Lcall_proc_staged_β_1112_0_s:
                        .string          "Init__"
                        .size            n00354_call_proc_staged_bx, .-n00354_call_proc_staged_bx
                        .type            n00355_lit_charset_bx, @function
n00355_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_lit_charset_α:    mov              r11, 433
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1113_0]
                        mov              qword ptr [rsp + 1000], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1113_0]
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
.Llit_charset_α_1113_0: .quad            .Llit_charset_α_1113_0_s
.Llit_charset_α_1113_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00355_lit_charset_bx, .-n00355_lit_charset_bx
                        .type            n00356_call_icon_bx, @function
n00356_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_call_icon_α:      mov              r11, 434
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1115: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1115]
                        lea              rsi, [rsp + 960]
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
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n00357_var_α
                                                                              jmp   n00358_assign_α
n00356_call_icon_β:      mov              r11, 434;                            jmp   n00357_var_α
                        .size            n00356_call_icon_bx, .-n00356_call_icon_bx
                        .type            n00358_assign_bx, @function
n00358_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_assign_α:         mov              r11, 435
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [r9 + 16], rax             # deckimage
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00359_assign_α
                        .size            n00358_assign_bx, .-n00358_assign_bx
                        .type            n00359_assign_bx, @function
n00359_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_assign_α:         mov              r11, 436
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00357_var_α
                        .size            n00359_assign_bx, .-n00359_assign_bx
                        .type            n00357_var_bx, @function
n00357_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_var_α:            mov              r11, 437
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 896], rax           # result
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00360_unop_α
                        .size            n00357_var_bx, .-n00357_var_bx
                        .type            n00360_unop_bx, @function
n00360_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_unop_α:           mov              r11, 438
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00361_lit_integer_α
                        .size            n00360_unop_bx, .-n00360_unop_bx
                        .type            n00361_lit_integer_bx, @function
n00361_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_lit_integer_α:    mov              r11, 439
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1120_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00362_coerce_numeric_α
.Llit_integer_α_1120_0: .quad            4
                        .size            n00361_lit_integer_bx, .-n00361_lit_integer_bx
                        .type            n00362_coerce_numeric_bx, @function
n00362_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_coerce_numeric_α: mov              r11, 440
                        mov              eax, dword ptr [rsp + 880]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1122_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1122_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1122_0
.Lcoerce_numeric_α_1122_1:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00363_binop_α
.Lcoerce_numeric_α_1122_0:
                        lea              rdi, [rsp + 880]
                        lea              rsi, [rsp + 912]
                        lea              rdx, [rsp + 864]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00363_binop_α
                        .size            n00362_coerce_numeric_bx, .-n00362_coerce_numeric_bx
                        .type            n00363_binop_bx, @function
n00363_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_binop_α:          mov              r11, 441
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00364_lit_string_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00365_assign_α
                        .size            n00363_binop_bx, .-n00363_binop_bx
                        .type            n00365_assign_bx, @function
n00365_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_assign_α:         mov              r11, 442
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [r9 + 48], rax             # suitsize
                        mov              qword ptr [r9 + 56], rdx
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n00366_assign_α
                        .size            n00365_assign_bx, .-n00365_assign_bx
                        .type            n00366_assign_bx, @function
n00366_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_assign_α:         mov              r11, 443
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [r9 + 32], rax             # handsize
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00364_lit_string_α
                        .size            n00366_assign_bx, .-n00366_assign_bx
                        .type            n00364_lit_string_bx, @function
n00364_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_lit_string_α:     mov              r11, 444
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_1126_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00367_assign_α
.Llit_string_α_1126_0:  .quad            .Llit_string_α_1126_0_s
.Llit_string_α_1126_0_s:
                        .string          "AKQJT98765432"
                        .size            n00364_lit_string_bx, .-n00364_lit_string_bx
                        .type            n00367_assign_bx, @function
n00367_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_assign_α:         mov              r11, 445
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [r9 + 80], rax             # rank
                        mov              qword ptr [r9 + 88], rdx;            jmp   n00368_lit_string_α
                        .size            n00367_assign_bx, .-n00367_assign_bx
                        .type            n00368_lit_string_bx, @function
n00368_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_lit_string_α:     mov              r11, 446
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1128_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00369_var_α
.Llit_string_α_1128_0:  .quad            .Llit_string_α_1128_0_s
.Llit_string_α_1128_0_s:
                        .string          " "
                        .size            n00368_lit_string_bx, .-n00368_lit_string_bx
                        .type            n00369_var_bx, @function
n00369_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_var_α:            mov              r11, 447
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 784], rax           # result
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00370_call_icon_α
                        .size            n00369_var_bx, .-n00369_var_bx
                        .type            n00370_call_icon_bx, @function
n00370_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_call_icon_α:      mov              r11, 448
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1131: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1131]
                        lea              rsi, [rsp + 704]
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
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n00371_lit_charset_α
                                                                              jmp   n00372_assign_α
n00370_call_icon_β:      mov              r11, 448;                            jmp   n00371_lit_charset_α
                        .size            n00370_call_icon_bx, .-n00370_call_icon_bx
                        .type            n00372_assign_bx, @function
n00372_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_assign_α:         mov              r11, 449
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 96], rax             # blanker
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00371_lit_charset_α
                        .size            n00372_assign_bx, .-n00372_assign_bx
                        .type            n00371_lit_charset_bx, @function
n00371_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_lit_charset_α:    mov              r11, 450
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1133_0]
                        mov              qword ptr [rsp + 616], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1133_0]
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
.Llit_charset_α_1133_0: .quad            .Llit_charset_α_1133_0_s
.Llit_charset_α_1133_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n00371_lit_charset_bx, .-n00371_lit_charset_bx
                        .type            n00373_lit_integer_bx, @function
n00373_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_lit_integer_α:    mov              r11, 451
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1134_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00374_var_α
.Llit_integer_α_1134_0: .quad            1
                        .size            n00373_lit_integer_bx, .-n00373_lit_integer_bx
                        .type            n00374_var_bx, @function
n00374_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00374_var_α:            mov              r11, 452
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 656], rax           # result
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00375_binop_α
                        .size            n00374_var_bx, .-n00374_var_bx
                        .type            n00375_binop_bx, @function
n00375_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00375_binop_α:          mov              r11, 453
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 656]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1136_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rsp + 664]
                        add              rax, rdx
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   .Lbinop_α_1136_7
.Lbinop_α_1136_2:       and              edx, 1;                              jz    .Lbinop_α_1136_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rsp + 664]
                        cmp              al, 5;                               je    .Lbinop_α_1136_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1136_4
.Lbinop_α_1136_3:       movq             xmm0, rsi
.Lbinop_α_1136_4:       cmp              cl, 5;                               je    .Lbinop_α_1136_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1136_6
.Lbinop_α_1136_5:       movq             xmm1, rdi
.Lbinop_α_1136_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 672], 5
                        mov              qword ptr [rsp + 680], rax
.Lbinop_α_1136_7:                                                             jmp   n00376_subscript_α
.Lbinop_α_1136_0:       mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00377_var_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00376_subscript_α
                        .size            n00375_binop_bx, .-n00375_binop_bx
                        .type            n00376_subscript_bx, @function
n00376_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00376_subscript_α:      mov              r11, 454
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 640]
                        mov              rcx, qword ptr [rsp + 648]
                        mov              r8, qword ptr [rsp + 672]
                        mov              r9, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00377_var_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n00378_assign_α
                        .size            n00376_subscript_bx, .-n00376_subscript_bx
                        .type            n00378_assign_bx, @function
n00378_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00378_assign_α:         mov              r11, 455
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [r9 + 64], rax             # denom
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00377_var_α
                        .size            n00378_assign_bx, .-n00378_assign_bx
                        .type            n00377_var_bx, @function
n00377_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00377_var_α:            mov              r11, 456
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00379_lit_string_α
                        .size            n00377_var_bx, .-n00377_var_bx
                        .type            n00379_lit_string_bx, @function
n00379_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00379_lit_string_α:     mov              r11, 457
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1141_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00380_call_proc_staged_α
.Llit_string_α_1141_0:  .quad            .Llit_string_α_1141_0_s
.Llit_string_α_1141_0_s:
                        .string          "h+s+"
                        .size            n00379_lit_string_bx, .-n00379_lit_string_bx
                        .type            n00380_call_proc_staged_bx, @function
n00380_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00380_call_proc_staged_α:
                        mov              r11, 458
                        lea              rsi, [rsp + 544]
                        lea              rdx, [rsp + 560]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1143_2
.Lcall_proc_staged_α_1143_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1143_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
.Lcall_proc_staged_α_1143_29:
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n00381_disjunction_α
                                                                              jmp   n00382_assign_α
n00380_call_proc_staged_β:
                        mov              r11, 458;                            jmp   n00381_disjunction_α
.Lcall_proc_staged_β_1143_0:
                        .quad            .Lcall_proc_staged_β_1143_0_s
.Lcall_proc_staged_β_1143_0_s:
                        .string          "options"
                        .size            n00380_call_proc_staged_bx, .-n00380_call_proc_staged_bx
                        .type            n00382_assign_bx, @function
n00382_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00382_assign_α:         mov              r11, 459
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n00381_disjunction_α
                        .size            n00382_assign_bx, .-n00382_assign_bx
                        .type            n00381_disjunction_bx, @function
n00381_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00381_disjunction_α:    mov              r11, 460
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n00383_var_ref_α
.Ldisjunction_γ_1089_as:
                        mov              r11, 460
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1146_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00384_assign_α
.Ldisjunction_α_1146_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1146_1
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00384_assign_α
.Ldisjunction_α_1146_1:                                                       jmp   n00384_assign_α
n00381_disjunction_β:    mov              r11, 460
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1089_af
                                                                              jmp   .Ldisjunction_ω_1089_af
.Ldisjunction_γ_1089_af:
                        mov              r11, 460
.Ldisjunction_ω_1089_af:
                        mov              r11, 460
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n00385_lit_integer_α
                                                                              jmp   n00386_var_ref_α
                        .size            n00381_disjunction_bx, .-n00381_disjunction_bx
                        .type            n00384_assign_bx, @function
n00384_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00384_assign_α:         mov              r11, 461
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n00386_var_ref_α
                        .size            n00384_assign_bx, .-n00384_assign_bx
                        .type            n00386_var_ref_bx, @function
n00386_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00386_var_ref_α:        mov              r11, 462
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n00387_lit_string_α
                        .size            n00386_var_ref_bx, .-n00386_var_ref_bx
                        .type            n00387_lit_string_bx, @function
n00387_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00387_lit_string_α:     mov              r11, 463
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1150_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00388_subscript_α
.Llit_string_α_1150_0:  .quad            .Llit_string_α_1150_0_s
.Llit_string_α_1150_0_s:
                        .string          "s"
                        .size            n00387_lit_string_bx, .-n00387_lit_string_bx
                        .type            n00388_subscript_bx, @function
n00388_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00388_subscript_α:      mov              r11, 464
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00389_lit_integer_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00390_deref_α
                        .size            n00388_subscript_bx, .-n00388_subscript_bx
                        .type            n00390_deref_bx, @function
n00390_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00390_deref_α:          mov              r11, 465
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00389_lit_integer_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n00391_unop_test_α
                        .size            n00390_deref_bx, .-n00390_deref_bx
                        .type            n00391_unop_test_bx, @function
n00391_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00391_unop_test_α:      mov              r11, 466
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 104;                             je    n00389_lit_integer_α
                        cmp              eax, 0;                              je    n00389_lit_integer_α
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00392_kw_assign_α
                        .size            n00391_unop_test_bx, .-n00391_unop_test_bx
                        .type            n00392_kw_assign_bx, @function
n00392_kw_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00392_kw_assign_α:      mov              r11, 467
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_random_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00389_lit_integer_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n00389_lit_integer_α
                        .size            n00392_kw_assign_bx, .-n00392_kw_assign_bx
                        .type            n00389_lit_integer_bx, @function
n00389_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00389_lit_integer_α:    mov              r11, 468
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1155_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00393_var_α
.Llit_integer_α_1155_0: .quad            1
                        .size            n00389_lit_integer_bx, .-n00389_lit_integer_bx
                        .type            n00393_var_bx, @function
n00393_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00393_var_α:            mov              r11, 469
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00394_to_α
                        .size            n00393_var_bx, .-n00393_var_bx
                        .type            n00394_to_bx, @function
n00394_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00394_to_α:             mov              r11, 470
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 80], rax
.Lto_α_1159_0:          mov              rax, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jg    n00395_call_proc_staged_α
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax;           jmp   n00396_bound_α
n00394_to_β:             mov              r11, 470
                        inc              qword ptr [rsp + 80];                jmp   .Lto_α_1159_0
                        .size            n00394_to_bx, .-n00394_to_bx
                        .type            n00396_bound_bx, @function
n00396_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00396_bound_α:          mov              r11, 471
                        mov              qword ptr [rsp + 128], rsp;          jmp   n00397_call_proc_staged_α
                        .size            n00396_bound_bx, .-n00396_bound_bx
                        .type            n00397_call_proc_staged_bx, @function
n00397_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00397_call_proc_staged_α:
                        mov              r11, 472
                        call             display_dcα;                         jmp   .Lcall_proc_staged_α_1163_2
.Lcall_proc_staged_α_1163_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1163_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
.Lcall_proc_staged_α_1163_29:
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n00398_unmark_α
                                                                              jmp   n00398_unmark_α
n00397_call_proc_staged_β:
                        mov              r11, 472;                            jmp   n00398_unmark_α
.Lcall_proc_staged_β_1163_0:
                        .quad            .Lcall_proc_staged_β_1163_0_s
.Lcall_proc_staged_β_1163_0_s:
                        .string          "display"
                        .size            n00397_call_proc_staged_bx, .-n00397_call_proc_staged_bx
                        .type            n00398_unmark_bx, @function
n00398_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00398_unmark_α:         mov              r11, 473
                        mov              rsp, qword ptr [rsp + 128];          jmp   n00394_to_β
                        .size            n00398_unmark_bx, .-n00398_unmark_bx
                        .type            n00395_call_proc_staged_bx, @function
n00395_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00395_call_proc_staged_α:
                        mov              r11, 474
                        call             Term___dcα;                          jmp   .Lcall_proc_staged_α_1167_2
.Lcall_proc_staged_α_1167_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1167_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lcall_proc_staged_α_1167_29:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00395_call_proc_staged_β:
                        mov              r11, 474;                            jmp   main_ω
.Lcall_proc_staged_β_1167_0:
                        .quad            .Lcall_proc_staged_β_1167_0_s
.Lcall_proc_staged_β_1167_0_s:
                        .string          "Term__"
                        .size            n00395_call_proc_staged_bx, .-n00395_call_proc_staged_bx
                        .type            n00385_lit_integer_bx, @function
n00385_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00385_lit_integer_α:    mov              r11, 475
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1168_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   .Ldisjunction_γ_1089_as
n00385_lit_integer_β:    mov              r11, 475;                            jmp   .Ldisjunction_ω_1089_af
.Llit_integer_α_1168_0: .quad            1
                        .size            n00385_lit_integer_bx, .-n00385_lit_integer_bx
                        .type            n00383_var_ref_bx, @function
n00383_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00383_var_ref_α:        mov              r11, 476
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00399_lit_string_α
n00383_var_ref_β:        mov              r11, 476;                            jmp   .Ldisjunction_ω_1089_af
                        .size            n00383_var_ref_bx, .-n00383_var_ref_bx
                        .type            n00399_lit_string_bx, @function
n00399_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00399_lit_string_α:     mov              r11, 477
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1171_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00400_subscript_α
.Llit_string_α_1171_0:  .quad            .Llit_string_α_1171_0_s
.Llit_string_α_1171_0_s:
                        .string          "h"
                        .size            n00399_lit_string_bx, .-n00399_lit_string_bx
                        .type            n00400_subscript_bx, @function
n00400_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00400_subscript_α:      mov              r11, 478
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1089_af
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00401_deref_α
                        .size            n00400_subscript_bx, .-n00400_subscript_bx
                        .type            n00401_deref_bx, @function
n00401_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00401_deref_α:          mov              r11, 479
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1089_af
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00402_unop_test_α
                        .size            n00401_deref_bx, .-n00401_deref_bx
                        .type            n00402_unop_test_bx, @function
n00402_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00402_unop_test_α:      mov              r11, 480
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1089_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1089_af
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 376], rax;          jmp   .Ldisjunction_γ_1089_as
n00402_unop_test_β:      mov              r11, 480;                            jmp   .Ldisjunction_ω_1089_af
                        .size            n00402_unop_test_bx, .-n00402_unop_test_bx
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
