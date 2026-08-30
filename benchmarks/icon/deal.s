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
                        add              rsp, 1936;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
display_ω:
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
show_α_body:
                        .type            n189_disjunction_bx, @function
n189_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_disjunction_α:     mov              r11, 79
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n190_var_ref_α
.Ldisjunction_γ_189_as: mov              r11, 79
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_246_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax;          jmp   n223_lit_string_α
.Ldisjunction_α_246_0:                                                        jmp   n223_lit_string_α
n189_disjunction_β:     mov              r11, 79
                        mov              eax, dword ptr [rsp + 704];          jmp   n223_lit_string_α
.Ldisjunction_γ_189_af: mov              r11, 79
.Ldisjunction_ω_189_af: mov              r11, 79
                        add              dword ptr [rsp + 704], 1
                        mov              eax, dword ptr [rsp + 704];          jmp   n223_lit_string_α
                        .size            n189_disjunction_bx, .-n189_disjunction_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                      # show__INITFLAG__0
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n191_nulltest_var_α
n190_var_ref_β:         mov              r11, 80;                             jmp   .Ldisjunction_ω_189_af
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_nulltest_var_bx, @function
n191_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_nulltest_var_α:    mov              r11, 81
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
                        mov              qword ptr [rsp + 1368], rax;         jmp   n192_lit_integer_α
                        .size            n191_nulltest_var_bx, .-n191_nulltest_var_bx
                        .type            n192_lit_integer_bx, @function
n192_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_250_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n193_assign_var_α
.Llit_integer_α_250_0:  .quad            1
                        .size            n192_lit_integer_bx, .-n192_lit_integer_bx
                        .type            n193_assign_var_bx, @function
n193_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_var_α:      mov              r11, 83
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
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n194_var_α
                        .size            n193_assign_var_bx, .-n193_assign_var_bx
                        .type            n194_var_bx, @function
n194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             mov              r11, 84
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1232], rax          # result
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n195_var_α
                        .size            n194_var_bx, .-n194_var_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             mov              r11, 85
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1312], rax          # result
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n196_lit_integer_α
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_lit_integer_bx, @function
n196_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rsp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_254_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n197_call_icon_α
.Llit_integer_α_254_0:  .quad            3
                        .size            n196_lit_integer_bx, .-n196_lit_integer_bx
                        .type            n197_call_icon_bx, @function
n197_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_icon_α:       mov              r11, 87
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
                        cmp              al, 104;                             je    n200_var_α
                                                                              jmp   n198_binop_α
n197_call_icon_β:       mov              r11, 87;                             jmp   n200_var_α
                        .size            n197_call_icon_bx, .-n197_call_icon_bx
                        .type            n198_binop_bx, @function
n198_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           mov              r11, 88
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n199_assign_α
                        .size            n198_binop_bx, .-n198_binop_bx
                        .type            n199_assign_bx, @function
n199_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_α:          mov              r11, 89
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [r9 + 208], rax            # show__STATIC__clubmap
                        mov              qword ptr [r9 + 216], rdx;           jmp   n200_var_α
                        .size            n199_assign_bx, .-n199_assign_bx
                        .type            n200_var_bx, @function
n200_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             mov              r11, 90
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1088], rax          # result
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n201_var_α
                        .size            n200_var_bx, .-n200_var_bx
                        .type            n201_var_bx, @function
n201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             mov              r11, 91
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1104], rax          # result
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n202_binop_α
                        .size            n201_var_bx, .-n201_var_bx
                        .type            n202_binop_bx, @function
n202_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_binop_α:           mov              r11, 92
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_var_α
                        .size            n202_binop_bx, .-n202_binop_bx
                        .type            n203_var_bx, @function
n203_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             mov              r11, 93
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1184], rax          # result
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n204_lit_integer_α
                        .size            n203_var_bx, .-n203_var_bx
                        .type            n204_lit_integer_bx, @function
n204_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_263_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n205_call_icon_α
.Llit_integer_α_263_0:  .quad            2
                        .size            n204_lit_integer_bx, .-n204_lit_integer_bx
                        .type            n205_call_icon_bx, @function
n205_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_call_icon_α:       mov              r11, 95
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
                        cmp              al, 104;                             je    n208_var_α
                                                                              jmp   n206_binop_α
n205_call_icon_β:       mov              r11, 95;                             jmp   n208_var_α
                        .size            n205_call_icon_bx, .-n205_call_icon_bx
                        .type            n206_binop_bx, @function
n206_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:           mov              r11, 96
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_assign_α
                        .size            n206_binop_bx, .-n206_binop_bx
                        .type            n207_assign_bx, @function
n207_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:          mov              r11, 97
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [r9 + 224], rax            # show__STATIC__diamondmap
                        mov              qword ptr [r9 + 232], rdx;           jmp   n208_var_α
                        .size            n207_assign_bx, .-n207_assign_bx
                        .type            n208_var_bx, @function
n208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             mov              r11, 98
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 992], rax           # result
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n209_lit_integer_α
                        .size            n208_var_bx, .-n208_var_bx
                        .type            n209_lit_integer_bx, @function
n209_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_269_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n210_call_icon_α
.Llit_integer_α_269_0:  .quad            2
                        .size            n209_lit_integer_bx, .-n209_lit_integer_bx
                        .type            n210_call_icon_bx, @function
n210_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_icon_α:       mov              r11, 100
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
                        cmp              al, 104;                             je    n216_var_α
                                                                              jmp   n211_var_α
n210_call_icon_β:       mov              r11, 100;                            jmp   n216_var_α
                        .size            n210_call_icon_bx, .-n210_call_icon_bx
                        .type            n211_var_bx, @function
n211_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             mov              r11, 101
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1024], rax          # result
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n212_binop_α
                        .size            n211_var_bx, .-n211_var_bx
                        .type            n212_binop_bx, @function
n212_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_binop_α:           mov              r11, 102
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n213_var_α
                        .size            n212_binop_bx, .-n212_binop_bx
                        .type            n213_var_bx, @function
n213_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             mov              r11, 103
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1040], rax          # result
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n214_binop_α
                        .size            n213_var_bx, .-n213_var_bx
                        .type            n214_binop_bx, @function
n214_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_binop_α:           mov              r11, 104
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n215_assign_α
                        .size            n214_binop_bx, .-n214_binop_bx
                        .type            n215_assign_bx, @function
n215_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [r9 + 240], rax            # show__STATIC__heartmap
                        mov              qword ptr [r9 + 248], rdx;           jmp   n216_var_α
                        .size            n215_assign_bx, .-n215_assign_bx
                        .type            n216_var_bx, @function
n216_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             mov              r11, 106
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 832], rax           # result
                        mov              qword ptr [rsp + 840], rdx;          jmp   n217_lit_integer_α
                        .size            n216_var_bx, .-n216_var_bx
                        .type            n217_lit_integer_bx, @function
n217_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_278_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n218_call_icon_α
.Llit_integer_α_278_0:  .quad            3
                        .size            n217_lit_integer_bx, .-n217_lit_integer_bx
                        .type            n218_call_icon_bx, @function
n218_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_icon_α:       mov              r11, 108
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
                        cmp              al, 104;                             je    n223_lit_string_α
                                                                              jmp   n219_var_α
n218_call_icon_β:       mov              r11, 108;                            jmp   n223_lit_string_α
                        .size            n218_call_icon_bx, .-n218_call_icon_bx
                        .type            n219_var_bx, @function
n219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             mov              r11, 109
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 864], rax           # result
                        mov              qword ptr [rsp + 872], rdx;          jmp   n220_binop_α
                        .size            n219_var_bx, .-n219_var_bx
                        .type            n220_binop_bx, @function
n220_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_α:           mov              r11, 110
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n221_assign_α
                        .size            n220_binop_bx, .-n220_binop_bx
                        .type            n221_assign_bx, @function
n221_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [r9 + 256], rax            # show__STATIC__spademap
                        mov              qword ptr [r9 + 264], rdx
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n222_conjunction_α
                        .size            n221_assign_bx, .-n221_assign_bx
                        .type            n222_conjunction_bx, @function
n222_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_conjunction_α:     mov              r11, 112
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 728], rax;          jmp   .Ldisjunction_γ_189_as
n222_conjunction_β:     mov              r11, 112;                            jmp   n223_lit_string_α
                        .size            n222_conjunction_bx, .-n222_conjunction_bx
                        .type            n223_lit_string_bx, @function
n223_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_285_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n224_var_α
.Llit_string_α_285_0:   .quad            .Llit_string_α_285_0_s
.Llit_string_α_285_0_s: .string          "S: "
                        .size            n223_lit_string_bx, .-n223_lit_string_bx
                        .type            n224_var_bx, @function
n224_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n225_var_α
                        .size            n224_var_bx, .-n224_var_bx
                        .type            n225_var_bx, @function
n225_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             mov              r11, 115
                        mov              rax, qword ptr [r9 + 256]            # show__STATIC__spademap
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 240], rax           # result
                        mov              qword ptr [rsp + 248], rdx;          jmp   n226_call_proc_staged_α
                        .size            n225_var_bx, .-n225_var_bx
                        .type            n226_call_proc_staged_bx, @function
n226_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
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
                                                                              jmp   n227_binop_α
n226_call_proc_staged_β:
                        mov              r11, 116;                            jmp   show_ω
.Lcall_proc_staged_β_290_0:
                        .quad            .Lcall_proc_staged_β_290_0_s
.Lcall_proc_staged_β_290_0_s:
                        .string          "arrange"
                        .size            n226_call_proc_staged_bx, .-n226_call_proc_staged_bx
                        .type            n227_binop_bx, @function
n227_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_binop_α:           mov              r11, 117
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n228_lit_string_α
                        .size            n227_binop_bx, .-n227_binop_bx
                        .type            n228_lit_string_bx, @function
n228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_292_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n229_var_α
.Llit_string_α_292_0:   .quad            .Llit_string_α_292_0_s
.Llit_string_α_292_0_s: .string          "H: "
                        .size            n228_lit_string_bx, .-n228_lit_string_bx
                        .type            n229_var_bx, @function
n229_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             mov              r11, 119
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n230_var_α
                        .size            n229_var_bx, .-n229_var_bx
                        .type            n230_var_bx, @function
n230_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             mov              r11, 120
                        mov              rax, qword ptr [r9 + 240]            # show__STATIC__heartmap
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 384], rax           # result
                        mov              qword ptr [rsp + 392], rdx;          jmp   n231_call_proc_staged_α
                        .size            n230_var_bx, .-n230_var_bx
                        .type            n231_call_proc_staged_bx, @function
n231_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_proc_staged_α:
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
                                                                              jmp   n232_binop_α
n231_call_proc_staged_β:
                        mov              r11, 121;                            jmp   show_ω
.Lcall_proc_staged_β_297_0:
                        .quad            .Lcall_proc_staged_β_297_0_s
.Lcall_proc_staged_β_297_0_s:
                        .string          "arrange"
                        .size            n231_call_proc_staged_bx, .-n231_call_proc_staged_bx
                        .type            n232_binop_bx, @function
n232_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_α:           mov              r11, 122
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_lit_string_α
                        .size            n232_binop_bx, .-n232_binop_bx
                        .type            n233_lit_string_bx, @function
n233_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_299_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n234_var_α
.Llit_string_α_299_0:   .quad            .Llit_string_α_299_0_s
.Llit_string_α_299_0_s: .string          "D: "
                        .size            n233_lit_string_bx, .-n233_lit_string_bx
                        .type            n234_var_bx, @function
n234_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 520], rax;          jmp   n235_var_α
                        .size            n234_var_bx, .-n234_var_bx
                        .type            n235_var_bx, @function
n235_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             mov              r11, 125
                        mov              rax, qword ptr [r9 + 224]            # show__STATIC__diamondmap
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 528], rax           # result
                        mov              qword ptr [rsp + 536], rdx;          jmp   n236_call_proc_staged_α
                        .size            n235_var_bx, .-n235_var_bx
                        .type            n236_call_proc_staged_bx, @function
n236_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_proc_staged_α:
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
                                                                              jmp   n237_binop_α
n236_call_proc_staged_β:
                        mov              r11, 126;                            jmp   show_ω
.Lcall_proc_staged_β_304_0:
                        .quad            .Lcall_proc_staged_β_304_0_s
.Lcall_proc_staged_β_304_0_s:
                        .string          "arrange"
                        .size            n236_call_proc_staged_bx, .-n236_call_proc_staged_bx
                        .type            n237_binop_bx, @function
n237_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_binop_α:           mov              r11, 127
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n238_lit_string_α
                        .size            n237_binop_bx, .-n237_binop_bx
                        .type            n238_lit_string_bx, @function
n238_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_306_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n239_var_α
.Llit_string_α_306_0:   .quad            .Llit_string_α_306_0_s
.Llit_string_α_306_0_s: .string          "C: "
                        .size            n238_lit_string_bx, .-n238_lit_string_bx
                        .type            n239_var_bx, @function
n239_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 664], rax;          jmp   n240_var_α
                        .size            n239_var_bx, .-n239_var_bx
                        .type            n240_var_bx, @function
n240_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             mov              r11, 130
                        mov              rax, qword ptr [r9 + 208]            # show__STATIC__clubmap
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 672], rax           # result
                        mov              qword ptr [rsp + 680], rdx;          jmp   n241_call_proc_staged_α
                        .size            n240_var_bx, .-n240_var_bx
                        .type            n241_call_proc_staged_bx, @function
n241_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_proc_staged_α:
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
                                                                              jmp   n242_binop_α
n241_call_proc_staged_β:
                        mov              r11, 131;                            jmp   show_ω
.Lcall_proc_staged_β_311_0:
                        .quad            .Lcall_proc_staged_β_311_0_s
.Lcall_proc_staged_β_311_0_s:
                        .string          "arrange"
                        .size            n241_call_proc_staged_bx, .-n241_call_proc_staged_bx
                        .type            n242_binop_bx, @function
n242_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           mov              r11, 132
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_make_list_α
                        .size            n242_binop_bx, .-n242_binop_bx
                        .type            n243_make_list_bx, @function
n243_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_make_list_α:       mov              r11, 133
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
                        mov              qword ptr [rsp + 40], rdx;           jmp   n244_return_α
                        .size            n243_make_list_bx, .-n243_make_list_bx
                        .type            n244_return_bx, @function
n244_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_return_α:          mov              r11, 134
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   show_γ
                        .size            n244_return_bx, .-n244_return_bx
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
                        add              rsp, 1472;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
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
arrange_α_body:
                        .type            n317_var_bx, @function
n317_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             mov              r11, 135
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n318_var_α
                        .size            n317_var_bx, .-n317_var_bx
                        .type            n318_var_bx, @function
n318_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             mov              r11, 136
                        mov              rax, qword ptr [r9 + 16]             # deckimage
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 240], rax           # result
                        mov              qword ptr [rsp + 248], rdx;          jmp   n319_var_α
                        .size            n318_var_bx, .-n318_var_bx
                        .type            n319_var_bx, @function
n319_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:             mov              r11, 137
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 264], rax;          jmp   n320_call_icon_α
                        .size            n319_var_bx, .-n319_var_bx
                        .type            n320_call_icon_bx, @function
n320_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_call_icon_α:       mov              r11, 138
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
                                                                              jmp   n321_lit_charset_α
n320_call_icon_β:       mov              r11, 138;                            jmp   arrange_ω
                        .size            n320_call_icon_bx, .-n320_call_icon_bx
                        .type            n321_lit_charset_bx, @function
n321_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_charset_α:     mov              r11, 139
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
                        pop              rax;                                 jmp   n322_binop_α
.Llit_charset_α_334_0:  .quad            .Llit_charset_α_334_0_s
.Llit_charset_α_334_0_s:
                        .string          " "
                        .size            n321_lit_charset_bx, .-n321_lit_charset_bx
                        .type            n322_binop_bx, @function
n322_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_binop_α:           mov              r11, 140
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
                        mov              qword ptr [rsp + 136], rdx;          jmp   n323_var_α
                        .size            n322_binop_bx, .-n322_binop_bx
                        .type            n323_var_bx, @function
n323_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             mov              r11, 141
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 304], rax           # result
                        mov              qword ptr [rsp + 312], rdx;          jmp   n324_var_α
                        .size            n323_var_bx, .-n323_var_bx
                        .type            n324_var_bx, @function
n324_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             mov              r11, 142
                        mov              rax, qword ptr [r9 + 80]             # rank
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n325_call_icon_α
                        .size            n324_var_bx, .-n324_var_bx
                        .type            n325_call_icon_bx, @function
n325_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_icon_α:       mov              r11, 143
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
                                                                              jmp   n326_return_α
n325_call_icon_β:       mov              r11, 143;                            jmp   arrange_ω
                        .size            n325_call_icon_bx, .-n325_call_icon_bx
                        .type            n326_return_bx, @function
n326_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_return_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   arrange_γ
                        .size            n326_return_bx, .-n326_return_bx
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
                        add              rsp, 416;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
arrange_ω:
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
                        sub              rsp, 3216
                        mov              rdi, rsp
                        add              rdi, 2880
                        xor              eax, eax
                        mov              ecx, 144
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
options_α_body:
                        .type            n342_var_ref_bx, @function
n342_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n343_nulltest_var_α
                        .size            n342_var_ref_bx, .-n342_var_ref_bx
                        .type            n343_nulltest_var_bx, @function
n343_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_nulltest_var_α:    mov              r11, 146
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              al, 104;                             je    n347_call_icon_α
                        mov              rdi, qword ptr [rsp + 2752]
                        mov              rsi, qword ptr [rsp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n347_call_icon_α
                        cmp              eax, 0;                              jne   n347_call_icon_α
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n344_lit_charset_α
                        .size            n343_nulltest_var_bx, .-n343_nulltest_var_bx
                        .type            n344_lit_charset_bx, @function
n344_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_charset_α:     mov              r11, 147
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_454_0]
                        mov              qword ptr [rsp + 2856], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_454_0]
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
                        pop              rax;                                 jmp   n345_call_icon_α
.Llit_charset_α_454_0:  .quad            .Llit_charset_α_454_0_s
.Llit_charset_α_454_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n344_lit_charset_bx, .-n344_lit_charset_bx
                        .type            n345_call_icon_bx, @function
n345_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_icon_α:       mov              r11, 148
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn456:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn456]
                        lea              rsi, [rsp + 2816]
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
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    n347_call_icon_α
                                                                              jmp   n346_assign_var_α
n345_call_icon_β:       mov              r11, 148;                            jmp   n347_call_icon_α
                        .size            n345_call_icon_bx, .-n345_call_icon_bx
                        .type            n346_assign_var_bx, @function
n346_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_assign_var_α:      mov              r11, 149
                        mov              rdi, qword ptr [rsp + 2768]
                        mov              rsi, qword ptr [rsp + 2776]
                        mov              rdx, qword ptr [rsp + 2800]
                        mov              rcx, qword ptr [rsp + 2808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n347_call_icon_α
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n347_call_icon_α
                        .size            n346_assign_var_bx, .-n346_assign_var_bx
                        .type            n347_call_icon_bx, @function
n347_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_call_icon_α:       mov              r11, 150
                        .section         .rodata
.Lcall_icon_α_rkfn459:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn459]
                        lea              rsi, [rsp + 2736]
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
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              al, 104;                             je    n349_make_list_α
                                                                              jmp   n348_assign_α
n347_call_icon_β:       mov              r11, 150;                            jmp   n349_make_list_α
                        .size            n347_call_icon_bx, .-n347_call_icon_bx
                        .type            n348_assign_bx, @function
n348_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n349_make_list_α
                        .size            n348_assign_bx, .-n348_assign_bx
                        .type            n349_make_list_bx, @function
n349_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_make_list_α:       mov              r11, 152
                        lea              rdi, [rsp + 2720]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n350_assign_α
                        .size            n349_make_list_bx, .-n349_make_list_bx
                        .type            n350_assign_bx, @function
n350_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:          mov              r11, 153
                        mov              rax, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n351_var_α
                        .size            n350_assign_bx, .-n350_assign_bx
                        .type            n351_var_bx, @function
n351_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n352_call_icon_α
                        .size            n351_var_bx, .-n351_var_bx
                        .type            n352_call_icon_bx, @function
n352_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_icon_α:       mov              r11, 155
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn467:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn467]
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
                        cmp              al, 104;                             je    n445_var_α
                                                                              jmp   n353_assign_α
n352_call_icon_β:       mov              r11, 155;                            jmp   n445_var_α
                        .size            n352_call_icon_bx, .-n352_call_icon_bx
                        .type            n353_assign_bx, @function
n353_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_α:          mov              r11, 156
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n354_var_α
                        .size            n353_assign_bx, .-n353_assign_bx
                        .type            n354_var_bx, @function
n354_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n355_scan_enter_α
                        .size            n354_var_bx, .-n354_var_bx
                        .type            n355_scan_enter_bx, @function
n355_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_scan_enter_α:      mov              r11, 158
                        mov              qword ptr [rsp + 320], r13
                        mov              qword ptr [rsp + 328], r14
                        mov              qword ptr [rsp + 336], r15
                        mov              rdi, qword ptr [rsp + 2688]
                        mov              rsi, qword ptr [rsp + 2696]
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
                        mov              r14, 0;                              jmp   n356_disjunction_α
                        .size            n355_scan_enter_bx, .-n355_scan_enter_bx
                        .type            n356_disjunction_bx, @function
n356_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_disjunction_α:     mov              r11, 159
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              dword ptr [rsp + 400], 0;            jmp   n362_lit_string_α
.Ldisjunction_γ_356_as: mov              r11, 159
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_474_0
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 392], rax;          jmp   n357_scan_α
.Ldisjunction_α_474_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_474_1
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 392], rax;          jmp   n357_scan_α
.Ldisjunction_α_474_1:                                                        jmp   n357_scan_α
n356_disjunction_β:     mov              r11, 159
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              je    n373_disjunction_β
                                                                              jmp   n435_scan_α
.Ldisjunction_γ_356_af: mov              r11, 159
.Ldisjunction_ω_356_af: mov              r11, 159
                        add              dword ptr [rsp + 400], 1
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 1;                              je    n359_var_α
                                                                              jmp   n435_scan_α
                        .size            n356_disjunction_bx, .-n356_disjunction_bx
                        .type            n357_scan_bx, @function
n357_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_scan_α:            mov              r11, 160
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
                        mov              r15, qword ptr [rsp + 336];          jmp   n351_var_α
n357_scan_β:            mov              r11, 160
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
                        mov              r14, rax;                            jmp   n356_disjunction_β
                                                                              jmp   n351_var_α
                        .size            n357_scan_bx, .-n357_scan_bx
                        .type            n358_conjunction_bx, @function
n358_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_conjunction_α:     mov              r11, 161;                            jmp   .Ldisjunction_γ_356_as
n358_conjunction_β:     mov              r11, 161;                            jmp   n435_scan_α
                        .size            n358_conjunction_bx, .-n358_conjunction_bx
                        .type            n359_var_bx, @function
n359_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             mov              r11, 162
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n360_var_α
n359_var_β:             mov              r11, 162;                            jmp   n435_scan_α
                        .size            n359_var_bx, .-n359_var_bx
                        .type            n360_var_bx, @function
n360_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n361_call_icon_α
                        .size            n360_var_bx, .-n360_var_bx
                        .type            n361_call_icon_bx, @function
n361_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_icon_α:       mov              r11, 164
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2616], rax
                        .section         .rodata
.Lcall_icon_α_rkfn483:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn483]
                        lea              rsi, [rsp + 2608]
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
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    n435_scan_α
                                                                              jmp   .Ldisjunction_γ_356_as
n361_call_icon_β:       mov              r11, 164;                            jmp   n435_scan_α
                        .size            n361_call_icon_bx, .-n361_call_icon_bx
                        .type            n362_lit_string_bx, @function
n362_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_484_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n363_scan_match_α
n362_lit_string_β:      mov              r11, 165;                            jmp   .Ldisjunction_ω_356_af
.Llit_string_α_484_0:   .quad            .Llit_string_α_484_0_s
.Llit_string_α_484_0_s: .string          "-"
                        .size            n362_lit_string_bx, .-n362_lit_string_bx
                        .type            n363_scan_match_bx, @function
n363_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_scan_match_α:      mov              r11, 166
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_356_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_486_0]
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
                        mov              qword ptr [rsp + 2528], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2536], rax;         jmp   n364_scan_tab_α
.Lscan_match_α_486_0:   .quad            .Lscan_match_α_486_0_s
.Lscan_match_α_486_0_s: .string          "-"
                        .size            n363_scan_match_bx, .-n363_scan_match_bx
                        .type            n364_scan_tab_bx, @function
n364_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_scan_tab_α:        mov              r11, 167
                        mov              rax, qword ptr [rsp + 2536]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_488_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_488_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_356_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_356_af
                        mov              qword ptr [rsp + 2512], r14
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
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n365_lit_integer_α
n364_scan_tab_β:        mov              r11, 167
                        mov              r14, qword ptr [rsp + 2512];         jmp   .Ldisjunction_ω_356_af
                        .size            n364_scan_tab_bx, .-n364_scan_tab_bx
                        .type            n365_lit_integer_bx, @function
n365_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_489_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n366_scan_pos_α
.Llit_integer_α_489_0:  .quad            0
                        .size            n365_lit_integer_bx, .-n365_lit_integer_bx
                        .type            n366_scan_pos_bx, @function
n366_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_scan_pos_α:        mov              r11, 169
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_491_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_491_0:     cmp              rax, 1;                              jl    n367_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n367_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n367_var_α
                        mov              qword ptr [rsp + 2464], 3
                        mov              qword ptr [rsp + 2472], rax;         jmp   n364_scan_tab_β
                        .size            n366_scan_pos_bx, .-n366_scan_pos_bx
                        .type            n367_var_bx, @function
n367_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             mov              r11, 170
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0;           jmp   n368_conjunction_α
n367_var_β:             mov              r11, 170;                            jmp   n364_scan_tab_β
                        .size            n367_var_bx, .-n367_var_bx
                        .type            n368_conjunction_bx, @function
n368_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_conjunction_α:     mov              r11, 171
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n369_disjunction_α
n368_conjunction_β:     mov              r11, 171;                            jmp   .Ldisjunction_ω_356_af
                        .size            n368_conjunction_bx, .-n368_conjunction_bx
                        .type            n369_disjunction_bx, @function
n369_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_disjunction_α:     mov              r11, 172
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n436_lit_string_α
.Ldisjunction_γ_369_as: mov              r11, 172
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_495_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n370_lit_integer_α
.Ldisjunction_α_495_0:                                                        jmp   n370_lit_integer_α
n369_disjunction_β:     mov              r11, 172
                        mov              eax, dword ptr [rsp + 2256];         jmp   n370_lit_integer_α
.Ldisjunction_γ_369_af: mov              r11, 172
.Ldisjunction_ω_369_af: mov              r11, 172
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256];         jmp   n370_lit_integer_α
                        .size            n369_disjunction_bx, .-n369_disjunction_bx
                        .type            n370_lit_integer_bx, @function
n370_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_496_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n371_scan_move_α
.Llit_integer_α_496_0:  .quad            1
                        .size            n370_lit_integer_bx, .-n370_lit_integer_bx
                        .type            n371_scan_move_bx, @function
n371_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_scan_move_α:       mov              r11, 174
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n435_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n435_scan_α
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
                        mov              qword ptr [rsp + 456], rdx;          jmp   n372_assign_α
n371_scan_move_β:       mov              r11, 174
                        mov              r14, qword ptr [rsp + 464];          jmp   n435_scan_α
                        .size            n371_scan_move_bx, .-n371_scan_move_bx
                        .type            n372_assign_bx, @function
n372_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n373_disjunction_α
                        .size            n372_assign_bx, .-n372_assign_bx
                        .type            n373_disjunction_bx, @function
n373_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_disjunction_α:     mov              r11, 176
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n377_var_α
.Ldisjunction_γ_373_as: mov              r11, 176
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_501_0
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 504], rax;          jmp   n370_lit_integer_α
.Ldisjunction_α_501_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_501_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 504], rax;          jmp   n370_lit_integer_α
.Ldisjunction_α_501_1:                                                        jmp   n370_lit_integer_α
n373_disjunction_β:     mov              r11, 176
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n387_disjunction_β
                                                                              jmp   n370_lit_integer_α
.Ldisjunction_γ_373_af: mov              r11, 176
.Ldisjunction_ω_373_af: mov              r11, 176
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n374_lit_string_α
                                                                              jmp   n370_lit_integer_α
                        .size            n373_disjunction_bx, .-n373_disjunction_bx
                        .type            n374_lit_string_bx, @function
n374_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_502_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n375_var_α
n374_lit_string_β:      mov              r11, 177;                            jmp   n370_lit_integer_α
.Llit_string_α_502_0:   .quad            .Llit_string_α_502_0_s
.Llit_string_α_502_0_s: .string          "Unrecognized option: -"
                        .size            n374_lit_string_bx, .-n374_lit_string_bx
                        .type            n375_var_bx, @function
n375_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n376_call_icon_α
                        .size            n375_var_bx, .-n375_var_bx
                        .type            n376_call_icon_bx, @function
n376_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_call_icon_α:       mov              r11, 179
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn506:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn506]
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
                        cmp              al, 104;                             je    n370_lit_integer_α
                                                                              jmp   .Ldisjunction_γ_373_as
n376_call_icon_β:       mov              r11, 179;                            jmp   n370_lit_integer_α
                        .size            n376_call_icon_bx, .-n376_call_icon_bx
                        .type            n377_var_bx, @function
n377_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n378_var_α
n377_var_β:             mov              r11, 180;                            jmp   .Ldisjunction_ω_373_af
                        .size            n377_var_bx, .-n377_var_bx
                        .type            n378_var_bx, @function
n378_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n379_call_builtin_gen_α
                        .size            n378_var_bx, .-n378_var_bx
                        .type            n379_call_builtin_gen_bx, @function
n379_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_gen_α:
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
.Lcall_builtin_gen_α_511_60:
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
                                                                              jmp   n380_lit_integer_α
n379_call_builtin_gen_β:
                        mov              r11, 182;                            jmp   .Lcall_builtin_gen_α_511_60
                        .size            n379_call_builtin_gen_bx, .-n379_call_builtin_gen_bx
                        .type            n380_lit_integer_bx, @function
n380_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_512_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n381_coerce_numeric_α
.Llit_integer_α_512_0:  .quad            1
                        .size            n380_lit_integer_bx, .-n380_lit_integer_bx
                        .type            n381_coerce_numeric_bx, @function
n381_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_coerce_numeric_α:  mov              r11, 184
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_514_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_514_0
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_514_0
.Lcoerce_numeric_α_514_1:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n382_binop_α
.Lcoerce_numeric_α_514_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n382_binop_α
                        .size            n381_coerce_numeric_bx, .-n381_coerce_numeric_bx
                        .type            n382_binop_bx, @function
n382_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_binop_α:           mov              r11, 185
                        mov              eax, dword ptr [rsp + 2000]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_515_2
                        mov              rax, qword ptr [rsp + 2008]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1984], 3
                        mov              qword ptr [rsp + 1992], rax;         jmp   .Lbinop_α_515_7
.Lbinop_α_515_2:        and              edx, 1;                              jz    .Lbinop_α_515_0
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_515_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_515_4
.Lbinop_α_515_3:        movq             xmm0, rsi
.Lbinop_α_515_4:        cmp              cl, 5;                               je    .Lbinop_α_515_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_515_6
.Lbinop_α_515_5:        movq             xmm1, rdi
.Lbinop_α_515_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1984], 5
                        mov              qword ptr [rsp + 1992], rax
.Lbinop_α_515_7:                                                              jmp   n383_assign_α
.Lbinop_α_515_0:        mov              rdi, qword ptr [rsp + 2000]
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
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n383_assign_α
                        .size            n382_binop_bx, .-n382_binop_bx
                        .type            n383_assign_bx, @function
n383_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n384_var_ref_α
                        .size            n383_assign_bx, .-n383_assign_bx
                        .type            n384_var_ref_bx, @function
n384_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2880]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n385_var_α
                        .size            n384_var_ref_bx, .-n384_var_ref_bx
                        .type            n385_var_bx, @function
n385_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 552], rax;          jmp   n386_subscript_α
                        .size            n385_var_bx, .-n385_var_bx
                        .type            n386_subscript_bx, @function
n386_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_subscript_α:       mov              r11, 189
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
                        cmp              al, 104;                             je    n370_lit_integer_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n387_disjunction_α
                        .size            n386_subscript_bx, .-n386_subscript_bx
                        .type            n387_disjunction_bx, @function
n387_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_disjunction_α:     mov              r11, 190
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n390_lit_charset_α
.Ldisjunction_γ_387_as: mov              r11, 190
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_523_0
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 600], rax;          jmp   n388_assign_var_α
.Ldisjunction_α_523_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_523_1
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 600], rax;          jmp   n388_assign_var_α
.Ldisjunction_α_523_1:                                                        jmp   n388_assign_var_α
n387_disjunction_β:     mov              r11, 190
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n370_lit_integer_α
                                                                              jmp   n370_lit_integer_α
.Ldisjunction_γ_387_af: mov              r11, 190
.Ldisjunction_ω_387_af: mov              r11, 190
                        add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n389_lit_integer_α
                                                                              jmp   n370_lit_integer_α
                        .size            n387_disjunction_bx, .-n387_disjunction_bx
                        .type            n388_assign_var_bx, @function
n388_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_var_α:      mov              r11, 191
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
                        cmp              al, 104;                             je    n370_lit_integer_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   .Ldisjunction_γ_373_as
n388_assign_var_β:      mov              r11, 191;                            jmp   n370_lit_integer_α
                        .size            n388_assign_var_bx, .-n388_assign_var_bx
                        .type            n389_lit_integer_bx, @function
n389_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     mov              r11, 192
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_525_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   .Ldisjunction_γ_387_as
n389_lit_integer_β:     mov              r11, 192;                            jmp   n370_lit_integer_α
.Llit_integer_α_525_0:  .quad            1
                        .size            n389_lit_integer_bx, .-n389_lit_integer_bx
                        .type            n390_lit_charset_bx, @function
n390_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_charset_α:     mov              r11, 193
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_526_0]
                        mov              qword ptr [rsp + 1864], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_526_0]
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
                        pop              rax;                                 jmp   n391_var_ref_α
n390_lit_charset_β:     mov              r11, 193;                            jmp   .Ldisjunction_ω_387_af
.Llit_charset_α_526_0:  .quad            .Llit_charset_α_526_0_s
.Llit_charset_α_526_0_s:
                        .string          "+.:"
                        .size            n390_lit_charset_bx, .-n390_lit_charset_bx
                        .type            n391_var_ref_bx, @function
n391_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n392_var_α
                        .size            n391_var_ref_bx, .-n391_var_ref_bx
                        .type            n392_var_bx, @function
n392_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n393_subscript_α
                        .size            n392_var_bx, .-n392_var_bx
                        .type            n393_subscript_bx, @function
n393_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_subscript_α:       mov              r11, 196
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
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n394_deref_α
                        .size            n393_subscript_bx, .-n393_subscript_bx
                        .type            n394_deref_bx, @function
n394_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_deref_α:           mov              r11, 197
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
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n395_assign_α
                        .size            n394_deref_bx, .-n394_deref_bx
                        .type            n395_assign_bx, @function
n395_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n396_call_icon_α
                        .size            n395_assign_bx, .-n395_assign_bx
                        .type            n396_call_icon_bx, @function
n396_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_call_icon_α:       mov              r11, 199
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
                                                                              jmp   n397_disjunction_α
n396_call_icon_β:       mov              r11, 199;                            jmp   .Ldisjunction_ω_387_af
                        .size            n396_call_icon_bx, .-n396_call_icon_bx
                        .type            n397_disjunction_bx, @function
n397_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_disjunction_α:     mov              r11, 200
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              dword ptr [rsp + 1504], 0;           jmp   n431_lit_string_α
.Ldisjunction_γ_397_as: mov              r11, 200
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_536_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n398_assign_α
.Ldisjunction_α_536_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_536_1
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n398_assign_α
.Ldisjunction_α_536_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_536_2
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n398_assign_α
.Ldisjunction_α_536_2:                                                        jmp   n398_assign_α
n397_disjunction_β:     mov              r11, 200
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              je    n433_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_397_af
                                                                              jmp   .Ldisjunction_ω_397_af
.Ldisjunction_γ_397_af: mov              r11, 200
.Ldisjunction_ω_397_af: mov              r11, 200
                        add              dword ptr [rsp + 1504], 1
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 1;                              je    n429_var_α
                        cmp              eax, 2;                              je    n426_lit_string_α
                                                                              jmp   n399_var_α
                        .size            n397_disjunction_bx, .-n397_disjunction_bx
                        .type            n398_assign_bx, @function
n398_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_assign_α:          mov              r11, 201
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx;         jmp   n399_var_α
                        .size            n398_assign_bx, .-n398_assign_bx
                        .type            n399_var_bx, @function
n399_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 664], rax;          jmp   n400_lit_string_α
                        .size            n399_var_bx, .-n399_var_bx
                        .type            n400_lit_string_bx, @function
n400_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_540_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n401_call_builtin_α
.Llit_string_α_540_0:   .quad            .Llit_string_α_540_0_s
.Llit_string_α_540_0_s: .string          ":"
                        .size            n400_lit_string_bx, .-n400_lit_string_bx
                        .type            n401_call_builtin_bx, @function
n401_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_call_builtin_α:    mov              r11, 204
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn542: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn542]
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
                        cmp              al, 104;                             je    n404_lit_string_α
                                                                              jmp   n402_var_α
n401_call_builtin_β:    mov              r11, 204;                            jmp   n404_lit_string_α
                        .size            n401_call_builtin_bx, .-n401_call_builtin_bx
                        .type            n402_var_bx, @function
n402_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n403_assign_α
                        .size            n402_var_bx, .-n402_var_bx
                        .type            n403_assign_bx, @function
n403_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_assign_α:          mov              r11, 206
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n418_var_α
                        .size            n403_assign_bx, .-n403_assign_bx
                        .type            n404_lit_string_bx, @function
n404_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_546_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n405_call_builtin_α
.Llit_string_α_546_0:   .quad            .Llit_string_α_546_0_s
.Llit_string_α_546_0_s: .string          "+"
                        .size            n404_lit_string_bx, .-n404_lit_string_bx
                        .type            n405_call_builtin_bx, @function
n405_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_call_builtin_α:    mov              r11, 208
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn548: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn548]
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
                        cmp              al, 104;                             je    n414_lit_string_α
                                                                              jmp   n406_disjunction_α
n405_call_builtin_β:    mov              r11, 208;                            jmp   n414_lit_string_α
                        .size            n405_call_builtin_bx, .-n405_call_builtin_bx
                        .type            n406_disjunction_bx, @function
n406_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_disjunction_α:     mov              r11, 209
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n412_var_α
.Ldisjunction_γ_406_as: mov              r11, 209
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_550_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n407_assign_α
.Ldisjunction_α_550_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_550_1
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n407_assign_α
.Ldisjunction_α_550_1:                                                        jmp   n407_assign_α
n406_disjunction_β:     mov              r11, 209
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_406_af
                                                                              jmp   .Ldisjunction_ω_406_af
.Ldisjunction_γ_406_af: mov              r11, 209
.Ldisjunction_ω_406_af: mov              r11, 209
                        add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 1;                              je    n408_lit_string_α
                                                                              jmp   n370_lit_integer_α
                        .size            n406_disjunction_bx, .-n406_disjunction_bx
                        .type            n407_assign_bx, @function
n407_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_assign_α:          mov              r11, 210
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n418_var_α
                        .size            n407_assign_bx, .-n407_assign_bx
                        .type            n408_lit_string_bx, @function
n408_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_552_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n409_var_α
n408_lit_string_β:      mov              r11, 211;                            jmp   .Ldisjunction_ω_406_af
.Llit_string_α_552_0:   .quad            .Llit_string_α_552_0_s
.Llit_string_α_552_0_s: .string          "-"
                        .size            n408_lit_string_bx, .-n408_lit_string_bx
                        .type            n409_var_bx, @function
n409_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n410_lit_string_α
                        .size            n409_var_bx, .-n409_var_bx
                        .type            n410_lit_string_bx, @function
n410_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_555_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n411_call_icon_α
.Llit_string_α_555_0:   .quad            .Llit_string_α_555_0_s
.Llit_string_α_555_0_s: .string          " needs numeric parameter"
                        .size            n410_lit_string_bx, .-n410_lit_string_bx
                        .type            n411_call_icon_bx, @function
n411_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_call_icon_α:       mov              r11, 214
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
.Lcall_icon_α_rkfn557:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn557]
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
n411_call_icon_β:       mov              r11, 214;                            jmp   .Ldisjunction_ω_406_af
                        .size            n411_call_icon_bx, .-n411_call_icon_bx
                        .type            n412_var_bx, @function
n412_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n413_call_icon_α
n412_var_β:             mov              r11, 215;                            jmp   .Ldisjunction_ω_406_af
                        .size            n412_var_bx, .-n412_var_bx
                        .type            n413_call_icon_bx, @function
n413_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_call_icon_α:       mov              r11, 216
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn561:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn561]
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
n413_call_icon_β:       mov              r11, 216;                            jmp   .Ldisjunction_ω_406_af
                        .size            n413_call_icon_bx, .-n413_call_icon_bx
                        .type            n414_lit_string_bx, @function
n414_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_562_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n415_call_builtin_α
.Llit_string_α_562_0:   .quad            .Llit_string_α_562_0_s
.Llit_string_α_562_0_s: .string          "."
                        .size            n414_lit_string_bx, .-n414_lit_string_bx
                        .type            n415_call_builtin_bx, @function
n415_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_α:    mov              r11, 218
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn564: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn564]
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
                        cmp              al, 104;                             je    n370_lit_integer_α
                                                                              jmp   n416_disjunction_α
n415_call_builtin_β:    mov              r11, 218;                            jmp   n370_lit_integer_α
                        .size            n415_call_builtin_bx, .-n415_call_builtin_bx
                        .type            n416_disjunction_bx, @function
n416_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_disjunction_α:     mov              r11, 219
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              dword ptr [rsp + 720], 0;            jmp   n424_var_α
.Ldisjunction_γ_416_as: mov              r11, 219
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_566_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax;          jmp   n417_assign_α
.Ldisjunction_α_566_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_566_1
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 712], rax;          jmp   n417_assign_α
.Ldisjunction_α_566_1:                                                        jmp   n417_assign_α
n416_disjunction_β:     mov              r11, 219
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_416_af
                                                                              jmp   .Ldisjunction_ω_416_af
.Ldisjunction_γ_416_af: mov              r11, 219
.Ldisjunction_ω_416_af: mov              r11, 219
                        add              dword ptr [rsp + 720], 1
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 1;                              je    n420_lit_string_α
                                                                              jmp   n370_lit_integer_α
                        .size            n416_disjunction_bx, .-n416_disjunction_bx
                        .type            n417_assign_bx, @function
n417_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n418_var_α
                        .size            n417_assign_bx, .-n417_assign_bx
                        .type            n418_var_bx, @function
n418_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 648], rax;          jmp   n419_conjunction_α
                        .size            n418_var_bx, .-n418_var_bx
                        .type            n419_conjunction_bx, @function
n419_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_conjunction_α:     mov              r11, 222
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax;          jmp   .Ldisjunction_γ_387_as
n419_conjunction_β:     mov              r11, 222;                            jmp   n370_lit_integer_α
                        .size            n419_conjunction_bx, .-n419_conjunction_bx
                        .type            n420_lit_string_bx, @function
n420_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_571_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n421_var_α
n420_lit_string_β:      mov              r11, 223;                            jmp   .Ldisjunction_ω_416_af
.Llit_string_α_571_0:   .quad            .Llit_string_α_571_0_s
.Llit_string_α_571_0_s: .string          "-"
                        .size            n420_lit_string_bx, .-n420_lit_string_bx
                        .type            n421_var_bx, @function
n421_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 920], rax;          jmp   n422_lit_string_α
                        .size            n421_var_bx, .-n421_var_bx
                        .type            n422_lit_string_bx, @function
n422_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_574_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n423_call_icon_α
.Llit_string_α_574_0:   .quad            .Llit_string_α_574_0_s
.Llit_string_α_574_0_s: .string          " needs numeric parameter"
                        .size            n422_lit_string_bx, .-n422_lit_string_bx
                        .type            n423_call_icon_bx, @function
n423_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_icon_α:       mov              r11, 226
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
.Lcall_icon_α_rkfn576:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn576]
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
n423_call_icon_β:       mov              r11, 226;                            jmp   .Ldisjunction_ω_416_af
                        .size            n423_call_icon_bx, .-n423_call_icon_bx
                        .type            n424_var_bx, @function
n424_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 792], rax;          jmp   n425_call_icon_α
n424_var_β:             mov              r11, 227;                            jmp   .Ldisjunction_ω_416_af
                        .size            n424_var_bx, .-n424_var_bx
                        .type            n425_call_icon_bx, @function
n425_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_call_icon_α:       mov              r11, 228
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn580:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn580]
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
n425_call_icon_β:       mov              r11, 228;                            jmp   .Ldisjunction_ω_416_af
                        .size            n425_call_icon_bx, .-n425_call_icon_bx
                        .type            n426_lit_string_bx, @function
n426_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_581_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n427_var_α
n426_lit_string_β:      mov              r11, 229;                            jmp   .Ldisjunction_ω_397_af
.Llit_string_α_581_0:   .quad            .Llit_string_α_581_0_s
.Llit_string_α_581_0_s: .string          "No parameter following -"
                        .size            n426_lit_string_bx, .-n426_lit_string_bx
                        .type            n427_var_bx, @function
n427_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n428_call_icon_α
                        .size            n427_var_bx, .-n427_var_bx
                        .type            n428_call_icon_bx, @function
n428_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_call_icon_α:       mov              r11, 231
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lcall_icon_α_rkfn585:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn585]
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
n428_call_icon_β:       mov              r11, 231;                            jmp   .Ldisjunction_ω_397_af
                        .size            n428_call_icon_bx, .-n428_call_icon_bx
                        .type            n429_var_bx, @function
n429_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n430_call_icon_α
n429_var_β:             mov              r11, 232;                            jmp   .Ldisjunction_ω_397_af
                        .size            n429_var_bx, .-n429_var_bx
                        .type            n430_call_icon_bx, @function
n430_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_call_icon_α:       mov              r11, 233
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn589:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn589]
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
n430_call_icon_β:       mov              r11, 233;                            jmp   .Ldisjunction_ω_397_af
                        .size            n430_call_icon_bx, .-n430_call_icon_bx
                        .type            n431_lit_string_bx, @function
n431_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_590_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n432_lit_integer_α
n431_lit_string_β:      mov              r11, 234;                            jmp   .Ldisjunction_ω_397_af
.Llit_string_α_590_0:   .quad            .Llit_string_α_590_0_s
.Llit_string_α_590_0_s: .string          ""
                        .size            n431_lit_string_bx, .-n431_lit_string_bx
                        .type            n432_lit_integer_bx, @function
n432_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_591_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n433_scan_tab_α
.Llit_integer_α_591_0:  .quad            0
                        .size            n432_lit_integer_bx, .-n432_lit_integer_bx
                        .type            n433_scan_tab_bx, @function
n433_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_scan_tab_α:        mov              r11, 236
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_593_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_593_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_397_af
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
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n434_binop_test_α
n433_scan_tab_β:        mov              r11, 236
                        mov              r14, qword ptr [rsp + 1584];         jmp   .Ldisjunction_ω_397_af
                        .size            n433_scan_tab_bx, .-n433_scan_tab_bx
                        .type            n434_binop_test_bx, @function
n434_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_binop_test_α:      mov              r11, 237
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
                        test             eax, eax;                            jz    n433_scan_tab_β
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
n434_binop_test_β:      mov              r11, 237;                            jmp   n433_scan_tab_β
                        .size            n434_binop_test_bx, .-n434_binop_test_bx
                        .type            n435_scan_bx, @function
n435_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_scan_α:            mov              r11, 238
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
                        mov              r15, qword ptr [rsp + 336];          jmp   n351_var_α
n435_scan_β:            mov              r11, 238;                            jmp   n351_var_α
                        .size            n435_scan_bx, .-n435_scan_bx
                        .type            n436_lit_string_bx, @function
n436_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_597_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n437_scan_match_α
n436_lit_string_β:      mov              r11, 239;                            jmp   .Ldisjunction_ω_369_af
.Llit_string_α_597_0:   .quad            .Llit_string_α_597_0_s
.Llit_string_α_597_0_s: .string          "-"
                        .size            n436_lit_string_bx, .-n436_lit_string_bx
                        .type            n437_scan_match_bx, @function
n437_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_scan_match_α:      mov              r11, 240
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_369_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_599_0]
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
                        mov              qword ptr [rsp + 2368], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2376], rax;         jmp   n438_scan_tab_α
.Lscan_match_α_599_0:   .quad            .Lscan_match_α_599_0_s
.Lscan_match_α_599_0_s: .string          "-"
                        .size            n437_scan_match_bx, .-n437_scan_match_bx
                        .type            n438_scan_tab_bx, @function
n438_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_scan_tab_α:        mov              r11, 241
                        mov              rax, qword ptr [rsp + 2376]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_601_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_601_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_369_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_369_af
                        mov              qword ptr [rsp + 2352], r14
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
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n439_lit_integer_α
n438_scan_tab_β:        mov              r11, 241
                        mov              r14, qword ptr [rsp + 2352];         jmp   .Ldisjunction_ω_369_af
                        .size            n438_scan_tab_bx, .-n438_scan_tab_bx
                        .type            n439_lit_integer_bx, @function
n439_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:     mov              r11, 242
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_602_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n440_scan_pos_α
.Llit_integer_α_602_0:  .quad            0
                        .size            n439_lit_integer_bx, .-n439_lit_integer_bx
                        .type            n440_scan_pos_bx, @function
n440_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_scan_pos_α:        mov              r11, 243
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_604_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_604_0:     cmp              rax, 1;                              jl    n438_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n438_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n438_scan_tab_β
                        mov              qword ptr [rsp + 2304], 3
                        mov              qword ptr [rsp + 2312], rax;         jmp   n441_conjunction_α
                        .size            n440_scan_pos_bx, .-n440_scan_pos_bx
                        .type            n441_conjunction_bx, @function
n441_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_conjunction_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n442_var_α
n441_conjunction_β:     mov              r11, 244;                            jmp   .Ldisjunction_ω_369_af
                        .size            n441_conjunction_bx, .-n441_conjunction_bx
                        .type            n442_var_bx, @function
n442_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             mov              r11, 245
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0;           jmp   n443_assign_α
n442_var_β:             mov              r11, 245;                            jmp   n444_var_α
                        .size            n442_var_bx, .-n442_var_bx
                        .type            n443_assign_bx, @function
n443_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_α:          mov              r11, 246
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n444_var_α
                        .size            n443_assign_bx, .-n443_assign_bx
                        .type            n444_var_bx, @function
n444_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             mov              r11, 247
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 216], rax;          jmp   n445_var_α
                        .size            n444_var_bx, .-n444_var_bx
                        .type            n445_var_bx, @function
n445_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n446_var_α
                        .size            n445_var_bx, .-n445_var_bx
                        .type            n446_var_bx, @function
n446_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 200], rax;          jmp   n447_call_icon_α
                        .size            n446_var_bx, .-n446_var_bx
                        .type            n447_call_icon_bx, @function
n447_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_call_icon_α:       mov              r11, 250
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn615:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn615]
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
                        cmp              al, 104;                             je    n449_var_α
                                                                              jmp   n448_call_icon_α
n447_call_icon_β:       mov              r11, 250;                            jmp   n449_var_α
                        .size            n447_call_icon_bx, .-n447_call_icon_bx
                        .type            n448_call_icon_bx, @function
n448_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_call_icon_α:       mov              r11, 251
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn617:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn617]
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
                        cmp              al, 104;                             je    n449_var_α
                                                                              jmp   n445_var_α
n448_call_icon_β:       mov              r11, 251;                            jmp   n449_var_α
                        .size            n448_call_icon_bx, .-n448_call_icon_bx
                        .type            n449_var_bx, @function
n449_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:             mov              r11, 252
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 56], rax;           jmp   n450_return_α
                        .size            n449_var_bx, .-n449_var_bx
                        .type            n450_return_bx, @function
n450_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_return_α:          mov              r11, 253
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
                        .size            n450_return_bx, .-n450_return_bx
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
                        add              rsp, 3216;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        add              rsp, 3216;                           jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_621_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_621_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_621_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_621_3:      add              rsp, 24
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
Init___α_body:
                        .type            n622_var_bx, @function
n622_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n623_assign_α
                        .size            n622_var_bx, .-n622_var_bx
                        .type            n623_assign_bx, @function
n623_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_assign_α:          mov              r11, 255
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [r9 + 144], rax            # Name__
                        mov              qword ptr [r9 + 152], rdx;           jmp   n624_call_proc_staged_α
                        .size            n623_assign_bx, .-n623_assign_bx
                        .type            n624_call_proc_staged_bx, @function
n624_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_call_proc_staged_α:
                        mov              r11, 256
                        call             Signature___dcα;                     jmp   .Lcall_proc_staged_α_646_2
.Lcall_proc_staged_α_646_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_646_29
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
.Lcall_proc_staged_α_646_29:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n625_call_proc_staged_α
                                                                              jmp   n625_call_proc_staged_α
n624_call_proc_staged_β:
                        mov              r11, 256;                            jmp   n625_call_proc_staged_α
.Lcall_proc_staged_β_646_0:
                        .quad            .Lcall_proc_staged_β_646_0_s
.Lcall_proc_staged_β_646_0_s:
                        .string          "Signature__"
                        .size            n624_call_proc_staged_bx, .-n624_call_proc_staged_bx
                        .type            n625_call_proc_staged_bx, @function
n625_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_call_proc_staged_α:
                        mov              r11, 257
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_648_2
.Lcall_proc_staged_α_648_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_648_29
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
.Lcall_proc_staged_α_648_29:
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n626_call_proc_staged_α
                                                                              jmp   n626_call_proc_staged_α
n625_call_proc_staged_β:
                        mov              r11, 257;                            jmp   n626_call_proc_staged_α
.Lcall_proc_staged_β_648_0:
                        .quad            .Lcall_proc_staged_β_648_0_s
.Lcall_proc_staged_β_648_0_s:
                        .string          "Regions__"
                        .size            n625_call_proc_staged_bx, .-n625_call_proc_staged_bx
                        .type            n626_call_proc_staged_bx, @function
n626_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_call_proc_staged_α:
                        mov              r11, 258
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_650_2
.Lcall_proc_staged_α_650_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_650_29
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
.Lcall_proc_staged_α_650_29:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n627_disjunction_α
                                                                              jmp   n627_disjunction_α
n626_call_proc_staged_β:
                        mov              r11, 258;                            jmp   n627_disjunction_α
.Lcall_proc_staged_β_650_0:
                        .quad            .Lcall_proc_staged_β_650_0_s
.Lcall_proc_staged_β_650_0_s:
                        .string          "Time__"
                        .size            n626_call_proc_staged_bx, .-n626_call_proc_staged_bx
                        .type            n627_disjunction_bx, @function
n627_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_disjunction_α:     mov              r11, 259
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n637_lit_string_α
.Ldisjunction_γ_627_as: mov              r11, 259
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_652_0
                                                                              jmp   n628_var_α
.Ldisjunction_α_652_0:                                                        jmp   n628_var_α
n627_disjunction_β:     mov              r11, 259
                        mov              eax, dword ptr [rsp + 128];          jmp   n628_var_α
.Ldisjunction_γ_627_af: mov              r11, 259
.Ldisjunction_ω_627_af: mov              r11, 259
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n628_var_α
                        .size            n627_disjunction_bx, .-n627_disjunction_bx
                        .type            n628_var_bx, @function
n628_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_var_α:             mov              r11, 260
                        mov              rdi, qword ptr [rip + .Lvar_α_653_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n630_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n629_assign_α
.Lvar_α_653_0:          .quad            .Lvar_α_653_0_s
.Lvar_α_653_0_s:        .string          "write"
                        .size            n628_var_bx, .-n628_var_bx
                        .type            n629_assign_bx, @function
n629_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_assign_α:          mov              r11, 261
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 112], rax            # Save__
                        mov              qword ptr [r9 + 120], rdx;           jmp   n630_var_α
                        .size            n629_assign_bx, .-n629_assign_bx
                        .type            n630_var_bx, @function
n630_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_var_α:             mov              r11, 262
                        mov              rdi, qword ptr [rip + .Lvar_α_655_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n632_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n631_assign_α
.Lvar_α_655_0:          .quad            .Lvar_α_655_0_s
.Lvar_α_655_0_s:        .string          "writes"
                        .size            n630_var_bx, .-n630_var_bx
                        .type            n631_assign_bx, @function
n631_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_assign_α:          mov              r11, 263
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 128], rax            # Saves__
                        mov              qword ptr [r9 + 136], rdx;           jmp   n632_lit_integer_α
                        .size            n631_assign_bx, .-n631_assign_bx
                        .type            n632_lit_integer_bx, @function
n632_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_integer_α:     mov              r11, 264
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_657_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n633_assign_α
.Llit_integer_α_657_0:  .quad            1
                        .size            n632_lit_integer_bx, .-n632_lit_integer_bx
                        .type            n633_assign_bx, @function
n633_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_assign_α:          mov              r11, 265
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lassign_α_658_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n634_assign_α
.Lassign_α_658_0:       .quad            .Lassign_α_658_0_s
.Lassign_α_658_0_s:     .string          "writes"
                        .size            n633_assign_bx, .-n633_assign_bx
                        .type            n634_assign_bx, @function
n634_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_assign_α:          mov              r11, 266
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lassign_α_659_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n635_return_α
.Lassign_α_659_0:       .quad            .Lassign_α_659_0_s
.Lassign_α_659_0_s:     .string          "write"
                        .size            n634_assign_bx, .-n634_assign_bx
                        .type            n635_return_bx, @function
n635_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_return_α:          mov              r11, 267
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n635_return_bx, .-n635_return_bx
                        .type            n636_conjunction_bx, @function
n636_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_conjunction_α:     mov              r11, 268;                            jmp   .Ldisjunction_γ_627_as
n636_conjunction_β:     mov              r11, 268;                            jmp   n628_var_α
                        .size            n636_conjunction_bx, .-n636_conjunction_bx
                        .type            n637_lit_string_bx, @function
n637_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_lit_string_α:      mov              r11, 269
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_662_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n638_call_icon_α
n637_lit_string_β:      mov              r11, 269;                            jmp   .Ldisjunction_ω_627_af
.Llit_string_α_662_0:   .quad            .Llit_string_α_662_0_s
.Llit_string_α_662_0_s: .string          "OUTPUT"
                        .size            n637_lit_string_bx, .-n637_lit_string_bx
                        .type            n638_call_icon_bx, @function
n638_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_call_icon_α:       mov              r11, 270
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn664:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn664]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_627_af
                                                                              jmp   n639_lit_string_α
n638_call_icon_β:       mov              r11, 270;                            jmp   .Ldisjunction_ω_627_af
                        .size            n638_call_icon_bx, .-n638_call_icon_bx
                        .type            n639_lit_string_bx, @function
n639_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_665_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n640_call_icon_α
.Llit_string_α_665_0:   .quad            .Llit_string_α_665_0_s
.Llit_string_α_665_0_s: .string          "*** Benchmarking with output ***"
                        .size            n639_lit_string_bx, .-n639_lit_string_bx
                        .type            n640_call_icon_bx, @function
n640_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_call_icon_α:       mov              r11, 272
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn667:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn667]
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
                        cmp              al, 104;                             je    n641_return_α
                                                                              jmp   n641_return_α
n640_call_icon_β:       mov              r11, 272;                            jmp   n641_return_α
                        .size            n640_call_icon_bx, .-n640_call_icon_bx
                        .type            n641_return_bx, @function
n641_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_return_α:          mov              r11, 273
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n641_return_bx, .-n641_return_bx
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
                        add              rsp, 528;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
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
                        lea              rcx, [rip + .LInit___α_669_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_669_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_669_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_669_3:       add              rsp, 24
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
Term___α_body:
                        .type            n670_disjunction_bx, @function
n670_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n670_disjunction_α:     mov              r11, 274
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n671_lit_string_α
.Ldisjunction_γ_670_as: mov              r11, 274
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_688_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n679_var_α
.Ldisjunction_α_688_0:                                                        jmp   n679_var_α
n670_disjunction_β:     mov              r11, 274
                        mov              eax, dword ptr [rsp + 288];          jmp   n679_var_α
.Ldisjunction_γ_670_af: mov              r11, 274
.Ldisjunction_ω_670_af: mov              r11, 274
                        add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288];          jmp   n679_var_α
                        .size            n670_disjunction_bx, .-n670_disjunction_bx
                        .type            n671_lit_string_bx, @function
n671_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_string_α:      mov              r11, 275
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_689_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n672_call_icon_α
n671_lit_string_β:      mov              r11, 275;                            jmp   n673_var_α
.Llit_string_α_689_0:   .quad            .Llit_string_α_689_0_s
.Llit_string_α_689_0_s: .string          "OUTPUT"
                        .size            n671_lit_string_bx, .-n671_lit_string_bx
                        .type            n672_call_icon_bx, @function
n672_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n672_call_icon_α:       mov              r11, 276
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn691:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn691]
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
                        cmp              al, 104;                             je    n673_var_α
                                                                              jmp   .Ldisjunction_γ_670_af
n672_call_icon_β:       mov              r11, 276;                            jmp   n673_var_α
                        .size            n672_call_icon_bx, .-n672_call_icon_bx
                        .type            n673_var_bx, @function
n673_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n673_var_α:             mov              r11, 277
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0;            jmp   n674_var_α
n673_var_β:             mov              r11, 277;                            jmp   .Ldisjunction_ω_670_af
                        .size            n673_var_bx, .-n673_var_bx
                        .type            n674_var_bx, @function
n674_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n674_var_α:             mov              r11, 278
                        mov              rax, qword ptr [r9 + 112]            # Save__
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 368], rax           # result
                        mov              qword ptr [rsp + 376], rdx;          jmp   n675_assign_α
                        .size            n674_var_bx, .-n674_var_bx
                        .type            n675_assign_bx, @function
n675_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n675_assign_α:          mov              r11, 279
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              rdi, qword ptr [rip + .Lassign_α_694_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n676_var_α
.Lassign_α_694_0:       .quad            .Lassign_α_694_0_s
.Lassign_α_694_0_s:     .string          "write"
                        .size            n675_assign_bx, .-n675_assign_bx
                        .type            n676_var_bx, @function
n676_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n676_var_α:             mov              r11, 280
                        mov              rax, qword ptr [r9 + 128]            # Saves__
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 336], rax           # result
                        mov              qword ptr [rsp + 344], rdx;          jmp   n677_assign_α
                        .size            n676_var_bx, .-n676_var_bx
                        .type            n677_assign_bx, @function
n677_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n677_assign_α:          mov              r11, 281
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              rdi, qword ptr [rip + .Lassign_α_696_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n678_conjunction_α
.Lassign_α_696_0:       .quad            .Lassign_α_696_0_s
.Lassign_α_696_0_s:     .string          "writes"
                        .size            n677_assign_bx, .-n677_assign_bx
                        .type            n678_conjunction_bx, @function
n678_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n678_conjunction_α:     mov              r11, 282
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   .Ldisjunction_γ_670_as
n678_conjunction_β:     mov              r11, 282;                            jmp   n679_var_α
                        .size            n678_conjunction_bx, .-n678_conjunction_bx
                        .type            n679_var_bx, @function
n679_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n679_var_α:             mov              r11, 283
                        mov              rax, qword ptr [r9 + 144]            # Name__
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n680_lit_string_α
                        .size            n679_var_bx, .-n679_var_bx
                        .type            n680_lit_string_bx, @function
n680_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n680_lit_string_α:      mov              r11, 284
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_699_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n681_call_proc_staged_α
.Llit_string_α_699_0:   .quad            .Llit_string_α_699_0_s
.Llit_string_α_699_0_s: .string          " elapsed time = "
                        .size            n680_lit_string_bx, .-n680_lit_string_bx
                        .type            n681_call_proc_staged_bx, @function
n681_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n681_call_proc_staged_α:
                        mov              r11, 285
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_701_2
.Lcall_proc_staged_α_701_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_701_29
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
.Lcall_proc_staged_α_701_29:
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n683_call_proc_staged_α
                                                                              jmp   n682_call_icon_α
n681_call_proc_staged_β:
                        mov              r11, 285;                            jmp   n683_call_proc_staged_α
.Lcall_proc_staged_β_701_0:
                        .quad            .Lcall_proc_staged_β_701_0_s
.Lcall_proc_staged_β_701_0_s:
                        .string          "Time__"
                        .size            n681_call_proc_staged_bx, .-n681_call_proc_staged_bx
                        .type            n682_call_icon_bx, @function
n682_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n682_call_icon_α:       mov              r11, 286
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
.Lcall_icon_α_rkfn703:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn703]
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
                        cmp              al, 104;                             je    n683_call_proc_staged_α
                                                                              jmp   n683_call_proc_staged_α
n682_call_icon_β:       mov              r11, 286;                            jmp   n683_call_proc_staged_α
                        .size            n682_call_icon_bx, .-n682_call_icon_bx
                        .type            n683_call_proc_staged_bx, @function
n683_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n683_call_proc_staged_α:
                        mov              r11, 287
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_705_2
.Lcall_proc_staged_α_705_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_705_29
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
.Lcall_proc_staged_α_705_29:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n684_call_proc_staged_α
                                                                              jmp   n684_call_proc_staged_α
n683_call_proc_staged_β:
                        mov              r11, 287;                            jmp   n684_call_proc_staged_α
.Lcall_proc_staged_β_705_0:
                        .quad            .Lcall_proc_staged_β_705_0_s
.Lcall_proc_staged_β_705_0_s:
                        .string          "Regions__"
                        .size            n683_call_proc_staged_bx, .-n683_call_proc_staged_bx
                        .type            n684_call_proc_staged_bx, @function
n684_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n684_call_proc_staged_α:
                        mov              r11, 288
                        call             Storage___dcα;                       jmp   .Lcall_proc_staged_α_707_2
.Lcall_proc_staged_α_707_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_707_29
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
.Lcall_proc_staged_α_707_29:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n685_call_proc_staged_α
                                                                              jmp   n685_call_proc_staged_α
n684_call_proc_staged_β:
                        mov              r11, 288;                            jmp   n685_call_proc_staged_α
.Lcall_proc_staged_β_707_0:
                        .quad            .Lcall_proc_staged_β_707_0_s
.Lcall_proc_staged_β_707_0_s:
                        .string          "Storage__"
                        .size            n684_call_proc_staged_bx, .-n684_call_proc_staged_bx
                        .type            n685_call_proc_staged_bx, @function
n685_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n685_call_proc_staged_α:
                        mov              r11, 289
                        call             Collections___dcα;                   jmp   .Lcall_proc_staged_α_709_2
.Lcall_proc_staged_α_709_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_709_29
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
.Lcall_proc_staged_α_709_29:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n686_return_α
                                                                              jmp   n686_return_α
n685_call_proc_staged_β:
                        mov              r11, 289;                            jmp   n686_return_α
.Lcall_proc_staged_β_709_0:
                        .quad            .Lcall_proc_staged_β_709_0_s
.Lcall_proc_staged_β_709_0_s:
                        .string          "Collections__"
                        .size            n685_call_proc_staged_bx, .-n685_call_proc_staged_bx
                        .type            n686_return_bx, @function
n686_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n686_return_α:          mov              r11, 290
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Term___γ
                        .size            n686_return_bx, .-n686_return_bx
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
                        add              rsp, 560;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        add              rsp, 560;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTerm___α_711_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_711_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_711_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_711_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 1056
                        mov              rdi, rsp
                        add              rdi, 960
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Collections___α_body:
                        .type            n712_disjunction_bx, @function
n712_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n712_disjunction_α:     mov              r11, 291
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n739_var_ref_α
.Ldisjunction_γ_712_as: mov              r11, 291
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_750_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n713_make_list_α
.Ldisjunction_α_750_0:                                                        jmp   n713_make_list_α
n712_disjunction_β:     mov              r11, 291
                        mov              eax, dword ptr [rsp + 656];          jmp   n713_make_list_α
.Ldisjunction_γ_712_af: mov              r11, 291
.Ldisjunction_ω_712_af: mov              r11, 291
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n713_make_list_α
                        .size            n712_disjunction_bx, .-n712_disjunction_bx
                        .type            n713_make_list_bx, @function
n713_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n713_make_list_α:       mov              r11, 292
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n714_assign_α
                        .size            n713_make_list_bx, .-n713_make_list_bx
                        .type            n714_assign_bx, @function
n714_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n714_assign_α:          mov              r11, 293
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n715_var_α
                        .size            n714_assign_bx, .-n714_assign_bx
                        .type            n715_var_bx, @function
n715_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n715_var_α:             mov              r11, 294
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 584], rax;          jmp   n716_kw_icon_gen_α
                        .size            n715_var_bx, .-n715_var_bx
                        .type            n716_kw_icon_gen_bx, @function
n716_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n716_kw_icon_gen_α:     mov              r11, 295
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_756_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_756_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n718_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n717_call_icon_α
n716_kw_icon_gen_β:     mov              r11, 295;                            jmp   .Lkw_icon_gen_α_756_1
.Lkw_icon_gen_α_756_0:  .quad            .Lkw_icon_gen_α_756_0_s
.Lkw_icon_gen_α_756_0_s:
                        .string          "&collections"
                        .size            n716_kw_icon_gen_bx, .-n716_kw_icon_gen_bx
                        .type            n717_call_icon_bx, @function
n717_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n717_call_icon_α:       mov              r11, 296
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn758:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn758]
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
                        cmp              al, 104;                             je    n716_kw_icon_gen_β
                                                                              jmp   n716_kw_icon_gen_β
n717_call_icon_β:       mov              r11, 296;                            jmp   n716_kw_icon_gen_β
                        .size            n717_call_icon_bx, .-n717_call_icon_bx
                        .type            n718_lit_string_bx, @function
n718_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_759_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n719_call_icon_α
.Llit_string_α_759_0:   .quad            .Llit_string_α_759_0_s
.Llit_string_α_759_0_s: .string          "collections"
                        .size            n718_lit_string_bx, .-n718_lit_string_bx
                        .type            n719_call_icon_bx, @function
n719_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n719_call_icon_α:       mov              r11, 298
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn761:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn761]
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
                        cmp              al, 104;                             je    n720_lit_integer_α
                                                                              jmp   n720_lit_integer_α
n719_call_icon_β:       mov              r11, 298;                            jmp   n720_lit_integer_α
                        .size            n719_call_icon_bx, .-n719_call_icon_bx
                        .type            n720_lit_integer_bx, @function
n720_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_integer_α:     mov              r11, 299
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_762_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n721_var_α
.Llit_integer_α_762_0:  .quad            1
                        .size            n720_lit_integer_bx, .-n720_lit_integer_bx
                        .type            n721_var_bx, @function
n721_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n721_var_α:             mov              r11, 300
                        mov              rax, qword ptr [r9 + 288]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n722_unop_α
                        .size            n721_var_bx, .-n721_var_bx
                        .type            n722_unop_bx, @function
n722_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n722_unop_α:            mov              r11, 301
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n723_to_α
                        .size            n722_unop_bx, .-n722_unop_bx
                        .type            n723_to_bx, @function
n723_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n723_to_α:              mov              r11, 302
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
.Lto_α_766_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n738_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n724_assign_α
n723_to_β:              mov              r11, 302
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_766_0
                        .size            n723_to_bx, .-n723_to_bx
                        .type            n724_assign_bx, @function
n724_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n724_assign_α:          mov              r11, 303
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n725_bound_α
                        .size            n724_assign_bx, .-n724_assign_bx
                        .type            n725_bound_bx, @function
n725_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n725_bound_α:           mov              r11, 304
                        mov              qword ptr [rsp + 112], rsp;          jmp   n726_var_ref_α
                        .size            n725_bound_bx, .-n725_bound_bx
                        .type            n726_var_ref_bx, @function
n726_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n726_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n727_var_α
                        .size            n726_var_ref_bx, .-n726_var_ref_bx
                        .type            n727_var_bx, @function
n727_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n727_var_α:             mov              r11, 306
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 248], rax;          jmp   n728_subscript_α
                        .size            n727_var_bx, .-n727_var_bx
                        .type            n728_subscript_bx, @function
n728_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n728_subscript_α:       mov              r11, 307
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
                        cmp              al, 104;                             je    n737_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n729_deref_α
                        .size            n728_subscript_bx, .-n728_subscript_bx
                        .type            n729_deref_bx, @function
n729_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_deref_α:           mov              r11, 308
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
                        cmp              al, 104;                             je    n737_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n730_var_ref_α
                        .size            n729_deref_bx, .-n729_deref_bx
                        .type            n730_var_ref_bx, @function
n730_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n731_var_α
                        .size            n730_var_ref_bx, .-n730_var_ref_bx
                        .type            n731_var_bx, @function
n731_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_var_α:             mov              r11, 310
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 376], rax;          jmp   n732_subscript_α
                        .size            n731_var_bx, .-n731_var_bx
                        .type            n732_subscript_bx, @function
n732_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_subscript_α:       mov              r11, 311
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
                        cmp              al, 104;                             je    n737_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n733_deref_α
                        .size            n732_subscript_bx, .-n732_subscript_bx
                        .type            n733_deref_bx, @function
n733_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_deref_α:           mov              r11, 312
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
                        cmp              al, 104;                             je    n737_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n734_lit_integer_α
                        .size            n733_deref_bx, .-n733_deref_bx
                        .type            n734_lit_integer_bx, @function
n734_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:     mov              r11, 313
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_782_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n735_call_icon_α
.Llit_integer_α_782_0:  .quad            8
                        .size            n734_lit_integer_bx, .-n734_lit_integer_bx
                        .type            n735_call_icon_bx, @function
n735_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_call_icon_α:       mov              r11, 314
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn784:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn784]
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
                        cmp              al, 104;                             je    n737_unmark_α
                                                                              jmp   n736_call_icon_α
n735_call_icon_β:       mov              r11, 314;                            jmp   n737_unmark_α
                        .size            n735_call_icon_bx, .-n735_call_icon_bx
                        .type            n736_call_icon_bx, @function
n736_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n736_call_icon_α:       mov              r11, 315
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn786:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn786]
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
                        cmp              al, 104;                             je    n737_unmark_α
                                                                              jmp   n737_unmark_α
n736_call_icon_β:       mov              r11, 315;                            jmp   n737_unmark_α
                        .size            n736_call_icon_bx, .-n736_call_icon_bx
                        .type            n737_unmark_bx, @function
n737_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_unmark_α:          mov              r11, 316
                        mov              rsp, qword ptr [rsp + 112];          jmp   n723_to_β
                        .size            n737_unmark_bx, .-n737_unmark_bx
                        .type            n738_return_bx, @function
n738_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_return_α:          mov              r11, 317
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Collections___γ
                        .size            n738_return_bx, .-n738_return_bx
                        .type            n739_var_ref_bx, @function
n739_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        mov              rdx, 1879052592                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n740_nulltest_var_α
n739_var_ref_β:         mov              r11, 318;                            jmp   .Ldisjunction_ω_712_af
                        .size            n739_var_ref_bx, .-n739_var_ref_bx
                        .type            n740_nulltest_var_bx, @function
n740_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_nulltest_var_α:    mov              r11, 319
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 104;                             je    .Ldisjunction_ω_712_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_712_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_712_af
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 920], rax;          jmp   n741_lit_integer_α
                        .size            n740_nulltest_var_bx, .-n740_nulltest_var_bx
                        .type            n741_lit_integer_bx, @function
n741_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_integer_α:     mov              r11, 320
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_793_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n742_assign_var_α
.Llit_integer_α_793_0:  .quad            1
                        .size            n741_lit_integer_bx, .-n741_lit_integer_bx
                        .type            n742_assign_var_bx, @function
n742_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_assign_var_α:      mov              r11, 321
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_712_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n743_lit_string_α
                        .size            n742_assign_var_bx, .-n742_assign_var_bx
                        .type            n743_lit_string_bx, @function
n743_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_795_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n744_lit_string_α
.Llit_string_α_795_0:   .quad            .Llit_string_α_795_0_s
.Llit_string_α_795_0_s: .string          "total"
                        .size            n743_lit_string_bx, .-n743_lit_string_bx
                        .type            n744_lit_string_bx, @function
n744_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_796_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n745_lit_string_α
.Llit_string_α_796_0:   .quad            .Llit_string_α_796_0_s
.Llit_string_α_796_0_s: .string          "static"
                        .size            n744_lit_string_bx, .-n744_lit_string_bx
                        .type            n745_lit_string_bx, @function
n745_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_string_α:      mov              r11, 324
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_797_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n746_lit_string_α
.Llit_string_α_797_0:   .quad            .Llit_string_α_797_0_s
.Llit_string_α_797_0_s: .string          "string"
                        .size            n745_lit_string_bx, .-n745_lit_string_bx
                        .type            n746_lit_string_bx, @function
n746_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_string_α:      mov              r11, 325
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_798_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n747_make_list_α
.Llit_string_α_798_0:   .quad            .Llit_string_α_798_0_s
.Llit_string_α_798_0_s: .string          "block"
                        .size            n746_lit_string_bx, .-n746_lit_string_bx
                        .type            n747_make_list_bx, @function
n747_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n747_make_list_α:       mov              r11, 326
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n748_assign_α
                        .size            n747_make_list_bx, .-n747_make_list_bx
                        .type            n748_assign_bx, @function
n748_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n748_assign_α:          mov              r11, 327
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 288], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 296], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_712_as
n748_assign_β:          mov              r11, 327;                            jmp   n713_make_list_α
                        .size            n748_assign_bx, .-n748_assign_bx
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
                        add              rsp, 1056;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        add              rsp, 1056;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LCollections___α_802_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_802_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_802_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_802_3:
                        add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 1008
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Regions___α_body:
                        .type            n803_disjunction_bx, @function
n803_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_disjunction_α:     mov              r11, 328
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n830_var_ref_α
.Ldisjunction_γ_803_as: mov              r11, 328
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_840_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n804_make_list_α
.Ldisjunction_α_840_0:                                                        jmp   n804_make_list_α
n803_disjunction_β:     mov              r11, 328
                        mov              eax, dword ptr [rsp + 656];          jmp   n804_make_list_α
.Ldisjunction_γ_803_af: mov              r11, 328
.Ldisjunction_ω_803_af: mov              r11, 328
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n804_make_list_α
                        .size            n803_disjunction_bx, .-n803_disjunction_bx
                        .type            n804_make_list_bx, @function
n804_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n804_make_list_α:       mov              r11, 329
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n805_assign_α
                        .size            n804_make_list_bx, .-n804_make_list_bx
                        .type            n805_assign_bx, @function
n805_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n805_assign_α:          mov              r11, 330
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n806_var_α
                        .size            n805_assign_bx, .-n805_assign_bx
                        .type            n806_var_bx, @function
n806_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n806_var_α:             mov              r11, 331
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n807_kw_icon_gen_α
                        .size            n806_var_bx, .-n806_var_bx
                        .type            n807_kw_icon_gen_bx, @function
n807_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n807_kw_icon_gen_α:     mov              r11, 332
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_846_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_846_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n809_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n808_call_icon_α
n807_kw_icon_gen_β:     mov              r11, 332;                            jmp   .Lkw_icon_gen_α_846_1
.Lkw_icon_gen_α_846_0:  .quad            .Lkw_icon_gen_α_846_0_s
.Lkw_icon_gen_α_846_0_s:
                        .string          "&regions"
                        .size            n807_kw_icon_gen_bx, .-n807_kw_icon_gen_bx
                        .type            n808_call_icon_bx, @function
n808_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n808_call_icon_α:       mov              r11, 333
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn848:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn848]
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
                        cmp              al, 104;                             je    n807_kw_icon_gen_β
                                                                              jmp   n807_kw_icon_gen_β
n808_call_icon_β:       mov              r11, 333;                            jmp   n807_kw_icon_gen_β
                        .size            n808_call_icon_bx, .-n808_call_icon_bx
                        .type            n809_lit_string_bx, @function
n809_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n809_lit_string_α:      mov              r11, 334
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_849_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n810_call_icon_α
.Llit_string_α_849_0:   .quad            .Llit_string_α_849_0_s
.Llit_string_α_849_0_s: .string          "regions"
                        .size            n809_lit_string_bx, .-n809_lit_string_bx
                        .type            n810_call_icon_bx, @function
n810_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n810_call_icon_α:       mov              r11, 335
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn851:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn851]
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
                        cmp              al, 104;                             je    n811_lit_integer_α
                                                                              jmp   n811_lit_integer_α
n810_call_icon_β:       mov              r11, 335;                            jmp   n811_lit_integer_α
                        .size            n810_call_icon_bx, .-n810_call_icon_bx
                        .type            n811_lit_integer_bx, @function
n811_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n811_lit_integer_α:     mov              r11, 336
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_852_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n812_var_α
.Llit_integer_α_852_0:  .quad            1
                        .size            n811_lit_integer_bx, .-n811_lit_integer_bx
                        .type            n812_var_bx, @function
n812_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n812_var_α:             mov              r11, 337
                        mov              rax, qword ptr [r9 + 320]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n813_unop_α
                        .size            n812_var_bx, .-n812_var_bx
                        .type            n813_unop_bx, @function
n813_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n813_unop_α:            mov              r11, 338
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n814_to_α
                        .size            n813_unop_bx, .-n813_unop_bx
                        .type            n814_to_bx, @function
n814_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n814_to_α:              mov              r11, 339
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
.Lto_α_856_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n829_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n815_assign_α
n814_to_β:              mov              r11, 339
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_856_0
                        .size            n814_to_bx, .-n814_to_bx
                        .type            n815_assign_bx, @function
n815_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n815_assign_α:          mov              r11, 340
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n816_bound_α
                        .size            n815_assign_bx, .-n815_assign_bx
                        .type            n816_bound_bx, @function
n816_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n816_bound_α:           mov              r11, 341
                        mov              qword ptr [rsp + 112], rsp;          jmp   n817_var_ref_α
                        .size            n816_bound_bx, .-n816_bound_bx
                        .type            n817_var_ref_bx, @function
n817_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n817_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n818_var_α
                        .size            n817_var_ref_bx, .-n817_var_ref_bx
                        .type            n818_var_bx, @function
n818_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n818_var_α:             mov              r11, 343
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n819_subscript_α
                        .size            n818_var_bx, .-n818_var_bx
                        .type            n819_subscript_bx, @function
n819_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n819_subscript_α:       mov              r11, 344
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
                        cmp              al, 104;                             je    n828_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n820_deref_α
                        .size            n819_subscript_bx, .-n819_subscript_bx
                        .type            n820_deref_bx, @function
n820_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n820_deref_α:           mov              r11, 345
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
                        cmp              al, 104;                             je    n828_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n821_var_ref_α
                        .size            n820_deref_bx, .-n820_deref_bx
                        .type            n821_var_ref_bx, @function
n821_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n821_var_ref_α:         mov              r11, 346
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n822_var_α
                        .size            n821_var_ref_bx, .-n821_var_ref_bx
                        .type            n822_var_bx, @function
n822_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n822_var_α:             mov              r11, 347
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n823_subscript_α
                        .size            n822_var_bx, .-n822_var_bx
                        .type            n823_subscript_bx, @function
n823_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n823_subscript_α:       mov              r11, 348
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
                        cmp              al, 104;                             je    n828_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n824_deref_α
                        .size            n823_subscript_bx, .-n823_subscript_bx
                        .type            n824_deref_bx, @function
n824_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n824_deref_α:           mov              r11, 349
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
                        cmp              al, 104;                             je    n828_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n825_lit_integer_α
                        .size            n824_deref_bx, .-n824_deref_bx
                        .type            n825_lit_integer_bx, @function
n825_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n825_lit_integer_α:     mov              r11, 350
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_872_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n826_call_icon_α
.Llit_integer_α_872_0:  .quad            8
                        .size            n825_lit_integer_bx, .-n825_lit_integer_bx
                        .type            n826_call_icon_bx, @function
n826_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n826_call_icon_α:       mov              r11, 351
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn874:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn874]
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
                        cmp              al, 104;                             je    n828_unmark_α
                                                                              jmp   n827_call_icon_α
n826_call_icon_β:       mov              r11, 351;                            jmp   n828_unmark_α
                        .size            n826_call_icon_bx, .-n826_call_icon_bx
                        .type            n827_call_icon_bx, @function
n827_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n827_call_icon_α:       mov              r11, 352
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn876:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn876]
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
                        cmp              al, 104;                             je    n828_unmark_α
                                                                              jmp   n828_unmark_α
n827_call_icon_β:       mov              r11, 352;                            jmp   n828_unmark_α
                        .size            n827_call_icon_bx, .-n827_call_icon_bx
                        .type            n828_unmark_bx, @function
n828_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n828_unmark_α:          mov              r11, 353
                        mov              rsp, qword ptr [rsp + 112];          jmp   n814_to_β
                        .size            n828_unmark_bx, .-n828_unmark_bx
                        .type            n829_return_bx, @function
n829_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n829_return_α:          mov              r11, 354
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Regions___γ
                        .size            n829_return_bx, .-n829_return_bx
                        .type            n830_var_ref_bx, @function
n830_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n830_var_ref_α:         mov              r11, 355
                        mov              rax, 4294967336
                        mov              rdx, 1879052624                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n831_nulltest_var_α
n830_var_ref_β:         mov              r11, 355;                            jmp   .Ldisjunction_ω_803_af
                        .size            n830_var_ref_bx, .-n830_var_ref_bx
                        .type            n831_nulltest_var_bx, @function
n831_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n831_nulltest_var_α:    mov              r11, 356
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_803_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_803_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_803_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n832_lit_integer_α
                        .size            n831_nulltest_var_bx, .-n831_nulltest_var_bx
                        .type            n832_lit_integer_bx, @function
n832_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n832_lit_integer_α:     mov              r11, 357
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_883_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n833_assign_var_α
.Llit_integer_α_883_0:  .quad            1
                        .size            n832_lit_integer_bx, .-n832_lit_integer_bx
                        .type            n833_assign_var_bx, @function
n833_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_var_α:      mov              r11, 358
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_803_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n834_lit_string_α
                        .size            n833_assign_var_bx, .-n833_assign_var_bx
                        .type            n834_lit_string_bx, @function
n834_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_string_α:      mov              r11, 359
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_885_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n835_lit_string_α
.Llit_string_α_885_0:   .quad            .Llit_string_α_885_0_s
.Llit_string_α_885_0_s: .string          "static"
                        .size            n834_lit_string_bx, .-n834_lit_string_bx
                        .type            n835_lit_string_bx, @function
n835_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n835_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_886_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n836_lit_string_α
.Llit_string_α_886_0:   .quad            .Llit_string_α_886_0_s
.Llit_string_α_886_0_s: .string          "string"
                        .size            n835_lit_string_bx, .-n835_lit_string_bx
                        .type            n836_lit_string_bx, @function
n836_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n836_lit_string_α:      mov              r11, 361
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_887_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n837_make_list_α
.Llit_string_α_887_0:   .quad            .Llit_string_α_887_0_s
.Llit_string_α_887_0_s: .string          "block"
                        .size            n836_lit_string_bx, .-n836_lit_string_bx
                        .type            n837_make_list_bx, @function
n837_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n837_make_list_α:       mov              r11, 362
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n838_assign_α
                        .size            n837_make_list_bx, .-n837_make_list_bx
                        .type            n838_assign_bx, @function
n838_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n838_assign_α:          mov              r11, 363
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 320], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 328], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_803_as
n838_assign_β:          mov              r11, 363;                            jmp   n804_make_list_α
                        .size            n838_assign_bx, .-n838_assign_bx
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
                        add              rsp, 1008;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        add              rsp, 1008;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LRegions___α_891_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_891_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_891_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_891_3:    add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Signature__:
                        sub              rsp, 304
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Signature___α_body:
                        .type            n892_kw_icon_bx, @function
n892_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n892_kw_icon_α:         mov              r11, 364
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_899_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n894_kw_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n893_call_icon_α
n892_kw_icon_β:         mov              r11, 364;                            jmp   n894_kw_icon_α
.Lkw_icon_α_899_0:      .quad            .Lkw_icon_α_899_0_s
.Lkw_icon_α_899_0_s:    .string          "&version"
                        .size            n892_kw_icon_bx, .-n892_kw_icon_bx
                        .type            n893_call_icon_bx, @function
n893_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n893_call_icon_α:       mov              r11, 365
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn901:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn901]
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
                        cmp              al, 104;                             je    n894_kw_icon_α
                                                                              jmp   n894_kw_icon_α
n893_call_icon_β:       mov              r11, 365;                            jmp   n894_kw_icon_α
                        .size            n893_call_icon_bx, .-n893_call_icon_bx
                        .type            n894_kw_icon_bx, @function
n894_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n894_kw_icon_α:         mov              r11, 366
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_902_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n896_kw_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n895_call_icon_α
n894_kw_icon_β:         mov              r11, 366;                            jmp   n896_kw_icon_gen_α
.Lkw_icon_α_902_0:      .quad            .Lkw_icon_α_902_0_s
.Lkw_icon_α_902_0_s:    .string          "&host"
                        .size            n894_kw_icon_bx, .-n894_kw_icon_bx
                        .type            n895_call_icon_bx, @function
n895_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n895_call_icon_α:       mov              r11, 367
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn904:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn904]
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
                        cmp              al, 104;                             je    n896_kw_icon_gen_α
                                                                              jmp   n896_kw_icon_gen_α
n895_call_icon_β:       mov              r11, 367;                            jmp   n896_kw_icon_gen_α
                        .size            n895_call_icon_bx, .-n895_call_icon_bx
                        .type            n896_kw_icon_gen_bx, @function
n896_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n896_kw_icon_gen_α:     mov              r11, 368
                        mov              qword ptr [rsp + 80], 0
.Lkw_icon_gen_α_905_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_905_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n898_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n897_call_icon_α
n896_kw_icon_gen_β:     mov              r11, 368;                            jmp   .Lkw_icon_gen_α_905_1
.Lkw_icon_gen_α_905_0:  .quad            .Lkw_icon_gen_α_905_0_s
.Lkw_icon_gen_α_905_0_s:
                        .string          "&features"
                        .size            n896_kw_icon_gen_bx, .-n896_kw_icon_gen_bx
                        .type            n897_call_icon_bx, @function
n897_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n897_call_icon_α:       mov              r11, 369
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn907:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn907]
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
                        cmp              al, 104;                             je    n896_kw_icon_gen_β
                                                                              jmp   n896_kw_icon_gen_β
n897_call_icon_β:       mov              r11, 369;                            jmp   n896_kw_icon_gen_β
                        .size            n897_call_icon_bx, .-n897_call_icon_bx
                        .type            n898_return_bx, @function
n898_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n898_return_α:          mov              r11, 370
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Signature___γ
                        .size            n898_return_bx, .-n898_return_bx
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
                        add              rsp, 304;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Signature___ω:
                        add              rsp, 304;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Signature___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LSignature___α_909_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_909_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_909_2:  add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_909_3:  add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 1008
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Storage___α_body:
                        .type            n910_disjunction_bx, @function
n910_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n910_disjunction_α:     mov              r11, 371
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n937_var_ref_α
.Ldisjunction_γ_910_as: mov              r11, 371
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_947_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n911_make_list_α
.Ldisjunction_α_947_0:                                                        jmp   n911_make_list_α
n910_disjunction_β:     mov              r11, 371
                        mov              eax, dword ptr [rsp + 656];          jmp   n911_make_list_α
.Ldisjunction_γ_910_af: mov              r11, 371
.Ldisjunction_ω_910_af: mov              r11, 371
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n911_make_list_α
                        .size            n910_disjunction_bx, .-n910_disjunction_bx
                        .type            n911_make_list_bx, @function
n911_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n911_make_list_α:       mov              r11, 372
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n912_assign_α
                        .size            n911_make_list_bx, .-n911_make_list_bx
                        .type            n912_assign_bx, @function
n912_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n912_assign_α:          mov              r11, 373
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n913_var_α
                        .size            n912_assign_bx, .-n912_assign_bx
                        .type            n913_var_bx, @function
n913_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n913_var_α:             mov              r11, 374
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n914_kw_icon_gen_α
                        .size            n913_var_bx, .-n913_var_bx
                        .type            n914_kw_icon_gen_bx, @function
n914_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n914_kw_icon_gen_α:     mov              r11, 375
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_953_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_953_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n916_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n915_call_icon_α
n914_kw_icon_gen_β:     mov              r11, 375;                            jmp   .Lkw_icon_gen_α_953_1
.Lkw_icon_gen_α_953_0:  .quad            .Lkw_icon_gen_α_953_0_s
.Lkw_icon_gen_α_953_0_s:
                        .string          "&storage"
                        .size            n914_kw_icon_gen_bx, .-n914_kw_icon_gen_bx
                        .type            n915_call_icon_bx, @function
n915_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n915_call_icon_α:       mov              r11, 376
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn955:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn955]
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
                        cmp              al, 104;                             je    n914_kw_icon_gen_β
                                                                              jmp   n914_kw_icon_gen_β
n915_call_icon_β:       mov              r11, 376;                            jmp   n914_kw_icon_gen_β
                        .size            n915_call_icon_bx, .-n915_call_icon_bx
                        .type            n916_lit_string_bx, @function
n916_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n916_lit_string_α:      mov              r11, 377
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_956_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n917_call_icon_α
.Llit_string_α_956_0:   .quad            .Llit_string_α_956_0_s
.Llit_string_α_956_0_s: .string          "storage"
                        .size            n916_lit_string_bx, .-n916_lit_string_bx
                        .type            n917_call_icon_bx, @function
n917_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n917_call_icon_α:       mov              r11, 378
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn958:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn958]
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
                        cmp              al, 104;                             je    n918_lit_integer_α
                                                                              jmp   n918_lit_integer_α
n917_call_icon_β:       mov              r11, 378;                            jmp   n918_lit_integer_α
                        .size            n917_call_icon_bx, .-n917_call_icon_bx
                        .type            n918_lit_integer_bx, @function
n918_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n918_lit_integer_α:     mov              r11, 379
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_959_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n919_var_α
.Llit_integer_α_959_0:  .quad            1
                        .size            n918_lit_integer_bx, .-n918_lit_integer_bx
                        .type            n919_var_bx, @function
n919_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n919_var_α:             mov              r11, 380
                        mov              rax, qword ptr [r9 + 352]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n920_unop_α
                        .size            n919_var_bx, .-n919_var_bx
                        .type            n920_unop_bx, @function
n920_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n920_unop_α:            mov              r11, 381
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n921_to_α
                        .size            n920_unop_bx, .-n920_unop_bx
                        .type            n921_to_bx, @function
n921_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n921_to_α:              mov              r11, 382
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
.Lto_α_963_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n936_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n922_assign_α
n921_to_β:              mov              r11, 382
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_963_0
                        .size            n921_to_bx, .-n921_to_bx
                        .type            n922_assign_bx, @function
n922_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n922_assign_α:          mov              r11, 383
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n923_bound_α
                        .size            n922_assign_bx, .-n922_assign_bx
                        .type            n923_bound_bx, @function
n923_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n923_bound_α:           mov              r11, 384
                        mov              qword ptr [rsp + 112], rsp;          jmp   n924_var_ref_α
                        .size            n923_bound_bx, .-n923_bound_bx
                        .type            n924_var_ref_bx, @function
n924_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n924_var_ref_α:         mov              r11, 385
                        mov              rax, 4294967336
                        mov              rdx, 1879052640                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n925_var_α
                        .size            n924_var_ref_bx, .-n924_var_ref_bx
                        .type            n925_var_bx, @function
n925_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n925_var_α:             mov              r11, 386
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n926_subscript_α
                        .size            n925_var_bx, .-n925_var_bx
                        .type            n926_subscript_bx, @function
n926_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n926_subscript_α:       mov              r11, 387
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
                        cmp              al, 104;                             je    n935_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n927_deref_α
                        .size            n926_subscript_bx, .-n926_subscript_bx
                        .type            n927_deref_bx, @function
n927_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n927_deref_α:           mov              r11, 388
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
                        cmp              al, 104;                             je    n935_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n928_var_ref_α
                        .size            n927_deref_bx, .-n927_deref_bx
                        .type            n928_var_ref_bx, @function
n928_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n928_var_ref_α:         mov              r11, 389
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n929_var_α
                        .size            n928_var_ref_bx, .-n928_var_ref_bx
                        .type            n929_var_bx, @function
n929_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n929_var_α:             mov              r11, 390
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n930_subscript_α
                        .size            n929_var_bx, .-n929_var_bx
                        .type            n930_subscript_bx, @function
n930_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n930_subscript_α:       mov              r11, 391
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
                        cmp              al, 104;                             je    n935_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n931_deref_α
                        .size            n930_subscript_bx, .-n930_subscript_bx
                        .type            n931_deref_bx, @function
n931_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n931_deref_α:           mov              r11, 392
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
                        cmp              al, 104;                             je    n935_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n932_lit_integer_α
                        .size            n931_deref_bx, .-n931_deref_bx
                        .type            n932_lit_integer_bx, @function
n932_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n932_lit_integer_α:     mov              r11, 393
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_979_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n933_call_icon_α
.Llit_integer_α_979_0:  .quad            8
                        .size            n932_lit_integer_bx, .-n932_lit_integer_bx
                        .type            n933_call_icon_bx, @function
n933_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n933_call_icon_α:       mov              r11, 394
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn981:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn981]
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
                        cmp              al, 104;                             je    n935_unmark_α
                                                                              jmp   n934_call_icon_α
n933_call_icon_β:       mov              r11, 394;                            jmp   n935_unmark_α
                        .size            n933_call_icon_bx, .-n933_call_icon_bx
                        .type            n934_call_icon_bx, @function
n934_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n934_call_icon_α:       mov              r11, 395
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn983:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn983]
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
                        cmp              al, 104;                             je    n935_unmark_α
                                                                              jmp   n935_unmark_α
n934_call_icon_β:       mov              r11, 395;                            jmp   n935_unmark_α
                        .size            n934_call_icon_bx, .-n934_call_icon_bx
                        .type            n935_unmark_bx, @function
n935_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n935_unmark_α:          mov              r11, 396
                        mov              rsp, qword ptr [rsp + 112];          jmp   n921_to_β
                        .size            n935_unmark_bx, .-n935_unmark_bx
                        .type            n936_return_bx, @function
n936_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n936_return_α:          mov              r11, 397
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Storage___γ
                        .size            n936_return_bx, .-n936_return_bx
                        .type            n937_var_ref_bx, @function
n937_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n937_var_ref_α:         mov              r11, 398
                        mov              rax, 4294967336
                        mov              rdx, 1879052656                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n938_nulltest_var_α
n937_var_ref_β:         mov              r11, 398;                            jmp   .Ldisjunction_ω_910_af
                        .size            n937_var_ref_bx, .-n937_var_ref_bx
                        .type            n938_nulltest_var_bx, @function
n938_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n938_nulltest_var_α:    mov              r11, 399
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_910_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_910_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_910_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n939_lit_integer_α
                        .size            n938_nulltest_var_bx, .-n938_nulltest_var_bx
                        .type            n939_lit_integer_bx, @function
n939_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n939_lit_integer_α:     mov              r11, 400
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_990_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n940_assign_var_α
.Llit_integer_α_990_0:  .quad            1
                        .size            n939_lit_integer_bx, .-n939_lit_integer_bx
                        .type            n940_assign_var_bx, @function
n940_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n940_assign_var_α:      mov              r11, 401
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_910_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n941_lit_string_α
                        .size            n940_assign_var_bx, .-n940_assign_var_bx
                        .type            n941_lit_string_bx, @function
n941_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n941_lit_string_α:      mov              r11, 402
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_992_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n942_lit_string_α
.Llit_string_α_992_0:   .quad            .Llit_string_α_992_0_s
.Llit_string_α_992_0_s: .string          "static"
                        .size            n941_lit_string_bx, .-n941_lit_string_bx
                        .type            n942_lit_string_bx, @function
n942_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n942_lit_string_α:      mov              r11, 403
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_993_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n943_lit_string_α
.Llit_string_α_993_0:   .quad            .Llit_string_α_993_0_s
.Llit_string_α_993_0_s: .string          "string"
                        .size            n942_lit_string_bx, .-n942_lit_string_bx
                        .type            n943_lit_string_bx, @function
n943_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n943_lit_string_α:      mov              r11, 404
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_994_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n944_make_list_α
.Llit_string_α_994_0:   .quad            .Llit_string_α_994_0_s
.Llit_string_α_994_0_s: .string          "block"
                        .size            n943_lit_string_bx, .-n943_lit_string_bx
                        .type            n944_make_list_bx, @function
n944_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n944_make_list_α:       mov              r11, 405
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n945_assign_α
                        .size            n944_make_list_bx, .-n944_make_list_bx
                        .type            n945_assign_bx, @function
n945_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n945_assign_α:          mov              r11, 406
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 352], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 360], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_910_as
n945_assign_β:          mov              r11, 406;                            jmp   n911_make_list_α
                        .size            n945_assign_bx, .-n945_assign_bx
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
                        add              rsp, 1008;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        add              rsp, 1008;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LStorage___α_998_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_998_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_998_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_998_3:    add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Time__:
                        sub              rsp, 304
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Time___α_body:
                        .type            n999_disjunction_bx, @function
n999_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n999_disjunction_α:     mov              r11, 407
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n1006_var_ref_α
.Ldisjunction_γ_999_as: mov              r11, 407
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1013_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1000_kw_icon_α
.Ldisjunction_α_1013_0:                                                       jmp   n1000_kw_icon_α
n999_disjunction_β:     mov              r11, 407
                        mov              eax, dword ptr [rsp + 128];          jmp   n1000_kw_icon_α
.Ldisjunction_γ_999_af: mov              r11, 407
.Ldisjunction_ω_999_af: mov              r11, 407
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n1000_kw_icon_α
                        .size            n999_disjunction_bx, .-n999_disjunction_bx
                        .type            n1000_kw_icon_bx, @function
n1000_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1000_kw_icon_α:        mov              r11, 408
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1014_0]
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
                        mov              qword ptr [rsp + 72], rdx;           jmp   n1001_var_α
n1000_kw_icon_β:        mov              r11, 408;                            jmp   Time___ω
.Lkw_icon_α_1014_0:     .quad            .Lkw_icon_α_1014_0_s
.Lkw_icon_α_1014_0_s:   .string          "&time"
                        .size            n1000_kw_icon_bx, .-n1000_kw_icon_bx
                        .type            n1001_var_bx, @function
n1001_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1001_var_α:            mov              r11, 409
                        mov              rax, qword ptr [r9 + 384]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n1002_coerce_numeric_α
                        .size            n1001_var_bx, .-n1001_var_bx
                        .type            n1002_coerce_numeric_bx, @function
n1002_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1002_coerce_numeric_α: mov              r11, 410
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1017_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1017_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1017_0
.Lcoerce_numeric_α_1017_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1003_coerce_numeric_α
.Lcoerce_numeric_α_1017_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1003_coerce_numeric_α
                        .size            n1002_coerce_numeric_bx, .-n1002_coerce_numeric_bx
                        .type            n1003_coerce_numeric_bx, @function
n1003_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1003_coerce_numeric_α: mov              r11, 411
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1019_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1019_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1019_0
.Lcoerce_numeric_α_1019_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n1004_binop_α
.Lcoerce_numeric_α_1019_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1004_binop_α
                        .size            n1003_coerce_numeric_bx, .-n1003_coerce_numeric_bx
                        .type            n1004_binop_bx, @function
n1004_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1004_binop_α:          mov              r11, 412
                        mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1020_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lbinop_α_1020_7
.Lbinop_α_1020_2:       and              edx, 1;                              jz    .Lbinop_α_1020_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1020_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1020_4
.Lbinop_α_1020_3:       movq             xmm0, rsi
.Lbinop_α_1020_4:       cmp              cl, 5;                               je    .Lbinop_α_1020_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1020_6
.Lbinop_α_1020_5:       movq             xmm1, rdi
.Lbinop_α_1020_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lbinop_α_1020_7:                                                             jmp   n1005_return_α
.Lbinop_α_1020_0:       mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 24], rdx;           jmp   n1005_return_α
                        .size            n1004_binop_bx, .-n1004_binop_bx
                        .type            n1005_return_bx, @function
n1005_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1005_return_α:         mov              r11, 413
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
                        .size            n1005_return_bx, .-n1005_return_bx
                        .type            n1006_var_ref_bx, @function
n1006_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1006_var_ref_α:        mov              r11, 414
                        mov              rax, 4294967336
                        mov              rdx, 1879052688                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n1007_nulltest_var_α
n1006_var_ref_β:        mov              r11, 414;                            jmp   .Ldisjunction_ω_999_af
                        .size            n1006_var_ref_bx, .-n1006_var_ref_bx
                        .type            n1007_nulltest_var_bx, @function
n1007_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1007_nulltest_var_α:   mov              r11, 415
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    .Ldisjunction_ω_999_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_999_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_999_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1008_lit_integer_α
                        .size            n1007_nulltest_var_bx, .-n1007_nulltest_var_bx
                        .type            n1008_lit_integer_bx, @function
n1008_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1008_lit_integer_α:    mov              r11, 416
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1025_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1009_assign_var_α
.Llit_integer_α_1025_0: .quad            1
                        .size            n1008_lit_integer_bx, .-n1008_lit_integer_bx
                        .type            n1009_assign_var_bx, @function
n1009_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1009_assign_var_α:     mov              r11, 417
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_999_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n1010_kw_icon_α
                        .size            n1009_assign_var_bx, .-n1009_assign_var_bx
                        .type            n1010_kw_icon_bx, @function
n1010_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1010_kw_icon_α:        mov              r11, 418
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1027_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1000_kw_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n1011_assign_α
n1010_kw_icon_β:        mov              r11, 418;                            jmp   n1000_kw_icon_α
.Lkw_icon_α_1027_0:     .quad            .Lkw_icon_α_1027_0_s
.Lkw_icon_α_1027_0_s:   .string          "&time"
                        .size            n1010_kw_icon_bx, .-n1010_kw_icon_bx
                        .type            n1011_assign_bx, @function
n1011_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1011_assign_α:         mov              r11, 419
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 384], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 392], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   .Ldisjunction_γ_999_as
n1011_assign_β:         mov              r11, 419;                            jmp   n1000_kw_icon_α
                        .size            n1011_assign_bx, .-n1011_assign_bx
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
                        add              rsp, 304;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Time___ω:
                        add              rsp, 304;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Time___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTime___α_1029_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1029_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1029_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1029_3:      add              rsp, 24
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
shuffle_α_body:
                        .type            n1030_var_bx, @function
n1030_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1030_var_α:            mov              r11, 420
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1031_call_icon_α
                        .size            n1030_var_bx, .-n1030_var_bx
                        .type            n1031_call_icon_bx, @function
n1031_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1031_call_icon_α:      mov              r11, 421
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1043: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1043]
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
                        cmp              al, 104;                             je    n1033_var_ref_α
                                                                              jmp   n1032_assign_α
n1031_call_icon_β:      mov              r11, 421;                            jmp   n1033_var_ref_α
                        .size            n1031_call_icon_bx, .-n1031_call_icon_bx
                        .type            n1032_assign_bx, @function
n1032_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1032_assign_α:         mov              r11, 422
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n1033_var_ref_α
                        .size            n1032_assign_bx, .-n1032_assign_bx
                        .type            n1033_var_ref_bx, @function
n1033_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1033_var_ref_α:        mov              r11, 423
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n1034_iterate_α
                        .size            n1033_var_ref_bx, .-n1033_var_ref_bx
                        .type            n1034_iterate_bx, @function
n1034_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1034_iterate_α:        mov              r11, 424
                        mov              qword ptr [rsp + 64], 0
.Literate_α_1048_0:     mov              rdi, qword ptr [rsp + 80]
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
                        cmp              al, 104;                             je    n1038_var_α
                                                                              jmp   n1035_var_ref_α
n1034_iterate_β:        mov              r11, 424
                        inc              qword ptr [rsp + 64];                jmp   .Literate_α_1048_0
                        .size            n1034_iterate_bx, .-n1034_iterate_bx
                        .type            n1035_var_ref_bx, @function
n1035_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1035_var_ref_α:        mov              r11, 425
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n1036_random_α
                        .size            n1035_var_ref_bx, .-n1035_var_ref_bx
                        .type            n1036_random_bx, @function
n1036_random_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1036_random_α:         mov              r11, 426
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
                        cmp              al, 104;                             je    n1038_var_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n1037_swap_var_α
                        .size            n1036_random_bx, .-n1036_random_bx
                        .type            n1037_swap_var_bx, @function
n1037_swap_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1037_swap_var_α:       mov              r11, 427
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
                        cmp              al, 104;                             je    n1038_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n1034_iterate_β
                        .size            n1037_swap_var_bx, .-n1037_swap_var_bx
                        .type            n1038_var_bx, @function
n1038_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1038_var_α:            mov              r11, 428
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n1039_return_α
                        .size            n1038_var_bx, .-n1038_var_bx
                        .type            n1039_return_bx, @function
n1039_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1039_return_α:         mov              r11, 429
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   shuffle_γ
                        .size            n1039_return_bx, .-n1039_return_bx
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
                        add              rsp, 288;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
shuffle_ω:
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
                        lea              rcx, [rip + .Lshuffle_α_1056_3]
                        push             rcx
                        lea              rcx, [rip + .Lshuffle_α_1056_2]
                        push             rcx;                                 jmp   FN__shuffle
.Lshuffle_α_1056_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshuffle_α_1056_3:     add              rsp, 24
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
                        sub              rsp, 1232
                        mov              rdi, rsp
                        add              rdi, 1104
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n1057_lit_string_bx, @function
n1057_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1057_lit_string_α:     mov              r11, 430
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1107_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n1058_call_proc_staged_α
.Llit_string_α_1107_0:  .quad            .Llit_string_α_1107_0_s
.Llit_string_α_1107_0_s:
                        .string          "deal"
                        .size            n1057_lit_string_bx, .-n1057_lit_string_bx
                        .type            n1058_call_proc_staged_bx, @function
n1058_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1058_call_proc_staged_α:
                        mov              r11, 431
                        lea              rsi, [rsp + 1072]
                        call             Init___dcα;                          jmp   .Lcall_proc_staged_α_1109_2
.Lcall_proc_staged_α_1109_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1109_29
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
.Lcall_proc_staged_α_1109_29:
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n1059_lit_charset_α
                                                                              jmp   n1059_lit_charset_α
n1058_call_proc_staged_β:
                        mov              r11, 431;                            jmp   n1059_lit_charset_α
.Lcall_proc_staged_β_1109_0:
                        .quad            .Lcall_proc_staged_β_1109_0_s
.Lcall_proc_staged_β_1109_0_s:
                        .string          "Init__"
                        .size            n1058_call_proc_staged_bx, .-n1058_call_proc_staged_bx
                        .type            n1059_lit_charset_bx, @function
n1059_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1059_lit_charset_α:    mov              r11, 432
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1110_0]
                        mov              qword ptr [rsp + 1000], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1110_0]
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
                        pop              rax;                                 jmp   n1060_call_icon_α
.Llit_charset_α_1110_0: .quad            .Llit_charset_α_1110_0_s
.Llit_charset_α_1110_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n1059_lit_charset_bx, .-n1059_lit_charset_bx
                        .type            n1060_call_icon_bx, @function
n1060_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1060_call_icon_α:      mov              r11, 433
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1112: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1112]
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
                        cmp              al, 104;                             je    n1063_var_α
                                                                              jmp   n1061_assign_α
n1060_call_icon_β:      mov              r11, 433;                            jmp   n1063_var_α
                        .size            n1060_call_icon_bx, .-n1060_call_icon_bx
                        .type            n1061_assign_bx, @function
n1061_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1061_assign_α:         mov              r11, 434
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [r9 + 16], rax             # deckimage
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n1062_assign_α
                        .size            n1061_assign_bx, .-n1061_assign_bx
                        .type            n1062_assign_bx, @function
n1062_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1062_assign_α:         mov              r11, 435
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n1063_var_α
                        .size            n1062_assign_bx, .-n1062_assign_bx
                        .type            n1063_var_bx, @function
n1063_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1063_var_α:            mov              r11, 436
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 896], rax           # result
                        mov              qword ptr [rsp + 904], rdx;          jmp   n1064_unop_α
                        .size            n1063_var_bx, .-n1063_var_bx
                        .type            n1064_unop_bx, @function
n1064_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1064_unop_α:           mov              r11, 437
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
                        mov              qword ptr [rsp + 888], rdx;          jmp   n1065_lit_integer_α
                        .size            n1064_unop_bx, .-n1064_unop_bx
                        .type            n1065_lit_integer_bx, @function
n1065_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1065_lit_integer_α:    mov              r11, 438
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1117_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n1066_coerce_numeric_α
.Llit_integer_α_1117_0: .quad            4
                        .size            n1065_lit_integer_bx, .-n1065_lit_integer_bx
                        .type            n1066_coerce_numeric_bx, @function
n1066_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1066_coerce_numeric_α: mov              r11, 439
                        mov              eax, dword ptr [rsp + 880]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1119_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1119_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1119_0
.Lcoerce_numeric_α_1119_1:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 872], rax;          jmp   n1067_binop_α
.Lcoerce_numeric_α_1119_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1067_binop_α
                        .size            n1066_coerce_numeric_bx, .-n1066_coerce_numeric_bx
                        .type            n1067_binop_bx, @function
n1067_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1067_binop_α:          mov              r11, 440
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
                        cmp              al, 104;                             je    n1070_lit_string_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n1068_assign_α
                        .size            n1067_binop_bx, .-n1067_binop_bx
                        .type            n1068_assign_bx, @function
n1068_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1068_assign_α:         mov              r11, 441
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [r9 + 48], rax             # suitsize
                        mov              qword ptr [r9 + 56], rdx
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n1069_assign_α
                        .size            n1068_assign_bx, .-n1068_assign_bx
                        .type            n1069_assign_bx, @function
n1069_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1069_assign_α:         mov              r11, 442
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [r9 + 32], rax             # handsize
                        mov              qword ptr [r9 + 40], rdx;            jmp   n1070_lit_string_α
                        .size            n1069_assign_bx, .-n1069_assign_bx
                        .type            n1070_lit_string_bx, @function
n1070_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1070_lit_string_α:     mov              r11, 443
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_1123_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n1071_assign_α
.Llit_string_α_1123_0:  .quad            .Llit_string_α_1123_0_s
.Llit_string_α_1123_0_s:
                        .string          "AKQJT98765432"
                        .size            n1070_lit_string_bx, .-n1070_lit_string_bx
                        .type            n1071_assign_bx, @function
n1071_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1071_assign_α:         mov              r11, 444
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [r9 + 80], rax             # rank
                        mov              qword ptr [r9 + 88], rdx;            jmp   n1072_lit_string_α
                        .size            n1071_assign_bx, .-n1071_assign_bx
                        .type            n1072_lit_string_bx, @function
n1072_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1072_lit_string_α:     mov              r11, 445
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1125_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1073_var_α
.Llit_string_α_1125_0:  .quad            .Llit_string_α_1125_0_s
.Llit_string_α_1125_0_s:
                        .string          " "
                        .size            n1072_lit_string_bx, .-n1072_lit_string_bx
                        .type            n1073_var_bx, @function
n1073_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1073_var_α:            mov              r11, 446
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 784], rax           # result
                        mov              qword ptr [rsp + 792], rdx;          jmp   n1074_call_icon_α
                        .size            n1073_var_bx, .-n1073_var_bx
                        .type            n1074_call_icon_bx, @function
n1074_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1074_call_icon_α:      mov              r11, 447
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1128: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1128]
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
                        cmp              al, 104;                             je    n1076_lit_charset_α
                                                                              jmp   n1075_assign_α
n1074_call_icon_β:      mov              r11, 447;                            jmp   n1076_lit_charset_α
                        .size            n1074_call_icon_bx, .-n1074_call_icon_bx
                        .type            n1075_assign_bx, @function
n1075_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1075_assign_α:         mov              r11, 448
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 96], rax             # blanker
                        mov              qword ptr [r9 + 104], rdx;           jmp   n1076_lit_charset_α
                        .size            n1075_assign_bx, .-n1075_assign_bx
                        .type            n1076_lit_charset_bx, @function
n1076_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1076_lit_charset_α:    mov              r11, 449
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_1130_0]
                        mov              qword ptr [rsp + 616], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_1130_0]
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
                        pop              rax;                                 jmp   n1077_lit_integer_α
.Llit_charset_α_1130_0: .quad            .Llit_charset_α_1130_0_s
.Llit_charset_α_1130_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n1076_lit_charset_bx, .-n1076_lit_charset_bx
                        .type            n1077_lit_integer_bx, @function
n1077_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1077_lit_integer_α:    mov              r11, 450
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1131_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n1078_var_α
.Llit_integer_α_1131_0: .quad            1
                        .size            n1077_lit_integer_bx, .-n1077_lit_integer_bx
                        .type            n1078_var_bx, @function
n1078_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1078_var_α:            mov              r11, 451
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 656], rax           # result
                        mov              qword ptr [rsp + 664], rdx;          jmp   n1079_binop_α
                        .size            n1078_var_bx, .-n1078_var_bx
                        .type            n1079_binop_bx, @function
n1079_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1079_binop_α:          mov              r11, 452
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 656]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1133_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rsp + 664]
                        add              rax, rdx
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   .Lbinop_α_1133_7
.Lbinop_α_1133_2:       and              edx, 1;                              jz    .Lbinop_α_1133_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rsp + 664]
                        cmp              al, 5;                               je    .Lbinop_α_1133_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1133_4
.Lbinop_α_1133_3:       movq             xmm0, rsi
.Lbinop_α_1133_4:       cmp              cl, 5;                               je    .Lbinop_α_1133_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1133_6
.Lbinop_α_1133_5:       movq             xmm1, rdi
.Lbinop_α_1133_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 672], 5
                        mov              qword ptr [rsp + 680], rax
.Lbinop_α_1133_7:                                                             jmp   n1080_subscript_α
.Lbinop_α_1133_0:       mov              rdi, qword ptr [rsp + 640]
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
                        cmp              al, 104;                             je    n1082_var_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n1080_subscript_α
                        .size            n1079_binop_bx, .-n1079_binop_bx
                        .type            n1080_subscript_bx, @function
n1080_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1080_subscript_α:      mov              r11, 453
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
                        cmp              al, 104;                             je    n1082_var_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n1081_assign_α
                        .size            n1080_subscript_bx, .-n1080_subscript_bx
                        .type            n1081_assign_bx, @function
n1081_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1081_assign_α:         mov              r11, 454
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [r9 + 64], rax             # denom
                        mov              qword ptr [r9 + 72], rdx;            jmp   n1082_var_α
                        .size            n1081_assign_bx, .-n1081_assign_bx
                        .type            n1082_var_bx, @function
n1082_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1082_var_α:            mov              r11, 455
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 552], rax;          jmp   n1083_lit_string_α
                        .size            n1082_var_bx, .-n1082_var_bx
                        .type            n1083_lit_string_bx, @function
n1083_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1083_lit_string_α:     mov              r11, 456
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1138_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1084_call_proc_staged_α
.Llit_string_α_1138_0:  .quad            .Llit_string_α_1138_0_s
.Llit_string_α_1138_0_s:
                        .string          "h+s+"
                        .size            n1083_lit_string_bx, .-n1083_lit_string_bx
                        .type            n1084_call_proc_staged_bx, @function
n1084_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1084_call_proc_staged_α:
                        mov              r11, 457
                        lea              rsi, [rsp + 544]
                        lea              rdx, [rsp + 560]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1140_2
.Lcall_proc_staged_α_1140_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1140_29
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
.Lcall_proc_staged_α_1140_29:
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n1086_disjunction_α
                                                                              jmp   n1085_assign_α
n1084_call_proc_staged_β:
                        mov              r11, 457;                            jmp   n1086_disjunction_α
.Lcall_proc_staged_β_1140_0:
                        .quad            .Lcall_proc_staged_β_1140_0_s
.Lcall_proc_staged_β_1140_0_s:
                        .string          "options"
                        .size            n1084_call_proc_staged_bx, .-n1084_call_proc_staged_bx
                        .type            n1085_assign_bx, @function
n1085_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1085_assign_α:         mov              r11, 458
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n1086_disjunction_α
                        .size            n1085_assign_bx, .-n1085_assign_bx
                        .type            n1086_disjunction_bx, @function
n1086_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1086_disjunction_α:    mov              r11, 459
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n1102_var_ref_α
.Ldisjunction_γ_1086_as:
                        mov              r11, 459
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1143_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1087_assign_α
.Ldisjunction_α_1143_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1143_1
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1087_assign_α
.Ldisjunction_α_1143_1:                                                       jmp   n1087_assign_α
n1086_disjunction_β:    mov              r11, 459
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1086_af
                                                                              jmp   .Ldisjunction_ω_1086_af
.Ldisjunction_γ_1086_af:
                        mov              r11, 459
.Ldisjunction_ω_1086_af:
                        mov              r11, 459
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n1101_lit_integer_α
                                                                              jmp   n1088_var_ref_α
                        .size            n1086_disjunction_bx, .-n1086_disjunction_bx
                        .type            n1087_assign_bx, @function
n1087_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1087_assign_α:         mov              r11, 460
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n1088_var_ref_α
                        .size            n1087_assign_bx, .-n1087_assign_bx
                        .type            n1088_var_ref_bx, @function
n1088_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1088_var_ref_α:        mov              r11, 461
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n1089_lit_string_α
                        .size            n1088_var_ref_bx, .-n1088_var_ref_bx
                        .type            n1089_lit_string_bx, @function
n1089_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1089_lit_string_α:     mov              r11, 462
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1147_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1090_subscript_α
.Llit_string_α_1147_0:  .quad            .Llit_string_α_1147_0_s
.Llit_string_α_1147_0_s:
                        .string          "s"
                        .size            n1089_lit_string_bx, .-n1089_lit_string_bx
                        .type            n1090_subscript_bx, @function
n1090_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1090_subscript_α:      mov              r11, 463
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
                        cmp              al, 104;                             je    n1094_lit_integer_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n1091_deref_α
                        .size            n1090_subscript_bx, .-n1090_subscript_bx
                        .type            n1091_deref_bx, @function
n1091_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1091_deref_α:          mov              r11, 464
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
                        cmp              al, 104;                             je    n1094_lit_integer_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n1092_unop_test_α
                        .size            n1091_deref_bx, .-n1091_deref_bx
                        .type            n1092_unop_test_bx, @function
n1092_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1092_unop_test_α:      mov              r11, 465
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 104;                             je    n1094_lit_integer_α
                        cmp              eax, 0;                              je    n1094_lit_integer_α
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 232], rax;          jmp   n1093_kw_assign_α
                        .size            n1092_unop_test_bx, .-n1092_unop_test_bx
                        .type            n1093_kw_assign_bx, @function
n1093_kw_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1093_kw_assign_α:      mov              r11, 466
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
                        cmp              al, 104;                             je    n1094_lit_integer_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n1094_lit_integer_α
                        .size            n1093_kw_assign_bx, .-n1093_kw_assign_bx
                        .type            n1094_lit_integer_bx, @function
n1094_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1094_lit_integer_α:    mov              r11, 467
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1152_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1095_var_α
.Llit_integer_α_1152_0: .quad            1
                        .size            n1094_lit_integer_bx, .-n1094_lit_integer_bx
                        .type            n1095_var_bx, @function
n1095_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1095_var_α:            mov              r11, 468
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1096_to_α
                        .size            n1095_var_bx, .-n1095_var_bx
                        .type            n1096_to_bx, @function
n1096_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1096_to_α:             mov              r11, 469
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
.Lto_α_1156_0:          mov              rax, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jg    n1100_call_proc_staged_α
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax;           jmp   n1097_bound_α
n1096_to_β:             mov              r11, 469
                        inc              qword ptr [rsp + 80];                jmp   .Lto_α_1156_0
                        .size            n1096_to_bx, .-n1096_to_bx
                        .type            n1097_bound_bx, @function
n1097_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1097_bound_α:          mov              r11, 470
                        mov              qword ptr [rsp + 128], rsp;          jmp   n1098_call_proc_staged_α
                        .size            n1097_bound_bx, .-n1097_bound_bx
                        .type            n1098_call_proc_staged_bx, @function
n1098_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1098_call_proc_staged_α:
                        mov              r11, 471
                        call             display_dcα;                         jmp   .Lcall_proc_staged_α_1160_2
.Lcall_proc_staged_α_1160_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1160_29
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
.Lcall_proc_staged_α_1160_29:
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n1099_unmark_α
                                                                              jmp   n1099_unmark_α
n1098_call_proc_staged_β:
                        mov              r11, 471;                            jmp   n1099_unmark_α
.Lcall_proc_staged_β_1160_0:
                        .quad            .Lcall_proc_staged_β_1160_0_s
.Lcall_proc_staged_β_1160_0_s:
                        .string          "display"
                        .size            n1098_call_proc_staged_bx, .-n1098_call_proc_staged_bx
                        .type            n1099_unmark_bx, @function
n1099_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1099_unmark_α:         mov              r11, 472
                        mov              rsp, qword ptr [rsp + 128];          jmp   n1096_to_β
                        .size            n1099_unmark_bx, .-n1099_unmark_bx
                        .type            n1100_call_proc_staged_bx, @function
n1100_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1100_call_proc_staged_α:
                        mov              r11, 473
                        call             Term___dcα;                          jmp   .Lcall_proc_staged_α_1164_2
.Lcall_proc_staged_α_1164_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1164_29
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
.Lcall_proc_staged_α_1164_29:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n1100_call_proc_staged_β:
                        mov              r11, 473;                            jmp   main_ω
.Lcall_proc_staged_β_1164_0:
                        .quad            .Lcall_proc_staged_β_1164_0_s
.Lcall_proc_staged_β_1164_0_s:
                        .string          "Term__"
                        .size            n1100_call_proc_staged_bx, .-n1100_call_proc_staged_bx
                        .type            n1101_lit_integer_bx, @function
n1101_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1101_lit_integer_α:    mov              r11, 474
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1165_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   .Ldisjunction_γ_1086_as
n1101_lit_integer_β:    mov              r11, 474;                            jmp   .Ldisjunction_ω_1086_af
.Llit_integer_α_1165_0: .quad            1
                        .size            n1101_lit_integer_bx, .-n1101_lit_integer_bx
                        .type            n1102_var_ref_bx, @function
n1102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1102_var_ref_α:        mov              r11, 475
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n1103_lit_string_α
n1102_var_ref_β:        mov              r11, 475;                            jmp   .Ldisjunction_ω_1086_af
                        .size            n1102_var_ref_bx, .-n1102_var_ref_bx
                        .type            n1103_lit_string_bx, @function
n1103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1103_lit_string_α:     mov              r11, 476
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1168_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n1104_subscript_α
.Llit_string_α_1168_0:  .quad            .Llit_string_α_1168_0_s
.Llit_string_α_1168_0_s:
                        .string          "h"
                        .size            n1103_lit_string_bx, .-n1103_lit_string_bx
                        .type            n1104_subscript_bx, @function
n1104_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1104_subscript_α:      mov              r11, 477
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1086_af
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n1105_deref_α
                        .size            n1104_subscript_bx, .-n1104_subscript_bx
                        .type            n1105_deref_bx, @function
n1105_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1105_deref_α:          mov              r11, 478
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1086_af
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n1106_unop_test_α
                        .size            n1105_deref_bx, .-n1105_deref_bx
                        .type            n1106_unop_test_bx, @function
n1106_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1106_unop_test_α:      mov              r11, 479
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1086_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1086_af
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 376], rax;          jmp   .Ldisjunction_γ_1086_as
n1106_unop_test_β:      mov              r11, 479;                            jmp   .Ldisjunction_ω_1086_af
                        .size            n1106_unop_test_bx, .-n1106_unop_test_bx
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
                        .long            3024
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
