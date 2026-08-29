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
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 1440]
                        cmp              eax, 0;                              jne   .Ldisplay_α_79_0
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n16_var_α
.Ldisplay_α_79_0:                                                             jmp   n16_var_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 1440];         jmp   n16_var_α
n0_disjunction_af:      mov              r11, 1
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
n1_var_ref_β:           mov              r11, 2;                              jmp   n0_disjunction_af
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_nulltest_var_bx, @function
n2_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 1760]
                        cmp              al, 104;                             je    n0_disjunction_af
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
                        cmp              al, 104;                             je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_83_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n4_assign_var_α
.Ldisplay_α_83_0:       .quad            1
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
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n5_lit_string_α
                        .size            n4_assign_var_bx, .-n4_assign_var_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 1
                        mov              rax, qword ptr [rip + .Ldisplay_α_85_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n6_lit_string_α
.Ldisplay_α_85_0:       .quad            .Ldisplay_α_85_0_s
.Ldisplay_α_85_0_s:     .string          "\n"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 1
                        mov              rax, qword ptr [rip + .Ldisplay_α_86_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n7_lit_integer_α
.Ldisplay_α_86_0:       .quad            .Ldisplay_α_86_0_s
.Ldisplay_α_86_0_s:     .string          "-"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Ldisplay_α_87_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n8_call_icon_α
.Ldisplay_α_87_0:       .quad            33
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
.Lrkfn89:               .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_92_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n12_lit_integer_α
.Ldisplay_α_92_0:       .quad            .Ldisplay_α_92_0_s
.Ldisplay_α_92_0_s:     .string          " "
                        .size            n11_lit_string_bx, .-n11_lit_string_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Ldisplay_α_93_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n13_call_icon_α
.Ldisplay_α_93_0:       .quad            10
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
.Lrkfn95:               .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
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
                        mov              qword ptr [rsp + 1464], rax;         jmp   n0_disjunction_as
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
                        call             shuffle_dcα;                         jmp   .Ldisplay_α_100_2
.Ldisplay_α_100_2:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Ldisplay_α_100_29
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
.Ldisplay_α_100_29:     mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n19_make_list_α
                                                                              jmp   n18_assign_α
n17_call_proc_staged_β: mov              r11, 18;                             jmp   n19_make_list_α
.Ldisplay_β_100_0:      .quad            .Ldisplay_β_100_0_s
.Ldisplay_β_100_0_s:    .string          "shuffle"
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_108_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n24_lit_integer_α
.Ldisplay_α_108_0:      .quad            0
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Ldisplay_α_109_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n25_to_α
.Ldisplay_α_109_0:      .quad            3
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
.Ldisplay_α_111_0:      mov              rax, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1272]
                        cmp              rax, rcx;                            jg    n38_call_icon_α
                        mov              qword ptr [rsp + 1216], 3
                        mov              qword ptr [rsp + 1224], rax;         jmp   n26_var_α
n25_to_β:               mov              r11, 26
                        inc              qword ptr [rsp + 1232];              jmp   .Ldisplay_α_111_0
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
                        cmp              al, 5;                               je    .Ldisplay_α_114_1
                        cmp              al, 3;                               jne   .Ldisplay_α_114_0
                        mov              eax, dword ptr [rsp + 1280]
                        cmp              al, 3;                               jne   .Ldisplay_α_114_0
.Ldisplay_α_114_1:      mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n28_coerce_numeric_α
.Ldisplay_α_114_0:      lea              rdi, [rsp + 1216]
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
                        cmp              al, 5;                               je    .Ldisplay_α_116_1
                        cmp              al, 3;                               jne   .Ldisplay_α_116_0
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              al, 3;                               jne   .Ldisplay_α_116_0
.Ldisplay_α_116_1:      mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n29_binop_α
.Ldisplay_α_116_0:      lea              rdi, [rsp + 1280]
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
                        cmp              dl, 3;                               jne   .Ldisplay_α_117_2
                        mov              rax, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1192]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1168], 3
                        mov              qword ptr [rsp + 1176], rax;         jmp   .Ldisplay_α_117_7
.Ldisplay_α_117_2:      and              edx, 1;                              jz    .Ldisplay_α_117_0
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdi, qword ptr [rsp + 1192]
                        cmp              al, 5;                               je    .Ldisplay_α_117_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Ldisplay_α_117_4
.Ldisplay_α_117_3:      movq             xmm0, rsi
.Ldisplay_α_117_4:      cmp              cl, 5;                               je    .Ldisplay_α_117_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Ldisplay_α_117_6
.Ldisplay_α_117_5:      movq             xmm1, rdi
.Ldisplay_α_117_6:      mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1168], 5
                        mov              qword ptr [rsp + 1176], rax
.Ldisplay_α_117_7:                                                            jmp   n30_lit_integer_α
.Ldisplay_α_117_0:      mov              rdi, qword ptr [rsp + 1200]
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_118_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n31_coerce_numeric_α
.Ldisplay_α_118_0:      .quad            1
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_coerce_numeric_bx, @function
n31_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:   mov              r11, 32
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              al, 5;                               je    .Ldisplay_α_120_1
                        cmp              al, 3;                               jne   .Ldisplay_α_120_0
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              al, 3;                               jne   .Ldisplay_α_120_0
.Ldisplay_α_120_1:      mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n32_binop_α
.Ldisplay_α_120_0:      lea              rdi, [rsp + 1168]
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
                        cmp              dl, 3;                               jne   .Ldisplay_α_121_2
                        mov              rax, qword ptr [rsp + 1160]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1136], 3
                        mov              qword ptr [rsp + 1144], rax;         jmp   .Ldisplay_α_121_7
.Ldisplay_α_121_2:      and              edx, 1;                              jz    .Ldisplay_α_121_0
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Ldisplay_α_121_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Ldisplay_α_121_4
.Ldisplay_α_121_3:      movq             xmm0, rsi
.Ldisplay_α_121_4:      cmp              cl, 5;                               je    .Ldisplay_α_121_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Ldisplay_α_121_6
.Ldisplay_α_121_5:      movq             xmm1, rdi
.Ldisplay_α_121_6:      addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1136], 5
                        mov              qword ptr [rsp + 1144], rax
.Ldisplay_α_121_7:                                                            jmp   n33_var_α
.Ldisplay_α_121_0:      mov              rdi, qword ptr [rsp + 1152]
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
                        cmp              dl, 3;                               jne   .Ldisplay_α_123_2
                        mov              rax, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1320]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1328], 3
                        mov              qword ptr [rsp + 1336], rax;         jmp   .Ldisplay_α_123_7
.Ldisplay_α_123_2:      and              edx, 1;                              jz    .Ldisplay_α_123_0
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdi, qword ptr [rsp + 1320]
                        cmp              al, 5;                               je    .Ldisplay_α_123_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Ldisplay_α_123_4
.Ldisplay_α_123_3:      movq             xmm0, rsi
.Ldisplay_α_123_4:      cmp              cl, 5;                               je    .Ldisplay_α_123_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Ldisplay_α_123_6
.Ldisplay_α_123_5:      movq             xmm1, rdi
.Ldisplay_α_123_6:      addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1328], 5
                        mov              qword ptr [rsp + 1336], rax
.Ldisplay_α_123_7:                                                            jmp   n35_subscript_α
.Ldisplay_α_123_0:      mov              rdi, qword ptr [rsp + 1136]
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
                        call             show_dcα;                            jmp   .Ldisplay_α_126_2
.Ldisplay_α_126_2:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Ldisplay_α_126_29
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
.Ldisplay_α_126_29:     mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n25_to_β
                                                                              jmp   n37_call_icon_α
n36_call_proc_staged_β: mov              r11, 37;                             jmp   n25_to_β
.Ldisplay_β_126_0:      .quad            .Ldisplay_β_126_0_s
.Ldisplay_β_126_0_s:    .string          "show"
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
.Lrkfn128:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
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
.Lrkfn130:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn130]
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_134_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n42_subscript_α
.Ldisplay_α_134_0:      .quad            1
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
.Ldisplay_α_138_0:      mov              rdi, qword ptr [rsp + 928]
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
                        inc              qword ptr [rsp + 864];               jmp   .Ldisplay_α_138_0
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
.Lrkfn140:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
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
.Lrkfn142:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_143_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n48_lit_integer_α
.Ldisplay_α_143_0:      .quad            1
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Ldisplay_α_144_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n49_to_α
.Ldisplay_α_144_0:      .quad            4
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
.Ldisplay_α_146_0:      mov              rax, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 344]
                        cmp              rax, rcx;                            jg    n68_call_icon_α
                        mov              qword ptr [rsp + 288], 3
                        mov              qword ptr [rsp + 296], rax;          jmp   n50_assign_α
n49_to_β:               mov              r11, 50
                        inc              qword ptr [rsp + 304];               jmp   .Ldisplay_α_146_0
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_152_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n54_subscript_α
.Ldisplay_α_152_0:      .quad            4
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_158_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n59_call_icon_α
.Ldisplay_α_158_0:      .quad            20
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
.Lrkfn160:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_163_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n62_subscript_α
.Ldisplay_α_163_0:      .quad            2
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
.Lrkfn170:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
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
.Lrkfn174:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
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
                        mov              rax, qword ptr [rip + .Ldisplay_α_178_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n72_subscript_α
.Ldisplay_α_178_0:      .quad            3
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
.Ldisplay_α_182_0:      mov              rdi, qword ptr [rsp + 224]
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
                        inc              qword ptr [rsp + 160];               jmp   .Ldisplay_α_182_0
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
.Lrkfn184:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
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
.Lrkfn187:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
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
                                                                              jmp   display_γ
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
                        .type            n00001_disjunction_bx, @function
n00001_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_disjunction_α:     mov              r11, 79
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n00002_var_ref_α
n00001_disjunction_as:    mov              r11, 79
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Lshow_α_246_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00003_lit_string_α
.Lshow_α_246_0:                                                               jmp   n00003_lit_string_α
n00001_disjunction_β:     mov              r11, 79
                        mov              eax, dword ptr [rsp + 704];          jmp   n00003_lit_string_α
n00001_disjunction_af:    mov              r11, 79
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
n00002_var_ref_β:         mov              r11, 80;                             jmp   n00001_disjunction_af
                        .size            n00002_var_ref_bx, .-n00002_var_ref_bx
                        .type            n00004_nulltest_var_bx, @function
n00004_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_nulltest_var_α:    mov              r11, 81
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              al, 104;                             je    n00001_disjunction_af
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
                        cmp              al, 104;                             je    n00001_disjunction_af
                        cmp              eax, 0;                              jne   n00001_disjunction_af
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
                        mov              rax, qword ptr [rip + .Lshow_α_250_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00006_assign_var_α
.Lshow_α_250_0:         .quad            1
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
                        cmp              al, 104;                             je    n00001_disjunction_af
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
                        mov              rax, qword ptr [rip + .Lshow_α_254_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n00010_call_icon_α
.Lshow_α_254_0:         .quad            3
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
.Lrkfn256:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
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
                        mov              rax, qword ptr [rip + .Lshow_α_263_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00018_call_icon_α
.Lshow_α_263_0:         .quad            2
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
.Lrkfn265:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
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
                        mov              rax, qword ptr [rip + .Lshow_α_269_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n00023_call_icon_α
.Lshow_α_269_0:         .quad            2
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
.Lrkfn271:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
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
                        mov              rax, qword ptr [rip + .Lshow_α_278_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00031_call_icon_α
.Lshow_α_278_0:         .quad            3
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
.Lrkfn280:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
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
                        mov              qword ptr [rsp + 728], rax;          jmp   n00001_disjunction_as
n00035_conjunction_β:     mov              r11, 112;                            jmp   n00003_lit_string_α
                        .size            n00035_conjunction_bx, .-n00035_conjunction_bx
                        .type            n00003_lit_string_bx, @function
n00003_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 3
                        mov              rax, qword ptr [rip + .Lshow_α_285_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00036_var_α
.Lshow_α_285_0:         .quad            .Lshow_α_285_0_s
.Lshow_α_285_0_s:       .string          "S: "
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
                        call             arrange_dcα;                         jmp   .Lshow_α_290_2
.Lshow_α_290_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lshow_α_290_29
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
.Lshow_α_290_29:        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00039_binop_α
n00038_call_proc_staged_β:
                        mov              r11, 116;                            jmp   show_ω
.Lshow_β_290_0:         .quad            .Lshow_β_290_0_s
.Lshow_β_290_0_s:       .string          "arrange"
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
                        mov              rax, qword ptr [rip + .Lshow_α_292_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00041_var_α
.Lshow_α_292_0:         .quad            .Lshow_α_292_0_s
.Lshow_α_292_0_s:       .string          "H: "
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
                        call             arrange_dcα;                         jmp   .Lshow_α_297_2
.Lshow_α_297_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lshow_α_297_29
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
.Lshow_α_297_29:        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00044_binop_α
n00043_call_proc_staged_β:
                        mov              r11, 121;                            jmp   show_ω
.Lshow_β_297_0:         .quad            .Lshow_β_297_0_s
.Lshow_β_297_0_s:       .string          "arrange"
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
                        mov              rax, qword ptr [rip + .Lshow_α_299_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00046_var_α
.Lshow_α_299_0:         .quad            .Lshow_α_299_0_s
.Lshow_α_299_0_s:       .string          "D: "
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
                        call             arrange_dcα;                         jmp   .Lshow_α_304_2
.Lshow_α_304_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lshow_α_304_29
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
.Lshow_α_304_29:        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00049_binop_α
n00048_call_proc_staged_β:
                        mov              r11, 126;                            jmp   show_ω
.Lshow_β_304_0:         .quad            .Lshow_β_304_0_s
.Lshow_β_304_0_s:       .string          "arrange"
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
                        mov              rax, qword ptr [rip + .Lshow_α_306_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00051_var_α
.Lshow_α_306_0:         .quad            .Lshow_α_306_0_s
.Lshow_α_306_0_s:       .string          "C: "
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
                        call             arrange_dcα;                         jmp   .Lshow_α_311_2
.Lshow_α_311_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lshow_α_311_29
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
.Lshow_α_311_29:        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00054_binop_α
n00053_call_proc_staged_β:
                        mov              r11, 131;                            jmp   show_ω
.Lshow_β_311_0:         .quad            .Lshow_β_311_0_s
.Lshow_β_311_0_s:       .string          "arrange"
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
.Lrkfn333:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]
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
                        mov              rax, qword ptr [rip + .Larrange_α_334_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00062_binop_α
.Larrange_α_334_0:      .quad            .Larrange_α_334_0_s
.Larrange_α_334_0_s:    .string          " "
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
.Lrkfn339:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn339]
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
                        sub              rsp, 3152
                        mov              rdi, rsp
                        add              rdi, 2832
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
options_α_body:
                        .type            n00067_var_ref_bx, @function
n00067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n00068_nulltest_var_α
                        .size            n00067_var_ref_bx, .-n00067_var_ref_bx
                        .type            n00068_nulltest_var_bx, @function
n00068_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_nulltest_var_α:    mov              r11, 146
                        mov              eax, dword ptr [rsp + 2704]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              rdi, qword ptr [rsp + 2704]
                        mov              rsi, qword ptr [rsp + 2712]
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
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n00070_lit_charset_α
                        .size            n00068_nulltest_var_bx, .-n00068_nulltest_var_bx
                        .type            n00070_lit_charset_bx, @function
n00070_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_charset_α:     mov              r11, 147
                        mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], -1
                        mov              rax, qword ptr [rip + .Loptions_α_451_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n00071_call_icon_α
.Loptions_α_451_0:      .quad            .Loptions_α_451_0_s
.Loptions_α_451_0_s:    .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00070_lit_charset_bx, .-n00070_lit_charset_bx
                        .type            n00071_call_icon_bx, @function
n00071_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_call_icon_α:       mov              r11, 148
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2776], rax
                        .section         .rodata
.Lrkfn453:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rsp + 2768]
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
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              al, 104;                             je    n00069_call_icon_α
                                                                              jmp   n00072_assign_var_α
n00071_call_icon_β:       mov              r11, 148;                            jmp   n00069_call_icon_α
                        .size            n00071_call_icon_bx, .-n00071_call_icon_bx
                        .type            n00072_assign_var_bx, @function
n00072_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_assign_var_α:      mov              r11, 149
                        mov              rdi, qword ptr [rsp + 2720]
                        mov              rsi, qword ptr [rsp + 2728]
                        mov              rdx, qword ptr [rsp + 2752]
                        mov              rcx, qword ptr [rsp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx;         jmp   n00069_call_icon_α
                        .size            n00072_assign_var_bx, .-n00072_assign_var_bx
                        .type            n00069_call_icon_bx, @function
n00069_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_call_icon_α:       mov              r11, 150
                        .section         .rodata
.Lrkfn456:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn456]
                        lea              rsi, [rsp + 2688]
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
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    n00073_make_list_α
                                                                              jmp   n00074_assign_α
n00069_call_icon_β:       mov              r11, 150;                            jmp   n00073_make_list_α
                        .size            n00069_call_icon_bx, .-n00069_call_icon_bx
                        .type            n00074_assign_bx, @function
n00074_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 2672]
                        mov              rdx, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx;         jmp   n00073_make_list_α
                        .size            n00074_assign_bx, .-n00074_assign_bx
                        .type            n00073_make_list_bx, @function
n00073_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_make_list_α:       mov              r11, 152
                        lea              rdi, [rsp + 2672]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n00075_assign_α
                        .size            n00073_make_list_bx, .-n00073_make_list_bx
                        .type            n00075_assign_bx, @function
n00075_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_assign_α:          mov              r11, 153
                        mov              rax, qword ptr [rsp + 2656]
                        mov              rdx, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx;         jmp   n00076_var_α
                        .size            n00075_assign_bx, .-n00075_assign_bx
                        .type            n00076_var_bx, @function
n00076_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00077_call_icon_α
                        .size            n00076_var_bx, .-n00076_var_bx
                        .type            n00077_call_icon_bx, @function
n00077_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_call_icon_α:       mov              r11, 155
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn464:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn464]
                        lea              rsi, [rsp + 240]
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
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n00078_var_α
                                                                              jmp   n00079_assign_α
n00077_call_icon_β:       mov              r11, 155;                            jmp   n00078_var_α
                        .size            n00077_call_icon_bx, .-n00077_call_icon_bx
                        .type            n00079_assign_bx, @function
n00079_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_assign_α:          mov              r11, 156
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx;         jmp   n00080_var_α
                        .size            n00079_assign_bx, .-n00079_assign_bx
                        .type            n00080_var_bx, @function
n00080_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n00081_scan_enter_α
                        .size            n00080_var_bx, .-n00080_var_bx
                        .type            n00081_scan_enter_bx, @function
n00081_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_scan_enter_α:      mov              r11, 158
                        mov              qword ptr [rsp + 304], r13
                        mov              qword ptr [rsp + 312], r14
                        mov              qword ptr [rsp + 320], r15
                        mov              rdi, qword ptr [rsp + 2640]
                        mov              rsi, qword ptr [rsp + 2648]
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
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n00083_lit_string_α
n00082_disjunction_as:    mov              r11, 159
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Loptions_α_471_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00084_scan_α
.Loptions_α_471_0:      cmp              eax, 1;                              jne   .Loptions_α_471_1
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00084_scan_α
.Loptions_α_471_1:                                                            jmp   n00084_scan_α
n00082_disjunction_β:     mov              r11, 159
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n00085_disjunction_β
                                                                              jmp   n00086_scan_α
n00082_disjunction_af:    mov              r11, 159
                        add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n00087_var_α
                                                                              jmp   n00086_scan_α
                        .size            n00082_disjunction_bx, .-n00082_disjunction_bx
                        .type            n00084_scan_bx, @function
n00084_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_scan_α:            mov              r11, 160
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320];          jmp   n00076_var_α
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
n00088_conjunction_α:     mov              r11, 161;                            jmp   n00082_disjunction_as
n00088_conjunction_β:     mov              r11, 161;                            jmp   n00086_scan_α
                        .size            n00088_conjunction_bx, .-n00088_conjunction_bx
                        .type            n00087_var_bx, @function
n00087_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_α:             mov              r11, 162
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n00089_var_α
n00087_var_β:             mov              r11, 162;                            jmp   n00086_scan_α
                        .size            n00087_var_bx, .-n00087_var_bx
                        .type            n00089_var_bx, @function
n00089_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n00090_call_icon_α
                        .size            n00089_var_bx, .-n00089_var_bx
                        .type            n00090_call_icon_bx, @function
n00090_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_icon_α:       mov              r11, 164
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn480:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]
                        lea              rsi, [rsp + 2560]
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
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n00086_scan_α
                                                                              jmp   n00082_disjunction_as
n00090_call_icon_β:       mov              r11, 164;                            jmp   n00086_scan_α
                        .size            n00090_call_icon_bx, .-n00090_call_icon_bx
                        .type            n00083_lit_string_bx, @function
n00083_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 1
                        mov              rax, qword ptr [rip + .Loptions_α_481_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n00091_scan_match_α
n00083_lit_string_β:      mov              r11, 165;                            jmp   n00082_disjunction_af
.Loptions_α_481_0:      .quad            .Loptions_α_481_0_s
.Loptions_α_481_0_s:    .string          "-"
                        .size            n00083_lit_string_bx, .-n00083_lit_string_bx
                        .type            n00091_scan_match_bx, @function
n00091_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_scan_match_α:      mov              r11, 166
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00082_disjunction_af
                        mov              rdi, qword ptr [rip + .Loptions_α_483_0]
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
                        test             eax, eax;                            jne   n00082_disjunction_af
                        mov              qword ptr [rsp + 2480], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00092_scan_tab_α
.Loptions_α_483_0:      .quad            .Loptions_α_483_0_s
.Loptions_α_483_0_s:    .string          "-"
                        .size            n00091_scan_match_bx, .-n00091_scan_match_bx
                        .type            n00092_scan_tab_bx, @function
n00092_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_scan_tab_α:        mov              r11, 167
                        mov              rax, qword ptr [rsp + 2488]
                        cmp              rax, 1;                              jge   .Loptions_α_485_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_485_0:      cmp              rax, 1;                              jl    n00082_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00082_disjunction_af
                        mov              qword ptr [rsp + 2464], r14
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
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n00093_lit_integer_α
n00092_scan_tab_β:        mov              r11, 167
                        mov              r14, qword ptr [rsp + 2464];         jmp   n00082_disjunction_af
                        .size            n00092_scan_tab_bx, .-n00092_scan_tab_bx
                        .type            n00093_lit_integer_bx, @function
n00093_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_486_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n00094_scan_pos_α
.Loptions_α_486_0:      .quad            0
                        .size            n00093_lit_integer_bx, .-n00093_lit_integer_bx
                        .type            n00094_scan_pos_bx, @function
n00094_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_scan_pos_α:        mov              r11, 169
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Loptions_α_488_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_488_0:      cmp              rax, 1;                              jl    n00095_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00095_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00095_var_α
                        mov              qword ptr [rsp + 2416], 3
                        mov              qword ptr [rsp + 2424], rax;         jmp   n00092_scan_tab_β
                        .size            n00094_scan_pos_bx, .-n00094_scan_pos_bx
                        .type            n00095_var_bx, @function
n00095_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_α:             mov              r11, 170
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0;           jmp   n00096_conjunction_α
n00095_var_β:             mov              r11, 170;                            jmp   n00092_scan_tab_β
                        .size            n00095_var_bx, .-n00095_var_bx
                        .type            n00096_conjunction_bx, @function
n00096_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_conjunction_α:     mov              r11, 171
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n00097_disjunction_α
n00096_conjunction_β:     mov              r11, 171;                            jmp   n00082_disjunction_af
                        .size            n00096_conjunction_bx, .-n00096_conjunction_bx
                        .type            n00097_disjunction_bx, @function
n00097_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_disjunction_α:     mov              r11, 172
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              dword ptr [rsp + 2224], 0;           jmp   n00098_lit_string_α
n00097_disjunction_as:    mov              r11, 172
                        mov              eax, dword ptr [rsp + 2224]
                        cmp              eax, 0;                              jne   .Loptions_α_492_0
                                                                              jmp   n00099_lit_integer_α
.Loptions_α_492_0:                                                            jmp   n00099_lit_integer_α
n00097_disjunction_β:     mov              r11, 172
                        mov              eax, dword ptr [rsp + 2224];         jmp   n00099_lit_integer_α
n00097_disjunction_af:    mov              r11, 172
                        add              dword ptr [rsp + 2224], 1
                        mov              eax, dword ptr [rsp + 2224];         jmp   n00099_lit_integer_α
                        .size            n00097_disjunction_bx, .-n00097_disjunction_bx
                        .type            n00099_lit_integer_bx, @function
n00099_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Loptions_α_493_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00100_scan_move_α
.Loptions_α_493_0:      .quad            1
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
                        mov              qword ptr [rsp + 432], r14
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
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00101_assign_α
n00100_scan_move_β:       mov              r11, 174
                        mov              r14, qword ptr [rsp + 432];          jmp   n00086_scan_α
                        .size            n00100_scan_move_bx, .-n00100_scan_move_bx
                        .type            n00101_assign_bx, @function
n00101_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n00085_disjunction_α
                        .size            n00101_assign_bx, .-n00101_assign_bx
                        .type            n00085_disjunction_bx, @function
n00085_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_disjunction_α:     mov              r11, 176
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n00102_var_α
n00085_disjunction_as:    mov              r11, 176
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Loptions_α_498_0
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00099_lit_integer_α
.Loptions_α_498_0:      cmp              eax, 1;                              jne   .Loptions_α_498_1
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00099_lit_integer_α
.Loptions_α_498_1:                                                            jmp   n00099_lit_integer_α
n00085_disjunction_β:     mov              r11, 176
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    n00103_disjunction_β
                                                                              jmp   n00099_lit_integer_α
n00085_disjunction_af:    mov              r11, 176
                        add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n00104_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00085_disjunction_bx, .-n00085_disjunction_bx
                        .type            n00104_lit_string_bx, @function
n00104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 22
                        mov              rax, qword ptr [rip + .Loptions_α_499_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n00105_var_α
n00104_lit_string_β:      mov              r11, 177;                            jmp   n00099_lit_integer_α
.Loptions_α_499_0:      .quad            .Loptions_α_499_0_s
.Loptions_α_499_0_s:    .string          "Unrecognized option: -"
                        .size            n00104_lit_string_bx, .-n00104_lit_string_bx
                        .type            n00105_var_bx, @function
n00105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00106_call_icon_α
                        .size            n00105_var_bx, .-n00105_var_bx
                        .type            n00106_call_icon_bx, @function
n00106_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_icon_α:       mov              r11, 179
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        .section         .rodata
.Lrkfn503:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn503]
                        lea              rsi, [rsp + 2112]
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
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   n00085_disjunction_as
n00106_call_icon_β:       mov              r11, 179;                            jmp   n00099_lit_integer_α
                        .size            n00106_call_icon_bx, .-n00106_call_icon_bx
                        .type            n00102_var_bx, @function
n00102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n00107_var_α
n00102_var_β:             mov              r11, 180;                            jmp   n00085_disjunction_af
                        .size            n00102_var_bx, .-n00102_var_bx
                        .type            n00107_var_bx, @function
n00107_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n00108_call_builtin_gen_α
                        .size            n00107_var_bx, .-n00107_var_bx
                        .type            n00108_call_builtin_gen_bx, @function
n00108_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_call_builtin_gen_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2008], rax
                        mov              qword ptr [rsp + 2032], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_508_60:     .section         .rodata
.Lbynamegenfn182:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn182]
                        lea              rsi, [rsp + 2000]
                        mov              edx, 2
                        lea              rcx, [rsp + 2032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n00085_disjunction_af
                                                                              jmp   n00109_lit_integer_α
n00108_call_builtin_gen_β:
                        mov              r11, 182;                            jmp   .Loptions_α_508_60
                        .size            n00108_call_builtin_gen_bx, .-n00108_call_builtin_gen_bx
                        .type            n00109_lit_integer_bx, @function
n00109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_509_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00110_coerce_numeric_α
.Loptions_α_509_0:      .quad            1
                        .size            n00109_lit_integer_bx, .-n00109_lit_integer_bx
                        .type            n00110_coerce_numeric_bx, @function
n00110_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_coerce_numeric_α:  mov              r11, 184
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              al, 5;                               je    .Loptions_α_511_1
                        cmp              al, 3;                               jne   .Loptions_α_511_0
                        mov              eax, dword ptr [rsp + 2080]
                        cmp              al, 3;                               jne   .Loptions_α_511_0
.Loptions_α_511_1:      mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n00111_binop_α
.Loptions_α_511_0:      lea              rdi, [rsp + 1984]
                        lea              rsi, [rsp + 2080]
                        lea              rdx, [rsp + 1968]
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
                        mov              eax, dword ptr [rsp + 1968]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Loptions_α_512_2
                        mov              rax, qword ptr [rsp + 1976]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1952], 3
                        mov              qword ptr [rsp + 1960], rax;         jmp   .Loptions_α_512_7
.Loptions_α_512_2:      and              edx, 1;                              jz    .Loptions_α_512_0
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Loptions_α_512_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Loptions_α_512_4
.Loptions_α_512_3:      movq             xmm0, rsi
.Loptions_α_512_4:      cmp              cl, 5;                               je    .Loptions_α_512_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Loptions_α_512_6
.Loptions_α_512_5:      movq             xmm1, rdi
.Loptions_α_512_6:      addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1952], 5
                        mov              qword ptr [rsp + 1960], rax
.Loptions_α_512_7:                                                            jmp   n00112_assign_α
.Loptions_α_512_0:      mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00085_disjunction_af
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n00112_assign_α
                        .size            n00111_binop_bx, .-n00111_binop_bx
                        .type            n00112_assign_bx, @function
n00112_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n00113_var_ref_α
                        .size            n00112_assign_bx, .-n00112_assign_bx
                        .type            n00113_var_ref_bx, @function
n00113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2832]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n00114_var_α
                        .size            n00113_var_ref_bx, .-n00113_var_ref_bx
                        .type            n00114_var_bx, @function
n00114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00115_subscript_α
                        .size            n00114_var_bx, .-n00114_var_bx
                        .type            n00115_subscript_bx, @function
n00115_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_subscript_α:       mov              r11, 189
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00103_disjunction_α
                        .size            n00115_subscript_bx, .-n00115_subscript_bx
                        .type            n00103_disjunction_bx, @function
n00103_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_disjunction_α:     mov              r11, 190
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n00116_lit_charset_α
n00103_disjunction_as:    mov              r11, 190
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Loptions_α_520_0
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00117_assign_var_α
.Loptions_α_520_0:      cmp              eax, 1;                              jne   .Loptions_α_520_1
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00117_assign_var_α
.Loptions_α_520_1:                                                            jmp   n00117_assign_var_α
n00103_disjunction_β:     mov              r11, 190
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n00099_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
n00103_disjunction_af:    mov              r11, 190
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n00118_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00103_disjunction_bx, .-n00103_disjunction_bx
                        .type            n00117_assign_var_bx, @function
n00117_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_var_α:      mov              r11, 191
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00085_disjunction_as
n00117_assign_var_β:      mov              r11, 191;                            jmp   n00099_lit_integer_α
                        .size            n00117_assign_var_bx, .-n00117_assign_var_bx
                        .type            n00118_lit_integer_bx, @function
n00118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_lit_integer_α:     mov              r11, 192
                        mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_522_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n00103_disjunction_as
n00118_lit_integer_β:     mov              r11, 192;                            jmp   n00099_lit_integer_α
.Loptions_α_522_0:      .quad            1
                        .size            n00118_lit_integer_bx, .-n00118_lit_integer_bx
                        .type            n00116_lit_charset_bx, @function
n00116_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_lit_charset_α:     mov              r11, 193
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], -1
                        mov              rax, qword ptr [rip + .Loptions_α_523_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n00119_var_ref_α
n00116_lit_charset_β:     mov              r11, 193;                            jmp   n00103_disjunction_af
.Loptions_α_523_0:      .quad            .Loptions_α_523_0_s
.Loptions_α_523_0_s:    .string          "+.:"
                        .size            n00116_lit_charset_bx, .-n00116_lit_charset_bx
                        .type            n00119_var_ref_bx, @function
n00119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n00120_var_α
                        .size            n00119_var_ref_bx, .-n00119_var_ref_bx
                        .type            n00120_var_bx, @function
n00120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n00121_subscript_α
                        .size            n00120_var_bx, .-n00120_var_bx
                        .type            n00121_subscript_bx, @function
n00121_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_subscript_α:       mov              r11, 196
                        mov              rdi, qword ptr [rsp + 1872]
                        mov              rsi, qword ptr [rsp + 1880]
                        mov              rdx, qword ptr [rsp + 1888]
                        mov              rcx, qword ptr [rsp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00103_disjunction_af
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n00122_deref_α
                        .size            n00121_subscript_bx, .-n00121_subscript_bx
                        .type            n00122_deref_bx, @function
n00122_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_deref_α:           mov              r11, 197
                        mov              rdi, qword ptr [rsp + 1904]
                        mov              rsi, qword ptr [rsp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00103_disjunction_af
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n00123_assign_α
                        .size            n00122_deref_bx, .-n00122_deref_bx
                        .type            n00123_assign_bx, @function
n00123_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n00124_call_icon_α
                        .size            n00123_assign_bx, .-n00123_assign_bx
                        .type            n00124_call_icon_bx, @function
n00124_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_icon_α:       mov              r11, 199
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1784], rax
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
.Lbynamefn199:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn199]
                        lea              rsi, [rsp + 1776]
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
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
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
                        cmp              al, 104;                             je    n00103_disjunction_af
                                                                              jmp   n00125_disjunction_α
n00124_call_icon_β:       mov              r11, 199;                            jmp   n00103_disjunction_af
                        .size            n00124_call_icon_bx, .-n00124_call_icon_bx
                        .type            n00125_disjunction_bx, @function
n00125_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_disjunction_α:     mov              r11, 200
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              dword ptr [rsp + 1472], 0;           jmp   n00126_lit_string_α
n00125_disjunction_as:    mov              r11, 200
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              eax, 0;                              jne   .Loptions_α_533_0
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n00127_assign_α
.Loptions_α_533_0:      cmp              eax, 1;                              jne   .Loptions_α_533_1
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n00127_assign_α
.Loptions_α_533_1:      cmp              eax, 2;                              jne   .Loptions_α_533_2
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n00127_assign_α
.Loptions_α_533_2:                                                            jmp   n00127_assign_α
n00125_disjunction_β:     mov              r11, 200
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              eax, 0;                              je    n00128_scan_tab_β
                        cmp              eax, 1;                              je    n00125_disjunction_af
                                                                              jmp   n00125_disjunction_af
n00125_disjunction_af:    mov              r11, 200
                        add              dword ptr [rsp + 1472], 1
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              eax, 1;                              je    n00129_var_α
                        cmp              eax, 2;                              je    n00130_lit_string_α
                                                                              jmp   n00131_var_α
                        .size            n00125_disjunction_bx, .-n00125_disjunction_bx
                        .type            n00127_assign_bx, @function
n00127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_α:          mov              r11, 201
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n00131_var_α
                        .size            n00127_assign_bx, .-n00127_assign_bx
                        .type            n00131_var_bx, @function
n00131_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00132_lit_string_α
                        .size            n00131_var_bx, .-n00131_var_bx
                        .type            n00132_lit_string_bx, @function
n00132_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 1
                        mov              rax, qword ptr [rip + .Loptions_α_537_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00133_call_builtin_α
.Loptions_α_537_0:      .quad            .Loptions_α_537_0_s
.Loptions_α_537_0_s:    .string          ":"
                        .size            n00132_lit_string_bx, .-n00132_lit_string_bx
                        .type            n00133_call_builtin_bx, @function
n00133_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_call_builtin_α:    mov              r11, 204
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1416], rax
                        .section         .rodata
.Lrkfn539:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]
                        lea              rsi, [rsp + 1408]
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
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n00134_lit_string_α
                                                                              jmp   n00135_var_α
n00133_call_builtin_β:    mov              r11, 204;                            jmp   n00134_lit_string_α
                        .size            n00133_call_builtin_bx, .-n00133_call_builtin_bx
                        .type            n00135_var_bx, @function
n00135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00136_assign_α
                        .size            n00135_var_bx, .-n00135_var_bx
                        .type            n00136_assign_bx, @function
n00136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_α:          mov              r11, 206
                        mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n00137_var_α
                        .size            n00136_assign_bx, .-n00136_assign_bx
                        .type            n00134_lit_string_bx, @function
n00134_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Loptions_α_543_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00138_call_builtin_α
.Loptions_α_543_0:      .quad            .Loptions_α_543_0_s
.Loptions_α_543_0_s:    .string          "+"
                        .size            n00134_lit_string_bx, .-n00134_lit_string_bx
                        .type            n00138_call_builtin_bx, @function
n00138_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_call_builtin_α:    mov              r11, 208
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn545:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn545]
                        lea              rsi, [rsp + 1296]
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
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n00139_lit_string_α
                                                                              jmp   n00140_disjunction_α
n00138_call_builtin_β:    mov              r11, 208;                            jmp   n00139_lit_string_α
                        .size            n00138_call_builtin_bx, .-n00138_call_builtin_bx
                        .type            n00140_disjunction_bx, @function
n00140_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_disjunction_α:     mov              r11, 209
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              dword ptr [rsp + 1040], 0;           jmp   n00141_var_α
n00140_disjunction_as:    mov              r11, 209
                        mov              eax, dword ptr [rsp + 1040]
                        cmp              eax, 0;                              jne   .Loptions_α_547_0
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n00142_assign_α
.Loptions_α_547_0:      cmp              eax, 1;                              jne   .Loptions_α_547_1
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n00142_assign_α
.Loptions_α_547_1:                                                            jmp   n00142_assign_α
n00140_disjunction_β:     mov              r11, 209
                        mov              eax, dword ptr [rsp + 1040]
                        cmp              eax, 0;                              je    n00140_disjunction_af
                                                                              jmp   n00140_disjunction_af
n00140_disjunction_af:    mov              r11, 209
                        add              dword ptr [rsp + 1040], 1
                        mov              eax, dword ptr [rsp + 1040]
                        cmp              eax, 1;                              je    n00143_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00140_disjunction_bx, .-n00140_disjunction_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              r11, 210
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n00137_var_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00143_lit_string_bx, @function
n00143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Loptions_α_549_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00144_var_α
n00143_lit_string_β:      mov              r11, 211;                            jmp   n00140_disjunction_af
.Loptions_α_549_0:      .quad            .Loptions_α_549_0_s
.Loptions_α_549_0_s:    .string          "-"
                        .size            n00143_lit_string_bx, .-n00143_lit_string_bx
                        .type            n00144_var_bx, @function
n00144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00145_lit_string_α
                        .size            n00144_var_bx, .-n00144_var_bx
                        .type            n00145_lit_string_bx, @function
n00145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 24
                        mov              rax, qword ptr [rip + .Loptions_α_552_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n00146_call_icon_α
.Loptions_α_552_0:      .quad            .Loptions_α_552_0_s
.Loptions_α_552_0_s:    .string          " needs numeric parameter"
                        .size            n00145_lit_string_bx, .-n00145_lit_string_bx
                        .type            n00146_call_icon_bx, @function
n00146_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_call_icon_α:       mov              r11, 214
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn554:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]
                        lea              rsi, [rsp + 1136]
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
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n00140_disjunction_af
                                                                              jmp   n00140_disjunction_as
n00146_call_icon_β:       mov              r11, 214;                            jmp   n00140_disjunction_af
                        .size            n00146_call_icon_bx, .-n00146_call_icon_bx
                        .type            n00141_var_bx, @function
n00141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n00147_call_icon_α
n00141_var_β:             mov              r11, 215;                            jmp   n00140_disjunction_af
                        .size            n00141_var_bx, .-n00141_var_bx
                        .type            n00147_call_icon_bx, @function
n00147_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_call_icon_α:       mov              r11, 216
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn558:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]
                        lea              rsi, [rsp + 1072]
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
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n00140_disjunction_af
                                                                              jmp   n00140_disjunction_as
n00147_call_icon_β:       mov              r11, 216;                            jmp   n00140_disjunction_af
                        .size            n00147_call_icon_bx, .-n00147_call_icon_bx
                        .type            n00139_lit_string_bx, @function
n00139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Loptions_α_559_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00148_call_builtin_α
.Loptions_α_559_0:      .quad            .Loptions_α_559_0_s
.Loptions_α_559_0_s:    .string          "."
                        .size            n00139_lit_string_bx, .-n00139_lit_string_bx
                        .type            n00148_call_builtin_bx, @function
n00148_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_call_builtin_α:    mov              r11, 218
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn561:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rsp + 944]
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
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   n00149_disjunction_α
n00148_call_builtin_β:    mov              r11, 218;                            jmp   n00099_lit_integer_α
                        .size            n00148_call_builtin_bx, .-n00148_call_builtin_bx
                        .type            n00149_disjunction_bx, @function
n00149_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_disjunction_α:     mov              r11, 219
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              dword ptr [rsp + 688], 0;            jmp   n00150_var_α
n00149_disjunction_as:    mov              r11, 219
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              jne   .Loptions_α_563_0
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00151_assign_α
.Loptions_α_563_0:      cmp              eax, 1;                              jne   .Loptions_α_563_1
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00151_assign_α
.Loptions_α_563_1:                                                            jmp   n00151_assign_α
n00149_disjunction_β:     mov              r11, 219
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              je    n00149_disjunction_af
                                                                              jmp   n00149_disjunction_af
n00149_disjunction_af:    mov              r11, 219
                        add              dword ptr [rsp + 688], 1
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 1;                              je    n00152_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00149_disjunction_bx, .-n00149_disjunction_bx
                        .type            n00151_assign_bx, @function
n00151_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n00137_var_α
                        .size            n00151_assign_bx, .-n00151_assign_bx
                        .type            n00137_var_bx, @function
n00137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00153_conjunction_α
                        .size            n00137_var_bx, .-n00137_var_bx
                        .type            n00153_conjunction_bx, @function
n00153_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_conjunction_α:     mov              r11, 222
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00103_disjunction_as
n00153_conjunction_β:     mov              r11, 222;                            jmp   n00099_lit_integer_α
                        .size            n00153_conjunction_bx, .-n00153_conjunction_bx
                        .type            n00152_lit_string_bx, @function
n00152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Loptions_α_568_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00154_var_α
n00152_lit_string_β:      mov              r11, 223;                            jmp   n00149_disjunction_af
.Loptions_α_568_0:      .quad            .Loptions_α_568_0_s
.Loptions_α_568_0_s:    .string          "-"
                        .size            n00152_lit_string_bx, .-n00152_lit_string_bx
                        .type            n00154_var_bx, @function
n00154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00155_lit_string_α
                        .size            n00154_var_bx, .-n00154_var_bx
                        .type            n00155_lit_string_bx, @function
n00155_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 24
                        mov              rax, qword ptr [rip + .Loptions_α_571_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00156_call_icon_α
.Loptions_α_571_0:      .quad            .Loptions_α_571_0_s
.Loptions_α_571_0_s:    .string          " needs numeric parameter"
                        .size            n00155_lit_string_bx, .-n00155_lit_string_bx
                        .type            n00156_call_icon_bx, @function
n00156_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_call_icon_α:       mov              r11, 226
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn573:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn573]
                        lea              rsi, [rsp + 784]
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
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n00149_disjunction_af
                                                                              jmp   n00149_disjunction_as
n00156_call_icon_β:       mov              r11, 226;                            jmp   n00149_disjunction_af
                        .size            n00156_call_icon_bx, .-n00156_call_icon_bx
                        .type            n00150_var_bx, @function
n00150_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00157_call_icon_α
n00150_var_β:             mov              r11, 227;                            jmp   n00149_disjunction_af
                        .size            n00150_var_bx, .-n00150_var_bx
                        .type            n00157_call_icon_bx, @function
n00157_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_call_icon_α:       mov              r11, 228
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn577:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn577]
                        lea              rsi, [rsp + 720]
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
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n00149_disjunction_af
                                                                              jmp   n00149_disjunction_as
n00157_call_icon_β:       mov              r11, 228;                            jmp   n00149_disjunction_af
                        .size            n00157_call_icon_bx, .-n00157_call_icon_bx
                        .type            n00130_lit_string_bx, @function
n00130_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 24
                        mov              rax, qword ptr [rip + .Loptions_α_578_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n00158_var_α
n00130_lit_string_β:      mov              r11, 229;                            jmp   n00125_disjunction_af
.Loptions_α_578_0:      .quad            .Loptions_α_578_0_s
.Loptions_α_578_0_s:    .string          "No parameter following -"
                        .size            n00130_lit_string_bx, .-n00130_lit_string_bx
                        .type            n00158_var_bx, @function
n00158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n00159_call_icon_α
                        .size            n00158_var_bx, .-n00158_var_bx
                        .type            n00159_call_icon_bx, @function
n00159_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_icon_α:       mov              r11, 231
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn582:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]
                        lea              rsi, [rsp + 1664]
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
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n00125_disjunction_af
                                                                              jmp   n00125_disjunction_as
n00159_call_icon_β:       mov              r11, 231;                            jmp   n00125_disjunction_af
                        .size            n00159_call_icon_bx, .-n00159_call_icon_bx
                        .type            n00129_var_bx, @function
n00129_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n00160_call_icon_α
n00129_var_β:             mov              r11, 232;                            jmp   n00125_disjunction_af
                        .size            n00129_var_bx, .-n00129_var_bx
                        .type            n00160_call_icon_bx, @function
n00160_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_call_icon_α:       mov              r11, 233
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1608], rax
                        .section         .rodata
.Lrkfn586:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn586]
                        lea              rsi, [rsp + 1600]
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
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n00125_disjunction_af
                                                                              jmp   n00125_disjunction_as
n00160_call_icon_β:       mov              r11, 233;                            jmp   n00125_disjunction_af
                        .size            n00160_call_icon_bx, .-n00160_call_icon_bx
                        .type            n00126_lit_string_bx, @function
n00126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 0
                        mov              rax, qword ptr [rip + .Loptions_α_587_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n00161_lit_integer_α
n00126_lit_string_β:      mov              r11, 234;                            jmp   n00125_disjunction_af
.Loptions_α_587_0:      .quad            .Loptions_α_587_0_s
.Loptions_α_587_0_s:    .string          ""
                        .size            n00126_lit_string_bx, .-n00126_lit_string_bx
                        .type            n00161_lit_integer_bx, @function
n00161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rsp + 1568], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_588_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n00128_scan_tab_α
.Loptions_α_588_0:      .quad            0
                        .size            n00161_lit_integer_bx, .-n00161_lit_integer_bx
                        .type            n00128_scan_tab_bx, @function
n00128_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_scan_tab_α:        mov              r11, 236
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Loptions_α_590_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_590_0:      cmp              rax, 1;                              jl    n00125_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00125_disjunction_af
                        mov              qword ptr [rsp + 1552], r14
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
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n00162_binop_test_α
n00128_scan_tab_β:        mov              r11, 236
                        mov              r14, qword ptr [rsp + 1552];         jmp   n00125_disjunction_af
                        .size            n00128_scan_tab_bx, .-n00128_scan_tab_bx
                        .type            n00162_binop_test_bx, @function
n00162_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_binop_test_α:      mov              r11, 237
                        mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1536]
                        mov              rcx, qword ptr [rsp + 1544]
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
                        mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00125_disjunction_as
n00162_binop_test_β:      mov              r11, 237;                            jmp   n00128_scan_tab_β
                        .size            n00162_binop_test_bx, .-n00162_binop_test_bx
                        .type            n00086_scan_bx, @function
n00086_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_scan_α:            mov              r11, 238
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320];          jmp   n00076_var_α
n00086_scan_β:            mov              r11, 238;                            jmp   n00076_var_α
                        .size            n00086_scan_bx, .-n00086_scan_bx
                        .type            n00098_lit_string_bx, @function
n00098_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 1
                        mov              rax, qword ptr [rip + .Loptions_α_594_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n00163_scan_match_α
n00098_lit_string_β:      mov              r11, 239;                            jmp   n00097_disjunction_af
.Loptions_α_594_0:      .quad            .Loptions_α_594_0_s
.Loptions_α_594_0_s:    .string          "-"
                        .size            n00098_lit_string_bx, .-n00098_lit_string_bx
                        .type            n00163_scan_match_bx, @function
n00163_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_match_α:      mov              r11, 240
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00097_disjunction_af
                        mov              rdi, qword ptr [rip + .Loptions_α_596_0]
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
                        test             eax, eax;                            jne   n00097_disjunction_af
                        mov              qword ptr [rsp + 2320], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00164_scan_tab_α
.Loptions_α_596_0:      .quad            .Loptions_α_596_0_s
.Loptions_α_596_0_s:    .string          "-"
                        .size            n00163_scan_match_bx, .-n00163_scan_match_bx
                        .type            n00164_scan_tab_bx, @function
n00164_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_scan_tab_α:        mov              r11, 241
                        mov              rax, qword ptr [rsp + 2328]
                        cmp              rax, 1;                              jge   .Loptions_α_598_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_598_0:      cmp              rax, 1;                              jl    n00097_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00097_disjunction_af
                        mov              qword ptr [rsp + 2304], r14
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
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n00165_lit_integer_α
n00164_scan_tab_β:        mov              r11, 241
                        mov              r14, qword ptr [rsp + 2304];         jmp   n00097_disjunction_af
                        .size            n00164_scan_tab_bx, .-n00164_scan_tab_bx
                        .type            n00165_lit_integer_bx, @function
n00165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_integer_α:     mov              r11, 242
                        mov              qword ptr [rsp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_599_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n00166_scan_pos_α
.Loptions_α_599_0:      .quad            0
                        .size            n00165_lit_integer_bx, .-n00165_lit_integer_bx
                        .type            n00166_scan_pos_bx, @function
n00166_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_scan_pos_α:        mov              r11, 243
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Loptions_α_601_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_601_0:      cmp              rax, 1;                              jl    n00164_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00164_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00164_scan_tab_β
                        mov              qword ptr [rsp + 2256], 3
                        mov              qword ptr [rsp + 2264], rax;         jmp   n00167_conjunction_α
                        .size            n00166_scan_pos_bx, .-n00166_scan_pos_bx
                        .type            n00167_conjunction_bx, @function
n00167_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_conjunction_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00078_var_α
n00167_conjunction_β:     mov              r11, 244;                            jmp   n00097_disjunction_af
                        .size            n00167_conjunction_bx, .-n00167_conjunction_bx
                        .type            n00078_var_bx, @function
n00078_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_var_α:             mov              r11, 245
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00168_var_α
                        .size            n00078_var_bx, .-n00078_var_bx
                        .type            n00168_var_bx, @function
n00168_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_var_α:             mov              r11, 246
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00169_call_icon_α
                        .size            n00168_var_bx, .-n00168_var_bx
                        .type            n00169_call_icon_bx, @function
n00169_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_call_icon_α:       mov              r11, 247
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn608:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]
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
                        cmp              al, 104;                             je    n00170_var_α
                                                                              jmp   n00171_call_icon_α
n00169_call_icon_β:       mov              r11, 247;                            jmp   n00170_var_α
                        .size            n00169_call_icon_bx, .-n00169_call_icon_bx
                        .type            n00171_call_icon_bx, @function
n00171_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_call_icon_α:       mov              r11, 248
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn610:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn610]
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
                        cmp              al, 104;                             je    n00170_var_α
                                                                              jmp   n00078_var_α
n00171_call_icon_β:       mov              r11, 248;                            jmp   n00170_var_α
                        .size            n00171_call_icon_bx, .-n00171_call_icon_bx
                        .type            n00170_var_bx, @function
n00170_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00172_return_α
                        .size            n00170_var_bx, .-n00170_var_bx
                        .type            n00172_return_bx, @function
n00172_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_return_α:          mov              r11, 250
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
                        .size            n00172_return_bx, .-n00172_return_bx
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
                        add              rsp, 3152;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        add              rsp, 3152;                           jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_614_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_614_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_614_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_614_3:      add              rsp, 24
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
                        .type            n00173_var_bx, @function
n00173_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_var_α:             mov              r11, 251
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00174_assign_α
                        .size            n00173_var_bx, .-n00173_var_bx
                        .type            n00174_assign_bx, @function
n00174_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_assign_α:          mov              r11, 252
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [r9 + 144], rax            # Name__
                        mov              qword ptr [r9 + 152], rdx;           jmp   n00175_call_proc_staged_α
                        .size            n00174_assign_bx, .-n00174_assign_bx
                        .type            n00175_call_proc_staged_bx, @function
n00175_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_call_proc_staged_α:
                        mov              r11, 253
                        call             Signature___dcα;                     jmp   .LInit___α_639_2
.LInit___α_639_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LInit___α_639_29
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
.LInit___α_639_29:      mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n00176_call_proc_staged_α
                                                                              jmp   n00176_call_proc_staged_α
n00175_call_proc_staged_β:
                        mov              r11, 253;                            jmp   n00176_call_proc_staged_α
.LInit___β_639_0:       .quad            .LInit___β_639_0_s
.LInit___β_639_0_s:     .string          "Signature__"
                        .size            n00175_call_proc_staged_bx, .-n00175_call_proc_staged_bx
                        .type            n00176_call_proc_staged_bx, @function
n00176_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_call_proc_staged_α:
                        mov              r11, 254
                        call             Regions___dcα;                       jmp   .LInit___α_641_2
.LInit___α_641_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LInit___α_641_29
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
.LInit___α_641_29:      mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n00177_call_proc_staged_α
                                                                              jmp   n00177_call_proc_staged_α
n00176_call_proc_staged_β:
                        mov              r11, 254;                            jmp   n00177_call_proc_staged_α
.LInit___β_641_0:       .quad            .LInit___β_641_0_s
.LInit___β_641_0_s:     .string          "Regions__"
                        .size            n00176_call_proc_staged_bx, .-n00176_call_proc_staged_bx
                        .type            n00177_call_proc_staged_bx, @function
n00177_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_call_proc_staged_α:
                        mov              r11, 255
                        call             Time___dcα;                          jmp   .LInit___α_643_2
.LInit___α_643_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LInit___α_643_29
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
.LInit___α_643_29:      mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n00178_disjunction_α
                                                                              jmp   n00178_disjunction_α
n00177_call_proc_staged_β:
                        mov              r11, 255;                            jmp   n00178_disjunction_α
.LInit___β_643_0:       .quad            .LInit___β_643_0_s
.LInit___β_643_0_s:     .string          "Time__"
                        .size            n00177_call_proc_staged_bx, .-n00177_call_proc_staged_bx
                        .type            n00178_disjunction_bx, @function
n00178_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_disjunction_α:     mov              r11, 256
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00179_lit_string_α
n00178_disjunction_as:    mov              r11, 256
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .LInit___α_645_0
                                                                              jmp   n00180_var_α
.LInit___α_645_0:                                                             jmp   n00180_var_α
n00178_disjunction_β:     mov              r11, 256
                        mov              eax, dword ptr [rsp + 128];          jmp   n00180_var_α
n00178_disjunction_af:    mov              r11, 256
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00180_var_α
                        .size            n00178_disjunction_bx, .-n00178_disjunction_bx
                        .type            n00180_var_bx, @function
n00180_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_var_α:             mov              r11, 257
                        mov              rdi, qword ptr [rip + .LInit___α_646_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00181_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00182_assign_α
.LInit___α_646_0:       .quad            .LInit___α_646_0_s
.LInit___α_646_0_s:     .string          "write"
                        .size            n00180_var_bx, .-n00180_var_bx
                        .type            n00182_assign_bx, @function
n00182_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_assign_α:          mov              r11, 258
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 112], rax            # Save__
                        mov              qword ptr [r9 + 120], rdx;           jmp   n00181_var_α
                        .size            n00182_assign_bx, .-n00182_assign_bx
                        .type            n00181_var_bx, @function
n00181_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_var_α:             mov              r11, 259
                        mov              rdi, qword ptr [rip + .LInit___α_648_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00183_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00184_assign_α
.LInit___α_648_0:       .quad            .LInit___α_648_0_s
.LInit___α_648_0_s:     .string          "writes"
                        .size            n00181_var_bx, .-n00181_var_bx
                        .type            n00184_assign_bx, @function
n00184_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_assign_α:          mov              r11, 260
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 128], rax            # Saves__
                        mov              qword ptr [r9 + 136], rdx;           jmp   n00183_lit_integer_α
                        .size            n00184_assign_bx, .-n00184_assign_bx
                        .type            n00183_lit_integer_bx, @function
n00183_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_integer_α:     mov              r11, 261
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .LInit___α_650_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00185_assign_α
.LInit___α_650_0:       .quad            1
                        .size            n00183_lit_integer_bx, .-n00183_lit_integer_bx
                        .type            n00185_assign_bx, @function
n00185_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_assign_α:          mov              r11, 262
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .LInit___α_651_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00186_assign_α
.LInit___α_651_0:       .quad            .LInit___α_651_0_s
.LInit___α_651_0_s:     .string          "writes"
                        .size            n00185_assign_bx, .-n00185_assign_bx
                        .type            n00186_assign_bx, @function
n00186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              r11, 263
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .LInit___α_652_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00187_return_α
.LInit___α_652_0:       .quad            .LInit___α_652_0_s
.LInit___α_652_0_s:     .string          "write"
                        .size            n00186_assign_bx, .-n00186_assign_bx
                        .type            n00187_return_bx, @function
n00187_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_return_α:          mov              r11, 264
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n00187_return_bx, .-n00187_return_bx
                        .type            n00188_conjunction_bx, @function
n00188_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_conjunction_α:     mov              r11, 265;                            jmp   n00178_disjunction_as
n00188_conjunction_β:     mov              r11, 265;                            jmp   n00180_var_α
                        .size            n00188_conjunction_bx, .-n00188_conjunction_bx
                        .type            n00179_lit_string_bx, @function
n00179_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_lit_string_α:      mov              r11, 266
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .LInit___α_655_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00189_call_icon_α
n00179_lit_string_β:      mov              r11, 266;                            jmp   n00178_disjunction_af
.LInit___α_655_0:       .quad            .LInit___α_655_0_s
.LInit___α_655_0_s:     .string          "OUTPUT"
                        .size            n00179_lit_string_bx, .-n00179_lit_string_bx
                        .type            n00189_call_icon_bx, @function
n00189_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_call_icon_α:       mov              r11, 267
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn657:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn657]
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
                        cmp              al, 104;                             je    n00178_disjunction_af
                                                                              jmp   n00190_lit_string_α
n00189_call_icon_β:       mov              r11, 267;                            jmp   n00178_disjunction_af
                        .size            n00189_call_icon_bx, .-n00189_call_icon_bx
                        .type            n00190_lit_string_bx, @function
n00190_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_lit_string_α:      mov              r11, 268
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .LInit___α_658_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00191_call_icon_α
.LInit___α_658_0:       .quad            .LInit___α_658_0_s
.LInit___α_658_0_s:     .string          "*** Benchmarking with output ***"
                        .size            n00190_lit_string_bx, .-n00190_lit_string_bx
                        .type            n00191_call_icon_bx, @function
n00191_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_call_icon_α:       mov              r11, 269
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn660:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn660]
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
                        cmp              al, 104;                             je    n00192_return_α
                                                                              jmp   n00192_return_α
n00191_call_icon_β:       mov              r11, 269;                            jmp   n00192_return_α
                        .size            n00191_call_icon_bx, .-n00191_call_icon_bx
                        .type            n00192_return_bx, @function
n00192_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_return_α:          mov              r11, 270
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n00192_return_bx, .-n00192_return_bx
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
                        lea              rcx, [rip + .LInit___α_662_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_662_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_662_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_662_3:       add              rsp, 24
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
                        .type            n00193_disjunction_bx, @function
n00193_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_disjunction_α:     mov              r11, 271
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n00194_lit_string_α
n00193_disjunction_as:    mov              r11, 271
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .LTerm___α_681_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00195_var_α
.LTerm___α_681_0:                                                             jmp   n00195_var_α
n00193_disjunction_β:     mov              r11, 271
                        mov              eax, dword ptr [rsp + 288];          jmp   n00195_var_α
n00193_disjunction_af:    mov              r11, 271
                        add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288];          jmp   n00195_var_α
                        .size            n00193_disjunction_bx, .-n00193_disjunction_bx
                        .type            n00194_lit_string_bx, @function
n00194_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 6
                        mov              rax, qword ptr [rip + .LTerm___α_682_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00196_call_icon_α
n00194_lit_string_β:      mov              r11, 272;                            jmp   n00197_var_α
.LTerm___α_682_0:       .quad            .LTerm___α_682_0_s
.LTerm___α_682_0_s:     .string          "OUTPUT"
                        .size            n00194_lit_string_bx, .-n00194_lit_string_bx
                        .type            n00196_call_icon_bx, @function
n00196_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_call_icon_α:       mov              r11, 273
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn684:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn684]
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
                        cmp              al, 104;                             je    n00197_var_α
                                                                              jmp   n00193_disjunction_af
n00196_call_icon_β:       mov              r11, 273;                            jmp   n00197_var_α
                        .size            n00196_call_icon_bx, .-n00196_call_icon_bx
                        .type            n00197_var_bx, @function
n00197_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:             mov              r11, 274
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0;            jmp   n00198_var_α
n00197_var_β:             mov              r11, 274;                            jmp   n00193_disjunction_af
                        .size            n00197_var_bx, .-n00197_var_bx
                        .type            n00198_var_bx, @function
n00198_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_α:             mov              r11, 275
                        mov              rax, qword ptr [r9 + 112]            # Save__
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 368], rax           # result
                        mov              qword ptr [rsp + 376], rdx;          jmp   n00199_assign_α
                        .size            n00198_var_bx, .-n00198_var_bx
                        .type            n00199_assign_bx, @function
n00199_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_assign_α:          mov              r11, 276
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              rdi, qword ptr [rip + .LTerm___α_687_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00200_var_α
.LTerm___α_687_0:       .quad            .LTerm___α_687_0_s
.LTerm___α_687_0_s:     .string          "write"
                        .size            n00199_assign_bx, .-n00199_assign_bx
                        .type            n00200_var_bx, @function
n00200_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_var_α:             mov              r11, 277
                        mov              rax, qword ptr [r9 + 128]            # Saves__
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 336], rax           # result
                        mov              qword ptr [rsp + 344], rdx;          jmp   n00201_assign_α
                        .size            n00200_var_bx, .-n00200_var_bx
                        .type            n00201_assign_bx, @function
n00201_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_assign_α:          mov              r11, 278
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              rdi, qword ptr [rip + .LTerm___α_689_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00202_conjunction_α
.LTerm___α_689_0:       .quad            .LTerm___α_689_0_s
.LTerm___α_689_0_s:     .string          "writes"
                        .size            n00201_assign_bx, .-n00201_assign_bx
                        .type            n00202_conjunction_bx, @function
n00202_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_conjunction_α:     mov              r11, 279
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00193_disjunction_as
n00202_conjunction_β:     mov              r11, 279;                            jmp   n00195_var_α
                        .size            n00202_conjunction_bx, .-n00202_conjunction_bx
                        .type            n00195_var_bx, @function
n00195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_var_α:             mov              r11, 280
                        mov              rax, qword ptr [r9 + 144]            # Name__
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00203_lit_string_α
                        .size            n00195_var_bx, .-n00195_var_bx
                        .type            n00203_lit_string_bx, @function
n00203_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_lit_string_α:      mov              r11, 281
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .LTerm___α_692_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00204_call_proc_staged_α
.LTerm___α_692_0:       .quad            .LTerm___α_692_0_s
.LTerm___α_692_0_s:     .string          " elapsed time = "
                        .size            n00203_lit_string_bx, .-n00203_lit_string_bx
                        .type            n00204_call_proc_staged_bx, @function
n00204_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_call_proc_staged_α:
                        mov              r11, 282
                        call             Time___dcα;                          jmp   .LTerm___α_694_2
.LTerm___α_694_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LTerm___α_694_29
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
.LTerm___α_694_29:      mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00205_call_proc_staged_α
                                                                              jmp   n00206_call_icon_α
n00204_call_proc_staged_β:
                        mov              r11, 282;                            jmp   n00205_call_proc_staged_α
.LTerm___β_694_0:       .quad            .LTerm___β_694_0_s
.LTerm___β_694_0_s:     .string          "Time__"
                        .size            n00204_call_proc_staged_bx, .-n00204_call_proc_staged_bx
                        .type            n00206_call_icon_bx, @function
n00206_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_call_icon_α:       mov              r11, 283
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
.Lrkfn696:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn696]
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
                        cmp              al, 104;                             je    n00205_call_proc_staged_α
                                                                              jmp   n00205_call_proc_staged_α
n00206_call_icon_β:       mov              r11, 283;                            jmp   n00205_call_proc_staged_α
                        .size            n00206_call_icon_bx, .-n00206_call_icon_bx
                        .type            n00205_call_proc_staged_bx, @function
n00205_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_call_proc_staged_α:
                        mov              r11, 284
                        call             Regions___dcα;                       jmp   .LTerm___α_698_2
.LTerm___α_698_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LTerm___α_698_29
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
.LTerm___α_698_29:      mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00207_call_proc_staged_α
                                                                              jmp   n00207_call_proc_staged_α
n00205_call_proc_staged_β:
                        mov              r11, 284;                            jmp   n00207_call_proc_staged_α
.LTerm___β_698_0:       .quad            .LTerm___β_698_0_s
.LTerm___β_698_0_s:     .string          "Regions__"
                        .size            n00205_call_proc_staged_bx, .-n00205_call_proc_staged_bx
                        .type            n00207_call_proc_staged_bx, @function
n00207_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_call_proc_staged_α:
                        mov              r11, 285
                        call             Storage___dcα;                       jmp   .LTerm___α_700_2
.LTerm___α_700_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LTerm___α_700_29
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
.LTerm___α_700_29:      mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n00208_call_proc_staged_α
                                                                              jmp   n00208_call_proc_staged_α
n00207_call_proc_staged_β:
                        mov              r11, 285;                            jmp   n00208_call_proc_staged_α
.LTerm___β_700_0:       .quad            .LTerm___β_700_0_s
.LTerm___β_700_0_s:     .string          "Storage__"
                        .size            n00207_call_proc_staged_bx, .-n00207_call_proc_staged_bx
                        .type            n00208_call_proc_staged_bx, @function
n00208_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_call_proc_staged_α:
                        mov              r11, 286
                        call             Collections___dcα;                   jmp   .LTerm___α_702_2
.LTerm___α_702_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LTerm___α_702_29
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
.LTerm___α_702_29:      mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n00209_return_α
                                                                              jmp   n00209_return_α
n00208_call_proc_staged_β:
                        mov              r11, 286;                            jmp   n00209_return_α
.LTerm___β_702_0:       .quad            .LTerm___β_702_0_s
.LTerm___β_702_0_s:     .string          "Collections__"
                        .size            n00208_call_proc_staged_bx, .-n00208_call_proc_staged_bx
                        .type            n00209_return_bx, @function
n00209_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_return_α:          mov              r11, 287
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Term___γ
                        .size            n00209_return_bx, .-n00209_return_bx
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
                        lea              rcx, [rip + .LTerm___α_704_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_704_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_704_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_704_3:       add              rsp, 24
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
                        .type            n00210_disjunction_bx, @function
n00210_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_disjunction_α:     mov              r11, 288
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00211_var_ref_α
n00210_disjunction_as:    mov              r11, 288
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .LCollections___α_743_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00212_make_list_α
.LCollections___α_743_0:
                                                                              jmp   n00212_make_list_α
n00210_disjunction_β:     mov              r11, 288
                        mov              eax, dword ptr [rsp + 656];          jmp   n00212_make_list_α
n00210_disjunction_af:    mov              r11, 288
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00212_make_list_α
                        .size            n00210_disjunction_bx, .-n00210_disjunction_bx
                        .type            n00212_make_list_bx, @function
n00212_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_make_list_α:       mov              r11, 289
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00213_assign_α
                        .size            n00212_make_list_bx, .-n00212_make_list_bx
                        .type            n00213_assign_bx, @function
n00213_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00214_var_α
                        .size            n00213_assign_bx, .-n00213_assign_bx
                        .type            n00214_var_bx, @function
n00214_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_α:             mov              r11, 291
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00215_kw_icon_gen_α
                        .size            n00214_var_bx, .-n00214_var_bx
                        .type            n00215_kw_icon_gen_bx, @function
n00215_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_kw_icon_gen_α:     mov              r11, 292
                        mov              qword ptr [rsp + 608], 0
.LCollections___α_749_1:
                        mov              rdi, qword ptr [rip + .LCollections___α_749_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00216_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00217_call_icon_α
n00215_kw_icon_gen_β:     mov              r11, 292;                            jmp   .LCollections___α_749_1
.LCollections___α_749_0:
                        .quad            .LCollections___α_749_0_s
.LCollections___α_749_0_s:
                        .string          "&collections"
                        .size            n00215_kw_icon_gen_bx, .-n00215_kw_icon_gen_bx
                        .type            n00217_call_icon_bx, @function
n00217_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_call_icon_α:       mov              r11, 293
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn751:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn751]
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
                        cmp              al, 104;                             je    n00215_kw_icon_gen_β
                                                                              jmp   n00215_kw_icon_gen_β
n00217_call_icon_β:       mov              r11, 293;                            jmp   n00215_kw_icon_gen_β
                        .size            n00217_call_icon_bx, .-n00217_call_icon_bx
                        .type            n00216_lit_string_bx, @function
n00216_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_lit_string_α:      mov              r11, 294
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .LCollections___α_752_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00218_call_icon_α
.LCollections___α_752_0:
                        .quad            .LCollections___α_752_0_s
.LCollections___α_752_0_s:
                        .string          "collections"
                        .size            n00216_lit_string_bx, .-n00216_lit_string_bx
                        .type            n00218_call_icon_bx, @function
n00218_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_call_icon_α:       mov              r11, 295
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn754:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn754]
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
                        cmp              al, 104;                             je    n00219_lit_integer_α
                                                                              jmp   n00219_lit_integer_α
n00218_call_icon_β:       mov              r11, 295;                            jmp   n00219_lit_integer_α
                        .size            n00218_call_icon_bx, .-n00218_call_icon_bx
                        .type            n00219_lit_integer_bx, @function
n00219_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_lit_integer_α:     mov              r11, 296
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .LCollections___α_755_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00220_var_α
.LCollections___α_755_0:
                        .quad            1
                        .size            n00219_lit_integer_bx, .-n00219_lit_integer_bx
                        .type            n00220_var_bx, @function
n00220_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_var_α:             mov              r11, 297
                        mov              rax, qword ptr [r9 + 288]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00221_unop_α
                        .size            n00220_var_bx, .-n00220_var_bx
                        .type            n00221_unop_bx, @function
n00221_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_unop_α:            mov              r11, 298
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00222_to_α
                        .size            n00221_unop_bx, .-n00221_unop_bx
                        .type            n00222_to_bx, @function
n00222_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_to_α:              mov              r11, 299
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
.LCollections___α_759_0:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00223_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00224_assign_α
n00222_to_β:              mov              r11, 299
                        inc              qword ptr [rsp + 48];                jmp   .LCollections___α_759_0
                        .size            n00222_to_bx, .-n00222_to_bx
                        .type            n00224_assign_bx, @function
n00224_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n00225_bound_α
                        .size            n00224_assign_bx, .-n00224_assign_bx
                        .type            n00225_bound_bx, @function
n00225_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_bound_α:           mov              r11, 301
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00226_var_ref_α
                        .size            n00225_bound_bx, .-n00225_bound_bx
                        .type            n00226_var_ref_bx, @function
n00226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00227_var_α
                        .size            n00226_var_ref_bx, .-n00226_var_ref_bx
                        .type            n00227_var_bx, @function
n00227_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_α:             mov              r11, 303
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00228_subscript_α
                        .size            n00227_var_bx, .-n00227_var_bx
                        .type            n00228_subscript_bx, @function
n00228_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_subscript_α:       mov              r11, 304
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
                        cmp              al, 104;                             je    n00229_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00230_deref_α
                        .size            n00228_subscript_bx, .-n00228_subscript_bx
                        .type            n00230_deref_bx, @function
n00230_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_deref_α:           mov              r11, 305
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
                        cmp              al, 104;                             je    n00229_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00231_var_ref_α
                        .size            n00230_deref_bx, .-n00230_deref_bx
                        .type            n00231_var_ref_bx, @function
n00231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00232_var_α
                        .size            n00231_var_ref_bx, .-n00231_var_ref_bx
                        .type            n00232_var_bx, @function
n00232_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_var_α:             mov              r11, 307
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00233_subscript_α
                        .size            n00232_var_bx, .-n00232_var_bx
                        .type            n00233_subscript_bx, @function
n00233_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_subscript_α:       mov              r11, 308
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
                        cmp              al, 104;                             je    n00229_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00234_deref_α
                        .size            n00233_subscript_bx, .-n00233_subscript_bx
                        .type            n00234_deref_bx, @function
n00234_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_deref_α:           mov              r11, 309
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
                        cmp              al, 104;                             je    n00229_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00235_lit_integer_α
                        .size            n00234_deref_bx, .-n00234_deref_bx
                        .type            n00235_lit_integer_bx, @function
n00235_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_lit_integer_α:     mov              r11, 310
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .LCollections___α_775_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00236_call_icon_α
.LCollections___α_775_0:
                        .quad            8
                        .size            n00235_lit_integer_bx, .-n00235_lit_integer_bx
                        .type            n00236_call_icon_bx, @function
n00236_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_icon_α:       mov              r11, 311
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn777:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn777]
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
                        cmp              al, 104;                             je    n00229_unmark_α
                                                                              jmp   n00237_call_icon_α
n00236_call_icon_β:       mov              r11, 311;                            jmp   n00229_unmark_α
                        .size            n00236_call_icon_bx, .-n00236_call_icon_bx
                        .type            n00237_call_icon_bx, @function
n00237_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_call_icon_α:       mov              r11, 312
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn779:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn779]
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
                        cmp              al, 104;                             je    n00229_unmark_α
                                                                              jmp   n00229_unmark_α
n00237_call_icon_β:       mov              r11, 312;                            jmp   n00229_unmark_α
                        .size            n00237_call_icon_bx, .-n00237_call_icon_bx
                        .type            n00229_unmark_bx, @function
n00229_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_unmark_α:          mov              r11, 313
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00222_to_β
                        .size            n00229_unmark_bx, .-n00229_unmark_bx
                        .type            n00223_return_bx, @function
n00223_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_return_α:          mov              r11, 314
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Collections___γ
                        .size            n00223_return_bx, .-n00223_return_bx
                        .type            n00211_var_ref_bx, @function
n00211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        mov              rdx, 1879052592                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00238_nulltest_var_α
n00211_var_ref_β:         mov              r11, 315;                            jmp   n00210_disjunction_af
                        .size            n00211_var_ref_bx, .-n00211_var_ref_bx
                        .type            n00238_nulltest_var_bx, @function
n00238_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_nulltest_var_α:    mov              r11, 316
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 104;                             je    n00210_disjunction_af
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
                        cmp              al, 104;                             je    n00210_disjunction_af
                        cmp              eax, 0;                              jne   n00210_disjunction_af
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00239_lit_integer_α
                        .size            n00238_nulltest_var_bx, .-n00238_nulltest_var_bx
                        .type            n00239_lit_integer_bx, @function
n00239_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_integer_α:     mov              r11, 317
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .LCollections___α_786_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00240_assign_var_α
.LCollections___α_786_0:
                        .quad            1
                        .size            n00239_lit_integer_bx, .-n00239_lit_integer_bx
                        .type            n00240_assign_var_bx, @function
n00240_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_assign_var_α:      mov              r11, 318
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
                        cmp              al, 104;                             je    n00210_disjunction_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00241_lit_string_α
                        .size            n00240_assign_var_bx, .-n00240_assign_var_bx
                        .type            n00241_lit_string_bx, @function
n00241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .LCollections___α_788_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00242_lit_string_α
.LCollections___α_788_0:
                        .quad            .LCollections___α_788_0_s
.LCollections___α_788_0_s:
                        .string          "total"
                        .size            n00241_lit_string_bx, .-n00241_lit_string_bx
                        .type            n00242_lit_string_bx, @function
n00242_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_lit_string_α:      mov              r11, 320
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 6
                        mov              rax, qword ptr [rip + .LCollections___α_789_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00243_lit_string_α
.LCollections___α_789_0:
                        .quad            .LCollections___α_789_0_s
.LCollections___α_789_0_s:
                        .string          "static"
                        .size            n00242_lit_string_bx, .-n00242_lit_string_bx
                        .type            n00243_lit_string_bx, @function
n00243_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 6
                        mov              rax, qword ptr [rip + .LCollections___α_790_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00244_lit_string_α
.LCollections___α_790_0:
                        .quad            .LCollections___α_790_0_s
.LCollections___α_790_0_s:
                        .string          "string"
                        .size            n00243_lit_string_bx, .-n00243_lit_string_bx
                        .type            n00244_lit_string_bx, @function
n00244_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 5
                        mov              rax, qword ptr [rip + .LCollections___α_791_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00245_make_list_α
.LCollections___α_791_0:
                        .quad            .LCollections___α_791_0_s
.LCollections___α_791_0_s:
                        .string          "block"
                        .size            n00244_lit_string_bx, .-n00244_lit_string_bx
                        .type            n00245_make_list_bx, @function
n00245_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_make_list_α:       mov              r11, 323
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00246_assign_α
                        .size            n00245_make_list_bx, .-n00245_make_list_bx
                        .type            n00246_assign_bx, @function
n00246_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_assign_α:          mov              r11, 324
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 288], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 296], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00210_disjunction_as
n00246_assign_β:          mov              r11, 324;                            jmp   n00212_make_list_α
                        .size            n00246_assign_bx, .-n00246_assign_bx
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
                        lea              rcx, [rip + .LCollections___α_795_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_795_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_795_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_795_3:
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
                        .type            n00247_disjunction_bx, @function
n00247_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_disjunction_α:     mov              r11, 325
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00248_var_ref_α
n00247_disjunction_as:    mov              r11, 325
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .LRegions___α_833_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00249_make_list_α
.LRegions___α_833_0:                                                          jmp   n00249_make_list_α
n00247_disjunction_β:     mov              r11, 325
                        mov              eax, dword ptr [rsp + 656];          jmp   n00249_make_list_α
n00247_disjunction_af:    mov              r11, 325
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00249_make_list_α
                        .size            n00247_disjunction_bx, .-n00247_disjunction_bx
                        .type            n00249_make_list_bx, @function
n00249_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_make_list_α:       mov              r11, 326
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00250_assign_α
                        .size            n00249_make_list_bx, .-n00249_make_list_bx
                        .type            n00250_assign_bx, @function
n00250_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_assign_α:          mov              r11, 327
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00251_var_α
                        .size            n00250_assign_bx, .-n00250_assign_bx
                        .type            n00251_var_bx, @function
n00251_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_var_α:             mov              r11, 328
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00252_kw_icon_gen_α
                        .size            n00251_var_bx, .-n00251_var_bx
                        .type            n00252_kw_icon_gen_bx, @function
n00252_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_kw_icon_gen_α:     mov              r11, 329
                        mov              qword ptr [rsp + 608], 0
.LRegions___α_839_1:    mov              rdi, qword ptr [rip + .LRegions___α_839_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00253_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00254_call_icon_α
n00252_kw_icon_gen_β:     mov              r11, 329;                            jmp   .LRegions___α_839_1
.LRegions___α_839_0:    .quad            .LRegions___α_839_0_s
.LRegions___α_839_0_s:  .string          "&regions"
                        .size            n00252_kw_icon_gen_bx, .-n00252_kw_icon_gen_bx
                        .type            n00254_call_icon_bx, @function
n00254_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_icon_α:       mov              r11, 330
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn841:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn841]
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
                        cmp              al, 104;                             je    n00252_kw_icon_gen_β
                                                                              jmp   n00252_kw_icon_gen_β
n00254_call_icon_β:       mov              r11, 330;                            jmp   n00252_kw_icon_gen_β
                        .size            n00254_call_icon_bx, .-n00254_call_icon_bx
                        .type            n00253_lit_string_bx, @function
n00253_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .LRegions___α_842_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00255_call_icon_α
.LRegions___α_842_0:    .quad            .LRegions___α_842_0_s
.LRegions___α_842_0_s:  .string          "regions"
                        .size            n00253_lit_string_bx, .-n00253_lit_string_bx
                        .type            n00255_call_icon_bx, @function
n00255_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_call_icon_α:       mov              r11, 332
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn844:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn844]
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
                        cmp              al, 104;                             je    n00256_lit_integer_α
                                                                              jmp   n00256_lit_integer_α
n00255_call_icon_β:       mov              r11, 332;                            jmp   n00256_lit_integer_α
                        .size            n00255_call_icon_bx, .-n00255_call_icon_bx
                        .type            n00256_lit_integer_bx, @function
n00256_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_lit_integer_α:     mov              r11, 333
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .LRegions___α_845_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00257_var_α
.LRegions___α_845_0:    .quad            1
                        .size            n00256_lit_integer_bx, .-n00256_lit_integer_bx
                        .type            n00257_var_bx, @function
n00257_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_var_α:             mov              r11, 334
                        mov              rax, qword ptr [r9 + 320]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00258_unop_α
                        .size            n00257_var_bx, .-n00257_var_bx
                        .type            n00258_unop_bx, @function
n00258_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_unop_α:            mov              r11, 335
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00259_to_α
                        .size            n00258_unop_bx, .-n00258_unop_bx
                        .type            n00259_to_bx, @function
n00259_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_to_α:              mov              r11, 336
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
.LRegions___α_849_0:    mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00260_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00261_assign_α
n00259_to_β:              mov              r11, 336
                        inc              qword ptr [rsp + 48];                jmp   .LRegions___α_849_0
                        .size            n00259_to_bx, .-n00259_to_bx
                        .type            n00261_assign_bx, @function
n00261_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_assign_α:          mov              r11, 337
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00262_bound_α
                        .size            n00261_assign_bx, .-n00261_assign_bx
                        .type            n00262_bound_bx, @function
n00262_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_bound_α:           mov              r11, 338
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00263_var_ref_α
                        .size            n00262_bound_bx, .-n00262_bound_bx
                        .type            n00263_var_ref_bx, @function
n00263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_var_ref_α:         mov              r11, 339
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00264_var_α
                        .size            n00263_var_ref_bx, .-n00263_var_ref_bx
                        .type            n00264_var_bx, @function
n00264_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_α:             mov              r11, 340
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00265_subscript_α
                        .size            n00264_var_bx, .-n00264_var_bx
                        .type            n00265_subscript_bx, @function
n00265_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_subscript_α:       mov              r11, 341
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
                        cmp              al, 104;                             je    n00266_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00267_deref_α
                        .size            n00265_subscript_bx, .-n00265_subscript_bx
                        .type            n00267_deref_bx, @function
n00267_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_deref_α:           mov              r11, 342
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
                        cmp              al, 104;                             je    n00266_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00268_var_ref_α
                        .size            n00267_deref_bx, .-n00267_deref_bx
                        .type            n00268_var_ref_bx, @function
n00268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_ref_α:         mov              r11, 343
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00269_var_α
                        .size            n00268_var_ref_bx, .-n00268_var_ref_bx
                        .type            n00269_var_bx, @function
n00269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00270_subscript_α
                        .size            n00269_var_bx, .-n00269_var_bx
                        .type            n00270_subscript_bx, @function
n00270_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_subscript_α:       mov              r11, 345
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
                        cmp              al, 104;                             je    n00266_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00271_deref_α
                        .size            n00270_subscript_bx, .-n00270_subscript_bx
                        .type            n00271_deref_bx, @function
n00271_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_deref_α:           mov              r11, 346
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
                        cmp              al, 104;                             je    n00266_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00272_lit_integer_α
                        .size            n00271_deref_bx, .-n00271_deref_bx
                        .type            n00272_lit_integer_bx, @function
n00272_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_lit_integer_α:     mov              r11, 347
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .LRegions___α_865_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00273_call_icon_α
.LRegions___α_865_0:    .quad            8
                        .size            n00272_lit_integer_bx, .-n00272_lit_integer_bx
                        .type            n00273_call_icon_bx, @function
n00273_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_call_icon_α:       mov              r11, 348
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn867:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn867]
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
                        cmp              al, 104;                             je    n00266_unmark_α
                                                                              jmp   n00274_call_icon_α
n00273_call_icon_β:       mov              r11, 348;                            jmp   n00266_unmark_α
                        .size            n00273_call_icon_bx, .-n00273_call_icon_bx
                        .type            n00274_call_icon_bx, @function
n00274_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_call_icon_α:       mov              r11, 349
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn869:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]
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
                        cmp              al, 104;                             je    n00266_unmark_α
                                                                              jmp   n00266_unmark_α
n00274_call_icon_β:       mov              r11, 349;                            jmp   n00266_unmark_α
                        .size            n00274_call_icon_bx, .-n00274_call_icon_bx
                        .type            n00266_unmark_bx, @function
n00266_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_unmark_α:          mov              r11, 350
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00259_to_β
                        .size            n00266_unmark_bx, .-n00266_unmark_bx
                        .type            n00260_return_bx, @function
n00260_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_return_α:          mov              r11, 351
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Regions___γ
                        .size            n00260_return_bx, .-n00260_return_bx
                        .type            n00248_var_ref_bx, @function
n00248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_ref_α:         mov              r11, 352
                        mov              rax, 4294967336
                        mov              rdx, 1879052624                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00275_nulltest_var_α
n00248_var_ref_β:         mov              r11, 352;                            jmp   n00247_disjunction_af
                        .size            n00248_var_ref_bx, .-n00248_var_ref_bx
                        .type            n00275_nulltest_var_bx, @function
n00275_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_nulltest_var_α:    mov              r11, 353
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    n00247_disjunction_af
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
                        cmp              al, 104;                             je    n00247_disjunction_af
                        cmp              eax, 0;                              jne   n00247_disjunction_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00276_lit_integer_α
                        .size            n00275_nulltest_var_bx, .-n00275_nulltest_var_bx
                        .type            n00276_lit_integer_bx, @function
n00276_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_lit_integer_α:     mov              r11, 354
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .LRegions___α_876_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00277_assign_var_α
.LRegions___α_876_0:    .quad            1
                        .size            n00276_lit_integer_bx, .-n00276_lit_integer_bx
                        .type            n00277_assign_var_bx, @function
n00277_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_assign_var_α:      mov              r11, 355
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
                        cmp              al, 104;                             je    n00247_disjunction_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00278_lit_string_α
                        .size            n00277_assign_var_bx, .-n00277_assign_var_bx
                        .type            n00278_lit_string_bx, @function
n00278_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_lit_string_α:      mov              r11, 356
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .LRegions___α_878_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00279_lit_string_α
.LRegions___α_878_0:    .quad            .LRegions___α_878_0_s
.LRegions___α_878_0_s:  .string          "static"
                        .size            n00278_lit_string_bx, .-n00278_lit_string_bx
                        .type            n00279_lit_string_bx, @function
n00279_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_lit_string_α:      mov              r11, 357
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .LRegions___α_879_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00280_lit_string_α
.LRegions___α_879_0:    .quad            .LRegions___α_879_0_s
.LRegions___α_879_0_s:  .string          "string"
                        .size            n00279_lit_string_bx, .-n00279_lit_string_bx
                        .type            n00280_lit_string_bx, @function
n00280_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_lit_string_α:      mov              r11, 358
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .LRegions___α_880_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00281_make_list_α
.LRegions___α_880_0:    .quad            .LRegions___α_880_0_s
.LRegions___α_880_0_s:  .string          "block"
                        .size            n00280_lit_string_bx, .-n00280_lit_string_bx
                        .type            n00281_make_list_bx, @function
n00281_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_make_list_α:       mov              r11, 359
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00282_assign_α
                        .size            n00281_make_list_bx, .-n00281_make_list_bx
                        .type            n00282_assign_bx, @function
n00282_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_assign_α:          mov              r11, 360
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 320], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 328], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00247_disjunction_as
n00282_assign_β:          mov              r11, 360;                            jmp   n00249_make_list_α
                        .size            n00282_assign_bx, .-n00282_assign_bx
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
                        lea              rcx, [rip + .LRegions___α_884_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_884_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_884_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_884_3:    add              rsp, 24
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
                        .type            n00283_kw_icon_bx, @function
n00283_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_kw_icon_α:         mov              r11, 361
                        mov              rdi, qword ptr [rip + .LSignature___α_892_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00284_kw_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00285_call_icon_α
n00283_kw_icon_β:         mov              r11, 361;                            jmp   n00284_kw_icon_α
.LSignature___α_892_0:  .quad            .LSignature___α_892_0_s
.LSignature___α_892_0_s:
                        .string          "&version"
                        .size            n00283_kw_icon_bx, .-n00283_kw_icon_bx
                        .type            n00285_call_icon_bx, @function
n00285_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_call_icon_α:       mov              r11, 362
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn894:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn894]
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
                        cmp              al, 104;                             je    n00284_kw_icon_α
                                                                              jmp   n00284_kw_icon_α
n00285_call_icon_β:       mov              r11, 362;                            jmp   n00284_kw_icon_α
                        .size            n00285_call_icon_bx, .-n00285_call_icon_bx
                        .type            n00284_kw_icon_bx, @function
n00284_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_kw_icon_α:         mov              r11, 363
                        mov              rdi, qword ptr [rip + .LSignature___α_895_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00286_kw_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00287_call_icon_α
n00284_kw_icon_β:         mov              r11, 363;                            jmp   n00286_kw_icon_gen_α
.LSignature___α_895_0:  .quad            .LSignature___α_895_0_s
.LSignature___α_895_0_s:
                        .string          "&host"
                        .size            n00284_kw_icon_bx, .-n00284_kw_icon_bx
                        .type            n00287_call_icon_bx, @function
n00287_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_call_icon_α:       mov              r11, 364
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn897:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn897]
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
                        cmp              al, 104;                             je    n00286_kw_icon_gen_α
                                                                              jmp   n00286_kw_icon_gen_α
n00287_call_icon_β:       mov              r11, 364;                            jmp   n00286_kw_icon_gen_α
                        .size            n00287_call_icon_bx, .-n00287_call_icon_bx
                        .type            n00286_kw_icon_gen_bx, @function
n00286_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_kw_icon_gen_α:     mov              r11, 365
                        mov              qword ptr [rsp + 80], 0
.LSignature___α_898_1:  mov              rdi, qword ptr [rip + .LSignature___α_898_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00288_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n00289_call_icon_α
n00286_kw_icon_gen_β:     mov              r11, 365;                            jmp   .LSignature___α_898_1
.LSignature___α_898_0:  .quad            .LSignature___α_898_0_s
.LSignature___α_898_0_s:
                        .string          "&features"
                        .size            n00286_kw_icon_gen_bx, .-n00286_kw_icon_gen_bx
                        .type            n00289_call_icon_bx, @function
n00289_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_call_icon_α:       mov              r11, 366
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn900:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn900]
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
                        cmp              al, 104;                             je    n00286_kw_icon_gen_β
                                                                              jmp   n00286_kw_icon_gen_β
n00289_call_icon_β:       mov              r11, 366;                            jmp   n00286_kw_icon_gen_β
                        .size            n00289_call_icon_bx, .-n00289_call_icon_bx
                        .type            n00288_return_bx, @function
n00288_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_return_α:          mov              r11, 367
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Signature___γ
                        .size            n00288_return_bx, .-n00288_return_bx
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
                        lea              rcx, [rip + .LSignature___α_902_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_902_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_902_2:  add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_902_3:  add              rsp, 24
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
                        .type            n00290_disjunction_bx, @function
n00290_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_disjunction_α:     mov              r11, 368
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00291_var_ref_α
n00290_disjunction_as:    mov              r11, 368
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .LStorage___α_940_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00292_make_list_α
.LStorage___α_940_0:                                                          jmp   n00292_make_list_α
n00290_disjunction_β:     mov              r11, 368
                        mov              eax, dword ptr [rsp + 656];          jmp   n00292_make_list_α
n00290_disjunction_af:    mov              r11, 368
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00292_make_list_α
                        .size            n00290_disjunction_bx, .-n00290_disjunction_bx
                        .type            n00292_make_list_bx, @function
n00292_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_make_list_α:       mov              r11, 369
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00293_assign_α
                        .size            n00292_make_list_bx, .-n00292_make_list_bx
                        .type            n00293_assign_bx, @function
n00293_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_assign_α:          mov              r11, 370
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00294_var_α
                        .size            n00293_assign_bx, .-n00293_assign_bx
                        .type            n00294_var_bx, @function
n00294_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_var_α:             mov              r11, 371
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00295_kw_icon_gen_α
                        .size            n00294_var_bx, .-n00294_var_bx
                        .type            n00295_kw_icon_gen_bx, @function
n00295_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_kw_icon_gen_α:     mov              r11, 372
                        mov              qword ptr [rsp + 608], 0
.LStorage___α_946_1:    mov              rdi, qword ptr [rip + .LStorage___α_946_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00296_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00297_call_icon_α
n00295_kw_icon_gen_β:     mov              r11, 372;                            jmp   .LStorage___α_946_1
.LStorage___α_946_0:    .quad            .LStorage___α_946_0_s
.LStorage___α_946_0_s:  .string          "&storage"
                        .size            n00295_kw_icon_gen_bx, .-n00295_kw_icon_gen_bx
                        .type            n00297_call_icon_bx, @function
n00297_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_call_icon_α:       mov              r11, 373
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn948:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn948]
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
                        cmp              al, 104;                             je    n00295_kw_icon_gen_β
                                                                              jmp   n00295_kw_icon_gen_β
n00297_call_icon_β:       mov              r11, 373;                            jmp   n00295_kw_icon_gen_β
                        .size            n00297_call_icon_bx, .-n00297_call_icon_bx
                        .type            n00296_lit_string_bx, @function
n00296_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_lit_string_α:      mov              r11, 374
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .LStorage___α_949_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00298_call_icon_α
.LStorage___α_949_0:    .quad            .LStorage___α_949_0_s
.LStorage___α_949_0_s:  .string          "storage"
                        .size            n00296_lit_string_bx, .-n00296_lit_string_bx
                        .type            n00298_call_icon_bx, @function
n00298_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_call_icon_α:       mov              r11, 375
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn951:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn951]
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
                        cmp              al, 104;                             je    n00299_lit_integer_α
                                                                              jmp   n00299_lit_integer_α
n00298_call_icon_β:       mov              r11, 375;                            jmp   n00299_lit_integer_α
                        .size            n00298_call_icon_bx, .-n00298_call_icon_bx
                        .type            n00299_lit_integer_bx, @function
n00299_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_lit_integer_α:     mov              r11, 376
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .LStorage___α_952_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00300_var_α
.LStorage___α_952_0:    .quad            1
                        .size            n00299_lit_integer_bx, .-n00299_lit_integer_bx
                        .type            n00300_var_bx, @function
n00300_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_var_α:             mov              r11, 377
                        mov              rax, qword ptr [r9 + 352]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00301_unop_α
                        .size            n00300_var_bx, .-n00300_var_bx
                        .type            n00301_unop_bx, @function
n00301_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_unop_α:            mov              r11, 378
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00302_to_α
                        .size            n00301_unop_bx, .-n00301_unop_bx
                        .type            n00302_to_bx, @function
n00302_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_to_α:              mov              r11, 379
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
.LStorage___α_956_0:    mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00303_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00304_assign_α
n00302_to_β:              mov              r11, 379
                        inc              qword ptr [rsp + 48];                jmp   .LStorage___α_956_0
                        .size            n00302_to_bx, .-n00302_to_bx
                        .type            n00304_assign_bx, @function
n00304_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_assign_α:          mov              r11, 380
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00305_bound_α
                        .size            n00304_assign_bx, .-n00304_assign_bx
                        .type            n00305_bound_bx, @function
n00305_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_bound_α:           mov              r11, 381
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00306_var_ref_α
                        .size            n00305_bound_bx, .-n00305_bound_bx
                        .type            n00306_var_ref_bx, @function
n00306_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        mov              rdx, 1879052640                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00307_var_α
                        .size            n00306_var_ref_bx, .-n00306_var_ref_bx
                        .type            n00307_var_bx, @function
n00307_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_var_α:             mov              r11, 383
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00308_subscript_α
                        .size            n00307_var_bx, .-n00307_var_bx
                        .type            n00308_subscript_bx, @function
n00308_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_subscript_α:       mov              r11, 384
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
                        cmp              al, 104;                             je    n00309_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00310_deref_α
                        .size            n00308_subscript_bx, .-n00308_subscript_bx
                        .type            n00310_deref_bx, @function
n00310_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_deref_α:           mov              r11, 385
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
                        cmp              al, 104;                             je    n00309_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00311_var_ref_α
                        .size            n00310_deref_bx, .-n00310_deref_bx
                        .type            n00311_var_ref_bx, @function
n00311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_ref_α:         mov              r11, 386
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00312_var_α
                        .size            n00311_var_ref_bx, .-n00311_var_ref_bx
                        .type            n00312_var_bx, @function
n00312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_var_α:             mov              r11, 387
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00313_subscript_α
                        .size            n00312_var_bx, .-n00312_var_bx
                        .type            n00313_subscript_bx, @function
n00313_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_subscript_α:       mov              r11, 388
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
                        cmp              al, 104;                             je    n00309_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00314_deref_α
                        .size            n00313_subscript_bx, .-n00313_subscript_bx
                        .type            n00314_deref_bx, @function
n00314_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_deref_α:           mov              r11, 389
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
                        cmp              al, 104;                             je    n00309_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00315_lit_integer_α
                        .size            n00314_deref_bx, .-n00314_deref_bx
                        .type            n00315_lit_integer_bx, @function
n00315_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_lit_integer_α:     mov              r11, 390
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .LStorage___α_972_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00316_call_icon_α
.LStorage___α_972_0:    .quad            8
                        .size            n00315_lit_integer_bx, .-n00315_lit_integer_bx
                        .type            n00316_call_icon_bx, @function
n00316_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_call_icon_α:       mov              r11, 391
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn974:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn974]
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
                        cmp              al, 104;                             je    n00309_unmark_α
                                                                              jmp   n00317_call_icon_α
n00316_call_icon_β:       mov              r11, 391;                            jmp   n00309_unmark_α
                        .size            n00316_call_icon_bx, .-n00316_call_icon_bx
                        .type            n00317_call_icon_bx, @function
n00317_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_call_icon_α:       mov              r11, 392
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn976:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn976]
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
                        cmp              al, 104;                             je    n00309_unmark_α
                                                                              jmp   n00309_unmark_α
n00317_call_icon_β:       mov              r11, 392;                            jmp   n00309_unmark_α
                        .size            n00317_call_icon_bx, .-n00317_call_icon_bx
                        .type            n00309_unmark_bx, @function
n00309_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_unmark_α:          mov              r11, 393
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00302_to_β
                        .size            n00309_unmark_bx, .-n00309_unmark_bx
                        .type            n00303_return_bx, @function
n00303_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_return_α:          mov              r11, 394
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Storage___γ
                        .size            n00303_return_bx, .-n00303_return_bx
                        .type            n00291_var_ref_bx, @function
n00291_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        mov              rdx, 1879052656                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00318_nulltest_var_α
n00291_var_ref_β:         mov              r11, 395;                            jmp   n00290_disjunction_af
                        .size            n00291_var_ref_bx, .-n00291_var_ref_bx
                        .type            n00318_nulltest_var_bx, @function
n00318_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_nulltest_var_α:    mov              r11, 396
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    n00290_disjunction_af
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
                        cmp              al, 104;                             je    n00290_disjunction_af
                        cmp              eax, 0;                              jne   n00290_disjunction_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00319_lit_integer_α
                        .size            n00318_nulltest_var_bx, .-n00318_nulltest_var_bx
                        .type            n00319_lit_integer_bx, @function
n00319_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_integer_α:     mov              r11, 397
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .LStorage___α_983_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00320_assign_var_α
.LStorage___α_983_0:    .quad            1
                        .size            n00319_lit_integer_bx, .-n00319_lit_integer_bx
                        .type            n00320_assign_var_bx, @function
n00320_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_assign_var_α:      mov              r11, 398
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
                        cmp              al, 104;                             je    n00290_disjunction_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00321_lit_string_α
                        .size            n00320_assign_var_bx, .-n00320_assign_var_bx
                        .type            n00321_lit_string_bx, @function
n00321_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .LStorage___α_985_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00322_lit_string_α
.LStorage___α_985_0:    .quad            .LStorage___α_985_0_s
.LStorage___α_985_0_s:  .string          "static"
                        .size            n00321_lit_string_bx, .-n00321_lit_string_bx
                        .type            n00322_lit_string_bx, @function
n00322_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_lit_string_α:      mov              r11, 400
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .LStorage___α_986_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00323_lit_string_α
.LStorage___α_986_0:    .quad            .LStorage___α_986_0_s
.LStorage___α_986_0_s:  .string          "string"
                        .size            n00322_lit_string_bx, .-n00322_lit_string_bx
                        .type            n00323_lit_string_bx, @function
n00323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_string_α:      mov              r11, 401
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .LStorage___α_987_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00324_make_list_α
.LStorage___α_987_0:    .quad            .LStorage___α_987_0_s
.LStorage___α_987_0_s:  .string          "block"
                        .size            n00323_lit_string_bx, .-n00323_lit_string_bx
                        .type            n00324_make_list_bx, @function
n00324_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_make_list_α:       mov              r11, 402
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00325_assign_α
                        .size            n00324_make_list_bx, .-n00324_make_list_bx
                        .type            n00325_assign_bx, @function
n00325_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_assign_α:          mov              r11, 403
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 352], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 360], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00290_disjunction_as
n00325_assign_β:          mov              r11, 403;                            jmp   n00292_make_list_α
                        .size            n00325_assign_bx, .-n00325_assign_bx
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
                        lea              rcx, [rip + .LStorage___α_991_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_991_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_991_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_991_3:    add              rsp, 24
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
                        .type            n00326_disjunction_bx, @function
n00326_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_disjunction_α:     mov              r11, 404
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00327_var_ref_α
n00326_disjunction_as:    mov              r11, 404
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .LTime___α_1006_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00328_kw_icon_α
.LTime___α_1006_0:                                                            jmp   n00328_kw_icon_α
n00326_disjunction_β:     mov              r11, 404
                        mov              eax, dword ptr [rsp + 128];          jmp   n00328_kw_icon_α
n00326_disjunction_af:    mov              r11, 404
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00328_kw_icon_α
                        .size            n00326_disjunction_bx, .-n00326_disjunction_bx
                        .type            n00328_kw_icon_bx, @function
n00328_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_kw_icon_α:         mov              r11, 405
                        mov              rdi, qword ptr [rip + .LTime___α_1007_0]
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
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00329_var_α
n00328_kw_icon_β:         mov              r11, 405;                            jmp   Time___ω
.LTime___α_1007_0:      .quad            .LTime___α_1007_0_s
.LTime___α_1007_0_s:    .string          "&time"
                        .size            n00328_kw_icon_bx, .-n00328_kw_icon_bx
                        .type            n00329_var_bx, @function
n00329_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_var_α:             mov              r11, 406
                        mov              rax, qword ptr [r9 + 384]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00330_coerce_numeric_α
                        .size            n00329_var_bx, .-n00329_var_bx
                        .type            n00330_coerce_numeric_bx, @function
n00330_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_coerce_numeric_α:  mov              r11, 407
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .LTime___α_1010_1
                        cmp              al, 3;                               jne   .LTime___α_1010_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .LTime___α_1010_0
.LTime___α_1010_1:      mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00331_coerce_numeric_α
.LTime___α_1010_0:      lea              rdi, [rsp + 64]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00331_coerce_numeric_α
                        .size            n00330_coerce_numeric_bx, .-n00330_coerce_numeric_bx
                        .type            n00331_coerce_numeric_bx, @function
n00331_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_coerce_numeric_α:  mov              r11, 408
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .LTime___α_1012_1
                        cmp              al, 3;                               jne   .LTime___α_1012_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .LTime___α_1012_0
.LTime___α_1012_1:      mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00332_binop_α
.LTime___α_1012_0:      lea              rdi, [rsp + 96]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00332_binop_α
                        .size            n00331_coerce_numeric_bx, .-n00331_coerce_numeric_bx
                        .type            n00332_binop_bx, @function
n00332_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_binop_α:           mov              r11, 409
                        mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .LTime___α_1013_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .LTime___α_1013_7
.LTime___α_1013_2:      and              edx, 1;                              jz    .LTime___α_1013_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              al, 5;                               je    .LTime___α_1013_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .LTime___α_1013_4
.LTime___α_1013_3:      movq             xmm0, rsi
.LTime___α_1013_4:      cmp              cl, 5;                               je    .LTime___α_1013_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .LTime___α_1013_6
.LTime___α_1013_5:      movq             xmm1, rdi
.LTime___α_1013_6:      subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.LTime___α_1013_7:                                                            jmp   n00333_return_α
.LTime___α_1013_0:      mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 24], rdx;           jmp   n00333_return_α
                        .size            n00332_binop_bx, .-n00332_binop_bx
                        .type            n00333_return_bx, @function
n00333_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_return_α:          mov              r11, 410
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
                        .size            n00333_return_bx, .-n00333_return_bx
                        .type            n00327_var_ref_bx, @function
n00327_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_var_ref_α:         mov              r11, 411
                        mov              rax, 4294967336
                        mov              rdx, 1879052688                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00334_nulltest_var_α
n00327_var_ref_β:         mov              r11, 411;                            jmp   n00326_disjunction_af
                        .size            n00327_var_ref_bx, .-n00327_var_ref_bx
                        .type            n00334_nulltest_var_bx, @function
n00334_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_nulltest_var_α:   mov              r11, 412
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    n00326_disjunction_af
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
                        cmp              al, 104;                             je    n00326_disjunction_af
                        cmp              eax, 0;                              jne   n00326_disjunction_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00335_lit_integer_α
                        .size            n00334_nulltest_var_bx, .-n00334_nulltest_var_bx
                        .type            n00335_lit_integer_bx, @function
n00335_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_lit_integer_α:    mov              r11, 413
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .LTime___α_1018_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00336_assign_var_α
.LTime___α_1018_0:      .quad            1
                        .size            n00335_lit_integer_bx, .-n00335_lit_integer_bx
                        .type            n00336_assign_var_bx, @function
n00336_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_assign_var_α:     mov              r11, 414
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
                        cmp              al, 104;                             je    n00326_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00337_kw_icon_α
                        .size            n00336_assign_var_bx, .-n00336_assign_var_bx
                        .type            n00337_kw_icon_bx, @function
n00337_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_kw_icon_α:        mov              r11, 415
                        mov              rdi, qword ptr [rip + .LTime___α_1020_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00328_kw_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00338_assign_α
n00337_kw_icon_β:        mov              r11, 415;                            jmp   n00328_kw_icon_α
.LTime___α_1020_0:      .quad            .LTime___α_1020_0_s
.LTime___α_1020_0_s:    .string          "&time"
                        .size            n00337_kw_icon_bx, .-n00337_kw_icon_bx
                        .type            n00338_assign_bx, @function
n00338_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_assign_α:         mov              r11, 416
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 384], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 392], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00326_disjunction_as
n00338_assign_β:         mov              r11, 416;                            jmp   n00328_kw_icon_α
                        .size            n00338_assign_bx, .-n00338_assign_bx
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
                        lea              rcx, [rip + .LTime___α_1022_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1022_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1022_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1022_3:      add              rsp, 24
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
                        .type            n00339_var_bx, @function
n00339_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_var_α:            mov              r11, 417
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00340_call_icon_α
                        .size            n00339_var_bx, .-n00339_var_bx
                        .type            n00340_call_icon_bx, @function
n00340_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_call_icon_α:      mov              r11, 418
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn1036:             .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1036]
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
                        cmp              al, 104;                             je    n00341_var_ref_α
                                                                              jmp   n00342_assign_α
n00340_call_icon_β:      mov              r11, 418;                            jmp   n00341_var_ref_α
                        .size            n00340_call_icon_bx, .-n00340_call_icon_bx
                        .type            n00342_assign_bx, @function
n00342_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_α:         mov              r11, 419
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n00341_var_ref_α
                        .size            n00342_assign_bx, .-n00342_assign_bx
                        .type            n00341_var_ref_bx, @function
n00341_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_var_ref_α:        mov              r11, 420
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00343_iterate_α
                        .size            n00341_var_ref_bx, .-n00341_var_ref_bx
                        .type            n00343_iterate_bx, @function
n00343_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_iterate_α:        mov              r11, 421
                        mov              qword ptr [rsp + 64], 0
.Lshuffle_α_1041_0:     mov              rdi, qword ptr [rsp + 80]
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
                        cmp              al, 104;                             je    n00344_var_α
                                                                              jmp   n00345_var_ref_α
n00343_iterate_β:        mov              r11, 421
                        inc              qword ptr [rsp + 64];                jmp   .Lshuffle_α_1041_0
                        .size            n00343_iterate_bx, .-n00343_iterate_bx
                        .type            n00345_var_ref_bx, @function
n00345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_ref_α:        mov              r11, 422
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n00346_random_α
                        .size            n00345_var_ref_bx, .-n00345_var_ref_bx
                        .type            n00346_random_bx, @function
n00346_random_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_random_α:         mov              r11, 423
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
                        cmp              al, 104;                             je    n00344_var_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00347_swap_var_α
                        .size            n00346_random_bx, .-n00346_random_bx
                        .type            n00347_swap_var_bx, @function
n00347_swap_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_swap_var_α:       mov              r11, 424
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
                        cmp              al, 104;                             je    n00344_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00343_iterate_β
                        .size            n00347_swap_var_bx, .-n00347_swap_var_bx
                        .type            n00344_var_bx, @function
n00344_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_var_α:            mov              r11, 425
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00348_return_α
                        .size            n00344_var_bx, .-n00344_var_bx
                        .type            n00348_return_bx, @function
n00348_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_return_α:         mov              r11, 426
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   shuffle_γ
                        .size            n00348_return_bx, .-n00348_return_bx
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
                        lea              rcx, [rip + .Lshuffle_α_1049_3]
                        push             rcx
                        lea              rcx, [rip + .Lshuffle_α_1049_2]
                        push             rcx;                                 jmp   FN__shuffle
.Lshuffle_α_1049_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshuffle_α_1049_3:     add              rsp, 24
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
                        .type            n00349_lit_string_bx, @function
n00349_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_lit_string_α:     mov              r11, 427
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1100_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n00350_call_proc_staged_α
.Lmain_α_1100_0:        .quad            .Lmain_α_1100_0_s
.Lmain_α_1100_0_s:      .string          "deal"
                        .size            n00349_lit_string_bx, .-n00349_lit_string_bx
                        .type            n00350_call_proc_staged_bx, @function
n00350_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_call_proc_staged_α:
                        mov              r11, 428
                        lea              rsi, [rsp + 1072]
                        call             Init___dcα;                          jmp   .Lmain_α_1102_2
.Lmain_α_1102_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1102_29
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
.Lmain_α_1102_29:       mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n00351_lit_charset_α
                                                                              jmp   n00351_lit_charset_α
n00350_call_proc_staged_β:
                        mov              r11, 428;                            jmp   n00351_lit_charset_α
.Lmain_β_1102_0:        .quad            .Lmain_β_1102_0_s
.Lmain_β_1102_0_s:      .string          "Init__"
                        .size            n00350_call_proc_staged_bx, .-n00350_call_proc_staged_bx
                        .type            n00351_lit_charset_bx, @function
n00351_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_lit_charset_α:    mov              r11, 429
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], -1
                        mov              rax, qword ptr [rip + .Lmain_α_1103_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00352_call_icon_α
.Lmain_α_1103_0:        .quad            .Lmain_α_1103_0_s
.Lmain_α_1103_0_s:      .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00351_lit_charset_bx, .-n00351_lit_charset_bx
                        .type            n00352_call_icon_bx, @function
n00352_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_call_icon_α:      mov              r11, 430
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn1105:             .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1105]
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
                        cmp              al, 104;                             je    n00353_var_α
                                                                              jmp   n00354_assign_α
n00352_call_icon_β:      mov              r11, 430;                            jmp   n00353_var_α
                        .size            n00352_call_icon_bx, .-n00352_call_icon_bx
                        .type            n00354_assign_bx, @function
n00354_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_assign_α:         mov              r11, 431
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [r9 + 16], rax             # deckimage
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00355_assign_α
                        .size            n00354_assign_bx, .-n00354_assign_bx
                        .type            n00355_assign_bx, @function
n00355_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_assign_α:         mov              r11, 432
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00353_var_α
                        .size            n00355_assign_bx, .-n00355_assign_bx
                        .type            n00353_var_bx, @function
n00353_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_var_α:            mov              r11, 433
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 896], rax           # result
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00356_unop_α
                        .size            n00353_var_bx, .-n00353_var_bx
                        .type            n00356_unop_bx, @function
n00356_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_unop_α:           mov              r11, 434
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
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00357_lit_integer_α
                        .size            n00356_unop_bx, .-n00356_unop_bx
                        .type            n00357_lit_integer_bx, @function
n00357_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_lit_integer_α:    mov              r11, 435
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_1110_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00358_coerce_numeric_α
.Lmain_α_1110_0:        .quad            4
                        .size            n00357_lit_integer_bx, .-n00357_lit_integer_bx
                        .type            n00358_coerce_numeric_bx, @function
n00358_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_coerce_numeric_α: mov              r11, 436
                        mov              eax, dword ptr [rsp + 880]
                        cmp              al, 5;                               je    .Lmain_α_1112_1
                        cmp              al, 3;                               jne   .Lmain_α_1112_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              al, 3;                               jne   .Lmain_α_1112_0
.Lmain_α_1112_1:        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00359_binop_α
.Lmain_α_1112_0:        lea              rdi, [rsp + 880]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00359_binop_α
                        .size            n00358_coerce_numeric_bx, .-n00358_coerce_numeric_bx
                        .type            n00359_binop_bx, @function
n00359_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_binop_α:          mov              r11, 437
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
                        cmp              al, 104;                             je    n00360_lit_string_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00361_assign_α
                        .size            n00359_binop_bx, .-n00359_binop_bx
                        .type            n00361_assign_bx, @function
n00361_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_assign_α:         mov              r11, 438
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [r9 + 48], rax             # suitsize
                        mov              qword ptr [r9 + 56], rdx
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n00362_assign_α
                        .size            n00361_assign_bx, .-n00361_assign_bx
                        .type            n00362_assign_bx, @function
n00362_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_assign_α:         mov              r11, 439
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [r9 + 32], rax             # handsize
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00360_lit_string_α
                        .size            n00362_assign_bx, .-n00362_assign_bx
                        .type            n00360_lit_string_bx, @function
n00360_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_lit_string_α:     mov              r11, 440
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 13
                        mov              rax, qword ptr [rip + .Lmain_α_1116_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00363_assign_α
.Lmain_α_1116_0:        .quad            .Lmain_α_1116_0_s
.Lmain_α_1116_0_s:      .string          "AKQJT98765432"
                        .size            n00360_lit_string_bx, .-n00360_lit_string_bx
                        .type            n00363_assign_bx, @function
n00363_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_assign_α:         mov              r11, 441
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [r9 + 80], rax             # rank
                        mov              qword ptr [r9 + 88], rdx;            jmp   n00364_lit_string_α
                        .size            n00363_assign_bx, .-n00363_assign_bx
                        .type            n00364_lit_string_bx, @function
n00364_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_lit_string_α:     mov              r11, 442
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Lmain_α_1118_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00365_var_α
.Lmain_α_1118_0:        .quad            .Lmain_α_1118_0_s
.Lmain_α_1118_0_s:      .string          " "
                        .size            n00364_lit_string_bx, .-n00364_lit_string_bx
                        .type            n00365_var_bx, @function
n00365_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_var_α:            mov              r11, 443
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 784], rax           # result
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00366_call_icon_α
                        .size            n00365_var_bx, .-n00365_var_bx
                        .type            n00366_call_icon_bx, @function
n00366_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_call_icon_α:      mov              r11, 444
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn1121:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1121]
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
                        cmp              al, 104;                             je    n00367_lit_charset_α
                                                                              jmp   n00368_assign_α
n00366_call_icon_β:      mov              r11, 444;                            jmp   n00367_lit_charset_α
                        .size            n00366_call_icon_bx, .-n00366_call_icon_bx
                        .type            n00368_assign_bx, @function
n00368_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_assign_α:         mov              r11, 445
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 96], rax             # blanker
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00367_lit_charset_α
                        .size            n00368_assign_bx, .-n00368_assign_bx
                        .type            n00367_lit_charset_bx, @function
n00367_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_lit_charset_α:    mov              r11, 446
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], -1
                        mov              rax, qword ptr [rip + .Lmain_α_1123_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00369_lit_integer_α
.Lmain_α_1123_0:        .quad            .Lmain_α_1123_0_s
.Lmain_α_1123_0_s:      .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n00367_lit_charset_bx, .-n00367_lit_charset_bx
                        .type            n00369_lit_integer_bx, @function
n00369_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_lit_integer_α:    mov              r11, 447
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_1124_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00370_var_α
.Lmain_α_1124_0:        .quad            1
                        .size            n00369_lit_integer_bx, .-n00369_lit_integer_bx
                        .type            n00370_var_bx, @function
n00370_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_var_α:            mov              r11, 448
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 656], rax           # result
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00371_binop_α
                        .size            n00370_var_bx, .-n00370_var_bx
                        .type            n00371_binop_bx, @function
n00371_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_binop_α:          mov              r11, 449
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 656]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_1126_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rsp + 664]
                        add              rax, rdx
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   .Lmain_α_1126_7
.Lmain_α_1126_2:        and              edx, 1;                              jz    .Lmain_α_1126_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rsp + 664]
                        cmp              al, 5;                               je    .Lmain_α_1126_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_1126_4
.Lmain_α_1126_3:        movq             xmm0, rsi
.Lmain_α_1126_4:        cmp              cl, 5;                               je    .Lmain_α_1126_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lmain_α_1126_6
.Lmain_α_1126_5:        movq             xmm1, rdi
.Lmain_α_1126_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 672], 5
                        mov              qword ptr [rsp + 680], rax
.Lmain_α_1126_7:                                                              jmp   n00372_subscript_α
.Lmain_α_1126_0:        mov              rdi, qword ptr [rsp + 640]
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
                        cmp              al, 104;                             je    n00373_var_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00372_subscript_α
                        .size            n00371_binop_bx, .-n00371_binop_bx
                        .type            n00372_subscript_bx, @function
n00372_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_subscript_α:      mov              r11, 450
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
                        cmp              al, 104;                             je    n00373_var_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n00374_assign_α
                        .size            n00372_subscript_bx, .-n00372_subscript_bx
                        .type            n00374_assign_bx, @function
n00374_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00374_assign_α:         mov              r11, 451
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [r9 + 64], rax             # denom
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00373_var_α
                        .size            n00374_assign_bx, .-n00374_assign_bx
                        .type            n00373_var_bx, @function
n00373_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_var_α:            mov              r11, 452
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00375_lit_string_α
                        .size            n00373_var_bx, .-n00373_var_bx
                        .type            n00375_lit_string_bx, @function
n00375_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00375_lit_string_α:     mov              r11, 453
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1131_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00376_call_proc_staged_α
.Lmain_α_1131_0:        .quad            .Lmain_α_1131_0_s
.Lmain_α_1131_0_s:      .string          "h+s+"
                        .size            n00375_lit_string_bx, .-n00375_lit_string_bx
                        .type            n00376_call_proc_staged_bx, @function
n00376_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00376_call_proc_staged_α:
                        mov              r11, 454
                        lea              rsi, [rsp + 544]
                        lea              rdx, [rsp + 560]
                        call             options_dcα;                         jmp   .Lmain_α_1133_2
.Lmain_α_1133_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1133_29
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
.Lmain_α_1133_29:       mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n00377_disjunction_α
                                                                              jmp   n00378_assign_α
n00376_call_proc_staged_β:
                        mov              r11, 454;                            jmp   n00377_disjunction_α
.Lmain_β_1133_0:        .quad            .Lmain_β_1133_0_s
.Lmain_β_1133_0_s:      .string          "options"
                        .size            n00376_call_proc_staged_bx, .-n00376_call_proc_staged_bx
                        .type            n00378_assign_bx, @function
n00378_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00378_assign_α:         mov              r11, 455
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n00377_disjunction_α
                        .size            n00378_assign_bx, .-n00378_assign_bx
                        .type            n00377_disjunction_bx, @function
n00377_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00377_disjunction_α:    mov              r11, 456
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n00379_var_ref_α
n00377_disjunction_as:   mov              r11, 456
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lmain_α_1136_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00380_assign_α
.Lmain_α_1136_0:        cmp              eax, 1;                              jne   .Lmain_α_1136_1
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00380_assign_α
.Lmain_α_1136_1:                                                              jmp   n00380_assign_α
n00377_disjunction_β:    mov              r11, 456
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n00377_disjunction_af
                                                                              jmp   n00377_disjunction_af
n00377_disjunction_af:   mov              r11, 456
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n00381_lit_integer_α
                                                                              jmp   n00382_var_ref_α
                        .size            n00377_disjunction_bx, .-n00377_disjunction_bx
                        .type            n00380_assign_bx, @function
n00380_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00380_assign_α:         mov              r11, 457
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n00382_var_ref_α
                        .size            n00380_assign_bx, .-n00380_assign_bx
                        .type            n00382_var_ref_bx, @function
n00382_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00382_var_ref_α:        mov              r11, 458
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n00383_lit_string_α
                        .size            n00382_var_ref_bx, .-n00382_var_ref_bx
                        .type            n00383_lit_string_bx, @function
n00383_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00383_lit_string_α:     mov              r11, 459
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lmain_α_1140_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00384_subscript_α
.Lmain_α_1140_0:        .quad            .Lmain_α_1140_0_s
.Lmain_α_1140_0_s:      .string          "s"
                        .size            n00383_lit_string_bx, .-n00383_lit_string_bx
                        .type            n00384_subscript_bx, @function
n00384_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00384_subscript_α:      mov              r11, 460
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
                        cmp              al, 104;                             je    n00385_lit_integer_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00386_deref_α
                        .size            n00384_subscript_bx, .-n00384_subscript_bx
                        .type            n00386_deref_bx, @function
n00386_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00386_deref_α:          mov              r11, 461
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
                        cmp              al, 104;                             je    n00385_lit_integer_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n00387_unop_test_α
                        .size            n00386_deref_bx, .-n00386_deref_bx
                        .type            n00387_unop_test_bx, @function
n00387_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00387_unop_test_α:      mov              r11, 462
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 104;                             je    n00385_lit_integer_α
                        cmp              eax, 0;                              je    n00385_lit_integer_α
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00388_kw_assign_α
                        .size            n00387_unop_test_bx, .-n00387_unop_test_bx
                        .type            n00388_kw_assign_bx, @function
n00388_kw_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00388_kw_assign_α:      mov              r11, 463
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
                        cmp              al, 104;                             je    n00385_lit_integer_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n00385_lit_integer_α
                        .size            n00388_kw_assign_bx, .-n00388_kw_assign_bx
                        .type            n00385_lit_integer_bx, @function
n00385_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00385_lit_integer_α:    mov              r11, 464
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lmain_α_1145_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00389_var_α
.Lmain_α_1145_0:        .quad            1
                        .size            n00385_lit_integer_bx, .-n00385_lit_integer_bx
                        .type            n00389_var_bx, @function
n00389_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00389_var_α:            mov              r11, 465
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00390_to_α
                        .size            n00389_var_bx, .-n00389_var_bx
                        .type            n00390_to_bx, @function
n00390_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00390_to_α:             mov              r11, 466
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
.Lmain_α_1149_0:        mov              rax, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jg    n00391_call_proc_staged_α
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax;           jmp   n00392_bound_α
n00390_to_β:             mov              r11, 466
                        inc              qword ptr [rsp + 80];                jmp   .Lmain_α_1149_0
                        .size            n00390_to_bx, .-n00390_to_bx
                        .type            n00392_bound_bx, @function
n00392_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00392_bound_α:          mov              r11, 467
                        mov              qword ptr [rsp + 128], rsp;          jmp   n00393_call_proc_staged_α
                        .size            n00392_bound_bx, .-n00392_bound_bx
                        .type            n00393_call_proc_staged_bx, @function
n00393_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00393_call_proc_staged_α:
                        mov              r11, 468
                        call             display_dcα;                         jmp   .Lmain_α_1153_2
.Lmain_α_1153_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1153_29
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
.Lmain_α_1153_29:       mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n00394_unmark_α
                                                                              jmp   n00394_unmark_α
n00393_call_proc_staged_β:
                        mov              r11, 468;                            jmp   n00394_unmark_α
.Lmain_β_1153_0:        .quad            .Lmain_β_1153_0_s
.Lmain_β_1153_0_s:      .string          "display"
                        .size            n00393_call_proc_staged_bx, .-n00393_call_proc_staged_bx
                        .type            n00394_unmark_bx, @function
n00394_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00394_unmark_α:         mov              r11, 469
                        mov              rsp, qword ptr [rsp + 128];          jmp   n00390_to_β
                        .size            n00394_unmark_bx, .-n00394_unmark_bx
                        .type            n00391_call_proc_staged_bx, @function
n00391_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00391_call_proc_staged_α:
                        mov              r11, 470
                        call             Term___dcα;                          jmp   .Lmain_α_1157_2
.Lmain_α_1157_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1157_29
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
.Lmain_α_1157_29:       mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n00391_call_proc_staged_β:
                        mov              r11, 470;                            jmp   main_ω
.Lmain_β_1157_0:        .quad            .Lmain_β_1157_0_s
.Lmain_β_1157_0_s:      .string          "Term__"
                        .size            n00391_call_proc_staged_bx, .-n00391_call_proc_staged_bx
                        .type            n00381_lit_integer_bx, @function
n00381_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00381_lit_integer_α:    mov              r11, 471
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_1158_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00377_disjunction_as
n00381_lit_integer_β:    mov              r11, 471;                            jmp   n00377_disjunction_af
.Lmain_α_1158_0:        .quad            1
                        .size            n00381_lit_integer_bx, .-n00381_lit_integer_bx
                        .type            n00379_var_ref_bx, @function
n00379_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00379_var_ref_α:        mov              r11, 472
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00395_lit_string_α
n00379_var_ref_β:        mov              r11, 472;                            jmp   n00377_disjunction_af
                        .size            n00379_var_ref_bx, .-n00379_var_ref_bx
                        .type            n00395_lit_string_bx, @function
n00395_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00395_lit_string_α:     mov              r11, 473
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lmain_α_1161_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00396_subscript_α
.Lmain_α_1161_0:        .quad            .Lmain_α_1161_0_s
.Lmain_α_1161_0_s:      .string          "h"
                        .size            n00395_lit_string_bx, .-n00395_lit_string_bx
                        .type            n00396_subscript_bx, @function
n00396_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00396_subscript_α:      mov              r11, 474
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
                        cmp              al, 104;                             je    n00377_disjunction_af
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00397_deref_α
                        .size            n00396_subscript_bx, .-n00396_subscript_bx
                        .type            n00397_deref_bx, @function
n00397_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00397_deref_α:          mov              r11, 475
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
                        cmp              al, 104;                             je    n00377_disjunction_af
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00398_unop_test_α
                        .size            n00397_deref_bx, .-n00397_deref_bx
                        .type            n00398_unop_test_bx, @function
n00398_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00398_unop_test_α:      mov              r11, 476
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 104;                             je    n00377_disjunction_af
                        cmp              eax, 0;                              je    n00377_disjunction_af
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00377_disjunction_as
n00398_unop_test_β:      mov              r11, 476;                            jmp   n00377_disjunction_af
                        .size            n00398_unop_test_bx, .-n00398_unop_test_bx
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
                        .long            2960
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
