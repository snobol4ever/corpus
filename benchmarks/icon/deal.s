                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__display:
                        sub              rsp, 1888
                        mov              rdi, rsp
                        add              rdi, 1776
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
display_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              dword ptr [rsp + 1440], 0;           jmp   n1_var_ref_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 1440]
                        cmp              eax, 0;                              jne   .Lx79_0
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n16_var_α
.Lx79_0:                                                                      jmp   n16_var_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 1440];         jmp   n16_var_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 1440], 1
                        mov              eax, dword ptr [rsp + 1440];         jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # display__INITFLAG__0
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n2_nulltest_var_α
n1_var_ref_β:           mov              r11, 2;                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 1712]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
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
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 1760], 3            # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n4_assign_var_α
.Lx83_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdx, qword ptr [rsp + 1760]
                        mov              rcx, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n6_lit_string_α
.Lx85_0:                .quad            .Lx85_0_s
.Lx85_0_s:              .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n7_lit_integer_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n8_call_builtin_icon_α
.Lx87_0:                .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              r11, 9
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lrkfn89:               .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 1632]
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
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n11_lit_string_α
                                                                              jmp   n9_binop_α
n8_call_builtin_icon_β: mov              r11, 9;                              jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:             mov              r11, 10
                        mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 1616]
                        mov              rcx, qword ptr [rsp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
                        mov              qword ptr [r9 + 160], rax            # display__STATIC__bar
                        mov              qword ptr [r9 + 168], rdx;           jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n12_lit_integer_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 1568], 3            # result
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n13_call_builtin_icon_α
.Lx93_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1576]
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
n13_call_builtin_icon_β:
                        mov              r11, 14;                             jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [r9 + 176], rax            # display__STATIC__offset
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n15_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n15_conjunction_α:      mov              r11, 16
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n0_disjunction_as
n15_conjunction_β:      mov              r11, 16;                             jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1408], rax          # result
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n17_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α: mov              r11, 18
                        lea              rsi, [rsp + 1408]
                        call             shuffle_dcα;                         jmp   .Lx00001_2
.Lx00001_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00001_29
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
.Lx00001_29:              mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n19_make_list_α
                                                                              jmp   n18_assign_α
n17_call_proc_staged_β: mov              r11, 18;                             jmp   n19_make_list_α
.Lx00001_0:               .quad            .Lx00001_0_s
.Lx00001_0_s:             .string          "shuffle"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n19_make_list_α
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
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              r11, 23
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1120], rax          # result
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      mov              r11, 24
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n24_lit_integer_α
.Lx00002_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n25_to_α
.Lx00003_0:               .quad            3
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
.Lx00004_0:               mov              rax, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1272]
                        cmp              rax, rcx;                            jg    n38_call_builtin_icon_α
                        mov              qword ptr [rsp + 1216], 3
                        mov              qword ptr [rsp + 1224], rax;         jmp   n26_var_α
n25_to_β:               mov              r11, 26
                        inc              qword ptr [rsp + 1232];              jmp   .Lx00004_0
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 1280], rax          # result
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n27_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   mov              r11, 28
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              al, 5;                               je    .Lx00005_1
                        cmp              al, 3;                               jne   .Lx00005_0
                        mov              eax, dword ptr [rsp + 1280]
                        cmp              al, 3;                               jne   .Lx00005_0
.Lx00005_1:               mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n28_coerce_numeric_α
.Lx00005_0:               lea              rdi, [rsp + 1216]
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
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:   mov              r11, 29
                        mov              eax, dword ptr [rsp + 1280]
                        cmp              al, 5;                               je    .Lx00006_1
                        cmp              al, 3;                               jne   .Lx00006_0
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              al, 3;                               jne   .Lx00006_0
.Lx00006_1:               mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n29_binop_α
.Lx00006_0:               lea              rdi, [rsp + 1280]
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
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            mov              r11, 30
                        mov              eax, dword ptr [rsp + 1200]
                        mov              ecx, dword ptr [rsp + 1184]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx00007_2
                        mov              rax, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1192]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1168], 3
                        mov              qword ptr [rsp + 1176], rax;         jmp   .Lx00007_7
.Lx00007_2:               and              edx, 1;                              jz    .Lx00007_0
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdi, qword ptr [rsp + 1192]
                        cmp              al, 5;                               je    .Lx00007_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00007_4
.Lx00007_3:               movq             xmm0, rsi
.Lx00007_4:               cmp              cl, 5;                               je    .Lx00007_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00007_6
.Lx00007_5:               movq             xmm1, rdi
.Lx00007_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1168], 5
                        mov              qword ptr [rsp + 1176], rax
.Lx00007_7:                                                                     jmp   n30_lit_integer_α
.Lx00007_0:               mov              rdi, qword ptr [rsp + 1200]
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
                        cmp              al, 104;                             je    n38_call_builtin_icon_α
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n31_coerce_numeric_α
.Lx00008_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:   mov              r11, 32
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              al, 5;                               je    .Lx00009_1
                        cmp              al, 3;                               jne   .Lx00009_0
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              al, 3;                               jne   .Lx00009_0
.Lx00009_1:               mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n32_binop_α
.Lx00009_0:               lea              rdi, [rsp + 1168]
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
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            mov              r11, 33
                        mov              eax, dword ptr [rsp + 1152]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx00010_2
                        mov              rax, qword ptr [rsp + 1160]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1136], 3
                        mov              qword ptr [rsp + 1144], rax;         jmp   .Lx00010_7
.Lx00010_2:               and              edx, 1;                              jz    .Lx00010_0
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx00010_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00010_4
.Lx00010_3:               movq             xmm0, rsi
.Lx00010_4:               cmp              cl, 5;                               je    .Lx00010_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00010_6
.Lx00010_5:               movq             xmm1, rdi
.Lx00010_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1136], 5
                        mov              qword ptr [rsp + 1144], rax
.Lx00010_7:                                                                     jmp   n33_var_α
.Lx00010_0:               mov              rdi, qword ptr [rsp + 1152]
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
                        cmp              al, 104;                             je    n38_call_builtin_icon_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [r9 + 32]             # handsize
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 1312], rax          # result
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n34_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            mov              r11, 35
                        mov              eax, dword ptr [rsp + 1136]
                        mov              ecx, dword ptr [rsp + 1312]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx00011_2
                        mov              rax, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1320]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1328], 3
                        mov              qword ptr [rsp + 1336], rax;         jmp   .Lx00011_7
.Lx00011_2:               and              edx, 1;                              jz    .Lx00011_0
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdi, qword ptr [rsp + 1320]
                        cmp              al, 5;                               je    .Lx00011_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00011_4
.Lx00011_3:               movq             xmm0, rsi
.Lx00011_4:               cmp              cl, 5;                               je    .Lx00011_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00011_6
.Lx00011_5:               movq             xmm1, rdi
.Lx00011_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1328], 5
                        mov              qword ptr [rsp + 1336], rax
.Lx00011_7:                                                                     jmp   n35_subscript_α
.Lx00011_0:               mov              rdi, qword ptr [rsp + 1136]
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
#-----------------------------------------------------------------------------------------------------------------------
n36_call_proc_staged_α: mov              r11, 37
                        lea              rsi, [rsp + 1104]
                        call             show_dcα;                            jmp   .Lx00012_2
.Lx00012_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00012_29
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
.Lx00012_29:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n25_to_β
                                                                              jmp   n37_call_builtin_icon_α
n36_call_proc_staged_β: mov              r11, 37;                             jmp   n25_to_β
.Lx00012_0:               .quad            .Lx00012_0_s
.Lx00012_0_s:             .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              r11, 38
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
n37_call_builtin_icon_β:
                        mov              r11, 38;                             jmp   n25_to_β
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
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
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [r9 + 176]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 832], rax           # result
                        mov              qword ptr [rsp + 840], rdx;          jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1776]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx00013_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n42_subscript_α
.Lx00013_0:               .quad            1
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
                        cmp              al, 104;                             je    n46_call_builtin_icon_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n43_deref_α
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
                        cmp              al, 104;                             je    n46_call_builtin_icon_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n44_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n44_iterate_α:          mov              r11, 45
                        mov              qword ptr [rsp + 864], 0
.Lx00014_0:               mov              rdi, qword ptr [rsp + 928]
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
                        cmp              al, 104;                             je    n46_call_builtin_icon_α
                                                                              jmp   n45_call_builtin_icon_α
n44_iterate_β:          mov              r11, 45
                        inc              qword ptr [rsp + 864];               jmp   .Lx00014_0
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              r11, 46
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
n45_call_builtin_icon_β:
                        mov              r11, 46;                             jmp   n44_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              r11, 47
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
n46_call_builtin_icon_β:
                        mov              r11, 47;                             jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n48_lit_integer_α
.Lx00015_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n49_to_α
.Lx00016_0:               .quad            4
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
.Lx00017_0:               mov              rax, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 344]
                        cmp              rax, rcx;                            jg    n68_call_builtin_icon_α
                        mov              qword ptr [rsp + 288], 3
                        mov              qword ptr [rsp + 296], rax;          jmp   n50_assign_α
n49_to_β:               mov              r11, 50
                        inc              qword ptr [rsp + 304];               jmp   .Lx00017_0
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n51_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n51_bound_α:            mov              r11, 52
                        mov              qword ptr [rsp + 352], rsp;          jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1776]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n53_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              r11, 54
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n54_subscript_α
.Lx00018_0:               .quad            4
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
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              r11, 56
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 584], rax;          jmp   n56_subscript_α
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
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n59_call_builtin_icon_α
.Lx00019_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_icon_α:
                        mov              r11, 60
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
n59_call_builtin_icon_β:
                        mov              r11, 60;                             jmp   n67_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1776]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n61_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              r11, 62
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx00020_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n62_subscript_α
.Lx00020_0:               .quad            2
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
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              r11, 64
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 696], rax;          jmp   n64_subscript_α
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
                        mov              qword ptr [rsp + 728], rdx;          jmp   n66_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_icon_α:
                        mov              r11, 67
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
n66_call_builtin_icon_β:
                        mov              r11, 67;                             jmp   n67_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n67_unmark_α:           mov              r11, 68
                        mov              rsp, qword ptr [rsp + 352];          jmp   n49_to_β
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              r11, 69
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
n68_call_builtin_icon_β:
                        mov              r11, 69;                             jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 70
                        mov              rax, qword ptr [r9 + 176]            # display__STATIC__offset
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 128], rax           # result
                        mov              qword ptr [rsp + 136], rdx;          jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1776]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              r11, 72
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n72_subscript_α
.Lx00021_0:               .quad            3
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
#-----------------------------------------------------------------------------------------------------------------------
n74_iterate_α:          mov              r11, 75
                        mov              qword ptr [rsp + 160], 0
.Lx00022_0:               mov              rdi, qword ptr [rsp + 224]
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
                                                                              jmp   n75_call_builtin_icon_α
n74_iterate_β:          mov              r11, 75
                        inc              qword ptr [rsp + 160];               jmp   .Lx00022_0
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              r11, 76
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
n75_call_builtin_icon_β:
                        mov              r11, 76;                             jmp   n74_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              r11, 77
                        mov              rax, qword ptr [r9 + 160]            # display__STATIC__bar
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 48], rax            # result
                        mov              qword ptr [rsp + 56], rdx;           jmp   n77_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              r11, 78
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
n77_call_builtin_icon_β:
                        mov              r11, 78;                             jmp   display_ω
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
                        add              rsp, 1888;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
display_ω:
                        add              rsp, 1888;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
display_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx00023_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00023_2]
                        push             rcx;                                 jmp   FN__display
.Lx00023_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00023_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1408
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
show_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00024_disjunction_α:     mov              r11, 79
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00025_var_ref_α
n00024_disjunction_as:    mov              r11, 79
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00026_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00027_lit_string_α
.Lx00026_0:                                                                     jmp   n00027_lit_string_α
n00024_disjunction_β:     mov              r11, 79
                        mov              eax, dword ptr [rsp + 640];          jmp   n00027_lit_string_α
n00024_disjunction_af:    mov              r11, 79
                        add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00027_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                      # show__INITFLAG__0
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n00028_nulltest_var_α
n00025_var_ref_β:         mov              r11, 80;                             jmp   n00024_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00028_nulltest_var_α:    mov              r11, 81
                        mov              eax, dword ptr [rsp + 1280]
                        cmp              al, 104;                             je    n00024_disjunction_af
                        mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00024_disjunction_af
                        cmp              eax, 0;                              jne   n00024_disjunction_af
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n00029_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rsp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Lx00030_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n00031_assign_var_α
.Lx00030_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_var_α:      mov              r11, 83
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00024_disjunction_af
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n00032_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_α:             mov              r11, 84
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1168], rax          # result
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n00033_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_α:             mov              r11, 85
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1248], rax          # result
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n00034_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx00035_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n00036_call_builtin_icon_α
.Lx00035_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00036_call_builtin_icon_α:
                        mov              r11, 87
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn256:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rsp + 1200]
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
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n00037_var_α
                                                                              jmp   n00038_binop_α
n00036_call_builtin_icon_β:
                        mov              r11, 87;                             jmp   n00037_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00038_binop_α:           mov              r11, 88
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00039_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00039_assign_α:          mov              r11, 89
                        mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [r9 + 208], rax            # show__STATIC__clubmap
                        mov              qword ptr [r9 + 216], rdx;           jmp   n00037_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_var_α:             mov              r11, 90
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1024], rax          # result
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n00040_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_var_α:             mov              r11, 91
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1040], rax          # result
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n00041_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_binop_α:           mov              r11, 92
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00042_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:             mov              r11, 93
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1120], rax          # result
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n00043_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx00044_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00045_call_builtin_icon_α
.Lx00044_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00045_call_builtin_icon_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn265:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rsp + 1072]
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
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n00046_var_α
                                                                              jmp   n00047_binop_α
n00045_call_builtin_icon_β:
                        mov              r11, 95;                             jmp   n00046_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_binop_α:           mov              r11, 96
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00048_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_assign_α:          mov              r11, 97
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [r9 + 224], rax            # show__STATIC__diamondmap
                        mov              qword ptr [r9 + 232], rdx;           jmp   n00046_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_α:             mov              r11, 98
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 928], rax           # result
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00049_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx00050_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00051_call_builtin_icon_α
.Lx00050_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00051_call_builtin_icon_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn271:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rsp + 880]
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
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n00052_var_α
                                                                              jmp   n00053_var_α
n00051_call_builtin_icon_β:
                        mov              r11, 100;                            jmp   n00052_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:             mov              r11, 101
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 960], rax           # result
                        mov              qword ptr [rsp + 968], rdx;          jmp   n00054_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           mov              r11, 102
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00055_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_var_α:             mov              r11, 103
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 976], rax           # result
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00056_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_binop_α:           mov              r11, 104
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00057_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [r9 + 240], rax            # show__STATIC__heartmap
                        mov              qword ptr [r9 + 248], rdx;           jmp   n00052_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:             mov              r11, 106
                        mov              rax, qword ptr [r9 + 96]             # blanker
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 768], rax           # result
                        mov              qword ptr [rsp + 776], rdx;          jmp   n00058_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx00059_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00060_call_builtin_icon_α
.Lx00059_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00060_call_builtin_icon_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn280:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rsp + 720]
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
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n00027_lit_string_α
                                                                              jmp   n00061_var_α
n00060_call_builtin_icon_β:
                        mov              r11, 108;                            jmp   n00027_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_var_α:             mov              r11, 109
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 800], rax           # result
                        mov              qword ptr [rsp + 808], rdx;          jmp   n00062_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_binop_α:           mov              r11, 110
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00063_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 256], rax            # show__STATIC__spademap
                        mov              qword ptr [r9 + 264], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00064_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_conjunction_α:     mov              r11, 112
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00024_disjunction_as
n00064_conjunction_β:     mov              r11, 112;                            jmp   n00027_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00027_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 3
                        mov              rax, qword ptr [rip + .Lx00065_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00066_var_α
.Lx00065_0:               .quad            .Lx00065_0_s
.Lx00065_0_s:             .string          "S: "
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00067_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_α:             mov              r11, 115
                        mov              rax, qword ptr [r9 + 256]            # show__STATIC__spademap
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 224], rax           # result
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00068_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_call_proc_staged_α:
                        mov              r11, 116
                        lea              rsi, [rsp + 208]
                        lea              rdx, [rsp + 224]
                        call             arrange_dcα;                         jmp   .Lx00069_2
.Lx00069_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00069_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx00069_29:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00070_binop_α
n00068_call_proc_staged_β:
                        mov              r11, 116;                            jmp   show_ω
.Lx00069_0:               .quad            .Lx00069_0_s
.Lx00069_0_s:             .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00070_binop_α:           mov              r11, 117
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 3
                        mov              rax, qword ptr [rip + .Lx00072_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00073_var_α
.Lx00072_0:               .quad            .Lx00072_0_s
.Lx00072_0_s:             .string          "H: "
#-----------------------------------------------------------------------------------------------------------------------
n00073_var_α:             mov              r11, 119
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00074_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_var_α:             mov              r11, 120
                        mov              rax, qword ptr [r9 + 240]            # show__STATIC__heartmap
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 352], rax           # result
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00075_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_call_proc_staged_α:
                        mov              r11, 121
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 352]
                        call             arrange_dcα;                         jmp   .Lx00076_2
.Lx00076_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00076_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
.Lx00076_29:              mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00077_binop_α
n00075_call_proc_staged_β:
                        mov              r11, 121;                            jmp   show_ω
.Lx00076_0:               .quad            .Lx00076_0_s
.Lx00076_0_s:             .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00077_binop_α:           mov              r11, 122
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00078_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 3
                        mov              rax, qword ptr [rip + .Lx00079_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00080_var_α
.Lx00079_0:               .quad            .Lx00079_0_s
.Lx00079_0_s:             .string          "D: "
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:             mov              r11, 125
                        mov              rax, qword ptr [r9 + 224]            # show__STATIC__diamondmap
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 480], rax           # result
                        mov              qword ptr [rsp + 488], rdx;          jmp   n00082_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_proc_staged_α:
                        mov              r11, 126
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 480]
                        call             arrange_dcα;                         jmp   .Lx00083_2
.Lx00083_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00083_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
.Lx00083_29:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00084_binop_α
n00082_call_proc_staged_β:
                        mov              r11, 126;                            jmp   show_ω
.Lx00083_0:               .quad            .Lx00083_0_s
.Lx00083_0_s:             .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00084_binop_α:           mov              r11, 127
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00085_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 3
                        mov              rax, qword ptr [rip + .Lx00086_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00087_var_α
.Lx00086_0:               .quad            .Lx00086_0_s
.Lx00086_0_s:             .string          "C: "
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00088_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00088_var_α:             mov              r11, 130
                        mov              rax, qword ptr [r9 + 208]            # show__STATIC__clubmap
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 608], rax           # result
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00089_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_call_proc_staged_α:
                        mov              r11, 131
                        lea              rsi, [rsp + 592]
                        lea              rdx, [rsp + 608]
                        call             arrange_dcα;                         jmp   .Lx00090_2
.Lx00090_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00090_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
.Lx00090_29:              mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   n00091_binop_α
n00089_call_proc_staged_β:
                        mov              r11, 131;                            jmp   show_ω
.Lx00090_0:               .quad            .Lx00090_0_s
.Lx00090_0_s:             .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00091_binop_α:           mov              r11, 132
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00092_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00092_make_list_α:       mov              r11, 133
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 504]
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
                        mov              qword ptr [rsp + 40], rdx;           jmp   n00093_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_return_α:          mov              r11, 134
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   show_γ
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
                        add              rsp, 1408;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        add              rsp, 1408;                           jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lx00094_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00094_2]
                        push             rcx;                                 jmp   FN__show
.Lx00094_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00094_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__arrange:
                        sub              rsp, 400
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
arrange_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_α:             mov              r11, 135
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00096_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00096_var_α:             mov              r11, 136
                        mov              rax, qword ptr [r9 + 16]             # deckimage
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 240], rax           # result
                        mov              qword ptr [rsp + 248], rdx;          jmp   n00097_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:             mov              r11, 137
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00098_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_call_builtin_icon_α:
                        mov              r11, 138
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
                                                                              jmp   n00099_lit_charset_α
n00098_call_builtin_icon_β:
                        mov              r11, 138;                            jmp   arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_charset_α:     mov              r11, 139
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], -1
                        mov              rax, qword ptr [rip + .Lx00100_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00101_binop_α
.Lx00100_0:               .quad            .Lx00100_0_s
.Lx00100_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00101_binop_α:           mov              r11, 140
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
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:             mov              r11, 141
                        mov              rax, qword ptr [r9 + 64]             # denom
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 288], rax           # result
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00103_var_α:             mov              r11, 142
                        mov              rax, qword ptr [r9 + 80]             # rank
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 304], rax           # result
                        mov              qword ptr [rsp + 312], rdx;          jmp   n00104_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_call_builtin_icon_α:
                        mov              r11, 143
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 296]
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
                                                                              jmp   n00105_return_α
n00104_call_builtin_icon_β:
                        mov              r11, 143;                            jmp   arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
n00105_return_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   arrange_γ
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
                        add              rsp, 400;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
arrange_ω:
                        add              rsp, 400;                            jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lx00106_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00106_2]
                        push             rcx;                                 jmp   FN__arrange
.Lx00106_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00106_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 2928
                        mov              rdi, rsp
                        add              rdi, 2608
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n00108_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_nulltest_var_α:    mov              r11, 146
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              al, 104;                             je    n00109_call_builtin_icon_α
                        mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00109_call_builtin_icon_α
                        cmp              eax, 0;                              jne   n00109_call_builtin_icon_α
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_lit_charset_α:     mov              r11, 147
                        mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00111_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n00112_call_builtin_icon_α
.Lx00111_0:               .quad            .Lx00111_0_s
.Lx00111_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00112_call_builtin_icon_α:
                        mov              r11, 148
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn453:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rsp + 2560]
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
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n00109_call_builtin_icon_α
                                                                              jmp   n00113_assign_var_α
n00112_call_builtin_icon_β:
                        mov              r11, 148;                            jmp   n00109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00113_assign_var_α:      mov              r11, 149
                        mov              rdi, qword ptr [rsp + 2512]
                        mov              rsi, qword ptr [rsp + 2520]
                        mov              rdx, qword ptr [rsp + 2544]
                        mov              rcx, qword ptr [rsp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00109_call_builtin_icon_α
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n00109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_call_builtin_icon_α:
                        mov              r11, 150
                        .section         .rodata
.Lrkfn456:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn456]
                        lea              rsi, [rsp + 2480]
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
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             je    n00114_make_list_α
                                                                              jmp   n00115_assign_α
n00109_call_builtin_icon_β:
                        mov              r11, 150;                            jmp   n00114_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00114_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_make_list_α:       mov              r11, 152
                        lea              rdi, [rsp + 2464]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n00116_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_assign_α:          mov              r11, 153
                        mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00118_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_call_builtin_icon_α:
                        mov              r11, 155
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
                        cmp              al, 104;                             je    n00119_var_α
                                                                              jmp   n00120_assign_α
n00118_call_builtin_icon_β:
                        mov              r11, 155;                            jmp   n00119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00120_assign_α:          mov              r11, 156
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n00121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n00122_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00122_scan_enter_α:      mov              r11, 158
                        mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
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
                        mov              r14, 0;                              jmp   n00123_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00123_disjunction_α:     mov              r11, 159
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n00124_lit_string_α
n00123_disjunction_as:    mov              r11, 159
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Lx00125_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00126_scan_α
.Lx00125_0:               cmp              eax, 1;                              jne   .Lx00125_1
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00126_scan_α
.Lx00125_1:                                                                     jmp   n00126_scan_α
n00123_disjunction_β:     mov              r11, 159
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n00127_disjunction_β
                                                                              jmp   n00128_scan_α
n00123_disjunction_af:    mov              r11, 159
                        add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n00129_var_α
                                                                              jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_scan_α:            mov              r11, 160
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 304]
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
                        mov              r15, qword ptr [rsp + 320];          jmp   n00117_var_α
n00126_scan_β:            mov              r11, 160
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
                        mov              r14, rax;                            jmp   n00123_disjunction_β
                                                                              jmp   n00117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00130_conjunction_α:     mov              r11, 161;                            jmp   n00123_disjunction_as
n00130_conjunction_β:     mov              r11, 161;                            jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_α:             mov              r11, 162
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n00131_var_α
n00129_var_β:             mov              r11, 162;                            jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n00132_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00132_call_builtin_icon_α:
                        mov              r11, 164
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        .section         .rodata
.Lrkfn480:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]
                        lea              rsi, [rsp + 2352]
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
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n00128_scan_α
                                                                              jmp   n00123_disjunction_as
n00132_call_builtin_icon_β:
                        mov              r11, 164;                            jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx00133_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00134_scan_match_α
n00124_lit_string_β:      mov              r11, 165;                            jmp   n00123_disjunction_af
.Lx00133_0:               .quad            .Lx00133_0_s
.Lx00133_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00134_scan_match_α:      mov              r11, 166
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00123_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx00135_0]
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
                        test             eax, eax;                            jne   n00123_disjunction_af
                        mov              qword ptr [rsp + 2288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2296], rax;         jmp   n00136_scan_tab_α
.Lx00135_0:               .quad            .Lx00135_0_s
.Lx00135_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00136_scan_tab_α:        mov              r11, 167
                        mov              rax, qword ptr [rsp + 2296]
                        cmp              rax, 1;                              jge   .Lx00137_0
                        add              rax, r15
                        add              rax, 1
.Lx00137_0:               cmp              rax, 1;                              jl    n00123_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00123_disjunction_af
                        mov              qword ptr [rsp + 2272], r14
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
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n00138_lit_integer_α
n00136_scan_tab_β:        mov              r11, 167
                        mov              r14, qword ptr [rsp + 2272];         jmp   n00123_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00138_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Lx00139_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00140_scan_pos_α
.Lx00139_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00140_scan_pos_α:        mov              r11, 169
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00141_0
                        add              rax, r15
                        add              rax, 1
.Lx00141_0:               cmp              rax, 1;                              jl    n00142_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00142_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00142_var_α
                        mov              qword ptr [rsp + 2224], 3
                        mov              qword ptr [rsp + 2232], rax;         jmp   n00136_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00142_var_α:             mov              r11, 170
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0;           jmp   n00143_conjunction_α
n00142_var_β:             mov              r11, 170;                            jmp   n00136_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00143_conjunction_α:     mov              r11, 171
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00144_disjunction_α
n00143_conjunction_β:     mov              r11, 171;                            jmp   n00123_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00144_disjunction_α:     mov              r11, 172
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              dword ptr [rsp + 2048], 0;           jmp   n00145_lit_string_α
n00144_disjunction_as:    mov              r11, 172
                        mov              eax, dword ptr [rsp + 2048]
                        cmp              eax, 0;                              jne   .Lx00146_0
                                                                              jmp   n00147_lit_integer_α
.Lx00146_0:                                                                     jmp   n00147_lit_integer_α
n00144_disjunction_β:     mov              r11, 172
                        mov              eax, dword ptr [rsp + 2048];         jmp   n00147_lit_integer_α
n00144_disjunction_af:    mov              r11, 172
                        add              dword ptr [rsp + 2048], 1
                        mov              eax, dword ptr [rsp + 2048];         jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00147_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx00148_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00149_scan_move_α
.Lx00148_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00149_scan_move_α:       mov              r11, 174
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00128_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00128_scan_α
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
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00150_assign_α
n00149_scan_move_β:       mov              r11, 174
                        mov              r14, qword ptr [rsp + 432];          jmp   n00128_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n00127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_disjunction_α:     mov              r11, 176
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n00151_var_α
n00127_disjunction_as:    mov              r11, 176
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Lx00152_0
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00147_lit_integer_α
.Lx00152_0:               cmp              eax, 1;                              jne   .Lx00152_1
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00147_lit_integer_α
.Lx00152_1:                                                                     jmp   n00147_lit_integer_α
n00127_disjunction_β:     mov              r11, 176
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    n00153_disjunction_β
                                                                              jmp   n00147_lit_integer_α
n00127_disjunction_af:    mov              r11, 176
                        add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n00154_lit_string_α
                                                                              jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 22
                        mov              rax, qword ptr [rip + .Lx00155_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n00156_var_α
n00154_lit_string_β:      mov              r11, 177;                            jmp   n00147_lit_integer_α
.Lx00155_0:               .quad            .Lx00155_0_s
.Lx00155_0_s:             .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00156_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n00157_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00157_call_builtin_icon_α:
                        mov              r11, 179
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn503:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn503]
                        lea              rsi, [rsp + 1952]
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
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n00147_lit_integer_α
                                                                              jmp   n00127_disjunction_as
n00157_call_builtin_icon_β:
                        mov              r11, 179;                            jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n00158_var_α
n00151_var_β:             mov              r11, 180;                            jmp   n00127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n00159_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_builtin_gen_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1848], rax
                        mov              qword ptr [rsp + 1872], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00160_60:              .section         .rodata
.Lbynamegenfn182:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn182]
                        lea              rsi, [rsp + 1840]
                        mov              edx, 2
                        lea              rcx, [rsp + 1872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n00127_disjunction_af
                                                                              jmp   n00161_lit_integer_α
n00159_call_builtin_gen_β:
                        mov              r11, 182;                            jmp   .Lx00160_60
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rsp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Lx00162_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n00163_coerce_numeric_α
.Lx00162_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00163_coerce_numeric_α:  mov              r11, 184
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              al, 5;                               je    .Lx00164_1
                        cmp              al, 3;                               jne   .Lx00164_0
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              al, 3;                               jne   .Lx00164_0
.Lx00164_1:               mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n00165_binop_α
.Lx00164_0:               lea              rdi, [rsp + 1824]
                        lea              rsi, [rsp + 1920]
                        lea              rdx, [rsp + 1808]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00165_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00165_binop_α:           mov              r11, 185
                        mov              eax, dword ptr [rsp + 1808]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx00166_2
                        mov              rax, qword ptr [rsp + 1816]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1792], 3
                        mov              qword ptr [rsp + 1800], rax;         jmp   .Lx00166_7
.Lx00166_2:               and              edx, 1;                              jz    .Lx00166_0
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx00166_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00166_4
.Lx00166_3:               movq             xmm0, rsi
.Lx00166_4:               cmp              cl, 5;                               je    .Lx00166_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00166_6
.Lx00166_5:               movq             xmm1, rdi
.Lx00166_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1792], 5
                        mov              qword ptr [rsp + 1800], rax
.Lx00166_7:                                                                     jmp   n00167_assign_α
.Lx00166_0:               mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdx, qword ptr [rsp + 1920]
                        mov              rcx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00127_disjunction_af
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n00167_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00167_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n00168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00168_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2608]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n00169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00170_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00170_subscript_α:       mov              r11, 189
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
                        cmp              al, 104;                             je    n00147_lit_integer_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00153_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00153_disjunction_α:     mov              r11, 190
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n00171_lit_charset_α
n00153_disjunction_as:    mov              r11, 190
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx00172_0
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00173_assign_var_α
.Lx00172_0:               cmp              eax, 1;                              jne   .Lx00172_1
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00173_assign_var_α
.Lx00172_1:                                                                     jmp   n00173_assign_var_α
n00153_disjunction_β:     mov              r11, 190
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n00147_lit_integer_α
                                                                              jmp   n00147_lit_integer_α
n00153_disjunction_af:    mov              r11, 190
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n00174_lit_integer_α
                                                                              jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00173_assign_var_α:      mov              r11, 191
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
                        cmp              al, 104;                             je    n00147_lit_integer_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00127_disjunction_as
n00173_assign_var_β:      mov              r11, 191;                            jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_lit_integer_α:     mov              r11, 192
                        mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx00175_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00153_disjunction_as
n00174_lit_integer_β:     mov              r11, 192;                            jmp   n00147_lit_integer_α
.Lx00175_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00171_lit_charset_α:     mov              r11, 193
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00176_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n00177_var_ref_α
n00171_lit_charset_β:     mov              r11, 193;                            jmp   n00153_disjunction_af
.Lx00176_0:               .quad            .Lx00176_0_s
.Lx00176_0_s:             .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00177_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n00178_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00178_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n00179_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00179_subscript_α:       mov              r11, 196
                        mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1728]
                        mov              rcx, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00153_disjunction_af
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n00180_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00180_deref_α:           mov              r11, 197
                        mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00153_disjunction_af
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n00181_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00181_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n00182_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00182_call_builtin_icon_α:
                        mov              r11, 199
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
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
                        lea              rsi, [rsp + 1632]
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
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
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
                        cmp              al, 104;                             je    n00153_disjunction_af
                                                                              jmp   n00183_disjunction_α
n00182_call_builtin_icon_β:
                        mov              r11, 199;                            jmp   n00153_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00183_disjunction_α:     mov              r11, 200
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              dword ptr [rsp + 1360], 0;           jmp   n00184_lit_string_α
n00183_disjunction_as:    mov              r11, 200
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              jne   .Lx00185_0
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00186_assign_α
.Lx00185_0:               cmp              eax, 1;                              jne   .Lx00185_1
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00186_assign_α
.Lx00185_1:               cmp              eax, 2;                              jne   .Lx00185_2
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00186_assign_α
.Lx00185_2:                                                                     jmp   n00186_assign_α
n00183_disjunction_β:     mov              r11, 200
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              je    n00183_disjunction_af
                        cmp              eax, 1;                              je    n00183_disjunction_af
                                                                              jmp   n00183_disjunction_af
n00183_disjunction_af:    mov              r11, 200
                        add              dword ptr [rsp + 1360], 1
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 1;                              je    n00187_var_α
                        cmp              eax, 2;                              je    n00188_lit_string_α
                                                                              jmp   n00189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              r11, 201
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n00189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00189_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00190_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00191_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n00192_call_builtin_α
.Lx00191_0:               .quad            .Lx00191_0_s
.Lx00191_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00192_call_builtin_α:    mov              r11, 204
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn539:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]
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
                        cmp              al, 104;                             je    n00193_lit_string_α
                                                                              jmp   n00194_var_α
n00192_call_builtin_β:    mov              r11, 204;                            jmp   n00193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00194_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n00195_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_assign_α:          mov              r11, 206
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00193_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx00197_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00198_call_builtin_α
.Lx00197_0:               .quad            .Lx00197_0_s
.Lx00197_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00198_call_builtin_α:    mov              r11, 208
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn545:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn545]
                        lea              rsi, [rsp + 1200]
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
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n00199_lit_string_α
                                                                              jmp   n00200_disjunction_α
n00198_call_builtin_β:    mov              r11, 208;                            jmp   n00199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00200_disjunction_α:     mov              r11, 209
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              dword ptr [rsp + 976], 0;            jmp   n00201_var_α
n00200_disjunction_as:    mov              r11, 209
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              jne   .Lx00202_0
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00203_assign_α
.Lx00202_0:               cmp              eax, 1;                              jne   .Lx00202_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00203_assign_α
.Lx00202_1:                                                                     jmp   n00203_assign_α
n00200_disjunction_β:     mov              r11, 209
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              je    n00200_disjunction_af
                                                                              jmp   n00200_disjunction_af
n00200_disjunction_af:    mov              r11, 209
                        add              dword ptr [rsp + 976], 1
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 1;                              je    n00204_lit_string_α
                                                                              jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00203_assign_α:          mov              r11, 210
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00204_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00205_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00206_var_α
n00204_lit_string_β:      mov              r11, 211;                            jmp   n00200_disjunction_af
.Lx00205_0:               .quad            .Lx00205_0_s
.Lx00205_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00206_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00207_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 24
                        mov              rax, qword ptr [rip + .Lx00208_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00209_call_builtin_icon_α
.Lx00208_0:               .quad            .Lx00208_0_s
.Lx00208_0_s:             .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00209_call_builtin_icon_α:
                        mov              r11, 214
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn554:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]
                        lea              rsi, [rsp + 1072]
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
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n00200_disjunction_af
                                                                              jmp   n00200_disjunction_as
n00209_call_builtin_icon_β:
                        mov              r11, 214;                            jmp   n00200_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00210_call_builtin_icon_α
n00201_var_β:             mov              r11, 215;                            jmp   n00200_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00210_call_builtin_icon_α:
                        mov              r11, 216
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn558:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]
                        lea              rsi, [rsp + 1008]
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
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n00200_disjunction_af
                                                                              jmp   n00200_disjunction_as
n00210_call_builtin_icon_β:
                        mov              r11, 216;                            jmp   n00200_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00199_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Lx00211_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00212_call_builtin_α
.Lx00211_0:               .quad            .Lx00211_0_s
.Lx00211_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00212_call_builtin_α:    mov              r11, 218
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn561:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rsp + 896]
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
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n00147_lit_integer_α
                                                                              jmp   n00213_disjunction_α
n00212_call_builtin_β:    mov              r11, 218;                            jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00213_disjunction_α:     mov              r11, 219
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              dword ptr [rsp + 672], 0;            jmp   n00214_var_α
n00213_disjunction_as:    mov              r11, 219
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 0;                              jne   .Lx00215_0
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00216_assign_α
.Lx00215_0:               cmp              eax, 1;                              jne   .Lx00215_1
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00216_assign_α
.Lx00215_1:                                                                     jmp   n00216_assign_α
n00213_disjunction_β:     mov              r11, 219
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 0;                              je    n00213_disjunction_af
                                                                              jmp   n00213_disjunction_af
n00213_disjunction_af:    mov              r11, 219
                        add              dword ptr [rsp + 672], 1
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 1;                              je    n00217_lit_string_α
                                                                              jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00216_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00218_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00218_conjunction_α:     mov              r11, 222
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00153_disjunction_as
n00218_conjunction_β:     mov              r11, 222;                            jmp   n00147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00217_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx00219_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00220_var_α
n00217_lit_string_β:      mov              r11, 223;                            jmp   n00213_disjunction_af
.Lx00219_0:               .quad            .Lx00219_0_s
.Lx00219_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00220_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00221_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 24
                        mov              rax, qword ptr [rip + .Lx00222_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00223_call_builtin_icon_α
.Lx00222_0:               .quad            .Lx00222_0_s
.Lx00222_0_s:             .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00223_call_builtin_icon_α:
                        mov              r11, 226
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn573:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn573]
                        lea              rsi, [rsp + 768]
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
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n00213_disjunction_af
                                                                              jmp   n00213_disjunction_as
n00223_call_builtin_icon_β:
                        mov              r11, 226;                            jmp   n00213_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00224_call_builtin_icon_α
n00214_var_β:             mov              r11, 227;                            jmp   n00213_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00224_call_builtin_icon_α:
                        mov              r11, 228
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn577:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn577]
                        lea              rsi, [rsp + 704]
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
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n00213_disjunction_af
                                                                              jmp   n00213_disjunction_as
n00224_call_builtin_icon_β:
                        mov              r11, 228;                            jmp   n00213_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00188_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 24
                        mov              rax, qword ptr [rip + .Lx00225_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n00226_var_α
n00188_lit_string_β:      mov              r11, 229;                            jmp   n00183_disjunction_af
.Lx00225_0:               .quad            .Lx00225_0_s
.Lx00225_0_s:             .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00226_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n00227_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00227_call_builtin_icon_α:
                        mov              r11, 231
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn582:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]
                        lea              rsi, [rsp + 1536]
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
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n00183_disjunction_af
                                                                              jmp   n00183_disjunction_as
n00227_call_builtin_icon_β:
                        mov              r11, 231;                            jmp   n00183_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00187_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n00228_call_builtin_icon_α
n00187_var_β:             mov              r11, 232;                            jmp   n00183_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00228_call_builtin_icon_α:
                        mov              r11, 233
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn586:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn586]
                        lea              rsi, [rsp + 1472]
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
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n00183_disjunction_af
                                                                              jmp   n00183_disjunction_as
n00228_call_builtin_icon_β:
                        mov              r11, 233;                            jmp   n00183_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00184_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx00229_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00230_lit_integer_α
n00184_lit_string_β:      mov              r11, 234;                            jmp   n00183_disjunction_af
.Lx00229_0:               .quad            .Lx00229_0_s
.Lx00229_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00230_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Lx00231_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n00232_scan_tab_α
.Lx00231_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00232_scan_tab_α:        mov              r11, 236
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00233_0
                        add              rax, r15
                        add              rax, 1
.Lx00233_0:               cmp              rax, 1;                              jl    n00183_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00183_disjunction_af
                        mov              qword ptr [rsp + 1424], r14
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
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n00234_binop_test_α
n00232_scan_tab_β:        mov              r11, 236
                        mov              r14, qword ptr [rsp + 1424];         jmp   n00183_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00234_binop_test_α:      mov              r11, 237
                        mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00183_disjunction_af
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00183_disjunction_as
n00234_binop_test_β:      mov              r11, 237;                            jmp   n00183_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00128_scan_α:            mov              r11, 238
                        lea              rdi, [rsp + 304]
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
                        mov              r15, qword ptr [rsp + 320];          jmp   n00117_var_α
n00128_scan_β:            mov              r11, 238;                            jmp   n00117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx00235_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n00236_scan_match_α
n00145_lit_string_β:      mov              r11, 239;                            jmp   n00144_disjunction_af
.Lx00235_0:               .quad            .Lx00235_0_s
.Lx00235_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00236_scan_match_α:      mov              r11, 240
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00144_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx00237_0]
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
                        test             eax, eax;                            jne   n00144_disjunction_af
                        mov              qword ptr [rsp + 2144], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2152], rax;         jmp   n00238_scan_tab_α
.Lx00237_0:               .quad            .Lx00237_0_s
.Lx00237_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00238_scan_tab_α:        mov              r11, 241
                        mov              rax, qword ptr [rsp + 2152]
                        cmp              rax, 1;                              jge   .Lx00239_0
                        add              rax, r15
                        add              rax, 1
.Lx00239_0:               cmp              rax, 1;                              jl    n00144_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00144_disjunction_af
                        mov              qword ptr [rsp + 2128], r14
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
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n00240_lit_integer_α
n00238_scan_tab_β:        mov              r11, 241
                        mov              r14, qword ptr [rsp + 2128];         jmp   n00144_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00240_lit_integer_α:     mov              r11, 242
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx00241_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n00242_scan_pos_α
.Lx00241_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00242_scan_pos_α:        mov              r11, 243
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00243_0
                        add              rax, r15
                        add              rax, 1
.Lx00243_0:               cmp              rax, 1;                              jl    n00238_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00238_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00238_scan_tab_β
                        mov              qword ptr [rsp + 2080], 3
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00244_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00244_conjunction_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n00119_var_α
n00244_conjunction_β:     mov              r11, 244;                            jmp   n00144_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00119_var_α:             mov              r11, 245
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00245_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00245_var_α:             mov              r11, 246
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00246_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00246_call_builtin_icon_α:
                        mov              r11, 247
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
                        cmp              al, 104;                             je    n00247_var_α
                                                                              jmp   n00248_call_builtin_icon_α
n00246_call_builtin_icon_β:
                        mov              r11, 247;                            jmp   n00247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00248_call_builtin_icon_α:
                        mov              r11, 248
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
                        cmp              al, 104;                             je    n00247_var_α
                                                                              jmp   n00119_var_α
n00248_call_builtin_icon_β:
                        mov              r11, 248;                            jmp   n00247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00247_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00249_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00249_return_α:          mov              r11, 250
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
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
                        add              rsp, 2928;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        add              rsp, 2928;                           jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lx00250_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00250_2]
                        push             rcx;                                 jmp   FN__options
.Lx00250_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00250_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Init__:
                        sub              rsp, 496
                        mov              rdi, rsp
                        add              rdi, 400
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00251_var_α:             mov              r11, 251
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00252_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00252_assign_α:          mov              r11, 252
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [r9 + 144], rax            # Name__
                        mov              qword ptr [r9 + 152], rdx;           jmp   n00253_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00253_call_proc_staged_α:
                        mov              r11, 253
                        call             Signature___dcα;                     jmp   .Lx00254_2
.Lx00254_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00254_29
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
.Lx00254_29:              mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n00255_call_proc_staged_α
                                                                              jmp   n00255_call_proc_staged_α
n00253_call_proc_staged_β:
                        mov              r11, 253;                            jmp   n00255_call_proc_staged_α
.Lx00254_0:               .quad            .Lx00254_0_s
.Lx00254_0_s:             .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00255_call_proc_staged_α:
                        mov              r11, 254
                        call             Regions___dcα;                       jmp   .Lx00256_2
.Lx00256_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00256_29
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
.Lx00256_29:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n00257_call_proc_staged_α
                                                                              jmp   n00257_call_proc_staged_α
n00255_call_proc_staged_β:
                        mov              r11, 254;                            jmp   n00257_call_proc_staged_α
.Lx00256_0:               .quad            .Lx00256_0_s
.Lx00256_0_s:             .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00257_call_proc_staged_α:
                        mov              r11, 255
                        call             Time___dcα;                          jmp   .Lx00258_2
.Lx00258_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00258_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
.Lx00258_29:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n00259_disjunction_α
                                                                              jmp   n00259_disjunction_α
n00257_call_proc_staged_β:
                        mov              r11, 255;                            jmp   n00259_disjunction_α
.Lx00258_0:               .quad            .Lx00258_0_s
.Lx00258_0_s:             .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00259_disjunction_α:     mov              r11, 256
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00260_lit_string_α
n00259_disjunction_as:    mov              r11, 256
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Lx00261_0
                                                                              jmp   n00262_var_α
.Lx00261_0:                                                                     jmp   n00262_var_α
n00259_disjunction_β:     mov              r11, 256
                        mov              eax, dword ptr [rsp + 128];          jmp   n00262_var_α
n00259_disjunction_af:    mov              r11, 256
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00262_var_α:             mov              r11, 257
                        mov              rdi, qword ptr [rip + .Lx00263_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00264_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00265_assign_α
.Lx00263_0:               .quad            .Lx00263_0_s
.Lx00263_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00265_assign_α:          mov              r11, 258
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 112], rax            # Save__
                        mov              qword ptr [r9 + 120], rdx;           jmp   n00264_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_α:             mov              r11, 259
                        mov              rdi, qword ptr [rip + .Lx00266_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00267_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00268_assign_α
.Lx00266_0:               .quad            .Lx00266_0_s
.Lx00266_0_s:             .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00268_assign_α:          mov              r11, 260
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 128], rax            # Saves__
                        mov              qword ptr [r9 + 136], rdx;           jmp   n00267_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00267_lit_integer_α:     mov              r11, 261
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00269_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00270_assign_α
.Lx00269_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00270_assign_α:          mov              r11, 262
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lx00271_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00272_assign_α
.Lx00271_0:               .quad            .Lx00271_0_s
.Lx00271_0_s:             .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00272_assign_α:          mov              r11, 263
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lx00273_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00274_return_α
.Lx00273_0:               .quad            .Lx00273_0_s
.Lx00273_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00274_return_α:          mov              r11, 264
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00275_conjunction_α:     mov              r11, 265;                            jmp   n00259_disjunction_as
n00275_conjunction_β:     mov              r11, 265;                            jmp   n00262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00260_lit_string_α:      mov              r11, 266
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 6
                        mov              rax, qword ptr [rip + .Lx00276_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00277_call_builtin_icon_α
n00260_lit_string_β:      mov              r11, 266;                            jmp   n00259_disjunction_af
.Lx00276_0:               .quad            .Lx00276_0_s
.Lx00276_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00277_call_builtin_icon_α:
                        mov              r11, 267
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn657:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn657]
                        lea              rsi, [rsp + 240]
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
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n00259_disjunction_af
                                                                              jmp   n00278_lit_string_α
n00277_call_builtin_icon_β:
                        mov              r11, 267;                            jmp   n00259_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00278_lit_string_α:      mov              r11, 268
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .Lx00279_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00280_call_builtin_icon_α
.Lx00279_0:               .quad            .Lx00279_0_s
.Lx00279_0_s:             .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00280_call_builtin_icon_α:
                        mov              r11, 269
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
                        cmp              al, 104;                             je    n00281_return_α
                                                                              jmp   n00281_return_α
n00280_call_builtin_icon_β:
                        mov              r11, 269;                            jmp   n00281_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00281_return_α:          mov              r11, 270
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
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
                        add              rsp, 496;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
                        add              rsp, 496;                            jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lx00282_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00282_2]
                        push             rcx;                                 jmp   FN__Init__
.Lx00282_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00282_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 528
                        mov              rdi, rsp
                        add              rdi, 448
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00283_disjunction_α:     mov              r11, 271
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              dword ptr [rsp + 272], 0;            jmp   n00284_lit_string_α
n00283_disjunction_as:    mov              r11, 271
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              jne   .Lx00285_0
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00286_var_α
.Lx00285_0:                                                                     jmp   n00286_var_α
n00283_disjunction_β:     mov              r11, 271
                        mov              eax, dword ptr [rsp + 272];          jmp   n00286_var_α
n00283_disjunction_af:    mov              r11, 271
                        add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272];          jmp   n00286_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00284_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 6
                        mov              rax, qword ptr [rip + .Lx00287_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00288_call_builtin_icon_α
n00284_lit_string_β:      mov              r11, 272;                            jmp   n00289_var_α
.Lx00287_0:               .quad            .Lx00287_0_s
.Lx00287_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00288_call_builtin_icon_α:
                        mov              r11, 273
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn684:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn684]
                        lea              rsi, [rsp + 400]
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
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n00289_var_α
                                                                              jmp   n00283_disjunction_af
n00288_call_builtin_icon_β:
                        mov              r11, 273;                            jmp   n00289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_α:             mov              r11, 274
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0;            jmp   n00290_var_α
n00289_var_β:             mov              r11, 274;                            jmp   n00283_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00290_var_α:             mov              r11, 275
                        mov              rax, qword ptr [r9 + 112]            # Save__
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 352], rax           # result
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00291_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00291_assign_α:          mov              r11, 276
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              rdi, qword ptr [rip + .Lx00292_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00293_var_α
.Lx00292_0:               .quad            .Lx00292_0_s
.Lx00292_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00293_var_α:             mov              r11, 277
                        mov              rax, qword ptr [r9 + 128]            # Saves__
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00294_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00294_assign_α:          mov              r11, 278
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              rdi, qword ptr [rip + .Lx00295_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00296_conjunction_α
.Lx00295_0:               .quad            .Lx00295_0_s
.Lx00295_0_s:             .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00296_conjunction_α:     mov              r11, 279
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00283_disjunction_as
n00296_conjunction_β:     mov              r11, 279;                            jmp   n00286_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_α:             mov              r11, 280
                        mov              rax, qword ptr [r9 + 144]            # Name__
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00297_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00297_lit_string_α:      mov              r11, 281
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Lx00298_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00299_call_proc_staged_α
.Lx00298_0:               .quad            .Lx00298_0_s
.Lx00298_0_s:             .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00299_call_proc_staged_α:
                        mov              r11, 282
                        call             Time___dcα;                          jmp   .Lx00300_2
.Lx00300_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00300_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx00300_29:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n00301_call_proc_staged_α
                                                                              jmp   n00302_call_builtin_icon_α
n00299_call_proc_staged_β:
                        mov              r11, 282;                            jmp   n00301_call_proc_staged_α
.Lx00300_0:               .quad            .Lx00300_0_s
.Lx00300_0_s:             .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00302_call_builtin_icon_α:
                        mov              r11, 283
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
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
                        cmp              al, 104;                             je    n00301_call_proc_staged_α
                                                                              jmp   n00301_call_proc_staged_α
n00302_call_builtin_icon_β:
                        mov              r11, 283;                            jmp   n00301_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00301_call_proc_staged_α:
                        mov              r11, 284
                        call             Regions___dcα;                       jmp   .Lx00303_2
.Lx00303_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00303_29
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
.Lx00303_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00304_call_proc_staged_α
                                                                              jmp   n00304_call_proc_staged_α
n00301_call_proc_staged_β:
                        mov              r11, 284;                            jmp   n00304_call_proc_staged_α
.Lx00303_0:               .quad            .Lx00303_0_s
.Lx00303_0_s:             .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00304_call_proc_staged_α:
                        mov              r11, 285
                        call             Storage___dcα;                       jmp   .Lx00305_2
.Lx00305_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00305_29
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
.Lx00305_29:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n00306_call_proc_staged_α
                                                                              jmp   n00306_call_proc_staged_α
n00304_call_proc_staged_β:
                        mov              r11, 285;                            jmp   n00306_call_proc_staged_α
.Lx00305_0:               .quad            .Lx00305_0_s
.Lx00305_0_s:             .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00306_call_proc_staged_α:
                        mov              r11, 286
                        call             Collections___dcα;                   jmp   .Lx00307_2
.Lx00307_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00307_29
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
.Lx00307_29:              mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n00308_return_α
                                                                              jmp   n00308_return_α
n00306_call_proc_staged_β:
                        mov              r11, 286;                            jmp   n00308_return_α
.Lx00307_0:               .quad            .Lx00307_0_s
.Lx00307_0_s:             .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00308_return_α:          mov              r11, 287
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Term___γ
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
                        add              rsp, 528;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        add              rsp, 528;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx00309_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00309_2]
                        push             rcx;                                 jmp   FN__Term__
.Lx00309_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00309_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 976
                        mov              rdi, rsp
                        add              rdi, 880
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00310_disjunction_α:     mov              r11, 288
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00311_var_ref_α
n00310_disjunction_as:    mov              r11, 288
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00312_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00313_make_list_α
.Lx00312_0:                                                                     jmp   n00313_make_list_α
n00310_disjunction_β:     mov              r11, 288
                        mov              eax, dword ptr [rsp + 640];          jmp   n00313_make_list_α
n00310_disjunction_af:    mov              r11, 288
                        add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00313_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00313_make_list_α:       mov              r11, 289
                        lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00314_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00314_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00315_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00315_var_α:             mov              r11, 291
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00316_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00316_keyword_icon_gen_α:
                        mov              r11, 292
                        mov              qword ptr [rsp + 592], 0
.Lx00317_1:               mov              rdi, qword ptr [rip + .Lx00317_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00318_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00319_call_builtin_icon_α
n00316_keyword_icon_gen_β:
                        mov              r11, 292;                            jmp   .Lx00317_1
.Lx00317_0:               .quad            .Lx00317_0_s
.Lx00317_0_s:             .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00319_call_builtin_icon_α:
                        mov              r11, 293
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn751:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn751]
                        lea              rsi, [rsp + 512]
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
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n00316_keyword_icon_gen_β
                                                                              jmp   n00316_keyword_icon_gen_β
n00319_call_builtin_icon_β:
                        mov              r11, 293;                            jmp   n00316_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00318_lit_string_α:      mov              r11, 294
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Lx00320_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00321_call_builtin_icon_α
.Lx00320_0:               .quad            .Lx00320_0_s
.Lx00320_0_s:             .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_builtin_icon_α:
                        mov              r11, 295
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
                        cmp              al, 104;                             je    n00322_lit_integer_α
                                                                              jmp   n00322_lit_integer_α
n00321_call_builtin_icon_β:
                        mov              r11, 295;                            jmp   n00322_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00322_lit_integer_α:     mov              r11, 296
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00323_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00324_var_α
.Lx00323_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00324_var_α:             mov              r11, 297
                        mov              rax, qword ptr [r9 + 288]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00325_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00325_unop_α:            mov              r11, 298
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00326_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00326_to_α:              mov              r11, 299
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
.Lx00327_0:               mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00328_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00329_assign_α
n00326_to_β:              mov              r11, 299
                        inc              qword ptr [rsp + 48];                jmp   .Lx00327_0
#-----------------------------------------------------------------------------------------------------------------------
n00329_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00330_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00330_bound_α:           mov              r11, 301
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00331_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00332_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00332_var_α:             mov              r11, 303
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00333_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_subscript_α:       mov              r11, 304
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
                        cmp              al, 104;                             je    n00334_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00335_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00335_deref_α:           mov              r11, 305
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
                        cmp              al, 104;                             je    n00334_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00336_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00336_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00337_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00337_var_α:             mov              r11, 307
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00338_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00338_subscript_α:       mov              r11, 308
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
                        cmp              al, 104;                             je    n00334_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00339_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00339_deref_α:           mov              r11, 309
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
                        cmp              al, 104;                             je    n00334_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00340_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00340_lit_integer_α:     mov              r11, 310
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00341_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00342_call_builtin_icon_α
.Lx00341_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00342_call_builtin_icon_α:
                        mov              r11, 311
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
                        cmp              al, 104;                             je    n00334_unmark_α
                                                                              jmp   n00343_call_builtin_icon_α
n00342_call_builtin_icon_β:
                        mov              r11, 311;                            jmp   n00334_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_call_builtin_icon_α:
                        mov              r11, 312
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
                        cmp              al, 104;                             je    n00334_unmark_α
                                                                              jmp   n00334_unmark_α
n00343_call_builtin_icon_β:
                        mov              r11, 312;                            jmp   n00334_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00334_unmark_α:          mov              r11, 313
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00326_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00328_return_α:          mov              r11, 314
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        mov              rdx, 1879052592                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00344_nulltest_var_α
n00311_var_ref_β:         mov              r11, 315;                            jmp   n00310_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00344_nulltest_var_α:    mov              r11, 316
                        mov              eax, dword ptr [rsp + 816]
                        cmp              al, 104;                             je    n00310_disjunction_af
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00310_disjunction_af
                        cmp              eax, 0;                              jne   n00310_disjunction_af
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00345_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00345_lit_integer_α:     mov              r11, 317
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx00346_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00347_assign_var_α
.Lx00346_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00347_assign_var_α:      mov              r11, 318
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00310_disjunction_af
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00348_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00348_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 5
                        mov              rax, qword ptr [rip + .Lx00349_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00350_lit_string_α
.Lx00349_0:               .quad            .Lx00349_0_s
.Lx00349_0_s:             .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00350_lit_string_α:      mov              r11, 320
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 6
                        mov              rax, qword ptr [rip + .Lx00351_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00352_lit_string_α
.Lx00351_0:               .quad            .Lx00351_0_s
.Lx00351_0_s:             .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00352_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Lx00353_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00354_lit_string_α
.Lx00353_0:               .quad            .Lx00353_0_s
.Lx00353_0_s:             .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00354_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 5
                        mov              rax, qword ptr [rip + .Lx00355_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00356_make_list_α
.Lx00355_0:               .quad            .Lx00355_0_s
.Lx00355_0_s:             .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00356_make_list_α:       mov              r11, 323
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00357_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00357_assign_α:          mov              r11, 324
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 288], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 296], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00310_disjunction_as
n00357_assign_β:          mov              r11, 324;                            jmp   n00313_make_list_α
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
                        add              rsp, 976;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        add              rsp, 976;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx00358_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00358_2]
                        push             rcx;                                 jmp   FN__Collections__
.Lx00358_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00358_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 944
                        mov              rdi, rsp
                        add              rdi, 848
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00359_disjunction_α:     mov              r11, 325
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00360_var_ref_α
n00359_disjunction_as:    mov              r11, 325
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00361_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00362_make_list_α
.Lx00361_0:                                                                     jmp   n00362_make_list_α
n00359_disjunction_β:     mov              r11, 325
                        mov              eax, dword ptr [rsp + 640];          jmp   n00362_make_list_α
n00359_disjunction_af:    mov              r11, 325
                        add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00362_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00362_make_list_α:       mov              r11, 326
                        lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00363_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00363_assign_α:          mov              r11, 327
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00364_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_var_α:             mov              r11, 328
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00365_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00365_keyword_icon_gen_α:
                        mov              r11, 329
                        mov              qword ptr [rsp + 592], 0
.Lx00366_1:               mov              rdi, qword ptr [rip + .Lx00366_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00367_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00368_call_builtin_icon_α
n00365_keyword_icon_gen_β:
                        mov              r11, 329;                            jmp   .Lx00366_1
.Lx00366_0:               .quad            .Lx00366_0_s
.Lx00366_0_s:             .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00368_call_builtin_icon_α:
                        mov              r11, 330
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn841:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn841]
                        lea              rsi, [rsp + 512]
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
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n00365_keyword_icon_gen_β
                                                                              jmp   n00365_keyword_icon_gen_β
n00368_call_builtin_icon_β:
                        mov              r11, 330;                            jmp   n00365_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00367_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00369_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00370_call_builtin_icon_α
.Lx00369_0:               .quad            .Lx00369_0_s
.Lx00369_0_s:             .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00370_call_builtin_icon_α:
                        mov              r11, 332
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
                        cmp              al, 104;                             je    n00371_lit_integer_α
                                                                              jmp   n00371_lit_integer_α
n00370_call_builtin_icon_β:
                        mov              r11, 332;                            jmp   n00371_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00371_lit_integer_α:     mov              r11, 333
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00372_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00373_var_α
.Lx00372_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00373_var_α:             mov              r11, 334
                        mov              rax, qword ptr [r9 + 320]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00374_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00374_unop_α:            mov              r11, 335
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00375_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00375_to_α:              mov              r11, 336
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
.Lx00376_0:               mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00377_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00378_assign_α
n00375_to_β:              mov              r11, 336
                        inc              qword ptr [rsp + 48];                jmp   .Lx00376_0
#-----------------------------------------------------------------------------------------------------------------------
n00378_assign_α:          mov              r11, 337
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00379_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00379_bound_α:           mov              r11, 338
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00380_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_var_ref_α:         mov              r11, 339
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00381_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00381_var_α:             mov              r11, 340
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00382_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00382_subscript_α:       mov              r11, 341
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
                        cmp              al, 104;                             je    n00383_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00384_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_deref_α:           mov              r11, 342
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
                        cmp              al, 104;                             je    n00383_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00385_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00385_var_ref_α:         mov              r11, 343
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00386_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00387_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_subscript_α:       mov              r11, 345
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
                        cmp              al, 104;                             je    n00383_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00388_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00388_deref_α:           mov              r11, 346
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
                        cmp              al, 104;                             je    n00383_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00389_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_lit_integer_α:     mov              r11, 347
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00390_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00391_call_builtin_icon_α
.Lx00390_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00391_call_builtin_icon_α:
                        mov              r11, 348
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
                        cmp              al, 104;                             je    n00383_unmark_α
                                                                              jmp   n00392_call_builtin_icon_α
n00391_call_builtin_icon_β:
                        mov              r11, 348;                            jmp   n00383_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_call_builtin_icon_α:
                        mov              r11, 349
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
                        cmp              al, 104;                             je    n00383_unmark_α
                                                                              jmp   n00383_unmark_α
n00392_call_builtin_icon_β:
                        mov              r11, 349;                            jmp   n00383_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00383_unmark_α:          mov              r11, 350
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00375_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00377_return_α:          mov              r11, 351
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00360_var_ref_α:         mov              r11, 352
                        mov              rax, 4294967336
                        mov              rdx, 1879052624                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00393_nulltest_var_α
n00360_var_ref_β:         mov              r11, 352;                            jmp   n00359_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00393_nulltest_var_α:    mov              r11, 353
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 104;                             je    n00359_disjunction_af
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00359_disjunction_af
                        cmp              eax, 0;                              jne   n00359_disjunction_af
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00394_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00394_lit_integer_α:     mov              r11, 354
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx00395_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00396_assign_var_α
.Lx00395_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00396_assign_var_α:      mov              r11, 355
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00359_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00397_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00397_lit_string_α:      mov              r11, 356
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00398_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00399_lit_string_α
.Lx00398_0:               .quad            .Lx00398_0_s
.Lx00398_0_s:             .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00399_lit_string_α:      mov              r11, 357
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00400_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00401_lit_string_α
.Lx00400_0:               .quad            .Lx00400_0_s
.Lx00400_0_s:             .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00401_lit_string_α:      mov              r11, 358
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00402_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00403_make_list_α
.Lx00402_0:               .quad            .Lx00402_0_s
.Lx00402_0_s:             .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00403_make_list_α:       mov              r11, 359
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00404_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00404_assign_α:          mov              r11, 360
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 320], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 328], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00359_disjunction_as
n00404_assign_β:          mov              r11, 360;                            jmp   n00362_make_list_α
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
                        add              rsp, 944;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        add              rsp, 944;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx00405_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00405_2]
                        push             rcx;                                 jmp   FN__Regions__
.Lx00405_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00405_3:               add              rsp, 24
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
#-----------------------------------------------------------------------------------------------------------------------
n00406_keyword_icon_α:    mov              r11, 361
                        mov              rdi, qword ptr [rip + .Lx00407_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00408_keyword_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00409_call_builtin_icon_α
n00406_keyword_icon_β:    mov              r11, 361;                            jmp   n00408_keyword_icon_α
.Lx00407_0:               .quad            .Lx00407_0_s
.Lx00407_0_s:             .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00409_call_builtin_icon_α:
                        mov              r11, 362
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
                        cmp              al, 104;                             je    n00408_keyword_icon_α
                                                                              jmp   n00408_keyword_icon_α
n00409_call_builtin_icon_β:
                        mov              r11, 362;                            jmp   n00408_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00408_keyword_icon_α:    mov              r11, 363
                        mov              rdi, qword ptr [rip + .Lx00410_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00411_keyword_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00412_call_builtin_icon_α
n00408_keyword_icon_β:    mov              r11, 363;                            jmp   n00411_keyword_icon_gen_α
.Lx00410_0:               .quad            .Lx00410_0_s
.Lx00410_0_s:             .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00412_call_builtin_icon_α:
                        mov              r11, 364
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
                        cmp              al, 104;                             je    n00411_keyword_icon_gen_α
                                                                              jmp   n00411_keyword_icon_gen_α
n00412_call_builtin_icon_β:
                        mov              r11, 364;                            jmp   n00411_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00411_keyword_icon_gen_α:
                        mov              r11, 365
                        mov              qword ptr [rsp + 80], 0
.Lx00413_1:               mov              rdi, qword ptr [rip + .Lx00413_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00414_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n00415_call_builtin_icon_α
n00411_keyword_icon_gen_β:
                        mov              r11, 365;                            jmp   .Lx00413_1
.Lx00413_0:               .quad            .Lx00413_0_s
.Lx00413_0_s:             .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00415_call_builtin_icon_α:
                        mov              r11, 366
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
                        cmp              al, 104;                             je    n00411_keyword_icon_gen_β
                                                                              jmp   n00411_keyword_icon_gen_β
n00415_call_builtin_icon_β:
                        mov              r11, 366;                            jmp   n00411_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00414_return_α:          mov              r11, 367
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Signature___γ
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
                        lea              rcx, [rip + .Lx00416_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00416_2]
                        push             rcx;                                 jmp   FN__Signature__
.Lx00416_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00416_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 944
                        mov              rdi, rsp
                        add              rdi, 848
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00417_disjunction_α:     mov              r11, 368
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00418_var_ref_α
n00417_disjunction_as:    mov              r11, 368
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00419_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00420_make_list_α
.Lx00419_0:                                                                     jmp   n00420_make_list_α
n00417_disjunction_β:     mov              r11, 368
                        mov              eax, dword ptr [rsp + 640];          jmp   n00420_make_list_α
n00417_disjunction_af:    mov              r11, 368
                        add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00420_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00420_make_list_α:       mov              r11, 369
                        lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00421_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_assign_α:          mov              r11, 370
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00422_var_α:             mov              r11, 371
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00423_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00423_keyword_icon_gen_α:
                        mov              r11, 372
                        mov              qword ptr [rsp + 592], 0
.Lx00424_1:               mov              rdi, qword ptr [rip + .Lx00424_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00425_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00426_call_builtin_icon_α
n00423_keyword_icon_gen_β:
                        mov              r11, 372;                            jmp   .Lx00424_1
.Lx00424_0:               .quad            .Lx00424_0_s
.Lx00424_0_s:             .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00426_call_builtin_icon_α:
                        mov              r11, 373
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn948:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn948]
                        lea              rsi, [rsp + 512]
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
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n00423_keyword_icon_gen_β
                                                                              jmp   n00423_keyword_icon_gen_β
n00426_call_builtin_icon_β:
                        mov              r11, 373;                            jmp   n00423_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00425_lit_string_α:      mov              r11, 374
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00427_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00428_call_builtin_icon_α
.Lx00427_0:               .quad            .Lx00427_0_s
.Lx00427_0_s:             .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00428_call_builtin_icon_α:
                        mov              r11, 375
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
                        cmp              al, 104;                             je    n00429_lit_integer_α
                                                                              jmp   n00429_lit_integer_α
n00428_call_builtin_icon_β:
                        mov              r11, 375;                            jmp   n00429_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00429_lit_integer_α:     mov              r11, 376
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00430_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00431_var_α
.Lx00430_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00431_var_α:             mov              r11, 377
                        mov              rax, qword ptr [r9 + 352]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00432_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00432_unop_α:            mov              r11, 378
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00433_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00433_to_α:              mov              r11, 379
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
.Lx00434_0:               mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00435_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00436_assign_α
n00433_to_β:              mov              r11, 379
                        inc              qword ptr [rsp + 48];                jmp   .Lx00434_0
#-----------------------------------------------------------------------------------------------------------------------
n00436_assign_α:          mov              r11, 380
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00437_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00437_bound_α:           mov              r11, 381
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00438_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00438_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        mov              rdx, 1879052640                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00439_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00439_var_α:             mov              r11, 383
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00440_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00440_subscript_α:       mov              r11, 384
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
                        cmp              al, 104;                             je    n00441_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00442_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00442_deref_α:           mov              r11, 385
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
                        cmp              al, 104;                             je    n00441_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00443_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00443_var_ref_α:         mov              r11, 386
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00444_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00444_var_α:             mov              r11, 387
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00445_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00445_subscript_α:       mov              r11, 388
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
                        cmp              al, 104;                             je    n00441_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00446_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00446_deref_α:           mov              r11, 389
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
                        cmp              al, 104;                             je    n00441_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00447_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00447_lit_integer_α:     mov              r11, 390
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00448_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00449_call_builtin_icon_α
.Lx00448_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00449_call_builtin_icon_α:
                        mov              r11, 391
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
                        cmp              al, 104;                             je    n00441_unmark_α
                                                                              jmp   n00450_call_builtin_icon_α
n00449_call_builtin_icon_β:
                        mov              r11, 391;                            jmp   n00441_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00450_call_builtin_icon_α:
                        mov              r11, 392
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
                        cmp              al, 104;                             je    n00441_unmark_α
                                                                              jmp   n00441_unmark_α
n00450_call_builtin_icon_β:
                        mov              r11, 392;                            jmp   n00441_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00441_unmark_α:          mov              r11, 393
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00433_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00435_return_α:          mov              r11, 394
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00418_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        mov              rdx, 1879052656                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00451_nulltest_var_α
n00418_var_ref_β:         mov              r11, 395;                            jmp   n00417_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00451_nulltest_var_α:    mov              r11, 396
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 104;                             je    n00417_disjunction_af
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00417_disjunction_af
                        cmp              eax, 0;                              jne   n00417_disjunction_af
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00452_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00452_lit_integer_α:     mov              r11, 397
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx00453_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00454_assign_var_α
.Lx00453_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00454_assign_var_α:      mov              r11, 398
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00417_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00455_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00455_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00456_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00457_lit_string_α
.Lx00456_0:               .quad            .Lx00456_0_s
.Lx00456_0_s:             .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00457_lit_string_α:      mov              r11, 400
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00458_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00459_lit_string_α
.Lx00458_0:               .quad            .Lx00458_0_s
.Lx00458_0_s:             .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00459_lit_string_α:      mov              r11, 401
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00460_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00461_make_list_α
.Lx00460_0:               .quad            .Lx00460_0_s
.Lx00460_0_s:             .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00461_make_list_α:       mov              r11, 402
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00462_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00462_assign_α:          mov              r11, 403
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 352], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 360], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00417_disjunction_as
n00462_assign_β:          mov              r11, 403;                            jmp   n00420_make_list_α
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
                        add              rsp, 944;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        add              rsp, 944;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx00463_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00463_2]
                        push             rcx;                                 jmp   FN__Storage__
.Lx00463_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00463_3:               add              rsp, 24
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
#-----------------------------------------------------------------------------------------------------------------------
n00464_disjunction_α:     mov              r11, 404
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00465_var_ref_α
n00464_disjunction_as:    mov              r11, 404
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Lx00466_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00467_keyword_icon_α
.Lx00466_0:                                                                    jmp   n00467_keyword_icon_α
n00464_disjunction_β:     mov              r11, 404
                        mov              eax, dword ptr [rsp + 128];          jmp   n00467_keyword_icon_α
n00464_disjunction_af:    mov              r11, 404
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00467_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_keyword_icon_α:    mov              r11, 405
                        mov              rdi, qword ptr [rip + .Lx00468_0]
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
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00469_var_α
n00467_keyword_icon_β:    mov              r11, 405;                            jmp   Time___ω
.Lx00468_0:              .quad            .Lx00468_0_s
.Lx00468_0_s:            .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00469_var_α:             mov              r11, 406
                        mov              rax, qword ptr [r9 + 384]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00470_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00470_coerce_numeric_α:  mov              r11, 407
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .Lx00471_1
                        cmp              al, 3;                               jne   .Lx00471_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lx00471_0
.Lx00471_1:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00472_coerce_numeric_α
.Lx00471_0:              lea              rdi, [rsp + 64]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00472_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00472_coerce_numeric_α:  mov              r11, 408
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lx00473_1
                        cmp              al, 3;                               jne   .Lx00473_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .Lx00473_0
.Lx00473_1:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00474_binop_α
.Lx00473_0:              lea              rdi, [rsp + 96]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00474_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_binop_α:           mov              r11, 409
                        mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx00475_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lx00475_7
.Lx00475_2:              and              edx, 1;                              jz    .Lx00475_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              al, 5;                               je    .Lx00475_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00475_4
.Lx00475_3:              movq             xmm0, rsi
.Lx00475_4:              cmp              cl, 5;                               je    .Lx00475_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00475_6
.Lx00475_5:              movq             xmm1, rdi
.Lx00475_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lx00475_7:                                                                    jmp   n00476_return_α
.Lx00475_0:              mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 24], rdx;           jmp   n00476_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00476_return_α:          mov              r11, 410
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
#-----------------------------------------------------------------------------------------------------------------------
n00465_var_ref_α:         mov              r11, 411
                        mov              rax, 4294967336
                        mov              rdx, 1879052688                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00477_nulltest_var_α
n00465_var_ref_β:         mov              r11, 411;                            jmp   n00464_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00477_nulltest_var_α:   mov              r11, 412
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    n00464_disjunction_af
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
                        cmp              al, 104;                             je    n00464_disjunction_af
                        cmp              eax, 0;                              jne   n00464_disjunction_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00478_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00478_lit_integer_α:    mov              r11, 413
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx00479_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00480_assign_var_α
.Lx00479_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00480_assign_var_α:     mov              r11, 414
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
                        cmp              al, 104;                             je    n00464_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00481_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00481_keyword_icon_α:   mov              r11, 415
                        mov              rdi, qword ptr [rip + .Lx00482_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00467_keyword_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00483_assign_α
n00481_keyword_icon_β:   mov              r11, 415;                            jmp   n00467_keyword_icon_α
.Lx00482_0:              .quad            .Lx00482_0_s
.Lx00482_0_s:            .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00483_assign_α:         mov              r11, 416
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 384], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 392], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00464_disjunction_as
n00483_assign_β:         mov              r11, 416;                            jmp   n00467_keyword_icon_α
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
                        lea              rcx, [rip + .Lx00484_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00484_2]
                        push             rcx;                                 jmp   FN__Time__
.Lx00484_2:              add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00484_3:              add              rsp, 24
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
#-----------------------------------------------------------------------------------------------------------------------
n00485_var_α:            mov              r11, 417
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00486_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00486_call_builtin_icon_α:
                        mov              r11, 418
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
                        cmp              al, 104;                             je    n00487_var_ref_α
                                                                              jmp   n00488_assign_α
n00486_call_builtin_icon_β:
                        mov              r11, 418;                            jmp   n00487_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00488_assign_α:         mov              r11, 419
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n00487_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00487_var_ref_α:        mov              r11, 420
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00489_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00489_iterate_α:        mov              r11, 421
                        mov              qword ptr [rsp + 64], 0
.Lx00490_0:              mov              rdi, qword ptr [rsp + 80]
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
                        cmp              al, 104;                             je    n00491_var_α
                                                                              jmp   n00492_var_ref_α
n00489_iterate_β:        mov              r11, 421
                        inc              qword ptr [rsp + 64];                jmp   .Lx00490_0
#-----------------------------------------------------------------------------------------------------------------------
n00492_var_ref_α:        mov              r11, 422
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n00493_random_α
#-----------------------------------------------------------------------------------------------------------------------
n00493_random_α:         mov              r11, 423
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
                        cmp              al, 104;                             je    n00491_var_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00494_swap_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_swap_var_α:       mov              r11, 424
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
                        cmp              al, 104;                             je    n00491_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00489_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00491_var_α:            mov              r11, 425
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00495_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00495_return_α:         mov              r11, 426
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   shuffle_γ
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
                        lea              rcx, [rip + .Lx00496_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00496_2]
                        push             rcx;                                 jmp   FN__shuffle
.Lx00496_2:              add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00496_3:              add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 8
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
                        sub              rsp, 1104
                        mov              rdi, rsp
                        add              rdi, 976
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00497_lit_string_α:     mov              r11, 427
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 4
                        mov              rax, qword ptr [rip + .Lx00498_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00499_call_proc_staged_α
.Lx00498_0:              .quad            .Lx00498_0_s
.Lx00498_0_s:            .string          "deal"
#-----------------------------------------------------------------------------------------------------------------------
n00499_call_proc_staged_α:
                        mov              r11, 428
                        lea              rsi, [rsp + 960]
                        call             Init___dcα;                          jmp   .Lx00500_2
.Lx00500_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00500_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
.Lx00500_29:             mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n00501_lit_charset_α
                                                                              jmp   n00501_lit_charset_α
n00499_call_proc_staged_β:
                        mov              r11, 428;                            jmp   n00501_lit_charset_α
.Lx00500_0:              .quad            .Lx00500_0_s
.Lx00500_0_s:            .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00501_lit_charset_α:    mov              r11, 429
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], -1
                        mov              rax, qword ptr [rip + .Lx00502_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00503_call_builtin_icon_α
.Lx00502_0:              .quad            .Lx00502_0_s
.Lx00502_0_s:            .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00503_call_builtin_icon_α:
                        mov              r11, 430
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn1105:             .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1105]
                        lea              rsi, [rsp + 864]
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
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n00504_var_α
                                                                              jmp   n00505_assign_α
n00503_call_builtin_icon_β:
                        mov              r11, 430;                            jmp   n00504_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00505_assign_α:         mov              r11, 431
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [r9 + 16], rax             # deckimage
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n00506_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00506_assign_α:         mov              r11, 432
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [r9 + 0], rax              # deck
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00504_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00504_var_α:            mov              r11, 433
                        mov              rax, qword ptr [r9 + 0]              # deck
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 800], rax           # result
                        mov              qword ptr [rsp + 808], rdx;          jmp   n00507_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00507_unop_α:           mov              r11, 434
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00508_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00508_lit_integer_α:    mov              r11, 435
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx00509_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00510_coerce_numeric_α
.Lx00509_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n00510_coerce_numeric_α: mov              r11, 436
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 5;                               je    .Lx00511_1
                        cmp              al, 3;                               jne   .Lx00511_0
                        mov              eax, dword ptr [rsp + 816]
                        cmp              al, 3;                               jne   .Lx00511_0
.Lx00511_1:              mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00512_binop_α
.Lx00511_0:              lea              rdi, [rsp + 784]
                        lea              rsi, [rsp + 816]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00512_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_binop_α:          mov              r11, 437
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00513_lit_string_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n00514_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00514_assign_α:         mov              r11, 438
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [r9 + 48], rax             # suitsize
                        mov              qword ptr [r9 + 56], rdx
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n00515_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00515_assign_α:         mov              r11, 439
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [r9 + 32], rax             # handsize
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00513_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00513_lit_string_α:     mov              r11, 440
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 13
                        mov              rax, qword ptr [rip + .Lx00516_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00517_assign_α
.Lx00516_0:              .quad            .Lx00516_0_s
.Lx00516_0_s:            .string          "AKQJT98765432"
#-----------------------------------------------------------------------------------------------------------------------
n00517_assign_α:         mov              r11, 441
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [r9 + 80], rax             # rank
                        mov              qword ptr [r9 + 88], rdx;            jmp   n00518_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00518_lit_string_α:     mov              r11, 442
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx00519_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00520_var_α
.Lx00519_0:              .quad            .Lx00519_0_s
.Lx00519_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00520_var_α:            mov              r11, 443
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 704], rax           # result
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00521_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00521_call_builtin_icon_α:
                        mov              r11, 444
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn1121:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1121]
                        lea              rsi, [rsp + 640]
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
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n00522_lit_charset_α
                                                                              jmp   n00523_assign_α
n00521_call_builtin_icon_β:
                        mov              r11, 444;                            jmp   n00522_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00523_assign_α:         mov              r11, 445
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [r9 + 96], rax             # blanker
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00522_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_lit_charset_α:    mov              r11, 446
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], -1
                        mov              rax, qword ptr [rip + .Lx00524_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00525_lit_integer_α
.Lx00524_0:              .quad            .Lx00524_0_s
.Lx00524_0_s:            .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00525_lit_integer_α:    mov              r11, 447
                        mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx00526_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00527_var_α
.Lx00526_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00527_var_α:            mov              r11, 448
                        mov              rax, qword ptr [r9 + 48]             # suitsize
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 592], rax           # result
                        mov              qword ptr [rsp + 600], rdx;          jmp   n00528_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00528_binop_α:          mov              r11, 449
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 592]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx00529_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rsp + 600]
                        add              rax, rdx
                        mov              qword ptr [rsp + 608], 3
                        mov              qword ptr [rsp + 616], rax;          jmp   .Lx00529_7
.Lx00529_2:              and              edx, 1;                              jz    .Lx00529_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rsp + 600]
                        cmp              al, 5;                               je    .Lx00529_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00529_4
.Lx00529_3:              movq             xmm0, rsi
.Lx00529_4:              cmp              cl, 5;                               je    .Lx00529_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00529_6
.Lx00529_5:              movq             xmm1, rdi
.Lx00529_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 608], 5
                        mov              qword ptr [rsp + 616], rax
.Lx00529_7:                                                                    jmp   n00530_subscript_α
.Lx00529_0:              mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00531_var_α
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00530_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00530_subscript_α:      mov              r11, 450
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              r8, qword ptr [rsp + 608]
                        mov              r9, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00531_var_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00532_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00532_assign_α:         mov              r11, 451
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [r9 + 64], rax             # denom
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00531_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00531_var_α:            mov              r11, 452
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00533_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00533_lit_string_α:     mov              r11, 453
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 4
                        mov              rax, qword ptr [rip + .Lx00534_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n00535_call_proc_staged_α
.Lx00534_0:              .quad            .Lx00534_0_s
.Lx00534_0_s:            .string          "h+s+"
#-----------------------------------------------------------------------------------------------------------------------
n00535_call_proc_staged_α:
                        mov              r11, 454
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 528]
                        call             options_dcα;                         jmp   .Lx00536_2
.Lx00536_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00536_29
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
.Lx00536_29:             mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n00537_disjunction_α
                                                                              jmp   n00538_assign_α
n00535_call_proc_staged_β:
                        mov              r11, 454;                            jmp   n00537_disjunction_α
.Lx00536_0:              .quad            .Lx00536_0_s
.Lx00536_0_s:            .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00538_assign_α:         mov              r11, 455
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n00537_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00537_disjunction_α:    mov              r11, 456
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n00539_var_ref_α
n00537_disjunction_as:   mov              r11, 456
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx00540_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax;          jmp   n00541_assign_α
.Lx00540_0:              cmp              eax, 1;                              jne   .Lx00540_1
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 328], rax;          jmp   n00541_assign_α
.Lx00540_1:                                                                    jmp   n00541_assign_α
n00537_disjunction_β:    mov              r11, 456
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              je    n00537_disjunction_af
                                                                              jmp   n00537_disjunction_af
n00537_disjunction_af:   mov              r11, 456
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 1;                              je    n00542_lit_integer_α
                                                                              jmp   n00543_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00541_assign_α:         mov              r11, 457
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00543_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00543_var_ref_α:        mov              r11, 458
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 992]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n00544_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00544_lit_string_α:     mov              r11, 459
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lx00545_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00546_subscript_α
.Lx00545_0:              .quad            .Lx00545_0_s
.Lx00545_0_s:            .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n00546_subscript_α:      mov              r11, 460
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
                        cmp              al, 104;                             je    n00547_lit_integer_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00548_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00548_deref_α:          mov              r11, 461
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00547_lit_integer_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00549_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00549_unop_test_α:      mov              r11, 462
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 104;                             je    n00547_lit_integer_α
                        cmp              eax, 0;                              je    n00547_lit_integer_α
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00550_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00550_keyword_assign_α: mov              r11, 463
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
                        cmp              al, 104;                             je    n00547_lit_integer_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n00547_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00547_lit_integer_α:    mov              r11, 464
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx00551_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00552_var_α
.Lx00551_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00552_var_α:            mov              r11, 465
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00553_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00553_to_α:             mov              r11, 466
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
.Lx00554_0:              mov              rax, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jg    n00555_call_proc_staged_α
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax;           jmp   n00556_bound_α
n00553_to_β:             mov              r11, 466
                        inc              qword ptr [rsp + 80];                jmp   .Lx00554_0
#-----------------------------------------------------------------------------------------------------------------------
n00556_bound_α:          mov              r11, 467
                        mov              qword ptr [rsp + 128], rsp;          jmp   n00557_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00557_call_proc_staged_α:
                        mov              r11, 468
                        call             display_dcα;                         jmp   .Lx00558_2
.Lx00558_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00558_29
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
.Lx00558_29:             mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n00559_unmark_α
                                                                              jmp   n00559_unmark_α
n00557_call_proc_staged_β:
                        mov              r11, 468;                            jmp   n00559_unmark_α
.Lx00558_0:              .quad            .Lx00558_0_s
.Lx00558_0_s:            .string          "display"
#-----------------------------------------------------------------------------------------------------------------------
n00559_unmark_α:         mov              r11, 469
                        mov              rsp, qword ptr [rsp + 128];          jmp   n00553_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00555_call_proc_staged_α:
                        mov              r11, 470
                        call             Term___dcα;                          jmp   .Lx00560_2
.Lx00560_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00560_29
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
.Lx00560_29:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n00555_call_proc_staged_β:
                        mov              r11, 470;                            jmp   main_ω
.Lx00560_0:              .quad            .Lx00560_0_s
.Lx00560_0_s:            .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00542_lit_integer_α:    mov              r11, 471
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx00561_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00537_disjunction_as
n00542_lit_integer_β:    mov              r11, 471;                            jmp   n00537_disjunction_af
.Lx00561_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00539_var_ref_α:        mov              r11, 472
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 992]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n00562_lit_string_α
n00539_var_ref_β:        mov              r11, 472;                            jmp   n00537_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00562_lit_string_α:     mov              r11, 473
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx00563_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00564_subscript_α
.Lx00563_0:              .quad            .Lx00563_0_s
.Lx00563_0_s:            .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n00564_subscript_α:      mov              r11, 474
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00537_disjunction_af
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00565_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00565_deref_α:          mov              r11, 475
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00537_disjunction_af
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00566_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00566_unop_test_α:      mov              r11, 476
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 104;                             je    n00537_disjunction_af
                        cmp              eax, 0;                              je    n00537_disjunction_af
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00537_disjunction_as
n00566_unop_test_β:      mov              r11, 476;                            jmp   n00537_disjunction_af
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
                        mov              edi, 1
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
                        .long            1808
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
                        .long            1344
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
                        .long            320
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
                        .long            2736
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
                        .long            432
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
                        .long            480
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
                        .long            912
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
                        .long            880
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
                        .long            880
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
