                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__listtest:
                        sub              rsp, 1552
                        mov              qword ptr [rsp + 1528], rcx
                        mov              qword ptr [rsp + 1536], rdx
                        mov              rdi, rsp
                        add              rdi, 1328
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 6
                        call             rt_icn_zframe_args_install@PLT
listtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              dword ptr [rsp + 32], 0;             jmp   n48_lit_integer_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              jne   .Lx52_0
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax;           jmp   n1_assign_α
.Lx52_0:                cmp              eax, 1;                              jne   .Lx52_1
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax;           jmp   n1_assign_α
.Lx52_1:                cmp              eax, 2;                              jne   .Lx52_2
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 24], rax;           jmp   n1_assign_α
.Lx52_2:                cmp              eax, 3;                              jne   .Lx52_3
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 24], rax;           jmp   n1_assign_α
.Lx52_3:                                                                      jmp   n1_assign_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              je    n50_to_β
                        cmp              eax, 1;                              je    n0_disjunction_af
                        cmp              eax, 2;                              je    n0_disjunction_af
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 32], 1
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 1;                              je    n47_lit_integer_α
                        cmp              eax, 2;                              je    n46_lit_integer_α
                        cmp              eax, 3;                              je    n45_lit_integer_α
                                                                              jmp   listtest_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n2_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n2_bound_α:             mov              r11, 3
                        mov              qword ptr [rsp + 160], rsp;          jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              r11, 4
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n5_call_builtin_icon_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn60:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n6_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_call_builtin_icon_α
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              r11, 7
                        .section         .rodata
.Lrkfn62:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196768
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n8_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_assign_α
n6_call_builtin_icon_β: mov              r11, 7;                              jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 8
                        mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n9_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_unop_α:              mov              r11, 10
                        mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n11_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_test_α:       mov              r11, 12
                        mov              eax, dword ptr [rsp + 1040]
                        cmp              al, 112;                             je    .Lx69_0
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              al, 112;                             je    .Lx69_0
                        mov              eax, dword ptr [rsp + 1040]
                        cmp              al, 3;                               jne   .Lx69_2
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              al, 3;                               jne   .Lx69_2
.Lx69_1:                mov              rax, qword ptr [rsp + 1048]
                        mov              rcx, qword ptr [rsp + 1336]
                        cmp              rax, rcx;                            jge   n15_call_builtin_icon_α
                        mov              rcx, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1024], rcx
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1032], rcx;         jmp   n12_var_α
.Lx69_0:                mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              r8d, 5
                        lea              r9, [rsp + 1024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx69_1
                        cmp              eax, 1;                              je    n15_call_builtin_icon_α
                                                                              jmp   n12_var_α
.Lx69_2:                mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n15_call_builtin_icon_α
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α: mov              r11, 14
                        call             randval_dcα;                         jmp   .Lx73_2
.Lx73_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx73_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
.Lx73_29:               mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n8_var_α
                                                                              jmp   n14_call_builtin_icon_α
n13_call_proc_staged_β: mov              r11, 14;                             jmp   n8_var_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "randval"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lrkfn75:               .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393341
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n8_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_var_α
n14_call_builtin_icon_β:
                        mov              r11, 15;                             jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              r11, 16
                        .section         .rodata
.Lrkfn77:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n17_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_assign_α
n15_call_builtin_icon_β:
                        mov              r11, 16;                             jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 17
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 936], rax;          jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 984], rax;          jmp   n19_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n19_iterate_α:          mov              r11, 20
                        mov              qword ptr [rsp + 960], 0
.Lx84_0:                mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              rax, 104;                            je    n21_var_α
                                                                              jmp   n20_call_builtin_icon_α
n19_iterate_β:          mov              r11, 20
                        inc              qword ptr [rsp + 960];               jmp   .Lx84_0
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn86:               .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rsp + 880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n19_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_iterate_β
n20_call_builtin_icon_β:
                        mov              r11, 21;                             jmp   n19_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 856], rax;          jmp   n22_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn90:               .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]
                        lea              rsi, [rsp + 816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n24_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_assign_α
n22_call_builtin_icon_β:
                        mov              r11, 23;                             jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 792], rax;          jmp   n25_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn95:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rsp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196768
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n28_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_call_builtin_icon_α
n25_call_builtin_icon_β:
                        mov              r11, 26;                             jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn97:               .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n28_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_assign_α
n26_call_builtin_icon_β:
                        mov              r11, 27;                             jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 664], rax;          jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 680], rax;          jmp   n30_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_proc_staged_α: mov              r11, 31
                        lea              rsi, [rsp + 656]
                        lea              rdx, [rsp + 672]
                        call             check_dcα;                           jmp   .Lx104_2
.Lx104_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx104_29
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
.Lx104_29:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n31_var_α
                                                                              jmp   n31_var_α
n30_call_proc_staged_β: mov              r11, 31;                             jmp   n31_var_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 584], rax;          jmp   n32_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn108:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n35_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_call_builtin_icon_α
n32_call_builtin_icon_β:
                        mov              r11, 33;                             jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn110:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n35_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_assign_α
n33_call_builtin_icon_β:
                        mov              r11, 34;                             jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 472], rax;          jmp   n36_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              r11, 37
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn115:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196768
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n40_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_call_builtin_icon_α
n36_call_builtin_icon_β:
                        mov              r11, 37;                             jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn117:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n40_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_call_builtin_icon_α
n37_call_builtin_icon_β:
                        mov              r11, 38;                             jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn119:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n40_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_assign_α
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 296], rax;          jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 312], rax;          jmp   n42_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_proc_staged_α: mov              r11, 43
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 304]
                        call             check_dcα;                           jmp   .Lx126_2
.Lx126_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx126_29
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
.Lx126_29:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n44_unmark_α
                                                                              jmp   n43_conjunction_α
n42_call_proc_staged_β: mov              r11, 43;                             jmp   n44_unmark_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
n43_conjunction_α:      mov              r11, 44
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n44_unmark_α
n43_conjunction_β:      mov              r11, 44;                             jmp   n44_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n44_unmark_α:           mov              r11, 45
                        mov              rsp, qword ptr [rsp + 160];          jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n0_disjunction_as
n45_lit_integer_β:      mov              r11, 46;                             jmp   n0_disjunction_af
.Lx130_0:               .quad            91
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              r11, 47
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n0_disjunction_as
n46_lit_integer_β:      mov              r11, 47;                             jmp   n0_disjunction_af
.Lx131_0:               .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n0_disjunction_as
n47_lit_integer_β:      mov              r11, 48;                             jmp   n0_disjunction_af
.Lx132_0:               .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n49_lit_integer_α
n48_lit_integer_β:      mov              r11, 49;                             jmp   n0_disjunction_af
.Lx133_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      mov              r11, 50
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n50_to_α
.Lx134_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n50_to_α:               mov              r11, 51
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
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 64], rax
.Lx136_0:               mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 104]
                        cmp              rax, rcx;                            jg    n0_disjunction_af
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   n0_disjunction_as
n50_to_β:               mov              r11, 51
                        inc              qword ptr [rsp + 64];                jmp   .Lx136_0
#-----------------------------------------------------------------------------------------------------------------------
listtest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
listtest_β:
                                                                              jmp   listtest_ω
#-----------------------------------------------------------------------------------------------------------------------
listtest_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1528]
                        add              rsp, 1552;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
listtest_ω:
                        mov              rcx, qword ptr [rsp + 1536]
                        add              rsp, 1552;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
listtest_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx137_2]
                        lea              rdx, [rip + .Lx137_3];               jmp   FN__listtest
.Lx137_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx137_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__rectest:
                        sub              rsp, 2000
                        mov              qword ptr [rsp + 1976], rcx
                        mov              qword ptr [rsp + 1984], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
rectest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_icon_α:
                        mov              r11, 52
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 1936]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              al, 104;                             je    n139_call_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_call_α
n138_call_builtin_icon_β:
                        mov              r11, 52;                             jmp   n139_call_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            mov              r11, 53
                        .section         .rodata
.Lrkfn193:              .string          "r0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n142_call_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_call_builtin_icon_α
n139_call_β:            mov              r11, 53;                             jmp   n142_call_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_icon_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn195:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n142_call_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_call_proc_staged_α
n140_call_builtin_icon_β:
                        mov              r11, 54;                             jmp   n142_call_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        mov              r11, 55
                        lea              rsi, [rsp + 1840]
                        call             wlist_dcα;                           jmp   .Lx197_2
.Lx197_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx197_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
.Lx197_29:              mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n142_call_α
                                                                              jmp   n142_call_α
n141_call_proc_staged_β:
                        mov              r11, 55;                             jmp   n142_call_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            mov              r11, 56
                        .section         .rodata
.Lrkfn199:              .string          "r0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 1744]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n147_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_call_builtin_icon_α
n142_call_β:            mov              r11, 56;                             jmp   n147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_icon_α:
                        mov              r11, 57
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lrkfn201:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rsp + 1696]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n147_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_keyword_icon_α
n143_call_builtin_icon_β:
                        mov              r11, 57;                             jmp   n147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n144_keyword_icon_α:    mov              r11, 58
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0;           jmp   n145_call_builtin_icon_α
n144_keyword_icon_β:    mov              r11, 58;                             jmp   n147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_icon_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lrkfn204:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n147_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n146_call_proc_staged_α
n145_call_builtin_icon_β:
                        mov              r11, 59;                             jmp   n147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_proc_staged_α:
                        mov              r11, 60
                        lea              rsi, [rsp + 1616]
                        call             wlist_dcα;                           jmp   .Lx206_2
.Lx206_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx206_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
.Lx206_29:              mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    n147_lit_integer_α
                                                                              jmp   n147_lit_integer_α
n146_call_proc_staged_β:
                        mov              r11, 60;                             jmp   n147_lit_integer_α
.Lx206_0:               .quad            .Lx206_0_s
.Lx206_0_s:             .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     mov              r11, 61
                        mov              qword ptr [rsp + 1552], 3            # result
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n148_call_α
.Lx207_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            mov              r11, 62
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn209:              .string          "r1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n151_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n149_call_builtin_icon_α
n148_call_β:            mov              r11, 62;                             jmp   n151_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_icon_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn211:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n151_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_call_proc_staged_α
n149_call_builtin_icon_β:
                        mov              r11, 63;                             jmp   n151_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        mov              r11, 64
                        lea              rsi, [rsp + 1456]
                        call             wlist_dcα;                           jmp   .Lx213_2
.Lx213_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx213_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
.Lx213_29:              mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n151_lit_integer_α
                                                                              jmp   n151_lit_integer_α
n150_call_proc_staged_β:
                        mov              r11, 64;                             jmp   n151_lit_integer_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     mov              r11, 65
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n152_lit_integer_α
.Lx214_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     mov              r11, 66
                        mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n153_call_α
.Lx215_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:            mov              r11, 67
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lrkfn217:              .string          "r2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n156_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n154_call_builtin_icon_α
n153_call_β:            mov              r11, 67;                             jmp   n156_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_icon_α:
                        mov              r11, 68
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax
                        .section         .rodata
.Lrkfn219:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n156_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_call_proc_staged_α
n154_call_builtin_icon_β:
                        mov              r11, 68;                             jmp   n156_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        mov              r11, 69
                        lea              rsi, [rsp + 1264]
                        call             wlist_dcα;                           jmp   .Lx221_2
.Lx221_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx221_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
.Lx221_29:              mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n156_lit_integer_α
                                                                              jmp   n156_lit_integer_α
n155_call_proc_staged_β:
                        mov              r11, 69;                             jmp   n156_lit_integer_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     mov              r11, 70
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n157_lit_integer_α
.Lx222_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              r11, 71
                        mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n158_lit_integer_α
.Lx223_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     mov              r11, 72
                        mov              qword ptr [rsp + 1168], 3            # result
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n159_lit_integer_α
.Lx224_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     mov              r11, 73
                        mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n160_lit_integer_α
.Lx225_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     mov              r11, 74
                        mov              qword ptr [rsp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n161_call_α
.Lx226_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:            mov              r11, 75
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1048], rax
                        .section         .rodata
.Lrkfn228:              .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n164_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_call_builtin_icon_α
n161_call_β:            mov              r11, 75;                             jmp   n164_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn230:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n164_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_call_proc_staged_α
n162_call_builtin_icon_β:
                        mov              r11, 76;                             jmp   n164_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        mov              r11, 77
                        lea              rsi, [rsp + 976]
                        call             wlist_dcα;                           jmp   .Lx232_2
.Lx232_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx232_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
.Lx232_29:              mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n164_lit_integer_α
                                                                              jmp   n164_lit_integer_α
n163_call_proc_staged_β:
                        mov              r11, 77;                             jmp   n164_lit_integer_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:     mov              r11, 78
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n165_lit_integer_α
.Lx233_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              r11, 79
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n166_lit_integer_α
.Lx234_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     mov              r11, 80
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n167_lit_integer_α
.Lx235_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     mov              r11, 81
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n168_lit_integer_α
.Lx236_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n169_call_α
.Lx237_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:            mov              r11, 83
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn239:              .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn239]
                        lea              rsi, [rsp + 752]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n172_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_call_builtin_icon_α
n169_call_β:            mov              r11, 83;                             jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_icon_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn241:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n172_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_call_proc_staged_α
n170_call_builtin_icon_β:
                        mov              r11, 84;                             jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        mov              r11, 85
                        lea              rsi, [rsp + 688]
                        call             wlist_dcα;                           jmp   .Lx243_2
.Lx243_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx243_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
.Lx243_29:              mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n172_lit_string_α
                                                                              jmp   n172_lit_string_α
n171_call_proc_staged_β:
                        mov              r11, 85;                             jmp   n172_lit_string_α
.Lx243_0:               .quad            .Lx243_0_s
.Lx243_0_s:             .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 86
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n173_lit_string_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n174_lit_string_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 88
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n175_lit_string_α
.Lx246_0:               .quad            .Lx246_0_s
.Lx246_0_s:             .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              r11, 89
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n176_lit_string_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n177_call_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:            mov              r11, 91
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn250:              .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rsp + 464]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n180_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n178_call_builtin_icon_α
n177_call_β:            mov              r11, 91;                             jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn252:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n180_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_call_proc_staged_α
n178_call_builtin_icon_β:
                        mov              r11, 92;                             jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_proc_staged_α:
                        mov              r11, 93
                        lea              rsi, [rsp + 400]
                        call             wlist_dcα;                           jmp   .Lx254_2
.Lx254_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx254_29
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
.Lx254_29:              mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n180_lit_string_α
                                                                              jmp   n180_lit_string_α
n179_call_proc_staged_β:
                        mov              r11, 93;                             jmp   n180_lit_string_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      mov              r11, 94
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n181_lit_string_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n182_lit_string_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n183_lit_string_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n184_lit_string_α
.Lx258_0:               .quad            .Lx258_0_s
.Lx258_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              r11, 98
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n185_call_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:            mov              r11, 99
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn261:              .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rsp + 176]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n189_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_call_builtin_icon_α
n185_call_β:            mov              r11, 99;                             jmp   n189_return_α
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_icon_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn263:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n189_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n187_call_builtin_icon_α
n186_call_builtin_icon_β:
                        mov              r11, 100;                            jmp   n189_return_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_icon_α:
                        mov              r11, 101
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn265:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n189_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n188_call_proc_staged_α
n187_call_builtin_icon_β:
                        mov              r11, 101;                            jmp   n189_return_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        mov              r11, 102
                        lea              rsi, [rsp + 64]
                        call             wlist_dcα;                           jmp   .Lx267_2
.Lx267_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx267_29
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
.Lx267_29:              mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n189_return_α
                                                                              jmp   n189_return_α
n188_call_proc_staged_β:
                        mov              r11, 102;                            jmp   n189_return_α
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n189_return_α:          mov              r11, 103
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   rectest_γ
#-----------------------------------------------------------------------------------------------------------------------
rectest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rectest_β:
                                                                              jmp   rectest_ω
#-----------------------------------------------------------------------------------------------------------------------
rectest_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1976]
                        add              rsp, 2000;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rectest_ω:
                        mov              rcx, qword ptr [rsp + 1984]
                        add              rsp, 2000;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rectest_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx269_2]
                        lea              rdx, [rip + .Lx269_3];               jmp   FN__rectest
.Lx269_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx269_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__tbltest:
                        sub              rsp, 4240
                        mov              qword ptr [rsp + 4216], rcx
                        mov              qword ptr [rsp + 4224], rdx
                        mov              rdi, rsp
                        add              rdi, 4128
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
tbltest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_icon_α:
                        mov              r11, 104
                        .section         .rodata
.Lrkfn452:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]
                        lea              rsi, [rsp + 4112]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx
                        cmp              al, 104;                             je    n272_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_assign_α
n270_call_builtin_icon_β:
                        mov              r11, 104;                            jmp   n272_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 4096]
                        mov              rdx, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n272_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx;         jmp   n273_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rsp + 4032], 3            # result
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n274_subscript_α
.Lx456_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n274_subscript_α:       mov              r11, 108
                        mov              rdi, qword ptr [rsp + 4016]
                        mov              rsi, qword ptr [rsp + 4024]
                        mov              rdx, qword ptr [rsp + 4032]
                        mov              rcx, qword ptr [rsp + 4040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n277_var_ref_α
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx;         jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rsp + 4080], 2            # result
                        mov              dword ptr [rsp + 4084], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n276_assign_var_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_var_α:      mov              r11, 110
                        mov              rdi, qword ptr [rsp + 4048]
                        mov              rsi, qword ptr [rsp + 4056]
                        mov              rdx, qword ptr [rsp + 4080]
                        mov              rcx, qword ptr [rsp + 4088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n277_var_ref_α
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx;         jmp   n277_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx;         jmp   n278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 3952], 3            # result
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n279_subscript_α
.Lx462_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n279_subscript_α:       mov              r11, 113
                        mov              rdi, qword ptr [rsp + 3936]
                        mov              rsi, qword ptr [rsp + 3944]
                        mov              rdx, qword ptr [rsp + 3952]
                        mov              rcx, qword ptr [rsp + 3960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n282_var_ref_α
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx;         jmp   n280_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rsp + 4000], 2            # result
                        mov              dword ptr [rsp + 4004], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n281_assign_var_α
.Lx464_0:               .quad            .Lx464_0_s
.Lx464_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_var_α:      mov              r11, 115
                        mov              rdi, qword ptr [rsp + 3968]
                        mov              rsi, qword ptr [rsp + 3976]
                        mov              rdx, qword ptr [rsp + 4000]
                        mov              rcx, qword ptr [rsp + 4008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n282_var_ref_α
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx;         jmp   n282_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx;         jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rsp + 3872], 3            # result
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n284_subscript_α
.Lx468_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n284_subscript_α:       mov              r11, 118
                        mov              rdi, qword ptr [rsp + 3856]
                        mov              rsi, qword ptr [rsp + 3864]
                        mov              rdx, qword ptr [rsp + 3872]
                        mov              rcx, qword ptr [rsp + 3880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n287_var_ref_α
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx;         jmp   n285_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 3920], 2            # result
                        mov              dword ptr [rsp + 3924], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 3928], rax;         jmp   n286_assign_var_α
.Lx470_0:               .quad            .Lx470_0_s
.Lx470_0_s:             .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_var_α:      mov              r11, 120
                        mov              rdi, qword ptr [rsp + 3888]
                        mov              rsi, qword ptr [rsp + 3896]
                        mov              rdx, qword ptr [rsp + 3920]
                        mov              rcx, qword ptr [rsp + 3928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n287_var_ref_α
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx;         jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n288_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:     mov              r11, 122
                        mov              qword ptr [rsp + 3792], 3            # result
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n289_subscript_α
.Lx474_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n289_subscript_α:       mov              r11, 123
                        mov              rdi, qword ptr [rsp + 3776]
                        mov              rsi, qword ptr [rsp + 3784]
                        mov              rdx, qword ptr [rsp + 3792]
                        mov              rcx, qword ptr [rsp + 3800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n292_var_ref_α
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx;         jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rsp + 3840], 2            # result
                        mov              dword ptr [rsp + 3844], 1
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 3848], rax;         jmp   n291_assign_var_α
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_var_α:      mov              r11, 125
                        mov              rdi, qword ptr [rsp + 3808]
                        mov              rsi, qword ptr [rsp + 3816]
                        mov              rdx, qword ptr [rsp + 3840]
                        mov              rcx, qword ptr [rsp + 3848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n292_var_ref_α
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx;         jmp   n292_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx;         jmp   n293_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rsp + 3712], 3            # result
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n294_subscript_α
.Lx480_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n294_subscript_α:       mov              r11, 128
                        mov              rdi, qword ptr [rsp + 3696]
                        mov              rsi, qword ptr [rsp + 3704]
                        mov              rdx, qword ptr [rsp + 3712]
                        mov              rcx, qword ptr [rsp + 3720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n297_var_ref_α
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx;         jmp   n295_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n296_assign_var_α
.Lx482_0:               .quad            .Lx482_0_s
.Lx482_0_s:             .string          "o"
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_var_α:      mov              r11, 130
                        mov              rdi, qword ptr [rsp + 3728]
                        mov              rsi, qword ptr [rsp + 3736]
                        mov              rdx, qword ptr [rsp + 3760]
                        mov              rcx, qword ptr [rsp + 3768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n297_var_ref_α
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n297_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx;         jmp   n298_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:     mov              r11, 132
                        mov              qword ptr [rsp + 3632], 3            # result
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 3640], rax;         jmp   n299_subscript_α
.Lx486_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n299_subscript_α:       mov              r11, 133
                        mov              rdi, qword ptr [rsp + 3616]
                        mov              rsi, qword ptr [rsp + 3624]
                        mov              rdx, qword ptr [rsp + 3632]
                        mov              rcx, qword ptr [rsp + 3640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n302_var_ref_α
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rsp + 3680], 2            # result
                        mov              dword ptr [rsp + 3684], 1
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n301_assign_var_α
.Lx488_0:               .quad            .Lx488_0_s
.Lx488_0_s:             .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n301_assign_var_α:      mov              r11, 135
                        mov              rdi, qword ptr [rsp + 3648]
                        mov              rsi, qword ptr [rsp + 3656]
                        mov              rdx, qword ptr [rsp + 3680]
                        mov              rcx, qword ptr [rsp + 3688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n302_var_ref_α
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n302_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx;         jmp   n303_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:     mov              r11, 137
                        mov              qword ptr [rsp + 3552], 3            # result
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n304_subscript_α
.Lx492_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n304_subscript_α:       mov              r11, 138
                        mov              rdi, qword ptr [rsp + 3536]
                        mov              rsi, qword ptr [rsp + 3544]
                        mov              rdx, qword ptr [rsp + 3552]
                        mov              rcx, qword ptr [rsp + 3560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n307_var_ref_α
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n305_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n306_assign_var_α
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_var_α:      mov              r11, 140
                        mov              rdi, qword ptr [rsp + 3568]
                        mov              rsi, qword ptr [rsp + 3576]
                        mov              rdx, qword ptr [rsp + 3600]
                        mov              rcx, qword ptr [rsp + 3608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n307_var_ref_α
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx;         jmp   n308_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     mov              r11, 142
                        mov              qword ptr [rsp + 3472], 3            # result
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n309_subscript_α
.Lx498_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n309_subscript_α:       mov              r11, 143
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 3472]
                        mov              rcx, qword ptr [rsp + 3480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n312_var_ref_α
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx;         jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rsp + 3520], 2            # result
                        mov              dword ptr [rsp + 3524], 1
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n311_assign_var_α
.Lx500_0:               .quad            .Lx500_0_s
.Lx500_0_s:             .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_var_α:      mov              r11, 145
                        mov              rdi, qword ptr [rsp + 3488]
                        mov              rsi, qword ptr [rsp + 3496]
                        mov              rdx, qword ptr [rsp + 3520]
                        mov              rcx, qword ptr [rsp + 3528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n312_var_ref_α
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n313_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:     mov              r11, 147
                        mov              qword ptr [rsp + 3392], 3            # result
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n314_subscript_α
.Lx504_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n314_subscript_α:       mov              r11, 148
                        mov              rdi, qword ptr [rsp + 3376]
                        mov              rsi, qword ptr [rsp + 3384]
                        mov              rdx, qword ptr [rsp + 3392]
                        mov              rcx, qword ptr [rsp + 3400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n317_var_ref_α
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n316_assign_var_α
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_var_α:      mov              r11, 150
                        mov              rdi, qword ptr [rsp + 3408]
                        mov              rsi, qword ptr [rsp + 3416]
                        mov              rdx, qword ptr [rsp + 3440]
                        mov              rcx, qword ptr [rsp + 3448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n317_var_ref_α
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx;         jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4144]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n318_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:     mov              r11, 152
                        mov              qword ptr [rsp + 3312], 3            # result
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n319_subscript_α
.Lx510_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n319_subscript_α:       mov              r11, 153
                        mov              rdi, qword ptr [rsp + 3296]
                        mov              rsi, qword ptr [rsp + 3304]
                        mov              rdx, qword ptr [rsp + 3312]
                        mov              rcx, qword ptr [rsp + 3320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n322_call_builtin_icon_α
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx;         jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 3360], 2            # result
                        mov              dword ptr [rsp + 3364], 1
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n321_assign_var_α
.Lx512_0:               .quad            .Lx512_0_s
.Lx512_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_var_α:      mov              r11, 155
                        mov              rdi, qword ptr [rsp + 3328]
                        mov              rsi, qword ptr [rsp + 3336]
                        mov              rdx, qword ptr [rsp + 3360]
                        mov              rcx, qword ptr [rsp + 3368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n322_call_builtin_icon_α
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx;         jmp   n322_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_icon_α:
                        mov              r11, 156
                        .section         .rodata
.Lrkfn515:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn515]
                        lea              rsi, [rsp + 3280]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              al, 104;                             je    n323_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n323_var_α
n322_call_builtin_icon_β:
                        mov              r11, 156;                            jmp   n323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n324_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_icon_α:
                        mov              r11, 158
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3224], rax
                        .section         .rodata
.Lrkfn519:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn519]
                        lea              rsi, [rsp + 3216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n326_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_assign_α
n324_call_builtin_icon_β:
                        mov              r11, 158;                            jmp   n326_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:          mov              r11, 159
                        mov              rax, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n326_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rsp + 3024], 2            # result
                        mov              dword ptr [rsp + 3028], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n327_disjunction_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n327_disjunction_α:     mov              r11, 161
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              dword ptr [rsp + 3056], 0;           jmp   n333_var_α
n327_disjunction_as:    mov              r11, 161
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              eax, 0;                              jne   .Lx523_0
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n328_call_builtin_icon_α
.Lx523_0:               cmp              eax, 1;                              jne   .Lx523_1
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n328_call_builtin_icon_α
.Lx523_1:               cmp              eax, 2;                              jne   .Lx523_2
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n328_call_builtin_icon_α
.Lx523_2:                                                                     jmp   n328_call_builtin_icon_α
n327_disjunction_β:     mov              r11, 161
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              eax, 0;                              je    n327_disjunction_af
                        cmp              eax, 1;                              je    n332_iterate_β
                                                                              jmp   n327_disjunction_af
n327_disjunction_af:    mov              r11, 161
                        add              dword ptr [rsp + 3056], 1
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              eax, 1;                              je    n330_var_α
                        cmp              eax, 2;                              je    n329_lit_string_α
                                                                              jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_icon_α:
                        mov              r11, 162
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3000], rax
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 2984], rax
                        .section         .rodata
.Lrkfn525:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn525]
                        lea              rsi, [rsp + 2976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx
                        cmp              al, 104;                             je    n327_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n327_disjunction_β
n328_call_builtin_icon_β:
                        mov              r11, 162;                            jmp   n327_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 1
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n327_disjunction_as
n329_lit_string_β:      mov              r11, 163;                            jmp   n327_disjunction_af
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             mov              r11, 164
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n331_iterate_α
n330_var_β:             mov              r11, 164;                            jmp   n327_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n331_iterate_α:         mov              r11, 165
                        mov              qword ptr [rsp + 3152], 0
.Lx530_0:               mov              rdi, qword ptr [rsp + 3168]
                        mov              rsi, qword ptr [rsp + 3176]
                        mov              rdx, qword ptr [rsp + 3152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx
                        cmp              rax, 104;                            je    n327_disjunction_af
                                                                              jmp   n332_iterate_α
n331_iterate_β:         mov              r11, 165
                        inc              qword ptr [rsp + 3152];              jmp   .Lx530_0
#-----------------------------------------------------------------------------------------------------------------------
n332_iterate_α:         mov              r11, 166
                        mov              qword ptr [rsp + 3120], 0
.Lx532_0:               mov              rdi, qword ptr [rsp + 3136]
                        mov              rsi, qword ptr [rsp + 3144]
                        mov              rdx, qword ptr [rsp + 3120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              rax, 104;                            je    n331_iterate_β
                                                                              jmp   n327_disjunction_as
n332_iterate_β:         mov              r11, 166
                        inc              qword ptr [rsp + 3120];              jmp   .Lx532_0
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:             mov              r11, 167
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n334_unop_α
n333_var_β:             mov              r11, 167;                            jmp   n327_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n334_unop_α:            mov              r11, 168
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n327_disjunction_as
n334_unop_β:            mov              r11, 168;                            jmp   n327_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             mov              r11, 169
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              r11, 170
                        mov              qword ptr [rsp + 2944], 3            # result
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n337_call_builtin_icon_α
.Lx538_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_icon_α:
                        mov              r11, 171
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2904], rax
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2888], rax
                        .section         .rodata
.Lrkfn540:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn540]
                        lea              rsi, [rsp + 2880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n339_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n338_assign_α
n337_call_builtin_icon_β:
                        mov              r11, 171;                            jmp   n339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:          mov              r11, 172
                        mov              rax, qword ptr [rsp + 2864]
                        mov              rdx, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rsp + 2688], 2            # result
                        mov              dword ptr [rsp + 2692], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n340_disjunction_α
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n340_disjunction_α:     mov              r11, 174
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              dword ptr [rsp + 2720], 0;           jmp   n346_var_α
n340_disjunction_as:    mov              r11, 174
                        mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 0;                              jne   .Lx544_0
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n341_call_builtin_icon_α
.Lx544_0:               cmp              eax, 1;                              jne   .Lx544_1
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n341_call_builtin_icon_α
.Lx544_1:               cmp              eax, 2;                              jne   .Lx544_2
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n341_call_builtin_icon_α
.Lx544_2:                                                                     jmp   n341_call_builtin_icon_α
n340_disjunction_β:     mov              r11, 174
                        mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 0;                              je    n340_disjunction_af
                        cmp              eax, 1;                              je    n345_iterate_β
                                                                              jmp   n340_disjunction_af
n340_disjunction_af:    mov              r11, 174
                        add              dword ptr [rsp + 2720], 1
                        mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 1;                              je    n343_var_α
                        cmp              eax, 2;                              je    n342_lit_string_α
                                                                              jmp   n348_var_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_icon_α:
                        mov              r11, 175
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2664], rax
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2648], rax
                        .section         .rodata
.Lrkfn546:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn546]
                        lea              rsi, [rsp + 2640]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              al, 104;                             je    n340_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n340_disjunction_β
n341_call_builtin_icon_β:
                        mov              r11, 175;                            jmp   n340_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 1
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n340_disjunction_as
n342_lit_string_β:      mov              r11, 176;                            jmp   n340_disjunction_af
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:             mov              r11, 177
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n344_iterate_α
n343_var_β:             mov              r11, 177;                            jmp   n340_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n344_iterate_α:         mov              r11, 178
                        mov              qword ptr [rsp + 2816], 0
.Lx551_0:               mov              rdi, qword ptr [rsp + 2832]
                        mov              rsi, qword ptr [rsp + 2840]
                        mov              rdx, qword ptr [rsp + 2816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              rax, 104;                            je    n340_disjunction_af
                                                                              jmp   n345_iterate_α
n344_iterate_β:         mov              r11, 178
                        inc              qword ptr [rsp + 2816];              jmp   .Lx551_0
#-----------------------------------------------------------------------------------------------------------------------
n345_iterate_α:         mov              r11, 179
                        mov              qword ptr [rsp + 2784], 0
.Lx553_0:               mov              rdi, qword ptr [rsp + 2800]
                        mov              rsi, qword ptr [rsp + 2808]
                        mov              rdx, qword ptr [rsp + 2784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              rax, 104;                            je    n344_iterate_β
                                                                              jmp   n340_disjunction_as
n345_iterate_β:         mov              r11, 179
                        inc              qword ptr [rsp + 2784];              jmp   .Lx553_0
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n347_unop_α
n346_var_β:             mov              r11, 180;                            jmp   n340_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n347_unop_α:            mov              r11, 181
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx;         jmp   n340_disjunction_as
n347_unop_β:            mov              r11, 181;                            jmp   n340_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n349_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rsp + 2608], 3            # result
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n350_call_builtin_icon_α
.Lx559_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n350_call_builtin_icon_α:
                        mov              r11, 184
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2552], rax
                        .section         .rodata
.Lrkfn561:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rsp + 2544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n352_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n351_assign_α
n350_call_builtin_icon_β:
                        mov              r11, 184;                            jmp   n352_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n351_assign_α:          mov              r11, 185
                        mov              rax, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n352_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 1
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n353_disjunction_α
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n353_disjunction_α:     mov              r11, 187
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              dword ptr [rsp + 2384], 0;           jmp   n359_var_α
n353_disjunction_as:    mov              r11, 187
                        mov              eax, dword ptr [rsp + 2384]
                        cmp              eax, 0;                              jne   .Lx565_0
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n354_call_builtin_icon_α
.Lx565_0:               cmp              eax, 1;                              jne   .Lx565_1
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n354_call_builtin_icon_α
.Lx565_1:               cmp              eax, 2;                              jne   .Lx565_2
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n354_call_builtin_icon_α
.Lx565_2:                                                                     jmp   n354_call_builtin_icon_α
n353_disjunction_β:     mov              r11, 187
                        mov              eax, dword ptr [rsp + 2384]
                        cmp              eax, 0;                              je    n353_disjunction_af
                        cmp              eax, 1;                              je    n358_iterate_β
                                                                              jmp   n353_disjunction_af
n353_disjunction_af:    mov              r11, 187
                        add              dword ptr [rsp + 2384], 1
                        mov              eax, dword ptr [rsp + 2384]
                        cmp              eax, 1;                              je    n356_var_α
                        cmp              eax, 2;                              je    n355_lit_string_α
                                                                              jmp   n361_var_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_icon_α:
                        mov              r11, 188
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2328], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2312], rax
                        .section         .rodata
.Lrkfn567:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn567]
                        lea              rsi, [rsp + 2304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              al, 104;                             je    n353_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n353_disjunction_β
n354_call_builtin_icon_β:
                        mov              r11, 188;                            jmp   n353_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n353_disjunction_as
n355_lit_string_β:      mov              r11, 189;                            jmp   n353_disjunction_af
.Lx568_0:               .quad            .Lx568_0_s
.Lx568_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:             mov              r11, 190
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n357_iterate_α
n356_var_β:             mov              r11, 190;                            jmp   n353_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n357_iterate_α:         mov              r11, 191
                        mov              qword ptr [rsp + 2480], 0
.Lx572_0:               mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        mov              rdx, qword ptr [rsp + 2480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              rax, 104;                            je    n353_disjunction_af
                                                                              jmp   n358_iterate_α
n357_iterate_β:         mov              r11, 191
                        inc              qword ptr [rsp + 2480];              jmp   .Lx572_0
#-----------------------------------------------------------------------------------------------------------------------
n358_iterate_α:         mov              r11, 192
                        mov              qword ptr [rsp + 2448], 0
.Lx574_0:               mov              rdi, qword ptr [rsp + 2464]
                        mov              rsi, qword ptr [rsp + 2472]
                        mov              rdx, qword ptr [rsp + 2448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              rax, 104;                            je    n357_iterate_β
                                                                              jmp   n353_disjunction_as
n358_iterate_β:         mov              r11, 192
                        inc              qword ptr [rsp + 2448];              jmp   .Lx574_0
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             mov              r11, 193
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n360_unop_α
n359_var_β:             mov              r11, 193;                            jmp   n353_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n360_unop_α:            mov              r11, 194
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n353_disjunction_as
n360_unop_β:            mov              r11, 194;                            jmp   n353_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n362_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:     mov              r11, 196
                        mov              qword ptr [rsp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n363_call_builtin_icon_α
.Lx580_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n363_call_builtin_icon_α:
                        mov              r11, 197
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2216], rax
                        .section         .rodata
.Lrkfn582:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]
                        lea              rsi, [rsp + 2208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n365_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n364_assign_α
n363_call_builtin_icon_β:
                        mov              r11, 197;                            jmp   n365_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n364_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n365_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 1
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n366_disjunction_α
.Lx584_0:               .quad            .Lx584_0_s
.Lx584_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n366_disjunction_α:     mov              r11, 200
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              dword ptr [rsp + 2080], 0;           jmp   n371_var_α
n366_disjunction_as:    mov              r11, 200
                        mov              eax, dword ptr [rsp + 2080]
                        cmp              eax, 0;                              jne   .Lx586_0
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n367_call_builtin_icon_α
.Lx586_0:               cmp              eax, 1;                              jne   .Lx586_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n367_call_builtin_icon_α
.Lx586_1:               cmp              eax, 2;                              jne   .Lx586_2
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n367_call_builtin_icon_α
.Lx586_2:                                                                     jmp   n367_call_builtin_icon_α
n366_disjunction_β:     mov              r11, 200
                        mov              eax, dword ptr [rsp + 2080]
                        cmp              eax, 0;                              je    n366_disjunction_af
                        cmp              eax, 1;                              je    n370_iterate_β
                                                                              jmp   n366_disjunction_af
n366_disjunction_af:    mov              r11, 200
                        add              dword ptr [rsp + 2080], 1
                        mov              eax, dword ptr [rsp + 2080]
                        cmp              eax, 1;                              je    n369_var_α
                        cmp              eax, 2;                              je    n368_lit_string_α
                                                                              jmp   n373_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_call_builtin_icon_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2008], rax
                        .section         .rodata
.Lrkfn588:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn588]
                        lea              rsi, [rsp + 2000]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n366_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n366_disjunction_β
n367_call_builtin_icon_β:
                        mov              r11, 201;                            jmp   n366_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n366_disjunction_as
n368_lit_string_β:      mov              r11, 202;                            jmp   n366_disjunction_af
.Lx589_0:               .quad            .Lx589_0_s
.Lx589_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             mov              r11, 203
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n370_iterate_α
n369_var_β:             mov              r11, 203;                            jmp   n366_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n370_iterate_α:         mov              r11, 204
                        mov              qword ptr [rsp + 2144], 0
.Lx593_0:               mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              rax, 104;                            je    n366_disjunction_af
                                                                              jmp   n366_disjunction_as
n370_iterate_β:         mov              r11, 204
                        inc              qword ptr [rsp + 2144];              jmp   .Lx593_0
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n372_unop_α
n371_var_β:             mov              r11, 205;                            jmp   n366_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n372_unop_α:            mov              r11, 206
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n366_disjunction_as
n372_unop_β:            mov              r11, 206;                            jmp   n366_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:             mov              r11, 207
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n374_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:     mov              r11, 208
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n375_call_builtin_icon_α
.Lx599_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n375_call_builtin_icon_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1912], rax
                        .section         .rodata
.Lrkfn601:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn601]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n377_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n376_assign_α
n375_call_builtin_icon_β:
                        mov              r11, 209;                            jmp   n377_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n376_assign_α:          mov              r11, 210
                        mov              rax, qword ptr [rsp + 1888]
                        mov              rdx, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n377_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 1
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n378_disjunction_α
.Lx603_0:               .quad            .Lx603_0_s
.Lx603_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n378_disjunction_α:     mov              r11, 212
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              dword ptr [rsp + 1776], 0;           jmp   n383_var_α
n378_disjunction_as:    mov              r11, 212
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 0;                              jne   .Lx605_0
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n379_call_builtin_icon_α
.Lx605_0:               cmp              eax, 1;                              jne   .Lx605_1
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n379_call_builtin_icon_α
.Lx605_1:               cmp              eax, 2;                              jne   .Lx605_2
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n379_call_builtin_icon_α
.Lx605_2:                                                                     jmp   n379_call_builtin_icon_α
n378_disjunction_β:     mov              r11, 212
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 0;                              je    n378_disjunction_af
                        cmp              eax, 1;                              je    n382_iterate_β
                                                                              jmp   n378_disjunction_af
n378_disjunction_af:    mov              r11, 212
                        add              dword ptr [rsp + 1776], 1
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 1;                              je    n381_var_α
                        cmp              eax, 2;                              je    n380_lit_string_α
                                                                              jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_icon_α:
                        mov              r11, 213
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lrkfn607:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rsp + 1696]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n378_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n378_disjunction_β
n379_call_builtin_icon_β:
                        mov              r11, 213;                            jmp   n378_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n378_disjunction_as
n380_lit_string_β:      mov              r11, 214;                            jmp   n378_disjunction_af
.Lx608_0:               .quad            .Lx608_0_s
.Lx608_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n382_iterate_α
n381_var_β:             mov              r11, 215;                            jmp   n378_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n382_iterate_α:         mov              r11, 216
                        mov              qword ptr [rsp + 1840], 0
.Lx612_0:               mov              rdi, qword ptr [rsp + 1856]
                        mov              rsi, qword ptr [rsp + 1864]
                        mov              rdx, qword ptr [rsp + 1840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              rax, 104;                            je    n378_disjunction_af
                                                                              jmp   n378_disjunction_as
n382_iterate_β:         mov              r11, 216
                        inc              qword ptr [rsp + 1840];              jmp   .Lx612_0
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             mov              r11, 217
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n384_unop_α
n383_var_β:             mov              r11, 217;                            jmp   n378_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n384_unop_α:            mov              r11, 218
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n378_disjunction_as
n384_unop_β:            mov              r11, 218;                            jmp   n378_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             mov              r11, 219
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n386_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_icon_α:
                        mov              r11, 220
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lrkfn619:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn619]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n388_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n387_assign_α
n386_call_builtin_icon_β:
                        mov              r11, 220;                            jmp   n388_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:          mov              r11, 221
                        mov              rax, qword ptr [rsp + 1616]
                        mov              rdx, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n388_var_α
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:             mov              r11, 222
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n389_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_icon_α:
                        mov              r11, 223
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn624:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n391_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n390_assign_α
n389_call_builtin_icon_β:
                        mov              r11, 223;                            jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_assign_α:          mov              r11, 224
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n392_disjunction_α
.Lx626_0:               .quad            .Lx626_0_s
.Lx626_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n392_disjunction_α:     mov              r11, 226
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              dword ptr [rsp + 1408], 0;           jmp   n398_var_α
n392_disjunction_as:    mov              r11, 226
                        mov              eax, dword ptr [rsp + 1408]
                        cmp              eax, 0;                              jne   .Lx628_0
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n393_call_builtin_icon_α
.Lx628_0:               cmp              eax, 1;                              jne   .Lx628_1
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n393_call_builtin_icon_α
.Lx628_1:               cmp              eax, 2;                              jne   .Lx628_2
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n393_call_builtin_icon_α
.Lx628_2:                                                                     jmp   n393_call_builtin_icon_α
n392_disjunction_β:     mov              r11, 226
                        mov              eax, dword ptr [rsp + 1408]
                        cmp              eax, 0;                              je    n392_disjunction_af
                        cmp              eax, 1;                              je    n397_iterate_β
                                                                              jmp   n392_disjunction_af
n392_disjunction_af:    mov              r11, 226
                        add              dword ptr [rsp + 1408], 1
                        mov              eax, dword ptr [rsp + 1408]
                        cmp              eax, 1;                              je    n395_var_α
                        cmp              eax, 2;                              je    n394_lit_string_α
                                                                              jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_icon_α:
                        mov              r11, 227
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lrkfn630:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn630]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n392_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n392_disjunction_β
n393_call_builtin_icon_β:
                        mov              r11, 227;                            jmp   n392_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 1
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n392_disjunction_as
n394_lit_string_β:      mov              r11, 228;                            jmp   n392_disjunction_af
.Lx631_0:               .quad            .Lx631_0_s
.Lx631_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             mov              r11, 229
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n396_iterate_α
n395_var_β:             mov              r11, 229;                            jmp   n392_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n396_iterate_α:         mov              r11, 230
                        mov              qword ptr [rsp + 1504], 0
.Lx635_0:               mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdx, qword ptr [rsp + 1504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              rax, 104;                            je    n392_disjunction_af
                                                                              jmp   n397_iterate_α
n396_iterate_β:         mov              r11, 230
                        inc              qword ptr [rsp + 1504];              jmp   .Lx635_0
#-----------------------------------------------------------------------------------------------------------------------
n397_iterate_α:         mov              r11, 231
                        mov              qword ptr [rsp + 1472], 0
.Lx637_0:               mov              rdi, qword ptr [rsp + 1488]
                        mov              rsi, qword ptr [rsp + 1496]
                        mov              rdx, qword ptr [rsp + 1472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              rax, 104;                            je    n396_iterate_β
                                                                              jmp   n392_disjunction_as
n397_iterate_β:         mov              r11, 231
                        inc              qword ptr [rsp + 1472];              jmp   .Lx637_0
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n399_unop_α
n398_var_β:             mov              r11, 232;                            jmp   n392_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n399_unop_α:            mov              r11, 233
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n392_disjunction_as
n399_unop_β:            mov              r11, 233;                            jmp   n392_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n401_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n402_call_builtin_icon_α
.Lx643_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n402_call_builtin_icon_α:
                        mov              r11, 236
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn645:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n404_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n403_assign_α
n402_call_builtin_icon_β:
                        mov              r11, 236;                            jmp   n404_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n403_assign_α:          mov              r11, 237
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n404_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n405_disjunction_α
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n405_disjunction_α:     mov              r11, 239
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n411_var_α
n405_disjunction_as:    mov              r11, 239
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Lx649_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n406_call_builtin_icon_α
.Lx649_0:               cmp              eax, 1;                              jne   .Lx649_1
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n406_call_builtin_icon_α
.Lx649_1:               cmp              eax, 2;                              jne   .Lx649_2
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n406_call_builtin_icon_α
.Lx649_2:                                                                     jmp   n406_call_builtin_icon_α
n405_disjunction_β:     mov              r11, 239
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              je    n405_disjunction_af
                        cmp              eax, 1;                              je    n410_iterate_β
                                                                              jmp   n405_disjunction_af
n405_disjunction_af:    mov              r11, 239
                        add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 1;                              je    n408_var_α
                        cmp              eax, 2;                              je    n407_lit_string_α
                                                                              jmp   n413_var_α
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_icon_α:
                        mov              r11, 240
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn651:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn651]
                        lea              rsi, [rsp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n405_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n405_disjunction_β
n406_call_builtin_icon_β:
                        mov              r11, 240;                            jmp   n405_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      mov              r11, 241
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n405_disjunction_as
n407_lit_string_β:      mov              r11, 241;                            jmp   n405_disjunction_af
.Lx652_0:               .quad            .Lx652_0_s
.Lx652_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:             mov              r11, 242
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n409_iterate_α
n408_var_β:             mov              r11, 242;                            jmp   n405_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n409_iterate_α:         mov              r11, 243
                        mov              qword ptr [rsp + 1168], 0
.Lx656_0:               mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              rax, 104;                            je    n405_disjunction_af
                                                                              jmp   n410_iterate_α
n409_iterate_β:         mov              r11, 243
                        inc              qword ptr [rsp + 1168];              jmp   .Lx656_0
#-----------------------------------------------------------------------------------------------------------------------
n410_iterate_α:         mov              r11, 244
                        mov              qword ptr [rsp + 1136], 0
.Lx658_0:               mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              rax, 104;                            je    n409_iterate_β
                                                                              jmp   n405_disjunction_as
n410_iterate_β:         mov              r11, 244
                        inc              qword ptr [rsp + 1136];              jmp   .Lx658_0
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:             mov              r11, 245
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n412_unop_α
n411_var_β:             mov              r11, 245;                            jmp   n405_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n412_unop_α:            mov              r11, 246
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n405_disjunction_as
n412_unop_β:            mov              r11, 246;                            jmp   n405_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:             mov              r11, 247
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 952], rax;          jmp   n414_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:     mov              r11, 248
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n415_call_builtin_icon_α
.Lx664_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_icon_α:
                        mov              r11, 249
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn666:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn666]
                        lea              rsi, [rsp + 896]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n417_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n416_assign_α
n415_call_builtin_icon_β:
                        mov              r11, 249;                            jmp   n417_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:          mov              r11, 250
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n417_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 1
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n418_disjunction_α
.Lx668_0:               .quad            .Lx668_0_s
.Lx668_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n418_disjunction_α:     mov              r11, 252
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              dword ptr [rsp + 736], 0;            jmp   n424_var_α
n418_disjunction_as:    mov              r11, 252
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 0;                              jne   .Lx670_0
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax;          jmp   n419_call_builtin_icon_α
.Lx670_0:               cmp              eax, 1;                              jne   .Lx670_1
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax;          jmp   n419_call_builtin_icon_α
.Lx670_1:               cmp              eax, 2;                              jne   .Lx670_2
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 728], rax;          jmp   n419_call_builtin_icon_α
.Lx670_2:                                                                     jmp   n419_call_builtin_icon_α
n418_disjunction_β:     mov              r11, 252
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 0;                              je    n418_disjunction_af
                        cmp              eax, 1;                              je    n423_iterate_β
                                                                              jmp   n418_disjunction_af
n418_disjunction_af:    mov              r11, 252
                        add              dword ptr [rsp + 736], 1
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 1;                              je    n421_var_α
                        cmp              eax, 2;                              je    n420_lit_string_α
                                                                              jmp   n426_var_α
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_icon_α:
                        mov              r11, 253
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn672:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn672]
                        lea              rsi, [rsp + 656]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n418_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n418_disjunction_β
n419_call_builtin_icon_β:
                        mov              r11, 253;                            jmp   n418_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      mov              r11, 254
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n418_disjunction_as
n420_lit_string_β:      mov              r11, 254;                            jmp   n418_disjunction_af
.Lx673_0:               .quad            .Lx673_0_s
.Lx673_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             mov              r11, 255
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 856], rax;          jmp   n422_iterate_α
n421_var_β:             mov              r11, 255;                            jmp   n418_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n422_iterate_α:         mov              r11, 256
                        mov              qword ptr [rsp + 832], 0
.Lx677_0:               mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              rax, 104;                            je    n418_disjunction_af
                                                                              jmp   n423_iterate_α
n422_iterate_β:         mov              r11, 256
                        inc              qword ptr [rsp + 832];               jmp   .Lx677_0
#-----------------------------------------------------------------------------------------------------------------------
n423_iterate_α:         mov              r11, 257
                        mov              qword ptr [rsp + 800], 0
.Lx679_0:               mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              rax, 104;                            je    n422_iterate_β
                                                                              jmp   n418_disjunction_as
n423_iterate_β:         mov              r11, 257
                        inc              qword ptr [rsp + 800];               jmp   .Lx679_0
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             mov              r11, 258
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 776], rax;          jmp   n425_unop_α
n424_var_β:             mov              r11, 258;                            jmp   n418_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n425_unop_α:            mov              r11, 259
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n418_disjunction_as
n425_unop_β:            mov              r11, 259;                            jmp   n418_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:             mov              r11, 260
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 616], rax;          jmp   n427_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_integer_α:     mov              r11, 261
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n428_call_builtin_icon_α
.Lx685_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_icon_α:
                        mov              r11, 262
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn687:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn687]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n430_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n429_assign_α
n428_call_builtin_icon_β:
                        mov              r11, 262;                            jmp   n430_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_α:          mov              r11, 263
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n430_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n431_disjunction_α
.Lx689_0:               .quad            .Lx689_0_s
.Lx689_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n431_disjunction_α:     mov              r11, 265
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              dword ptr [rsp + 432], 0;            jmp   n436_var_α
n431_disjunction_as:    mov              r11, 265
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              jne   .Lx691_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax;          jmp   n432_call_builtin_icon_α
.Lx691_0:               cmp              eax, 1;                              jne   .Lx691_1
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 424], rax;          jmp   n432_call_builtin_icon_α
.Lx691_1:               cmp              eax, 2;                              jne   .Lx691_2
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 424], rax;          jmp   n432_call_builtin_icon_α
.Lx691_2:                                                                     jmp   n432_call_builtin_icon_α
n431_disjunction_β:     mov              r11, 265
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              je    n431_disjunction_af
                        cmp              eax, 1;                              je    n435_iterate_β
                                                                              jmp   n431_disjunction_af
n431_disjunction_af:    mov              r11, 265
                        add              dword ptr [rsp + 432], 1
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 1;                              je    n434_var_α
                        cmp              eax, 2;                              je    n433_lit_string_α
                                                                              jmp   n438_var_α
#-----------------------------------------------------------------------------------------------------------------------
n432_call_builtin_icon_α:
                        mov              r11, 266
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn693:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn693]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n431_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n431_disjunction_β
n432_call_builtin_icon_β:
                        mov              r11, 266;                            jmp   n431_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              r11, 267
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n431_disjunction_as
n433_lit_string_β:      mov              r11, 267;                            jmp   n431_disjunction_af
.Lx694_0:               .quad            .Lx694_0_s
.Lx694_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:             mov              r11, 268
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 520], rax;          jmp   n435_iterate_α
n434_var_β:             mov              r11, 268;                            jmp   n431_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n435_iterate_α:         mov              r11, 269
                        mov              qword ptr [rsp + 496], 0
.Lx698_0:               mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              rax, 104;                            je    n431_disjunction_af
                                                                              jmp   n431_disjunction_as
n435_iterate_β:         mov              r11, 269
                        inc              qword ptr [rsp + 496];               jmp   .Lx698_0
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             mov              r11, 270
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 472], rax;          jmp   n437_unop_α
n436_var_β:             mov              r11, 270;                            jmp   n431_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n437_unop_α:            mov              r11, 271
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n431_disjunction_as
n437_unop_β:            mov              r11, 271;                            jmp   n431_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:             mov              r11, 272
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 312], rax;          jmp   n439_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:     mov              r11, 273
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n440_call_builtin_icon_α
.Lx704_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_icon_α:
                        mov              r11, 274
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn706:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn706]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n442_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n441_assign_α
n440_call_builtin_icon_β:
                        mov              r11, 274;                            jmp   n442_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:          mov              r11, 275
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n442_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:      mov              r11, 276
                        mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 1
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n443_disjunction_α
.Lx708_0:               .quad            .Lx708_0_s
.Lx708_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n443_disjunction_α:     mov              r11, 277
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n448_var_α
n443_disjunction_as:    mov              r11, 277
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx710_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n444_call_builtin_icon_α
.Lx710_0:               cmp              eax, 1;                              jne   .Lx710_1
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax;          jmp   n444_call_builtin_icon_α
.Lx710_1:               cmp              eax, 2;                              jne   .Lx710_2
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 104], rax;          jmp   n444_call_builtin_icon_α
.Lx710_2:                                                                     jmp   n444_call_builtin_icon_α
n443_disjunction_β:     mov              r11, 277
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n443_disjunction_af
                        cmp              eax, 1;                              je    n447_iterate_β
                                                                              jmp   n443_disjunction_af
n443_disjunction_af:    mov              r11, 277
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n446_var_α
                        cmp              eax, 2;                              je    n445_lit_string_α
                                                                              jmp   n450_return_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_icon_α:
                        mov              r11, 278
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn712:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn712]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n443_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n443_disjunction_β
n444_call_builtin_icon_β:
                        mov              r11, 278;                            jmp   n443_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      mov              r11, 279
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n443_disjunction_as
n445_lit_string_β:      mov              r11, 279;                            jmp   n443_disjunction_af
.Lx713_0:               .quad            .Lx713_0_s
.Lx713_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             mov              r11, 280
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 200], rax;          jmp   n447_iterate_α
n446_var_β:             mov              r11, 280;                            jmp   n443_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n447_iterate_α:         mov              r11, 281
                        mov              qword ptr [rsp + 176], 0
.Lx717_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              rax, 104;                            je    n443_disjunction_af
                                                                              jmp   n443_disjunction_as
n447_iterate_β:         mov              r11, 281
                        inc              qword ptr [rsp + 176];               jmp   .Lx717_0
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             mov              r11, 282
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 152], rax;          jmp   n449_unop_α
n448_var_β:             mov              r11, 282;                            jmp   n443_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n449_unop_α:            mov              r11, 283
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n443_disjunction_as
n449_unop_β:            mov              r11, 283;                            jmp   n443_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n450_return_α:          mov              r11, 284
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   tbltest_γ
#-----------------------------------------------------------------------------------------------------------------------
tbltest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tbltest_β:
                                                                              jmp   tbltest_ω
#-----------------------------------------------------------------------------------------------------------------------
tbltest_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4216]
                        add              rsp, 4240;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tbltest_ω:
                        mov              rcx, qword ptr [rsp + 4224]
                        add              rsp, 4240;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tbltest_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx722_2]
                        lea              rdx, [rip + .Lx722_3];               jmp   FN__tbltest
.Lx722_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx722_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__randval:
                        sub              rsp, 976
                        mov              qword ptr [rsp + 952], rcx
                        mov              qword ptr [rsp + 960], rdx
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
randval_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_integer_α:     mov              r11, 285
                        mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n724_random_α
.Lx771_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n724_random_α:          mov              r11, 286
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n725_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n725_deref_α:           mov              r11, 287
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n726_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_integer_α:     mov              r11, 288
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n727_call_builtin_α
.Lx774_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_α:    mov              r11, 289
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn776:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn776]
                        lea              rsi, [rsp + 864]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n732_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n728_lit_integer_α
n727_call_builtin_β:    mov              r11, 289;                            jmp   n732_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_integer_α:     mov              r11, 290
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n729_random_α
.Lx777_0:               .quad            999
#-----------------------------------------------------------------------------------------------------------------------
n729_random_α:          mov              r11, 291
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n730_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n730_deref_α:           mov              r11, 292
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n731_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n731_assign_α:          mov              r11, 293
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_integer_α:     mov              r11, 294
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n733_call_builtin_α
.Lx781_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n733_call_builtin_α:    mov              r11, 295
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn783:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn783]
                        lea              rsi, [rsp + 736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n741_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n734_lit_integer_α
n733_call_builtin_β:    mov              r11, 295;                            jmp   n741_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:     mov              r11, 296
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n735_random_α
.Lx784_0:               .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n735_random_α:          mov              r11, 297
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n736_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n736_deref_α:           mov              r11, 298
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n737_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_real_α:        mov              r11, 299
                        mov              qword ptr [rsp + 704], 5             # result
                        mov              rax, qword ptr [rip + .Lx787_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n738_coerce_numeric_α
.Lx787_0:               .quad            4621819117588971520
#-----------------------------------------------------------------------------------------------------------------------
n738_coerce_numeric_α:  mov              r11, 300
                        mov              eax, dword ptr [rsp + 688]
                        cmp              al, 5;                               je    .Lx789_1
                        cmp              al, 3;                               jne   .Lx789_0
                        mov              eax, dword ptr [rsp + 704]
                        cmp              al, 3;                               jne   .Lx789_0
.Lx789_1:               mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax;          jmp   n739_binop_α
.Lx789_0:               lea              rdi, [rsp + 688]
                        lea              rsi, [rsp + 704]
                        lea              rdx, [rsp + 640]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n739_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n739_binop_α:           mov              r11, 301
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 704]
                        mov              rcx, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n740_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n740_assign_α:          mov              r11, 302
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_integer_α:     mov              r11, 303
                        mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n742_call_builtin_α
.Lx792_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n742_call_builtin_α:    mov              r11, 304
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn794:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn794]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n755_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n743_lit_charset_α
n742_call_builtin_β:    mov              r11, 304;                            jmp   n755_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_charset_α:     mov              r11, 305
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], -1
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n744_random_α
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n744_random_α:          mov              r11, 306
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n745_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n745_deref_α:           mov              r11, 307
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
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n746_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_charset_α:     mov              r11, 308
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], -1
                        mov              rax, qword ptr [rip + .Lx798_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n747_random_α
.Lx798_0:               .quad            .Lx798_0_s
.Lx798_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n747_random_α:          mov              r11, 309
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n748_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n748_deref_α:           mov              r11, 310
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n749_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n749_binop_α:           mov              r11, 311
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n750_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_charset_α:     mov              r11, 312
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], -1
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n751_random_α
.Lx802_0:               .quad            .Lx802_0_s
.Lx802_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n751_random_α:          mov              r11, 313
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n752_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n752_deref_α:           mov              r11, 314
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n753_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n753_binop_α:           mov              r11, 315
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n754_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n754_assign_α:          mov              r11, 316
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_integer_α:     mov              r11, 317
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n756_call_builtin_α
.Lx807_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n756_call_builtin_α:    mov              r11, 318
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn809:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn809]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    randval_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n757_lit_charset_α
n756_call_builtin_β:    mov              r11, 318;                            jmp   randval_ω
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_charset_α:     mov              r11, 319
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], -1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n758_random_α
.Lx810_0:               .quad            .Lx810_0_s
.Lx810_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n758_random_α:          mov              r11, 320
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n759_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n759_deref_α:           mov              r11, 321
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n760_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n760_lit_charset_α:     mov              r11, 322
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], -1
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n761_random_α
.Lx813_0:               .quad            .Lx813_0_s
.Lx813_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n761_random_α:          mov              r11, 323
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n762_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n762_deref_α:           mov              r11, 324
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n763_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n763_binop_α:           mov              r11, 325
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n764_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_charset_α:     mov              r11, 326
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], -1
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n765_random_α
.Lx817_0:               .quad            .Lx817_0_s
.Lx817_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n765_random_α:          mov              r11, 327
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n766_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n766_deref_α:           mov              r11, 328
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n767_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n767_binop_α:           mov              r11, 329
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    randval_ω
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n768_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n768_assign_α:          mov              r11, 330
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n769_var_α:             mov              r11, 331
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 24], rax;           jmp   n770_return_α
#-----------------------------------------------------------------------------------------------------------------------
n770_return_α:          mov              r11, 332
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   randval_γ
#-----------------------------------------------------------------------------------------------------------------------
randval_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
randval_β:
                                                                              jmp   randval_ω
#-----------------------------------------------------------------------------------------------------------------------
randval_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 952]
                        add              rsp, 976;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
randval_ω:
                        mov              rcx, qword ptr [rsp + 960]
                        add              rsp, 976;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
randval_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx825_2]
                        lea              rdx, [rip + .Lx825_3];               jmp   FN__randval
.Lx825_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx825_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__check:
                        sub              rsp, 2464
                        mov              qword ptr [rsp + 2440], rcx
                        mov              qword ptr [rsp + 2448], rdx
                        mov              rdi, rsp
                        add              rdi, 2208
                        xor              eax, eax
                        mov              ecx, 96
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
check_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n826_disjunction_α:     mov              r11, 333
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              dword ptr [rsp + 1856], 0;           jmp   n827_var_α
n826_disjunction_as:    mov              r11, 333
                        mov              eax, dword ptr [rsp + 1856]
                        cmp              eax, 0;                              jne   .Lx921_0
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n839_lit_integer_α
.Lx921_0:                                                                     jmp   n839_lit_integer_α
n826_disjunction_β:     mov              r11, 333
                        mov              eax, dword ptr [rsp + 1856];         jmp   n839_lit_integer_α
n826_disjunction_af:    mov              r11, 333
                        add              dword ptr [rsp + 1856], 1
                        mov              eax, dword ptr [rsp + 1856];         jmp   n839_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n827_var_α:             mov              r11, 334
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n828_unop_α
n827_var_β:             mov              r11, 334;                            jmp   n826_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n828_unop_α:            mov              r11, 335
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n829_var_α
#-----------------------------------------------------------------------------------------------------------------------
n829_var_α:             mov              r11, 336
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n830_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n830_unop_α:            mov              r11, 337
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n831_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n831_binop_test_α:      mov              r11, 338
                        mov              eax, dword ptr [rsp + 2144]
                        cmp              al, 112;                             je    .Lx928_0
                        mov              eax, dword ptr [rsp + 2176]
                        cmp              al, 112;                             je    .Lx928_0
                        mov              eax, dword ptr [rsp + 2144]
                        cmp              al, 3;                               jne   .Lx928_2
                        mov              eax, dword ptr [rsp + 2176]
                        cmp              al, 3;                               jne   .Lx928_2
.Lx928_1:               mov              rax, qword ptr [rsp + 2152]
                        mov              rcx, qword ptr [rsp + 2184]
                        cmp              rax, rcx;                            je    n826_disjunction_af
                        mov              rcx, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rcx
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rcx;         jmp   n832_lit_string_α
.Lx928_0:               mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8d, 10
                        lea              r9, [rsp + 2128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx928_1
                        cmp              eax, 1;                              je    n826_disjunction_af
                                                                              jmp   n832_lit_string_α
.Lx928_2:               mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n826_disjunction_af
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n832_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n832_lit_string_α:      mov              r11, 339
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 17
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n833_var_α
.Lx929_0:               .quad            .Lx929_0_s
.Lx929_0_s:             .string          "different sizes: "
#-----------------------------------------------------------------------------------------------------------------------
n833_var_α:             mov              r11, 340
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n834_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n834_call_builtin_icon_α:
                        mov              r11, 341
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2008], rax
                        .section         .rodata
.Lrkfn933:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn933]
                        lea              rsi, [rsp + 2000]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n839_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n835_lit_string_α
n834_call_builtin_icon_β:
                        mov              r11, 341;                            jmp   n839_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n835_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 3
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n836_var_α
.Lx934_0:               .quad            .Lx934_0_s
.Lx934_0_s:             .string          " / "
#-----------------------------------------------------------------------------------------------------------------------
n836_var_α:             mov              r11, 343
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n837_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n837_call_builtin_icon_α:
                        mov              r11, 344
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2088], rax
                        .section         .rodata
.Lrkfn938:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn938]
                        lea              rsi, [rsp + 2080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n839_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n838_call_builtin_icon_α
n837_call_builtin_icon_β:
                        mov              r11, 344;                            jmp   n839_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n838_call_builtin_icon_α:
                        mov              r11, 345
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn940:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn940]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n839_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n826_disjunction_as
n838_call_builtin_icon_β:
                        mov              r11, 345;                            jmp   n839_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_integer_α:     mov              r11, 346
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n840_var_α
.Lx941_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n840_var_α:             mov              r11, 347
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n841_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n841_unop_α:            mov              r11, 348
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n842_to_α
#-----------------------------------------------------------------------------------------------------------------------
n842_to_α:              mov              r11, 349
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
.Lx946_0:               mov              rax, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jg    n919_return_α
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax;           jmp   n843_assign_α
n842_to_β:              mov              r11, 349
                        inc              qword ptr [rsp + 80];                jmp   .Lx946_0
#-----------------------------------------------------------------------------------------------------------------------
n843_assign_α:          mov              r11, 350
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n844_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n844_bound_α:           mov              r11, 351
                        mov              qword ptr [rsp + 144], rsp;          jmp   n845_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n845_var_ref_α:         mov              r11, 352
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n846_var_α
#-----------------------------------------------------------------------------------------------------------------------
n846_var_α:             mov              r11, 353
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n847_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n847_subscript_α:       mov              r11, 354
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1792]
                        mov              rcx, qword ptr [rsp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n850_var_ref_α
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n848_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n848_deref_α:           mov              r11, 355
                        mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n850_var_ref_α
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n849_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n849_assign_α:          mov              r11, 356
                        mov              rax, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n850_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n850_var_ref_α:         mov              r11, 357
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n851_var_α:             mov              r11, 358
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n852_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n852_subscript_α:       mov              r11, 359
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
                        cmp              al, 104;                             je    n855_disjunction_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n853_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n853_deref_α:           mov              r11, 360
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
                        cmp              al, 104;                             je    n855_disjunction_α
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n854_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n854_assign_α:          mov              r11, 361
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n855_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n855_disjunction_α:     mov              r11, 362
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              dword ptr [rsp + 1552], 0;           jmp   n912_var_ref_α
n855_disjunction_as:    mov              r11, 362
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 0;                              jne   .Lx965_0
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n856_assign_α
.Lx965_0:               cmp              eax, 1;                              jne   .Lx965_1
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n856_assign_α
.Lx965_1:                                                                     jmp   n856_assign_α
n855_disjunction_β:     mov              r11, 362
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 0;                              je    n855_disjunction_af
                                                                              jmp   n855_disjunction_af
n855_disjunction_af:    mov              r11, 362
                        add              dword ptr [rsp + 1552], 1
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 1;                              je    n911_keyword_icon_α
                                                                              jmp   n857_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n856_assign_α:          mov              r11, 363
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n857_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n857_disjunction_α:     mov              r11, 364
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              dword ptr [rsp + 1344], 0;           jmp   n858_var_α
n857_disjunction_as:    mov              r11, 364
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              eax, 0;                              jne   .Lx968_0
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n865_disjunction_α
.Lx968_0:                                                                     jmp   n865_disjunction_α
n857_disjunction_β:     mov              r11, 364
                        mov              eax, dword ptr [rsp + 1344];         jmp   n865_disjunction_α
n857_disjunction_af:    mov              r11, 364
                        add              dword ptr [rsp + 1344], 1
                        mov              eax, dword ptr [rsp + 1344];         jmp   n865_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n858_var_α:             mov              r11, 365
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n859_var_α
n858_var_β:             mov              r11, 365;                            jmp   n857_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n859_var_α:             mov              r11, 366
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n860_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n860_binop_test_α:      mov              r11, 367
                        mov              rdi, qword ptr [rsp + 2256]
                        mov              rsi, qword ptr [rsp + 2264]
                        mov              rdx, qword ptr [rsp + 2288]
                        mov              rcx, qword ptr [rsp + 2296]
                        mov              r8d, 23
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n857_disjunction_af
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n861_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n861_lit_string_α:      mov              r11, 368
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 8
                        mov              rax, qword ptr [rip + .Lx974_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n862_var_α
.Lx974_0:               .quad            .Lx974_0_s
.Lx974_0_s:             .string          "element "
#-----------------------------------------------------------------------------------------------------------------------
n862_var_α:             mov              r11, 369
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n863_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n863_lit_string_α:      mov              r11, 370
                        mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 8
                        mov              rax, qword ptr [rip + .Lx977_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n864_call_builtin_icon_α
.Lx977_0:               .quad            .Lx977_0_s
.Lx977_0_s:             .string          " differs"
#-----------------------------------------------------------------------------------------------------------------------
n864_call_builtin_icon_α:
                        mov              r11, 371
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1384], rax
                        .section         .rodata
.Lrkfn979:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn979]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n865_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n857_disjunction_as
n864_call_builtin_icon_β:
                        mov              r11, 371;                            jmp   n865_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n865_disjunction_α:     mov              r11, 372
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              dword ptr [rsp + 224], 0;            jmp   n867_var_α
n865_disjunction_as:    mov              r11, 372
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lx981_0
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax;          jmp   n866_conjunction_α
.Lx981_0:                                                                     jmp   n866_conjunction_α
n865_disjunction_β:     mov              r11, 372
                        mov              eax, dword ptr [rsp + 224];          jmp   n910_unmark_α
n865_disjunction_af:    mov              r11, 372
                        add              dword ptr [rsp + 224], 1
                        mov              eax, dword ptr [rsp + 224];          jmp   n910_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n866_conjunction_α:     mov              r11, 373
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax;          jmp   n910_unmark_α
n866_conjunction_β:     mov              r11, 373;                            jmp   n910_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n867_var_α:             mov              r11, 374
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n868_call_builtin_icon_α
n867_var_β:             mov              r11, 374;                            jmp   n865_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n868_call_builtin_icon_α:
                        mov              r11, 375
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn986:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn986]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262313
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n865_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n869_var_α
n868_call_builtin_icon_β:
                        mov              r11, 375;                            jmp   n865_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n869_var_α:             mov              r11, 376
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n870_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n870_call_builtin_icon_α:
                        mov              r11, 377
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax
                        .section         .rodata
.Lrkfn990:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn990]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262313
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n865_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n871_binop_test_α
n870_call_builtin_icon_β:
                        mov              r11, 377;                            jmp   n865_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n871_binop_test_α:      mov              r11, 378
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              r8d, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n865_disjunction_af
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n872_var_α
#-----------------------------------------------------------------------------------------------------------------------
n872_var_α:             mov              r11, 379
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 552], rax;          jmp   n873_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n873_call_builtin_icon_α:
                        mov              r11, 380
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn995:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn995]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262313
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n902_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n874_lit_string_α
n873_call_builtin_icon_β:
                        mov              r11, 380;                            jmp   n902_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n874_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 7
                        mov              rax, qword ptr [rip + .Lx996_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n875_call_builtin_α
.Lx996_0:               .quad            .Lx996_0_s
.Lx996_0_s:             .string          "integer"
#-----------------------------------------------------------------------------------------------------------------------
n875_call_builtin_α:    mov              r11, 382
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn998:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn998]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n883_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n876_disjunction_α
n875_call_builtin_β:    mov              r11, 382;                            jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n876_disjunction_α:     mov              r11, 383
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              dword ptr [rsp + 1024], 0;           jmp   n880_var_α
n876_disjunction_as:    mov              r11, 383
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              jne   .Lx1000_0
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n877_assign_α
.Lx1000_0:              cmp              eax, 1;                              jne   .Lx1000_1
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n877_assign_α
.Lx1000_1:                                                                    jmp   n877_assign_α
n876_disjunction_β:     mov              r11, 383
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              je    n876_disjunction_af
                                                                              jmp   n876_disjunction_af
n876_disjunction_af:    mov              r11, 383
                        add              dword ptr [rsp + 1024], 1
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 1;                              je    n879_keyword_icon_α
                                                                              jmp   n902_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n877_assign_α:          mov              r11, 384
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n878_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n878_assign_α:          mov              r11, 385
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n897_var_α
#-----------------------------------------------------------------------------------------------------------------------
n879_keyword_icon_α:    mov              r11, 386
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0;           jmp   n876_disjunction_as
n879_keyword_icon_β:    mov              r11, 386;                            jmp   n876_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n880_var_α:             mov              r11, 387
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n881_var_α
n880_var_β:             mov              r11, 387;                            jmp   n876_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n881_var_α:             mov              r11, 388
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n882_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n882_binop_test_α:      mov              r11, 389
                        mov              eax, dword ptr [rsp + 2272]
                        cmp              al, 112;                             je    .Lx1008_0
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              al, 112;                             je    .Lx1008_0
                        mov              eax, dword ptr [rsp + 2272]
                        cmp              al, 3;                               jne   .Lx1008_2
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              al, 3;                               jne   .Lx1008_2
.Lx1008_1:              mov              rax, qword ptr [rsp + 2280]
                        mov              rcx, qword ptr [rsp + 2264]
                        cmp              rax, rcx;                            jle   n876_disjunction_af
                        mov              rcx, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1040], rcx
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1048], rcx;         jmp   n876_disjunction_as
.Lx1008_0:              mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2256]
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              r8d, 7
                        lea              r9, [rsp + 1040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1008_1
                        cmp              eax, 1;                              je    n876_disjunction_af
                                                                              jmp   n876_disjunction_as
.Lx1008_2:              mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2256]
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n876_disjunction_af
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n876_disjunction_as
n882_binop_test_β:      mov              r11, 389;                            jmp   n876_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n883_lit_string_α:      mov              r11, 390
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 4
                        mov              rax, qword ptr [rip + .Lx1009_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n884_call_builtin_α
.Lx1009_0:              .quad            .Lx1009_0_s
.Lx1009_0_s:            .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n884_call_builtin_α:    mov              r11, 391
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn1011:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1011]
                        lea              rsi, [rsp + 928]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n892_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n885_disjunction_α
n884_call_builtin_β:    mov              r11, 391;                            jmp   n892_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n885_disjunction_α:     mov              r11, 392
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n889_var_α
n885_disjunction_as:    mov              r11, 392
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx1013_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax;          jmp   n886_assign_α
.Lx1013_0:              cmp              eax, 1;                              jne   .Lx1013_1
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 808], rax;          jmp   n886_assign_α
.Lx1013_1:                                                                    jmp   n886_assign_α
n885_disjunction_β:     mov              r11, 392
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              je    n885_disjunction_af
                                                                              jmp   n885_disjunction_af
n885_disjunction_af:    mov              r11, 392
                        add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 1;                              je    n888_keyword_icon_α
                                                                              jmp   n902_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n886_assign_α:          mov              r11, 393
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n887_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n887_assign_α:          mov              r11, 394
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n897_var_α
#-----------------------------------------------------------------------------------------------------------------------
n888_keyword_icon_α:    mov              r11, 395
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0;            jmp   n885_disjunction_as
n888_keyword_icon_β:    mov              r11, 395;                            jmp   n885_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n889_var_α:             mov              r11, 396
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 856], rax;          jmp   n890_var_α
n889_var_β:             mov              r11, 396;                            jmp   n885_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n890_var_α:             mov              r11, 397
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 872], rax;          jmp   n891_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n891_binop_test_α:      mov              r11, 398
                        mov              eax, dword ptr [rsp + 2272]
                        cmp              al, 112;                             je    .Lx1021_0
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              al, 112;                             je    .Lx1021_0
                        mov              eax, dword ptr [rsp + 2272]
                        cmp              al, 3;                               jne   .Lx1021_2
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              al, 3;                               jne   .Lx1021_2
.Lx1021_1:              mov              rax, qword ptr [rsp + 2280]
                        mov              rcx, qword ptr [rsp + 2264]
                        cmp              rax, rcx;                            jle   n885_disjunction_af
                        mov              rcx, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 832], rcx
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 840], rcx;          jmp   n885_disjunction_as
.Lx1021_0:              mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2256]
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              r8d, 7
                        lea              r9, [rsp + 832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1021_1
                        cmp              eax, 1;                              je    n885_disjunction_af
                                                                              jmp   n885_disjunction_as
.Lx1021_2:              mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2256]
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n885_disjunction_af
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 840], rax;          jmp   n885_disjunction_as
n891_binop_test_β:      mov              r11, 398;                            jmp   n885_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n892_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 6
                        mov              rax, qword ptr [rip + .Lx1022_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n893_call_builtin_α
.Lx1022_0:              .quad            .Lx1022_0_s
.Lx1022_0_s:            .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n893_call_builtin_α:    mov              r11, 400
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn1024:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1024]
                        lea              rsi, [rsp + 720]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n902_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n894_disjunction_α
n893_call_builtin_β:    mov              r11, 400;                            jmp   n902_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n894_disjunction_α:     mov              r11, 401
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n899_var_α
n894_disjunction_as:    mov              r11, 401
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Lx1026_0
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax;          jmp   n895_assign_α
.Lx1026_0:              cmp              eax, 1;                              jne   .Lx1026_1
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 600], rax;          jmp   n895_assign_α
.Lx1026_1:                                                                    jmp   n895_assign_α
n894_disjunction_β:     mov              r11, 401
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n894_disjunction_af
                                                                              jmp   n894_disjunction_af
n894_disjunction_af:    mov              r11, 401
                        add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n898_keyword_icon_α
                                                                              jmp   n902_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n895_assign_α:          mov              r11, 402
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n896_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n896_assign_α:          mov              r11, 403
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n897_var_α
#-----------------------------------------------------------------------------------------------------------------------
n897_var_α:             mov              r11, 404
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 488], rax;          jmp   n902_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n898_keyword_icon_α:    mov              r11, 405
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0;            jmp   n894_disjunction_as
n898_keyword_icon_β:    mov              r11, 405;                            jmp   n894_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n899_var_α:             mov              r11, 406
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 648], rax;          jmp   n900_var_α
n899_var_β:             mov              r11, 406;                            jmp   n894_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:             mov              r11, 407
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 664], rax;          jmp   n901_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n901_binop_test_α:      mov              r11, 408
                        mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2256]
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              r8d, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n894_disjunction_af
                        mov              rdi, qword ptr [rsp + 2256]
                        mov              rsi, qword ptr [rsp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n894_disjunction_as
n901_binop_test_β:      mov              r11, 408;                            jmp   n894_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n902_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 8
                        mov              rax, qword ptr [rip + .Lx1037_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n903_var_α
.Lx1037_0:              .quad            .Lx1037_0_s
.Lx1037_0_s:            .string          "element "
#-----------------------------------------------------------------------------------------------------------------------
n903_var_α:             mov              r11, 410
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 376], rax;          jmp   n904_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n904_lit_string_α:      mov              r11, 411
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 15
                        mov              rax, qword ptr [rip + .Lx1040_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n905_var_α
.Lx1040_0:              .quad            .Lx1040_0_s
.Lx1040_0_s:            .string          " out of order: "
#-----------------------------------------------------------------------------------------------------------------------
n905_var_α:             mov              r11, 412
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 472], rax;          jmp   n906_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n906_unop_test_α:       mov              r11, 413
                        mov              eax, dword ptr [rsp + 2224]
                        cmp              al, 104;                             je    n910_unmark_α
                        cmp              eax, 0;                              je    n910_unmark_α
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 456], rax;          jmp   n907_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n907_call_builtin_icon_α:
                        mov              r11, 414
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn1045:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1045]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n910_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n908_call_builtin_icon_α
n907_call_builtin_icon_β:
                        mov              r11, 414;                            jmp   n910_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n908_call_builtin_icon_α:
                        mov              r11, 415
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn1047:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1047]
                        lea              rsi, [rsp + 272]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n910_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n909_conjunction_α
n908_call_builtin_icon_β:
                        mov              r11, 415;                            jmp   n910_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n909_conjunction_α:     mov              r11, 416
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax;          jmp   n865_disjunction_as
n909_conjunction_β:     mov              r11, 416;                            jmp   n910_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n910_unmark_α:          mov              r11, 417
                        mov              rsp, qword ptr [rsp + 144];          jmp   n842_to_β
#-----------------------------------------------------------------------------------------------------------------------
n911_keyword_icon_α:    mov              r11, 418
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0;           jmp   n855_disjunction_as
n911_keyword_icon_β:    mov              r11, 418;                            jmp   n855_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n912_var_ref_α:         mov              r11, 419
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n913_var_α
n912_var_ref_β:         mov              r11, 419;                            jmp   n855_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n913_var_α:             mov              r11, 420
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n914_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n914_lit_integer_α:     mov              r11, 421
                        mov              qword ptr [rsp + 1632], 3            # result
                        mov              rax, qword ptr [rip + .Lx1056_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n915_coerce_numeric_α
.Lx1056_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n915_coerce_numeric_α:  mov              r11, 422
                        mov              eax, dword ptr [rsp + 2208]
                        cmp              al, 5;                               je    .Lx1058_1
                        cmp              al, 3;                               jne   .Lx1058_0
                        mov              eax, dword ptr [rsp + 1632]
                        cmp              al, 3;                               jne   .Lx1058_0
.Lx1058_1:              mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n916_binop_α
.Lx1058_0:              lea              rdi, [rsp + 2208]
                        lea              rsi, [rsp + 1632]
                        lea              rdx, [rsp + 1600]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n916_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n916_binop_α:           mov              r11, 423
                        mov              eax, dword ptr [rsp + 1600]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1059_2
                        mov              rax, qword ptr [rsp + 1608]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1584], 3
                        mov              qword ptr [rsp + 1592], rax;         jmp   .Lx1059_7
.Lx1059_2:              and              edx, 1;                              jz    .Lx1059_0
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1059_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1059_4
.Lx1059_3:              movq             xmm0, rsi
.Lx1059_4:              cmp              cl, 5;                               je    .Lx1059_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1059_6
.Lx1059_5:              movq             xmm1, rdi
.Lx1059_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1584], 5
                        mov              qword ptr [rsp + 1592], rax
.Lx1059_7:                                                                    jmp   n917_subscript_α
.Lx1059_0:              mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 1632]
                        mov              rcx, qword ptr [rsp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n855_disjunction_af
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n917_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n917_subscript_α:       mov              r11, 424
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1584]
                        mov              rcx, qword ptr [rsp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n855_disjunction_af
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n918_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n918_deref_α:           mov              r11, 425
                        mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n855_disjunction_af
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n855_disjunction_as
n918_deref_β:           mov              r11, 425;                            jmp   n855_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n919_return_α:          mov              r11, 426
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   check_γ
#-----------------------------------------------------------------------------------------------------------------------
check_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
check_β:
                                                                              jmp   check_ω
#-----------------------------------------------------------------------------------------------------------------------
check_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2440]
                        add              rsp, 2464;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
check_ω:
                        mov              rcx, qword ptr [rsp + 2448]
                        add              rsp, 2464;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
check_dcα:
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
                        lea              rcx, [rip + .Lx1063_2]
                        lea              rdx, [rip + .Lx1063_3];              jmp   FN__check
.Lx1063_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx1063_3:              pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__wlist:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
wlist_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1064_var_α:            mov              r11, 427
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1065_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n1065_unop_α:           mov              r11, 428
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n1066_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_lit_string_α:     mov              r11, 429
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx1079_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1067_call_builtin_icon_α
.Lx1079_0:              .quad            .Lx1079_0_s
.Lx1079_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1067_call_builtin_icon_α:
                        mov              r11, 430
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn1081:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1081]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n1068_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1068_disjunction_α
n1067_call_builtin_icon_β:
                        mov              r11, 430;                            jmp   n1068_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1068_disjunction_α:    mov              r11, 431
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n1071_var_α
n1068_disjunction_as:   mov              r11, 431
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx1083_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1069_call_builtin_icon_α
.Lx1083_0:              cmp              eax, 1;                              jne   .Lx1083_1
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1069_call_builtin_icon_α
.Lx1083_1:                                                                    jmp   n1069_call_builtin_icon_α
n1068_disjunction_β:    mov              r11, 431
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n1072_iterate_β
                                                                              jmp   n1068_disjunction_af
n1068_disjunction_af:   mov              r11, 431
                        add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n1070_lit_string_α
                                                                              jmp   n1075_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1069_call_builtin_icon_α:
                        mov              r11, 432
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn1085:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1085]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n1068_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1068_disjunction_β
n1069_call_builtin_icon_β:
                        mov              r11, 432;                            jmp   n1068_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1070_lit_string_α:     mov              r11, 433
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx1086_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1068_disjunction_as
n1070_lit_string_β:     mov              r11, 433;                            jmp   n1068_disjunction_af
.Lx1086_0:              .quad            .Lx1086_0_s
.Lx1086_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1071_var_α:            mov              r11, 434
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1072_iterate_α
n1071_var_β:            mov              r11, 434;                            jmp   n1068_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1072_iterate_α:        mov              r11, 435
                        mov              qword ptr [rsp + 192], 0
.Lx1090_0:              mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              rax, 104;                            je    n1068_disjunction_af
                                                                              jmp   n1073_lit_integer_α
n1072_iterate_β:        mov              r11, 435
                        inc              qword ptr [rsp + 192];               jmp   .Lx1090_0
#-----------------------------------------------------------------------------------------------------------------------
n1073_lit_integer_α:    mov              r11, 436
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx1091_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n1074_call_builtin_icon_α
.Lx1091_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1074_call_builtin_icon_α:
                        mov              r11, 437
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn1093:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1093]
                        lea              rsi, [rsp + 128]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n1072_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1068_disjunction_as
n1074_call_builtin_icon_β:
                        mov              r11, 437;                            jmp   n1072_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1075_return_α:         mov              r11, 438
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   wlist_γ
#-----------------------------------------------------------------------------------------------------------------------
wlist_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
wlist_β:
                                                                              jmp   wlist_ω
#-----------------------------------------------------------------------------------------------------------------------
wlist_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 408]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wlist_ω:
                        mov              rcx, qword ptr [rsp + 416]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wlist_dcα:
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
                        lea              rcx, [rip + .Lx1095_2]
                        lea              rdx, [rip + .Lx1095_3];              jmp   FN__wlist
.Lx1095_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx1095_3:              pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__copytest:
                        sub              rsp, 4736
                        mov              qword ptr [rsp + 4712], rcx
                        mov              qword ptr [rsp + 4720], rdx
                        mov              rdi, rsp
                        add              rdi, 4432
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 8
                        call             rt_icn_zframe_args_install@PLT
copytest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1096_call_builtin_icon_α:
                        mov              r11, 439
                        .section         .rodata
.Lrkfn1259:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1259]
                        lea              rsi, [rsp + 4416]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4400], rax
                        mov              qword ptr [rsp + 4408], rdx
                        cmp              al, 104;                             je    n1097_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1097_lit_integer_α
n1096_call_builtin_icon_β:
                        mov              r11, 439;                            jmp   n1097_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1097_lit_integer_α:    mov              r11, 440
                        mov              qword ptr [rsp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Lx1260_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n1098_lit_integer_α
.Lx1260_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1098_lit_integer_α:    mov              r11, 441
                        mov              qword ptr [rsp + 4368], 3            # result
                        mov              rax, qword ptr [rip + .Lx1261_0]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n1099_lit_integer_α
.Lx1261_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1099_lit_integer_α:    mov              r11, 442
                        mov              qword ptr [rsp + 4384], 3            # result
                        mov              rax, qword ptr [rip + .Lx1262_0]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n1100_make_list_α
.Lx1262_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1100_make_list_α:      mov              r11, 443
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4312], rax
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4328], rax
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4344], rax
                        lea              rdi, [rsp + 4304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx;         jmp   n1101_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1101_assign_α:         mov              r11, 444
                        mov              rax, qword ptr [rsp + 4288]
                        mov              rdx, qword ptr [rsp + 4296]
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx;         jmp   n1102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1102_var_α:            mov              r11, 445
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n1103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1103_var_α:            mov              r11, 446
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n1104_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1104_call_builtin_icon_α:
                        mov              r11, 447
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4232], rax
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4208], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4216], rax
                        .section         .rodata
.Lrkfn1271:             .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1271]
                        lea              rsi, [rsp + 4208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4200], rdx
                        cmp              al, 104;                             je    n1105_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1105_var_α
n1104_call_builtin_icon_β:
                        mov              r11, 447;                            jmp   n1105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1105_var_α:            mov              r11, 448
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n1106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1106_call_builtin_icon_α:
                        mov              r11, 449
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4152], rax
                        .section         .rodata
.Lrkfn1275:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1275]
                        lea              rsi, [rsp + 4144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx
                        cmp              al, 104;                             je    n1108_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1107_assign_α
n1106_call_builtin_icon_β:
                        mov              r11, 449;                            jmp   n1108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1107_assign_α:         mov              r11, 450
                        mov              rax, qword ptr [rsp + 4128]
                        mov              rdx, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx;         jmp   n1108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1108_var_α:            mov              r11, 451
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n1109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1109_call_builtin_icon_α:
                        mov              r11, 452
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4088], rax
                        .section         .rodata
.Lrkfn1280:             .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1280]
                        lea              rsi, [rsp + 4080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              al, 104;                             je    n1110_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1110_var_α
n1109_call_builtin_icon_β:
                        mov              r11, 452;                            jmp   n1110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1110_var_α:            mov              r11, 453
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n1111_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1111_lit_integer_α:    mov              r11, 454
                        mov              qword ptr [rsp + 4048], 3            # result
                        mov              rax, qword ptr [rip + .Lx1283_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n1112_call_builtin_icon_α
.Lx1283_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1112_call_builtin_icon_α:
                        mov              r11, 455
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4008], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3992], rax
                        .section         .rodata
.Lrkfn1285:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1285]
                        lea              rsi, [rsp + 3984]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              al, 104;                             je    n1113_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1113_lit_string_α
n1112_call_builtin_icon_β:
                        mov              r11, 455;                            jmp   n1113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1113_lit_string_α:     mov              r11, 456
                        mov              qword ptr [rsp + 3792], 2            # result
                        mov              dword ptr [rsp + 3796], 1
                        mov              rax, qword ptr [rip + .Lx1286_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n1114_disjunction_α
.Lx1286_0:              .quad            .Lx1286_0_s
.Lx1286_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1114_disjunction_α:    mov              r11, 457
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0
                        mov              dword ptr [rsp + 3824], 0;           jmp   n1120_lit_string_α
n1114_disjunction_as:   mov              r11, 457
                        mov              eax, dword ptr [rsp + 3824]
                        cmp              eax, 0;                              jne   .Lx1288_0
                        mov              rax, qword ptr [rsp + 3840]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n1115_call_builtin_icon_α
.Lx1288_0:              cmp              eax, 1;                              jne   .Lx1288_1
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n1115_call_builtin_icon_α
.Lx1288_1:              cmp              eax, 2;                              jne   .Lx1288_2
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n1115_call_builtin_icon_α
.Lx1288_2:                                                                    jmp   n1115_call_builtin_icon_α
n1114_disjunction_β:    mov              r11, 457
                        mov              eax, dword ptr [rsp + 3824]
                        cmp              eax, 0;                              je    n1114_disjunction_af
                        cmp              eax, 1;                              je    n1118_iterate_β
                                                                              jmp   n1114_disjunction_af
n1114_disjunction_af:   mov              r11, 457
                        add              dword ptr [rsp + 3824], 1
                        mov              eax, dword ptr [rsp + 3824]
                        cmp              eax, 1;                              je    n1117_var_α
                        cmp              eax, 2;                              je    n1116_lit_string_α
                                                                              jmp   n1121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1115_call_builtin_icon_α:
                        mov              r11, 458
                        mov              rax, qword ptr [rsp + 3808]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3816]
                        mov              qword ptr [rsp + 3768], rax
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3752], rax
                        .section         .rodata
.Lrkfn1290:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1290]
                        lea              rsi, [rsp + 3744]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx
                        cmp              al, 104;                             je    n1114_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1114_disjunction_β
n1115_call_builtin_icon_β:
                        mov              r11, 458;                            jmp   n1114_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1116_lit_string_α:     mov              r11, 459
                        mov              qword ptr [rsp + 3952], 2            # result
                        mov              dword ptr [rsp + 3956], 1
                        mov              rax, qword ptr [rip + .Lx1291_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n1114_disjunction_as
n1116_lit_string_β:     mov              r11, 459;                            jmp   n1114_disjunction_af
.Lx1291_0:              .quad            .Lx1291_0_s
.Lx1291_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1117_var_α:            mov              r11, 460
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n1118_iterate_α
n1117_var_β:            mov              r11, 460;                            jmp   n1114_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1118_iterate_α:        mov              r11, 461
                        mov              qword ptr [rsp + 3920], 0
.Lx1295_0:              mov              rdi, qword ptr [rsp + 3936]
                        mov              rsi, qword ptr [rsp + 3944]
                        mov              rdx, qword ptr [rsp + 3920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx
                        cmp              rax, 104;                            je    n1114_disjunction_af
                                                                              jmp   n1119_call_builtin_icon_α
n1118_iterate_β:        mov              r11, 461
                        inc              qword ptr [rsp + 3920];              jmp   .Lx1295_0
#-----------------------------------------------------------------------------------------------------------------------
n1119_call_builtin_icon_α:
                        mov              r11, 462
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3880], rax
                        .section         .rodata
.Lrkfn1297:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1297]
                        lea              rsi, [rsp + 3872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx
                        cmp              al, 104;                             je    n1118_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1114_disjunction_as
n1119_call_builtin_icon_β:
                        mov              r11, 462;                            jmp   n1118_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1120_lit_string_α:     mov              r11, 463
                        mov              qword ptr [rsp + 3840], 2            # result
                        mov              dword ptr [rsp + 3844], 3
                        mov              rax, qword ptr [rip + .Lx1298_0]
                        mov              qword ptr [rsp + 3848], rax;         jmp   n1114_disjunction_as
n1120_lit_string_β:     mov              r11, 463;                            jmp   n1114_disjunction_af
.Lx1298_0:              .quad            .Lx1298_0_s
.Lx1298_0_s:            .string          "L1:"
#-----------------------------------------------------------------------------------------------------------------------
n1121_lit_string_α:     mov              r11, 464
                        mov              qword ptr [rsp + 3552], 2            # result
                        mov              dword ptr [rsp + 3556], 1
                        mov              rax, qword ptr [rip + .Lx1299_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n1122_disjunction_α
.Lx1299_0:              .quad            .Lx1299_0_s
.Lx1299_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1122_disjunction_α:    mov              r11, 465
                        mov              qword ptr [rsp + 3568], 0
                        mov              qword ptr [rsp + 3576], 0
                        mov              dword ptr [rsp + 3584], 0;           jmp   n1128_lit_string_α
n1122_disjunction_as:   mov              r11, 465
                        mov              eax, dword ptr [rsp + 3584]
                        cmp              eax, 0;                              jne   .Lx1301_0
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n1123_call_builtin_icon_α
.Lx1301_0:              cmp              eax, 1;                              jne   .Lx1301_1
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n1123_call_builtin_icon_α
.Lx1301_1:              cmp              eax, 2;                              jne   .Lx1301_2
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n1123_call_builtin_icon_α
.Lx1301_2:                                                                    jmp   n1123_call_builtin_icon_α
n1122_disjunction_β:    mov              r11, 465
                        mov              eax, dword ptr [rsp + 3584]
                        cmp              eax, 0;                              je    n1122_disjunction_af
                        cmp              eax, 1;                              je    n1126_iterate_β
                                                                              jmp   n1122_disjunction_af
n1122_disjunction_af:   mov              r11, 465
                        add              dword ptr [rsp + 3584], 1
                        mov              eax, dword ptr [rsp + 3584]
                        cmp              eax, 1;                              je    n1125_var_α
                        cmp              eax, 2;                              je    n1124_lit_string_α
                                                                              jmp   n1129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1123_call_builtin_icon_α:
                        mov              r11, 466
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3528], rax
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3512], rax
                        .section         .rodata
.Lrkfn1303:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1303]
                        lea              rsi, [rsp + 3504]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              al, 104;                             je    n1122_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1122_disjunction_β
n1123_call_builtin_icon_β:
                        mov              r11, 466;                            jmp   n1122_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1124_lit_string_α:     mov              r11, 467
                        mov              qword ptr [rsp + 3712], 2            # result
                        mov              dword ptr [rsp + 3716], 1
                        mov              rax, qword ptr [rip + .Lx1304_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n1122_disjunction_as
n1124_lit_string_β:     mov              r11, 467;                            jmp   n1122_disjunction_af
.Lx1304_0:              .quad            .Lx1304_0_s
.Lx1304_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1125_var_α:            mov              r11, 468
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n1126_iterate_α
n1125_var_β:            mov              r11, 468;                            jmp   n1122_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1126_iterate_α:        mov              r11, 469
                        mov              qword ptr [rsp + 3680], 0
.Lx1308_0:              mov              rdi, qword ptr [rsp + 3696]
                        mov              rsi, qword ptr [rsp + 3704]
                        mov              rdx, qword ptr [rsp + 3680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        cmp              rax, 104;                            je    n1122_disjunction_af
                                                                              jmp   n1127_call_builtin_icon_α
n1126_iterate_β:        mov              r11, 469
                        inc              qword ptr [rsp + 3680];              jmp   .Lx1308_0
#-----------------------------------------------------------------------------------------------------------------------
n1127_call_builtin_icon_α:
                        mov              r11, 470
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3640], rax
                        .section         .rodata
.Lrkfn1310:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1310]
                        lea              rsi, [rsp + 3632]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    n1126_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1122_disjunction_as
n1127_call_builtin_icon_β:
                        mov              r11, 470;                            jmp   n1126_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1128_lit_string_α:     mov              r11, 471
                        mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 3
                        mov              rax, qword ptr [rip + .Lx1311_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n1122_disjunction_as
n1128_lit_string_β:     mov              r11, 471;                            jmp   n1122_disjunction_af
.Lx1311_0:              .quad            .Lx1311_0_s
.Lx1311_0_s:            .string          "L2:"
#-----------------------------------------------------------------------------------------------------------------------
n1129_lit_integer_α:    mov              r11, 472
                        mov              qword ptr [rsp + 3440], 3            # result
                        mov              rax, qword ptr [rip + .Lx1312_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n1130_lit_integer_α
.Lx1312_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1130_lit_integer_α:    mov              r11, 473
                        mov              qword ptr [rsp + 3456], 3            # result
                        mov              rax, qword ptr [rip + .Lx1313_0]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n1131_lit_integer_α
.Lx1313_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1131_lit_integer_α:    mov              r11, 474
                        mov              qword ptr [rsp + 3472], 3            # result
                        mov              rax, qword ptr [rip + .Lx1314_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n1132_make_list_α
.Lx1314_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1132_make_list_α:      mov              r11, 475
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3416], rax
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3432], rax
                        lea              rdi, [rsp + 3392]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n1133_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1133_call_builtin_icon_α:
                        mov              r11, 476
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        .section         .rodata
.Lrkfn1318:             .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1318]
                        lea              rsi, [rsp + 3344]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196768
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              al, 104;                             je    n1135_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1134_assign_α
n1133_call_builtin_icon_β:
                        mov              r11, 476;                            jmp   n1135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1134_assign_α:         mov              r11, 477
                        mov              rax, qword ptr [rsp + 3328]
                        mov              rdx, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx;         jmp   n1135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1135_var_α:            mov              r11, 478
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n1136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1136_var_α:            mov              r11, 479
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n1137_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1137_call_builtin_icon_α:
                        mov              r11, 480
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3256], rax
                        .section         .rodata
.Lrkfn1325:             .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1325]
                        lea              rsi, [rsp + 3248]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393341
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n1138_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1138_var_α
n1137_call_builtin_icon_β:
                        mov              r11, 480;                            jmp   n1138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1138_var_α:            mov              r11, 481
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n1139_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1139_call_builtin_icon_α:
                        mov              r11, 482
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3192], rax
                        .section         .rodata
.Lrkfn1329:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1329]
                        lea              rsi, [rsp + 3184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              al, 104;                             je    n1141_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1140_assign_α
n1139_call_builtin_icon_β:
                        mov              r11, 482;                            jmp   n1141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1140_assign_α:         mov              r11, 483
                        mov              rax, qword ptr [rsp + 3168]
                        mov              rdx, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n1141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1141_var_α:            mov              r11, 484
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n1142_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1142_lit_integer_α:    mov              r11, 485
                        mov              qword ptr [rsp + 3152], 3            # result
                        mov              rax, qword ptr [rip + .Lx1333_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n1143_call_builtin_icon_α
.Lx1333_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1143_call_builtin_icon_α:
                        mov              r11, 486
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3112], rax
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3096], rax
                        .section         .rodata
.Lrkfn1335:             .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1335]
                        lea              rsi, [rsp + 3088]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393331
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n1144_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1144_var_α
n1143_call_builtin_icon_β:
                        mov              r11, 486;                            jmp   n1144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1144_var_α:            mov              r11, 487
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n1145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1145_lit_integer_α:    mov              r11, 488
                        mov              qword ptr [rsp + 3056], 3            # result
                        mov              rax, qword ptr [rip + .Lx1338_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n1146_call_builtin_icon_α
.Lx1338_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1146_call_builtin_icon_α:
                        mov              r11, 489
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3016], rax
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3000], rax
                        .section         .rodata
.Lrkfn1340:             .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1340]
                        lea              rsi, [rsp + 2992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393341
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n1147_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1147_lit_string_α
n1146_call_builtin_icon_β:
                        mov              r11, 489;                            jmp   n1147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1147_lit_string_α:     mov              r11, 490
                        mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 1
                        mov              rax, qword ptr [rip + .Lx1341_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n1148_disjunction_α
.Lx1341_0:              .quad            .Lx1341_0_s
.Lx1341_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1148_disjunction_α:    mov              r11, 491
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              dword ptr [rsp + 2784], 0;           jmp   n1155_lit_string_α
n1148_disjunction_as:   mov              r11, 491
                        mov              eax, dword ptr [rsp + 2784]
                        cmp              eax, 0;                              jne   .Lx1343_0
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n1149_call_builtin_icon_α
.Lx1343_0:              cmp              eax, 1;                              jne   .Lx1343_1
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n1149_call_builtin_icon_α
.Lx1343_1:              cmp              eax, 2;                              jne   .Lx1343_2
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n1149_call_builtin_icon_α
.Lx1343_2:                                                                    jmp   n1149_call_builtin_icon_α
n1148_disjunction_β:    mov              r11, 491
                        mov              eax, dword ptr [rsp + 2784]
                        cmp              eax, 0;                              je    n1148_disjunction_af
                        cmp              eax, 1;                              je    n1153_iterate_β
                                                                              jmp   n1148_disjunction_af
n1148_disjunction_af:   mov              r11, 491
                        add              dword ptr [rsp + 2784], 1
                        mov              eax, dword ptr [rsp + 2784]
                        cmp              eax, 1;                              je    n1151_var_α
                        cmp              eax, 2;                              je    n1150_lit_string_α
                                                                              jmp   n1156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1149_call_builtin_icon_α:
                        mov              r11, 492
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2712], rax
                        .section         .rodata
.Lrkfn1345:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1345]
                        lea              rsi, [rsp + 2704]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              al, 104;                             je    n1148_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1148_disjunction_β
n1149_call_builtin_icon_β:
                        mov              r11, 492;                            jmp   n1148_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1150_lit_string_α:     mov              r11, 493
                        mov              qword ptr [rsp + 2960], 2            # result
                        mov              dword ptr [rsp + 2964], 1
                        mov              rax, qword ptr [rip + .Lx1346_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n1148_disjunction_as
n1150_lit_string_β:     mov              r11, 493;                            jmp   n1148_disjunction_af
.Lx1346_0:              .quad            .Lx1346_0_s
.Lx1346_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1151_var_α:            mov              r11, 494
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n1152_call_builtin_icon_α
n1151_var_β:            mov              r11, 494;                            jmp   n1148_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1152_call_builtin_icon_α:
                        mov              r11, 495
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2920], rax
                        .section         .rodata
.Lrkfn1350:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1350]
                        lea              rsi, [rsp + 2912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    n1148_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1153_iterate_α
n1152_call_builtin_icon_β:
                        mov              r11, 495;                            jmp   n1148_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1153_iterate_α:        mov              r11, 496
                        mov              qword ptr [rsp + 2880], 0
.Lx1352_0:              mov              rdi, qword ptr [rsp + 2896]
                        mov              rsi, qword ptr [rsp + 2904]
                        mov              rdx, qword ptr [rsp + 2880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              rax, 104;                            je    n1148_disjunction_af
                                                                              jmp   n1154_call_builtin_icon_α
n1153_iterate_β:        mov              r11, 496
                        inc              qword ptr [rsp + 2880];              jmp   .Lx1352_0
#-----------------------------------------------------------------------------------------------------------------------
n1154_call_builtin_icon_α:
                        mov              r11, 497
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2840], rax
                        .section         .rodata
.Lrkfn1354:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1354]
                        lea              rsi, [rsp + 2832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              al, 104;                             je    n1153_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1148_disjunction_as
n1154_call_builtin_icon_β:
                        mov              r11, 497;                            jmp   n1153_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1155_lit_string_α:     mov              r11, 498
                        mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], 3
                        mov              rax, qword ptr [rip + .Lx1355_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n1148_disjunction_as
n1155_lit_string_β:     mov              r11, 498;                            jmp   n1148_disjunction_af
.Lx1355_0:              .quad            .Lx1355_0_s
.Lx1355_0_s:            .string          "S1:"
#-----------------------------------------------------------------------------------------------------------------------
n1156_lit_string_α:     mov              r11, 499
                        mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx1356_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n1157_disjunction_α
.Lx1356_0:              .quad            .Lx1356_0_s
.Lx1356_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1157_disjunction_α:    mov              r11, 500
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              dword ptr [rsp + 2496], 0;           jmp   n1164_lit_string_α
n1157_disjunction_as:   mov              r11, 500
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 0;                              jne   .Lx1358_0
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n1158_call_builtin_icon_α
.Lx1358_0:              cmp              eax, 1;                              jne   .Lx1358_1
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n1158_call_builtin_icon_α
.Lx1358_1:              cmp              eax, 2;                              jne   .Lx1358_2
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n1158_call_builtin_icon_α
.Lx1358_2:                                                                    jmp   n1158_call_builtin_icon_α
n1157_disjunction_β:    mov              r11, 500
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 0;                              je    n1157_disjunction_af
                        cmp              eax, 1;                              je    n1162_iterate_β
                                                                              jmp   n1157_disjunction_af
n1157_disjunction_af:   mov              r11, 500
                        add              dword ptr [rsp + 2496], 1
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 1;                              je    n1160_var_α
                        cmp              eax, 2;                              je    n1159_lit_string_α
                                                                              jmp   n1165_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1158_call_builtin_icon_α:
                        mov              r11, 501
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn1360:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1360]
                        lea              rsi, [rsp + 2416]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n1157_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1157_disjunction_β
n1158_call_builtin_icon_β:
                        mov              r11, 501;                            jmp   n1157_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1159_lit_string_α:     mov              r11, 502
                        mov              qword ptr [rsp + 2672], 2            # result
                        mov              dword ptr [rsp + 2676], 1
                        mov              rax, qword ptr [rip + .Lx1361_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n1157_disjunction_as
n1159_lit_string_β:     mov              r11, 502;                            jmp   n1157_disjunction_af
.Lx1361_0:              .quad            .Lx1361_0_s
.Lx1361_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1160_var_α:            mov              r11, 503
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n1161_call_builtin_icon_α
n1160_var_β:            mov              r11, 503;                            jmp   n1157_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1161_call_builtin_icon_α:
                        mov              r11, 504
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2632], rax
                        .section         .rodata
.Lrkfn1365:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1365]
                        lea              rsi, [rsp + 2624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n1157_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1162_iterate_α
n1161_call_builtin_icon_β:
                        mov              r11, 504;                            jmp   n1157_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1162_iterate_α:        mov              r11, 505
                        mov              qword ptr [rsp + 2592], 0
.Lx1367_0:              mov              rdi, qword ptr [rsp + 2608]
                        mov              rsi, qword ptr [rsp + 2616]
                        mov              rdx, qword ptr [rsp + 2592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              rax, 104;                            je    n1157_disjunction_af
                                                                              jmp   n1163_call_builtin_icon_α
n1162_iterate_β:        mov              r11, 505
                        inc              qword ptr [rsp + 2592];              jmp   .Lx1367_0
#-----------------------------------------------------------------------------------------------------------------------
n1163_call_builtin_icon_α:
                        mov              r11, 506
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax
                        .section         .rodata
.Lrkfn1369:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1369]
                        lea              rsi, [rsp + 2544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n1162_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1157_disjunction_as
n1163_call_builtin_icon_β:
                        mov              r11, 506;                            jmp   n1162_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1164_lit_string_α:     mov              r11, 507
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 3
                        mov              rax, qword ptr [rip + .Lx1370_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n1157_disjunction_as
n1164_lit_string_β:     mov              r11, 507;                            jmp   n1157_disjunction_af
.Lx1370_0:              .quad            .Lx1370_0_s
.Lx1370_0_s:            .string          "S2:"
#-----------------------------------------------------------------------------------------------------------------------
n1165_call_builtin_icon_α:
                        mov              r11, 508
                        .section         .rodata
.Lrkfn1372:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1372]
                        lea              rsi, [rsp + 2384]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              al, 104;                             je    n1167_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1166_assign_α
n1165_call_builtin_icon_β:
                        mov              r11, 508;                            jmp   n1167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1166_assign_α:         mov              r11, 509
                        mov              rax, qword ptr [rsp + 2368]
                        mov              rdx, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n1167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1167_var_ref_α:        mov              r11, 510
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n1168_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1168_lit_integer_α:    mov              r11, 511
                        mov              qword ptr [rsp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Lx1376_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n1169_subscript_α
.Lx1376_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1169_subscript_α:      mov              r11, 512
                        mov              rdi, qword ptr [rsp + 2288]
                        mov              rsi, qword ptr [rsp + 2296]
                        mov              rdx, qword ptr [rsp + 2304]
                        mov              rcx, qword ptr [rsp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1172_var_ref_α
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n1170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1170_lit_string_α:     mov              r11, 513
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 1
                        mov              rax, qword ptr [rip + .Lx1378_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n1171_assign_var_α
.Lx1378_0:              .quad            .Lx1378_0_s
.Lx1378_0_s:            .string          "j"
#-----------------------------------------------------------------------------------------------------------------------
n1171_assign_var_α:     mov              r11, 514
                        mov              rdi, qword ptr [rsp + 2320]
                        mov              rsi, qword ptr [rsp + 2328]
                        mov              rdx, qword ptr [rsp + 2352]
                        mov              rcx, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1172_var_ref_α
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n1172_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1172_var_ref_α:        mov              r11, 515
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n1173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1173_lit_integer_α:    mov              r11, 516
                        mov              qword ptr [rsp + 2224], 3            # result
                        mov              rax, qword ptr [rip + .Lx1382_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n1174_subscript_α
.Lx1382_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1174_subscript_α:      mov              r11, 517
                        mov              rdi, qword ptr [rsp + 2208]
                        mov              rsi, qword ptr [rsp + 2216]
                        mov              rdx, qword ptr [rsp + 2224]
                        mov              rcx, qword ptr [rsp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1177_var_ref_α
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n1175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1175_lit_string_α:     mov              r11, 518
                        mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 1
                        mov              rax, qword ptr [rip + .Lx1384_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n1176_assign_var_α
.Lx1384_0:              .quad            .Lx1384_0_s
.Lx1384_0_s:            .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n1176_assign_var_α:     mov              r11, 519
                        mov              rdi, qword ptr [rsp + 2240]
                        mov              rsi, qword ptr [rsp + 2248]
                        mov              rdx, qword ptr [rsp + 2272]
                        mov              rcx, qword ptr [rsp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1177_var_ref_α
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n1177_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1177_var_ref_α:        mov              r11, 520
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n1178_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1178_lit_integer_α:    mov              r11, 521
                        mov              qword ptr [rsp + 2144], 3            # result
                        mov              rax, qword ptr [rip + .Lx1388_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n1179_subscript_α
.Lx1388_0:              .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n1179_subscript_α:      mov              r11, 522
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2144]
                        mov              rcx, qword ptr [rsp + 2152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1182_var_ref_α
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n1180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1180_lit_string_α:     mov              r11, 523
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 1
                        mov              rax, qword ptr [rip + .Lx1390_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n1181_assign_var_α
.Lx1390_0:              .quad            .Lx1390_0_s
.Lx1390_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n1181_assign_var_α:     mov              r11, 524
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2192]
                        mov              rcx, qword ptr [rsp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1182_var_ref_α
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n1182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1182_var_ref_α:        mov              r11, 525
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n1183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1183_lit_integer_α:    mov              r11, 526
                        mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx1394_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n1184_subscript_α
.Lx1394_0:              .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n1184_subscript_α:      mov              r11, 527
                        mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              rdx, qword ptr [rsp + 2064]
                        mov              rcx, qword ptr [rsp + 2072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1187_var_α
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n1185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_var_α:            mov              r11, 528
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n1186_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1186_assign_var_α:     mov              r11, 529
                        mov              rdi, qword ptr [rsp + 2080]
                        mov              rsi, qword ptr [rsp + 2088]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1187_var_α
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n1187_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1187_var_α:            mov              r11, 530
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n1188_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1188_call_builtin_icon_α:
                        mov              r11, 531
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2008], rax
                        .section         .rodata
.Lrkfn1402:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1402]
                        lea              rsi, [rsp + 2000]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n1190_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1189_assign_α
n1188_call_builtin_icon_β:
                        mov              r11, 531;                            jmp   n1190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_assign_α:         mov              r11, 532
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 4464], rax
                        mov              qword ptr [rsp + 4472], rdx;         jmp   n1190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1190_var_α:            mov              r11, 533
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n1191_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1191_lit_integer_α:    mov              r11, 534
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx1406_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n1192_call_builtin_icon_α
.Lx1406_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1192_call_builtin_icon_α:
                        mov              r11, 535
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1912], rax
                        .section         .rodata
.Lrkfn1408:             .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1408]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393331
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n1193_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1193_var_α
n1192_call_builtin_icon_β:
                        mov              r11, 535;                            jmp   n1193_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1193_var_α:            mov              r11, 536
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n1194_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1194_lit_integer_α:    mov              r11, 537
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx1411_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n1195_lit_string_α
.Lx1411_0:              .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1195_lit_string_α:     mov              r11, 538
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx1412_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n1196_call_builtin_icon_α
.Lx1412_0:              .quad            .Lx1412_0_s
.Lx1412_0_s:            .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n1196_call_builtin_icon_α:
                        mov              r11, 539
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1784], rax
                        .section         .rodata
.Lrkfn1414:             .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1414]
                        lea              rsi, [rsp + 1776]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393341
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    n1197_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1197_lit_string_α
n1196_call_builtin_icon_β:
                        mov              r11, 539;                            jmp   n1197_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1197_lit_string_α:     mov              r11, 540
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 1
                        mov              rax, qword ptr [rip + .Lx1415_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n1198_disjunction_α
.Lx1415_0:              .quad            .Lx1415_0_s
.Lx1415_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1198_disjunction_α:    mov              r11, 541
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              dword ptr [rsp + 1536], 0;           jmp   n1206_lit_string_α
n1198_disjunction_as:   mov              r11, 541
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 0;                              jne   .Lx1417_0
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n1199_call_builtin_icon_α
.Lx1417_0:              cmp              eax, 1;                              jne   .Lx1417_1
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n1199_call_builtin_icon_α
.Lx1417_1:              cmp              eax, 2;                              jne   .Lx1417_2
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n1199_call_builtin_icon_α
.Lx1417_2:                                                                    jmp   n1199_call_builtin_icon_α
n1198_disjunction_β:    mov              r11, 541
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 0;                              je    n1198_disjunction_af
                        cmp              eax, 1;                              je    n1204_iterate_β
                                                                              jmp   n1198_disjunction_af
n1198_disjunction_af:   mov              r11, 541
                        add              dword ptr [rsp + 1536], 1
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 1;                              je    n1201_var_α
                        cmp              eax, 2;                              je    n1200_lit_string_α
                                                                              jmp   n1207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1199_call_builtin_icon_α:
                        mov              r11, 542
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn1419:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1419]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n1198_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1198_disjunction_β
n1199_call_builtin_icon_β:
                        mov              r11, 542;                            jmp   n1198_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1200_lit_string_α:     mov              r11, 543
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 1
                        mov              rax, qword ptr [rip + .Lx1420_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n1198_disjunction_as
n1200_lit_string_β:     mov              r11, 543;                            jmp   n1198_disjunction_af
.Lx1420_0:              .quad            .Lx1420_0_s
.Lx1420_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1201_var_α:            mov              r11, 544
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n1202_lit_integer_α
n1201_var_β:            mov              r11, 544;                            jmp   n1198_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1202_lit_integer_α:    mov              r11, 545
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx1423_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n1203_call_builtin_icon_α
.Lx1423_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1203_call_builtin_icon_α:
                        mov              r11, 546
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn1425:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1425]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n1198_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1204_iterate_α
n1203_call_builtin_icon_β:
                        mov              r11, 546;                            jmp   n1198_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1204_iterate_α:        mov              r11, 547
                        mov              qword ptr [rsp + 1632], 0
.Lx1427_0:              mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              rdx, qword ptr [rsp + 1632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              rax, 104;                            je    n1198_disjunction_af
                                                                              jmp   n1205_call_builtin_icon_α
n1204_iterate_β:        mov              r11, 547
                        inc              qword ptr [rsp + 1632];              jmp   .Lx1427_0
#-----------------------------------------------------------------------------------------------------------------------
n1205_call_builtin_icon_α:
                        mov              r11, 548
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax
                        .section         .rodata
.Lrkfn1429:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1429]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    n1204_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1198_disjunction_as
n1205_call_builtin_icon_β:
                        mov              r11, 548;                            jmp   n1204_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1206_lit_string_α:     mov              r11, 549
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 3
                        mov              rax, qword ptr [rip + .Lx1430_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n1198_disjunction_as
n1206_lit_string_β:     mov              r11, 549;                            jmp   n1198_disjunction_af
.Lx1430_0:              .quad            .Lx1430_0_s
.Lx1430_0_s:            .string          "T1:"
#-----------------------------------------------------------------------------------------------------------------------
n1207_lit_string_α:     mov              r11, 550
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 1
                        mov              rax, qword ptr [rip + .Lx1431_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n1208_disjunction_α
.Lx1431_0:              .quad            .Lx1431_0_s
.Lx1431_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1208_disjunction_α:    mov              r11, 551
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              dword ptr [rsp + 1216], 0;           jmp   n1216_lit_string_α
n1208_disjunction_as:   mov              r11, 551
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              eax, 0;                              jne   .Lx1433_0
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n1209_call_builtin_icon_α
.Lx1433_0:              cmp              eax, 1;                              jne   .Lx1433_1
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n1209_call_builtin_icon_α
.Lx1433_1:              cmp              eax, 2;                              jne   .Lx1433_2
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n1209_call_builtin_icon_α
.Lx1433_2:                                                                    jmp   n1209_call_builtin_icon_α
n1208_disjunction_β:    mov              r11, 551
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              eax, 0;                              je    n1208_disjunction_af
                        cmp              eax, 1;                              je    n1214_iterate_β
                                                                              jmp   n1208_disjunction_af
n1208_disjunction_af:   mov              r11, 551
                        add              dword ptr [rsp + 1216], 1
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              eax, 1;                              je    n1211_var_α
                        cmp              eax, 2;                              je    n1210_lit_string_α
                                                                              jmp   n1217_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1209_call_builtin_icon_α:
                        mov              r11, 552
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn1435:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1435]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n1208_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1208_disjunction_β
n1209_call_builtin_icon_β:
                        mov              r11, 552;                            jmp   n1208_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1210_lit_string_α:     mov              r11, 553
                        mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 1
                        mov              rax, qword ptr [rip + .Lx1436_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n1208_disjunction_as
n1210_lit_string_β:     mov              r11, 553;                            jmp   n1208_disjunction_af
.Lx1436_0:              .quad            .Lx1436_0_s
.Lx1436_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1211_var_α:            mov              r11, 554
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n1212_lit_integer_α
n1211_var_β:            mov              r11, 554;                            jmp   n1208_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1212_lit_integer_α:    mov              r11, 555
                        mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lx1439_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n1213_call_builtin_icon_α
.Lx1439_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1213_call_builtin_icon_α:
                        mov              r11, 556
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn1441:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1441]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n1208_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1214_iterate_α
n1213_call_builtin_icon_β:
                        mov              r11, 556;                            jmp   n1208_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1214_iterate_α:        mov              r11, 557
                        mov              qword ptr [rsp + 1312], 0
.Lx1443_0:              mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              rax, 104;                            je    n1208_disjunction_af
                                                                              jmp   n1215_call_builtin_icon_α
n1214_iterate_β:        mov              r11, 557
                        inc              qword ptr [rsp + 1312];              jmp   .Lx1443_0
#-----------------------------------------------------------------------------------------------------------------------
n1215_call_builtin_icon_α:
                        mov              r11, 558
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        .section         .rodata
.Lrkfn1445:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1445]
                        lea              rsi, [rsp + 1264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n1214_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1208_disjunction_as
n1215_call_builtin_icon_β:
                        mov              r11, 558;                            jmp   n1214_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1216_lit_string_α:     mov              r11, 559
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 3
                        mov              rax, qword ptr [rip + .Lx1446_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n1208_disjunction_as
n1216_lit_string_β:     mov              r11, 559;                            jmp   n1208_disjunction_af
.Lx1446_0:              .quad            .Lx1446_0_s
.Lx1446_0_s:            .string          "T2:"
#-----------------------------------------------------------------------------------------------------------------------
n1217_lit_integer_α:    mov              r11, 560
                        mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx1447_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n1218_lit_integer_α
.Lx1447_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1218_lit_integer_α:    mov              r11, 561
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx1448_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n1219_lit_integer_α
.Lx1448_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1219_lit_integer_α:    mov              r11, 562
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx1449_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n1220_lit_integer_α
.Lx1449_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1220_lit_integer_α:    mov              r11, 563
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx1450_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n1221_lit_integer_α
.Lx1450_0:              .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1221_lit_integer_α:    mov              r11, 564
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx1451_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n1222_call_α
.Lx1451_0:              .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n1222_call_α:           mov              r11, 565
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn1453:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1453]
                        lea              rsi, [rsp + 944]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n1224_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1223_assign_α
n1222_call_β:           mov              r11, 565;                            jmp   n1224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1223_assign_α:         mov              r11, 566
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 4448], rax
                        mov              qword ptr [rsp + 4456], rdx;         jmp   n1224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1224_var_α:            mov              r11, 567
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 920], rax;          jmp   n1225_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1225_call_builtin_icon_α:
                        mov              r11, 568
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn1458:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1458]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n1227_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1226_assign_α
n1225_call_builtin_icon_β:
                        mov              r11, 568;                            jmp   n1227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1226_assign_α:         mov              r11, 569
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 4432], rax
                        mov              qword ptr [rsp + 4440], rdx;         jmp   n1227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1227_var_α:            mov              r11, 570
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 808], rax;          jmp   n1228_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1228_field_var_α:      mov              r11, 571
                        mov              rdi, qword ptr [rip + .Lx1462_0]
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1231_var_α
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n1229_lit_integer_α
.Lx1462_0:              .quad            .Lx1462_0_s
.Lx1462_0_s:            .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n1229_lit_integer_α:    mov              r11, 572
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx1463_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n1230_assign_var_α
.Lx1463_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1230_assign_var_α:     mov              r11, 573
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
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
                        cmp              al, 104;                             je    n1231_var_α
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n1231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1231_var_α:            mov              r11, 574
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 744], rax;          jmp   n1232_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1232_field_var_α:      mov              r11, 575
                        mov              rdi, qword ptr [rip + .Lx1467_0]
                        mov              rsi, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1235_lit_string_α
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n1233_lit_integer_α
.Lx1467_0:              .quad            .Lx1467_0_s
.Lx1467_0_s:            .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n1233_lit_integer_α:    mov              r11, 576
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx1468_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n1234_assign_var_α
.Lx1468_0:              .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1234_assign_var_α:     mov              r11, 577
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1235_lit_string_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n1235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1235_lit_string_α:     mov              r11, 578
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 1
                        mov              rax, qword ptr [rip + .Lx1470_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n1236_disjunction_α
.Lx1470_0:              .quad            .Lx1470_0_s
.Lx1470_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1236_disjunction_α:    mov              r11, 579
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              dword ptr [rsp + 464], 0;            jmp   n1245_lit_string_α
n1236_disjunction_as:   mov              r11, 579
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 0;                              jne   .Lx1472_0
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax;          jmp   n1237_call_builtin_icon_α
.Lx1472_0:              cmp              eax, 1;                              jne   .Lx1472_1
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax;          jmp   n1237_call_builtin_icon_α
.Lx1472_1:              cmp              eax, 2;                              jne   .Lx1472_2
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 456], rax;          jmp   n1237_call_builtin_icon_α
.Lx1472_2:              cmp              eax, 3;                              jne   .Lx1472_3
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 456], rax;          jmp   n1237_call_builtin_icon_α
.Lx1472_3:                                                                    jmp   n1237_call_builtin_icon_α
n1236_disjunction_β:    mov              r11, 579
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 0;                              je    n1236_disjunction_af
                        cmp              eax, 1;                              je    n1236_disjunction_af
                        cmp              eax, 2;                              je    n1241_iterate_β
                                                                              jmp   n1236_disjunction_af
n1236_disjunction_af:   mov              r11, 579
                        add              dword ptr [rsp + 464], 1
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 1;                              je    n1243_var_α
                        cmp              eax, 2;                              je    n1239_var_α
                        cmp              eax, 3;                              je    n1238_lit_string_α
                                                                              jmp   n1246_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1237_call_builtin_icon_α:
                        mov              r11, 580
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn1474:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1474]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n1236_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1236_disjunction_β
n1237_call_builtin_icon_β:
                        mov              r11, 580;                            jmp   n1236_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1238_lit_string_α:     mov              r11, 581
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 1
                        mov              rax, qword ptr [rip + .Lx1475_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n1236_disjunction_as
n1238_lit_string_β:     mov              r11, 581;                            jmp   n1236_disjunction_af
.Lx1475_0:              .quad            .Lx1475_0_s
.Lx1475_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1239_var_α:            mov              r11, 582
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 696], rax;          jmp   n1240_call_builtin_icon_α
n1239_var_β:            mov              r11, 582;                            jmp   n1236_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1240_call_builtin_icon_α:
                        mov              r11, 583
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn1479:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1479]
                        lea              rsi, [rsp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n1236_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1241_iterate_α
n1240_call_builtin_icon_β:
                        mov              r11, 583;                            jmp   n1236_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1241_iterate_α:        mov              r11, 584
                        mov              qword ptr [rsp + 624], 0
.Lx1481_0:              mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              rax, 104;                            je    n1236_disjunction_af
                                                                              jmp   n1242_call_builtin_icon_α
n1241_iterate_β:        mov              r11, 584
                        inc              qword ptr [rsp + 624];               jmp   .Lx1481_0
#-----------------------------------------------------------------------------------------------------------------------
n1242_call_builtin_icon_α:
                        mov              r11, 585
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn1483:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1483]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n1241_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1236_disjunction_as
n1242_call_builtin_icon_β:
                        mov              r11, 585;                            jmp   n1241_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1243_var_α:            mov              r11, 586
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 552], rax;          jmp   n1244_call_builtin_icon_α
n1243_var_β:            mov              r11, 586;                            jmp   n1236_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1244_call_builtin_icon_α:
                        mov              r11, 587
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn1487:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1487]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n1236_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1236_disjunction_as
n1244_call_builtin_icon_β:
                        mov              r11, 587;                            jmp   n1236_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1245_lit_string_α:     mov              r11, 588
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 3
                        mov              rax, qword ptr [rip + .Lx1488_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1236_disjunction_as
n1245_lit_string_β:     mov              r11, 588;                            jmp   n1236_disjunction_af
.Lx1488_0:              .quad            .Lx1488_0_s
.Lx1488_0_s:            .string          "R1:"
#-----------------------------------------------------------------------------------------------------------------------
n1246_lit_string_α:     mov              r11, 589
                        mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 1
                        mov              rax, qword ptr [rip + .Lx1489_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1247_disjunction_α
.Lx1489_0:              .quad            .Lx1489_0_s
.Lx1489_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1247_disjunction_α:    mov              r11, 590
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n1256_lit_string_α
n1247_disjunction_as:   mov              r11, 590
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx1491_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1248_call_builtin_icon_α
.Lx1491_0:              cmp              eax, 1;                              jne   .Lx1491_1
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1248_call_builtin_icon_α
.Lx1491_1:              cmp              eax, 2;                              jne   .Lx1491_2
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1248_call_builtin_icon_α
.Lx1491_2:              cmp              eax, 3;                              jne   .Lx1491_3
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1248_call_builtin_icon_α
.Lx1491_3:                                                                    jmp   n1248_call_builtin_icon_α
n1247_disjunction_β:    mov              r11, 590
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n1247_disjunction_af
                        cmp              eax, 1;                              je    n1247_disjunction_af
                        cmp              eax, 2;                              je    n1252_iterate_β
                                                                              jmp   n1247_disjunction_af
n1247_disjunction_af:   mov              r11, 590
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n1254_var_α
                        cmp              eax, 2;                              je    n1250_var_α
                        cmp              eax, 3;                              je    n1249_lit_string_α
                                                                              jmp   n1257_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1248_call_builtin_icon_α:
                        mov              r11, 591
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn1493:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1493]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n1247_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1247_disjunction_β
n1248_call_builtin_icon_β:
                        mov              r11, 591;                            jmp   n1247_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1249_lit_string_α:     mov              r11, 592
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx1494_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1247_disjunction_as
n1249_lit_string_β:     mov              r11, 592;                            jmp   n1247_disjunction_af
.Lx1494_0:              .quad            .Lx1494_0_s
.Lx1494_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1250_var_α:            mov              r11, 593
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1251_call_builtin_icon_α
n1250_var_β:            mov              r11, 593;                            jmp   n1247_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1251_call_builtin_icon_α:
                        mov              r11, 594
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn1498:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1498]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n1247_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1252_iterate_α
n1251_call_builtin_icon_β:
                        mov              r11, 594;                            jmp   n1247_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1252_iterate_α:        mov              r11, 595
                        mov              qword ptr [rsp + 272], 0
.Lx1500_0:              mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              rax, 104;                            je    n1247_disjunction_af
                                                                              jmp   n1253_call_builtin_icon_α
n1252_iterate_β:        mov              r11, 595
                        inc              qword ptr [rsp + 272];               jmp   .Lx1500_0
#-----------------------------------------------------------------------------------------------------------------------
n1253_call_builtin_icon_α:
                        mov              r11, 596
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn1502:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1502]
                        lea              rsi, [rsp + 224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n1252_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1247_disjunction_as
n1253_call_builtin_icon_β:
                        mov              r11, 596;                            jmp   n1252_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1254_var_α:            mov              r11, 597
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 200], rax;          jmp   n1255_call_builtin_icon_α
n1254_var_β:            mov              r11, 597;                            jmp   n1247_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1255_call_builtin_icon_α:
                        mov              r11, 598
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn1506:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1506]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n1247_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1247_disjunction_as
n1255_call_builtin_icon_β:
                        mov              r11, 598;                            jmp   n1247_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1256_lit_string_α:     mov              r11, 599
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 3
                        mov              rax, qword ptr [rip + .Lx1507_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1247_disjunction_as
n1256_lit_string_β:     mov              r11, 599;                            jmp   n1247_disjunction_af
.Lx1507_0:              .quad            .Lx1507_0_s
.Lx1507_0_s:            .string          "R2:"
#-----------------------------------------------------------------------------------------------------------------------
n1257_return_α:         mov              r11, 600
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   copytest_γ
#-----------------------------------------------------------------------------------------------------------------------
copytest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
copytest_β:
                                                                              jmp   copytest_ω
#-----------------------------------------------------------------------------------------------------------------------
copytest_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4712]
                        add              rsp, 4736;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
copytest_ω:
                        mov              rcx, qword ptr [rsp + 4720]
                        add              rsp, 4736;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
copytest_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx1509_2]
                        lea              rdx, [rip + .Lx1509_3];              jmp   FN__copytest
.Lx1509_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx1509_3:              pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__messtest:
                        sub              rsp, 5424
                        mov              qword ptr [rsp + 5400], rcx
                        mov              qword ptr [rsp + 5408], rdx
                        mov              rdi, rsp
                        add              rdi, 5280
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
messtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1510_call_builtin_icon_α:
                        mov              r11, 601
                        .section         .rodata
.Lrkfn1673:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1673]
                        lea              rsi, [rsp + 5264]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5248], rax
                        mov              qword ptr [rsp + 5256], rdx
                        cmp              al, 104;                             je    n1511_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1511_lit_charset_α
n1510_call_builtin_icon_β:
                        mov              r11, 601;                            jmp   n1511_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n1511_lit_charset_α:    mov              r11, 602
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], -1
                        mov              rax, qword ptr [rip + .Lx1674_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n1512_lit_charset_α
.Lx1674_0:              .quad            .Lx1674_0_s
.Lx1674_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1512_lit_charset_α:    mov              r11, 603
                        mov              qword ptr [rsp + 2016], 2            # result
                        mov              dword ptr [rsp + 2020], -1
                        mov              rax, qword ptr [rip + .Lx1675_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n1513_lit_real_α
.Lx1675_0:              .quad            .Lx1675_0_s
.Lx1675_0_s:            .string          "0cs"
#-----------------------------------------------------------------------------------------------------------------------
n1513_lit_real_α:       mov              r11, 604
                        mov              qword ptr [rsp + 2032], 5            # result
                        mov              rax, qword ptr [rip + .Lx1676_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n1514_call_builtin_icon_α
.Lx1676_0:              .quad            4616639978017495450
#-----------------------------------------------------------------------------------------------------------------------
n1514_call_builtin_icon_α:
                        mov              r11, 605
                        .section         .rodata
.Lrkfn1678:             .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1678]
                        lea              rsi, [rsp + 2064]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196768
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1515_lit_real_α
n1514_call_builtin_icon_β:
                        mov              r11, 605;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1515_lit_real_α:       mov              r11, 606
                        mov              qword ptr [rsp + 2080], 5            # result
                        mov              rax, qword ptr [rip + .Lx1679_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n1516_lit_string_α
.Lx1679_0:              .quad            4612136378390124954
#-----------------------------------------------------------------------------------------------------------------------
n1516_lit_string_α:     mov              r11, 607
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 1
                        mov              rax, qword ptr [rip + .Lx1680_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n1517_keyword_icon_α
.Lx1680_0:              .quad            .Lx1680_0_s
.Lx1680_0_s:            .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n1517_keyword_icon_α:   mov              r11, 608
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0;           jmp   n1518_proc_value_α
n1517_keyword_icon_β:   mov              r11, 608;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1518_proc_value_α:     mov              r11, 609
                        mov              rdi, qword ptr [rip + .Lx1683_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n1519_proc_value_α
.Lx1683_0:              .quad            .Lx1683_0_s
.Lx1683_0_s:            .string          "integer"
#-----------------------------------------------------------------------------------------------------------------------
n1519_proc_value_α:     mov              r11, 610
                        mov              rdi, qword ptr [rip + .Lx1685_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n1520_lit_string_α
.Lx1685_0:              .quad            .Lx1685_0_s
.Lx1685_0_s:            .string          "wlist"
#-----------------------------------------------------------------------------------------------------------------------
n1520_lit_string_α:     mov              r11, 611
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 8
                        mov              rax, qword ptr [rip + .Lx1686_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n1521_proc_value_α
.Lx1686_0:              .quad            .Lx1686_0_s
.Lx1686_0_s:            .string          "epsilons"
#-----------------------------------------------------------------------------------------------------------------------
n1521_proc_value_α:     mov              r11, 612
                        mov              rdi, qword ptr [rip + .Lx1688_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n1522_lit_string_α
.Lx1688_0:              .quad            .Lx1688_0_s
.Lx1688_0_s:            .string          "r0"
#-----------------------------------------------------------------------------------------------------------------------
n1522_lit_string_α:     mov              r11, 613
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 5
                        mov              rax, qword ptr [rip + .Lx1689_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n1523_proc_value_α
.Lx1689_0:              .quad            .Lx1689_0_s
.Lx1689_0_s:            .string          "delta"
#-----------------------------------------------------------------------------------------------------------------------
n1523_proc_value_α:     mov              r11, 614
                        mov              rdi, qword ptr [rip + .Lx1691_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n1524_lit_string_α
.Lx1691_0:              .quad            .Lx1691_0_s
.Lx1691_0_s:            .string          "push"
#-----------------------------------------------------------------------------------------------------------------------
n1524_lit_string_α:     mov              r11, 615
                        mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 4
                        mov              rax, qword ptr [rip + .Lx1692_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n1525_lit_integer_α
.Lx1692_0:              .quad            .Lx1692_0_s
.Lx1692_0_s:            .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n1525_lit_integer_α:    mov              r11, 616
                        mov              qword ptr [rsp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Lx1693_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n1526_call_builtin_icon_α
.Lx1693_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1526_call_builtin_icon_α:
                        mov              r11, 617
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2280], rax
                        .section         .rodata
.Lrkfn1695:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1695]
                        lea              rsi, [rsp + 2272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1527_make_list_α
n1526_call_builtin_icon_β:
                        mov              r11, 617;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1527_make_list_α:      mov              r11, 618
                        lea              rdi, [rsp + 2336]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n1528_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1528_proc_value_α:     mov              r11, 619
                        mov              rdi, qword ptr [rip + .Lx1699_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n1529_lit_charset_α
.Lx1699_0:              .quad            .Lx1699_0_s
.Lx1699_0_s:            .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n1529_lit_charset_α:    mov              r11, 620
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], -1
                        mov              rax, qword ptr [rip + .Lx1700_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n1530_lit_integer_α
.Lx1700_0:              .quad            .Lx1700_0_s
.Lx1700_0_s:            .string          "123cs"
#-----------------------------------------------------------------------------------------------------------------------
n1530_lit_integer_α:    mov              r11, 621
                        mov              qword ptr [rsp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Lx1701_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n1531_lit_integer_α
.Lx1701_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1531_lit_integer_α:    mov              r11, 622
                        mov              qword ptr [rsp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Lx1702_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n1532_make_list_α
.Lx1702_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1532_make_list_α:      mov              r11, 623
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2408], rax
                        lea              rdi, [rsp + 2384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n1533_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1533_lit_integer_α:    mov              r11, 624
                        mov              qword ptr [rsp + 2464], 3            # result
                        mov              rax, qword ptr [rip + .Lx1705_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n1534_lit_integer_α
.Lx1705_0:              .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n1534_lit_integer_α:    mov              r11, 625
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Lx1706_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n1535_binop_α
.Lx1706_0:              .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n1535_binop_α:          mov              r11, 626
                        mov              rdi, qword ptr [rsp + 2464]
                        mov              rsi, qword ptr [rsp + 2472]
                        mov              rdx, qword ptr [rsp + 2480]
                        mov              rcx, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n1646_var_α
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1536_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1536_proc_value_α:     mov              r11, 627
                        mov              rdi, qword ptr [rip + .Lx1709_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n1537_lit_integer_α
.Lx1709_0:              .quad            .Lx1709_0_s
.Lx1709_0_s:            .string          "image"
#-----------------------------------------------------------------------------------------------------------------------
n1537_lit_integer_α:    mov              r11, 628
                        mov              qword ptr [rsp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Lx1710_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n1538_call_builtin_icon_α
.Lx1710_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1538_call_builtin_icon_α:
                        mov              r11, 629
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2616], rax
                        .section         .rodata
.Lrkfn1712:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1712]
                        lea              rsi, [rsp + 2608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1539_lit_integer_α
n1538_call_builtin_icon_β:
                        mov              r11, 629;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1539_lit_integer_α:    mov              r11, 630
                        mov              qword ptr [rsp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Lx1713_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n1540_lit_integer_α
.Lx1713_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1540_lit_integer_α:    mov              r11, 631
                        mov              qword ptr [rsp + 2672], 3            # result
                        mov              rax, qword ptr [rip + .Lx1714_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n1541_call_builtin_icon_α
.Lx1714_0:              .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1541_call_builtin_icon_α:
                        mov              r11, 632
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2552], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn1716:             .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1716]
                        lea              rsi, [rsp + 2528]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393341
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1542_keyword_icon_α
n1541_call_builtin_icon_β:
                        mov              r11, 632;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1542_keyword_icon_α:   mov              r11, 633
                        mov              rdi, qword ptr [rip + .Lx1717_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1646_var_α
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n1543_lit_real_α
n1542_keyword_icon_β:   mov              r11, 633;                            jmp   n1646_var_α
.Lx1717_0:              .quad            .Lx1717_0_s
.Lx1717_0_s:            .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n1543_lit_real_α:       mov              r11, 634
                        mov              qword ptr [rsp + 2720], 5            # result
                        mov              rax, qword ptr [rip + .Lx1718_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n1544_proc_value_α
.Lx1718_0:              .quad            4614613358185178726
#-----------------------------------------------------------------------------------------------------------------------
n1544_proc_value_α:     mov              r11, 635
                        mov              rdi, qword ptr [rip + .Lx1720_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx;         jmp   n1545_lit_integer_α
.Lx1720_0:              .quad            .Lx1720_0_s
.Lx1720_0_s:            .string          "reverse"
#-----------------------------------------------------------------------------------------------------------------------
n1545_lit_integer_α:    mov              r11, 636
                        mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx1721_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n1546_call_α
.Lx1721_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1546_call_α:           mov              r11, 637
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2776], rax
                        .section         .rodata
.Lrkfn1723:             .string          "r1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1723]
                        lea              rsi, [rsp + 2768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1547_make_list_α
n1546_call_β:           mov              r11, 637;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1547_make_list_α:      mov              r11, 638
                        lea              rdi, [rsp + 2832]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx;         jmp   n1548_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1548_lit_integer_α:    mov              r11, 639
                        mov              qword ptr [rsp + 2880], 3            # result
                        mov              rax, qword ptr [rip + .Lx1726_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n1549_call_builtin_icon_α
.Lx1726_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1549_call_builtin_icon_α:
                        mov              r11, 640
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2856], rax
                        .section         .rodata
.Lrkfn1728:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1728]
                        lea              rsi, [rsp + 2848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1550_proc_value_α
n1549_call_builtin_icon_β:
                        mov              r11, 640;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1550_proc_value_α:     mov              r11, 641
                        mov              rdi, qword ptr [rip + .Lx1730_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n1551_lit_integer_α
.Lx1730_0:              .quad            .Lx1730_0_s
.Lx1730_0_s:            .string          "r5"
#-----------------------------------------------------------------------------------------------------------------------
n1551_lit_integer_α:    mov              r11, 642
                        mov              qword ptr [rsp + 2976], 3            # result
                        mov              rax, qword ptr [rip + .Lx1731_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n1552_lit_integer_α
.Lx1731_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1552_lit_integer_α:    mov              r11, 643
                        mov              qword ptr [rsp + 2992], 3            # result
                        mov              rax, qword ptr [rip + .Lx1732_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n1553_call_α
.Lx1732_0:              .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1553_call_α:           mov              r11, 644
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2936], rax
                        .section         .rodata
.Lrkfn1734:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1734]
                        lea              rsi, [rsp + 2928]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1554_keyword_icon_α
n1553_call_β:           mov              r11, 644;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1554_keyword_icon_α:   mov              r11, 645
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0;           jmp   n1555_create_α
n1554_keyword_icon_β:   mov              r11, 645;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1555_create_α:         mov              r11, 646
                        mov              qword ptr [rsp + 3056], r12
                        mov              qword ptr [rsp + 3064], r13
                        mov              qword ptr [rsp + 3072], r14
                        mov              qword ptr [rsp + 3080], r15
                        mov              qword ptr [rsp + 3088], rbx
                        mov              qword ptr [rsp + 3096], rsp
                        lea              rdi, [rip + n1642_disjunction_α]
                        lea              rsi, [rsp + 3056]
                        mov              edx, 5360
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_coexpr_create@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3040], rax;         jmp   n1556_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n1556_lit_real_α:       mov              r11, 647
                        mov              qword ptr [rsp + 3184], 5            # result
                        mov              rax, qword ptr [rip + .Lx1738_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n1557_lit_integer_α
.Lx1738_0:              .quad            4617878467915022336
#-----------------------------------------------------------------------------------------------------------------------
n1557_lit_integer_α:    mov              r11, 648
                        mov              qword ptr [rsp + 3296], 3            # result
                        mov              rax, qword ptr [rip + .Lx1739_0]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n1558_lit_integer_α
.Lx1739_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1558_lit_integer_α:    mov              r11, 649
                        mov              qword ptr [rsp + 3312], 3            # result
                        mov              rax, qword ptr [rip + .Lx1740_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n1559_make_list_α
.Lx1740_0:              .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1559_make_list_α:      mov              r11, 650
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3288], rax
                        lea              rdi, [rsp + 3264]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n1560_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1560_call_builtin_icon_α:
                        mov              r11, 651
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3224], rax
                        .section         .rodata
.Lrkfn1744:             .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1744]
                        lea              rsi, [rsp + 3216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196768
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1561_lit_string_α
n1560_call_builtin_icon_β:
                        mov              r11, 651;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1561_lit_string_α:     mov              r11, 652
                        mov              qword ptr [rsp + 3328], 2            # result
                        mov              dword ptr [rsp + 3332], 0
                        mov              rax, qword ptr [rip + .Lx1745_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n1562_lit_integer_α
.Lx1745_0:              .quad            .Lx1745_0_s
.Lx1745_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1562_lit_integer_α:    mov              r11, 653
                        mov              qword ptr [rsp + 3408], 3            # result
                        mov              rax, qword ptr [rip + .Lx1746_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n1563_lit_integer_α
.Lx1746_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1563_lit_integer_α:    mov              r11, 654
                        mov              qword ptr [rsp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Lx1747_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n1564_call_α
.Lx1747_0:              .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1564_call_α:           mov              r11, 655
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3368], rax
                        .section         .rodata
.Lrkfn1749:             .string          "r2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1749]
                        lea              rsi, [rsp + 3360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1565_lit_integer_α
n1564_call_β:           mov              r11, 655;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1565_lit_integer_α:    mov              r11, 656
                        mov              qword ptr [rsp + 3456], 3            # result
                        mov              rax, qword ptr [rip + .Lx1750_0]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n1566_lit_integer_α
.Lx1750_0:              .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n1566_lit_integer_α:    mov              r11, 657
                        mov              qword ptr [rsp + 3472], 3            # result
                        mov              rax, qword ptr [rip + .Lx1751_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n1567_binop_α
.Lx1751_0:              .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1567_binop_α:          mov              r11, 658
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 3472]
                        mov              rcx, qword ptr [rsp + 3480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n1646_var_α
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1568_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1568_lit_string_α:     mov              r11, 659
                        mov              qword ptr [rsp + 3488], 2            # result
                        mov              dword ptr [rsp + 3492], 7
                        mov              rax, qword ptr [rip + .Lx1753_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n1569_lit_integer_α
.Lx1753_0:              .quad            .Lx1753_0_s
.Lx1753_0_s:            .string          "epsilon"
#-----------------------------------------------------------------------------------------------------------------------
n1569_lit_integer_α:    mov              r11, 660
                        mov              qword ptr [rsp + 3568], 3            # result
                        mov              rax, qword ptr [rip + .Lx1754_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n1570_lit_integer_α
.Lx1754_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1570_lit_integer_α:    mov              r11, 661
                        mov              qword ptr [rsp + 3584], 3            # result
                        mov              rax, qword ptr [rip + .Lx1755_0]
                        mov              qword ptr [rsp + 3592], rax;         jmp   n1571_lit_integer_α
.Lx1755_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1571_lit_integer_α:    mov              r11, 662
                        mov              qword ptr [rsp + 3600], 3            # result
                        mov              rax, qword ptr [rip + .Lx1756_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n1572_make_list_α
.Lx1756_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1572_make_list_α:      mov              r11, 663
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3528], rax
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3544], rax
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3560], rax
                        lea              rdi, [rsp + 3520]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n1573_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1573_lit_integer_α:    mov              r11, 664
                        mov              qword ptr [rsp + 3696], 3            # result
                        mov              rax, qword ptr [rip + .Lx1759_0]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n1574_lit_integer_α
.Lx1759_0:              .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1574_lit_integer_α:    mov              r11, 665
                        mov              qword ptr [rsp + 3712], 3            # result
                        mov              rax, qword ptr [rip + .Lx1760_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n1575_lit_integer_α
.Lx1760_0:              .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n1575_lit_integer_α:    mov              r11, 666
                        mov              qword ptr [rsp + 3728], 3            # result
                        mov              rax, qword ptr [rip + .Lx1761_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n1576_call_α
.Lx1761_0:              .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n1576_call_α:           mov              r11, 667
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3672], rax
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3656], rax
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3640], rax
                        .section         .rodata
.Lrkfn1763:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1763]
                        lea              rsi, [rsp + 3632]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1577_proc_value_α
n1576_call_β:           mov              r11, 667;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1577_proc_value_α:     mov              r11, 668
                        mov              rdi, qword ptr [rip + .Lx1765_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n1578_keyword_icon_α
.Lx1765_0:              .quad            .Lx1765_0_s
.Lx1765_0_s:            .string          "r2"
#-----------------------------------------------------------------------------------------------------------------------
n1578_keyword_icon_α:   mov              r11, 669
                        mov              rdi, qword ptr [rip + .Lx1766_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1646_var_α
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n1579_lit_integer_α
n1578_keyword_icon_β:   mov              r11, 669;                            jmp   n1646_var_α
.Lx1766_0:              .quad            .Lx1766_0_s
.Lx1766_0_s:            .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n1579_lit_integer_α:    mov              r11, 670
                        mov              qword ptr [rsp + 3792], 3            # result
                        mov              rax, qword ptr [rip + .Lx1767_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n1580_var_α
.Lx1767_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1580_var_α:            mov              r11, 671
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0;           jmp   n1581_lit_integer_α
n1580_var_β:            mov              r11, 671;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1581_lit_integer_α:    mov              r11, 672
                        mov              qword ptr [rsp + 3936], 3            # result
                        mov              rax, qword ptr [rip + .Lx1769_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n1582_lit_integer_α
.Lx1769_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1582_lit_integer_α:    mov              r11, 673
                        mov              qword ptr [rsp + 3952], 3            # result
                        mov              rax, qword ptr [rip + .Lx1770_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n1583_lit_integer_α
.Lx1770_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1583_lit_integer_α:    mov              r11, 674
                        mov              qword ptr [rsp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Lx1771_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n1584_make_list_α
.Lx1771_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1584_make_list_α:      mov              r11, 675
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3896], rax
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3912], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3928], rax
                        lea              rdi, [rsp + 3888]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx;         jmp   n1585_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1585_call_builtin_icon_α:
                        mov              r11, 676
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3848], rax
                        .section         .rodata
.Lrkfn1775:             .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1775]
                        lea              rsi, [rsp + 3840]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196768
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1586_lit_integer_α
n1585_call_builtin_icon_β:
                        mov              r11, 676;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1586_lit_integer_α:    mov              r11, 677
                        mov              qword ptr [rsp + 3984], 3            # result
                        mov              rax, qword ptr [rip + .Lx1776_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n1587_lit_integer_α
.Lx1776_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1587_lit_integer_α:    mov              r11, 678
                        mov              qword ptr [rsp + 4080], 3            # result
                        mov              rax, qword ptr [rip + .Lx1777_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n1588_lit_integer_α
.Lx1777_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1588_lit_integer_α:    mov              r11, 679
                        mov              qword ptr [rsp + 4096], 3            # result
                        mov              rax, qword ptr [rip + .Lx1778_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n1589_lit_integer_α
.Lx1778_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1589_lit_integer_α:    mov              r11, 680
                        mov              qword ptr [rsp + 4112], 3            # result
                        mov              rax, qword ptr [rip + .Lx1779_0]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n1590_call_α
.Lx1779_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1590_call_α:           mov              r11, 681
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4056], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4040], rax
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 4024], rax
                        .section         .rodata
.Lrkfn1781:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1781]
                        lea              rsi, [rsp + 4016]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1591_proc_value_α
n1590_call_β:           mov              r11, 681;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1591_proc_value_α:     mov              r11, 682
                        mov              rdi, qword ptr [rip + .Lx1783_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n1592_proc_value_α
.Lx1783_0:              .quad            .Lx1783_0_s
.Lx1783_0_s:            .string          "r1"
#-----------------------------------------------------------------------------------------------------------------------
n1592_proc_value_α:     mov              r11, 683
                        mov              rdi, qword ptr [rip + .Lx1785_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n1593_create_α
.Lx1785_0:              .quad            .Lx1785_0_s
.Lx1785_0_s:            .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
n1593_create_α:         mov              r11, 684
                        mov              qword ptr [rsp + 4176], r12
                        mov              qword ptr [rsp + 4184], r13
                        mov              qword ptr [rsp + 4192], r14
                        mov              qword ptr [rsp + 4200], r15
                        mov              qword ptr [rsp + 4208], rbx
                        mov              qword ptr [rsp + 4216], rsp
                        lea              rdi, [rip + n1638_disjunction_α]
                        lea              rsi, [rsp + 4176]
                        mov              edx, 5360
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_coexpr_create@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4160], rax;         jmp   n1594_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1594_var_α:            mov              r11, 685
                        mov              rax, qword ptr [rsp + 5312]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 5320]
                        mov              qword ptr [rsp + 4312], rax;         jmp   n1595_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n1595_lit_charset_α:    mov              r11, 686
                        mov              qword ptr [rsp + 4320], 2            # result
                        mov              dword ptr [rsp + 4324], -1
                        mov              rax, qword ptr [rip + .Lx1790_0]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n1596_lit_real_α
.Lx1790_0:              .quad            .Lx1790_0_s
.Lx1790_0_s:            .string          "XYZcs"
#-----------------------------------------------------------------------------------------------------------------------
n1596_lit_real_α:       mov              r11, 687
                        mov              qword ptr [rsp + 4336], 5            # result
                        mov              rax, qword ptr [rip + .Lx1791_0]
                        mov              qword ptr [rsp + 4344], rax;         jmp   n1597_lit_integer_α
.Lx1791_0:              .quad            4607632778762754458
#-----------------------------------------------------------------------------------------------------------------------
n1597_lit_integer_α:    mov              r11, 688
                        mov              qword ptr [rsp + 4400], 3            # result
                        mov              rax, qword ptr [rip + .Lx1792_0]
                        mov              qword ptr [rsp + 4408], rax;         jmp   n1598_call_α
.Lx1792_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1598_call_α:           mov              r11, 689
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 4376], rax
                        .section         .rodata
.Lrkfn1794:             .string          "r1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1794]
                        lea              rsi, [rsp + 4368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1599_lit_integer_α
n1598_call_β:           mov              r11, 689;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1599_lit_integer_α:    mov              r11, 690
                        mov              qword ptr [rsp + 4432], 3            # result
                        mov              rax, qword ptr [rip + .Lx1795_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n1600_lit_integer_α
.Lx1795_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1600_lit_integer_α:    mov              r11, 691
                        mov              qword ptr [rsp + 4448], 3            # result
                        mov              rax, qword ptr [rip + .Lx1796_0]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n1601_binop_α
.Lx1796_0:              .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n1601_binop_α:          mov              r11, 692
                        mov              rdi, qword ptr [rsp + 4432]
                        mov              rsi, qword ptr [rsp + 4440]
                        mov              rdx, qword ptr [rsp + 4448]
                        mov              rcx, qword ptr [rsp + 4456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n1646_var_α
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1602_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n1602_lit_charset_α:    mov              r11, 693
                        mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], -1
                        mov              rax, qword ptr [rip + .Lx1798_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n1603_lit_integer_α
.Lx1798_0:              .quad            .Lx1798_0_s
.Lx1798_0_s:            .string          "1234cs"
#-----------------------------------------------------------------------------------------------------------------------
n1603_lit_integer_α:    mov              r11, 694
                        mov              qword ptr [rsp + 4480], 3            # result
                        mov              rax, qword ptr [rip + .Lx1799_0]
                        mov              qword ptr [rsp + 4488], rax;         jmp   n1604_call_α
.Lx1799_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1604_call_α:           mov              r11, 695
                        .section         .rodata
.Lrkfn1801:             .string          "r0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1801]
                        lea              rsi, [rsp + 4512]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1605_proc_value_α
n1604_call_β:           mov              r11, 695;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1605_proc_value_α:     mov              r11, 696
                        mov              rdi, qword ptr [rip + .Lx1803_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx;         jmp   n1606_lit_string_α
.Lx1803_0:              .quad            .Lx1803_0_s
.Lx1803_0_s:            .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n1606_lit_string_α:     mov              r11, 697
                        mov              qword ptr [rsp + 4544], 2            # result
                        mov              dword ptr [rsp + 4548], 5
                        mov              rax, qword ptr [rip + .Lx1804_0]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n1607_lit_integer_α
.Lx1804_0:              .quad            .Lx1804_0_s
.Lx1804_0_s:            .string          "gamma"
#-----------------------------------------------------------------------------------------------------------------------
n1607_lit_integer_α:    mov              r11, 698
                        mov              qword ptr [rsp + 4672], 3            # result
                        mov              rax, qword ptr [rip + .Lx1805_0]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n1608_lit_integer_α
.Lx1805_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1608_lit_integer_α:    mov              r11, 699
                        mov              qword ptr [rsp + 4688], 3            # result
                        mov              rax, qword ptr [rip + .Lx1806_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n1609_lit_integer_α
.Lx1806_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1609_lit_integer_α:    mov              r11, 700
                        mov              qword ptr [rsp + 4704], 3            # result
                        mov              rax, qword ptr [rip + .Lx1807_0]
                        mov              qword ptr [rsp + 4712], rax;         jmp   n1610_lit_integer_α
.Lx1807_0:              .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1610_lit_integer_α:    mov              r11, 701
                        mov              qword ptr [rsp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Lx1808_0]
                        mov              qword ptr [rsp + 4728], rax;         jmp   n1611_lit_integer_α
.Lx1808_0:              .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1611_lit_integer_α:    mov              r11, 702
                        mov              qword ptr [rsp + 4736], 3            # result
                        mov              rax, qword ptr [rip + .Lx1809_0]
                        mov              qword ptr [rsp + 4744], rax;         jmp   n1612_call_α
.Lx1809_0:              .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n1612_call_α:           mov              r11, 703
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4640], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4648], rax
                        mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 4632], rax
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 4616], rax
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4600], rax
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4576], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4584], rax
                        .section         .rodata
.Lrkfn1811:             .string          "r5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1811]
                        lea              rsi, [rsp + 4576]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4560], rax
                        mov              qword ptr [rsp + 4568], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1613_lit_integer_α
n1612_call_β:           mov              r11, 703;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1613_lit_integer_α:    mov              r11, 704
                        mov              qword ptr [rsp + 4752], 3            # result
                        mov              rax, qword ptr [rip + .Lx1812_0]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n1614_create_α
.Lx1812_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1614_create_α:         mov              r11, 705
                        mov              qword ptr [rsp + 4784], r12
                        mov              qword ptr [rsp + 4792], r13
                        mov              qword ptr [rsp + 4800], r14
                        mov              qword ptr [rsp + 4808], r15
                        mov              qword ptr [rsp + 4816], rbx
                        mov              qword ptr [rsp + 4824], rsp
                        lea              rdi, [rip + n1633_lit_integer_α]
                        lea              rsi, [rsp + 4784]
                        mov              edx, 5360
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_coexpr_create@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4768], rax;         jmp   n1615_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1615_proc_value_α:     mov              r11, 706
                        mov              rdi, qword ptr [rip + .Lx1816_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx;         jmp   n1616_lit_integer_α
.Lx1816_0:              .quad            .Lx1816_0_s
.Lx1816_0_s:            .string          "table"
#-----------------------------------------------------------------------------------------------------------------------
n1616_lit_integer_α:    mov              r11, 707
                        mov              qword ptr [rsp + 4992], 3            # result
                        mov              rax, qword ptr [rip + .Lx1817_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n1617_lit_integer_α
.Lx1817_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1617_lit_integer_α:    mov              r11, 708
                        mov              qword ptr [rsp + 5008], 3            # result
                        mov              rax, qword ptr [rip + .Lx1818_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n1618_call_α
.Lx1818_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1618_call_α:           mov              r11, 709
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4968], rax
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4952], rax
                        .section         .rodata
.Lrkfn1820:             .string          "r2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1820]
                        lea              rsi, [rsp + 4944]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1619_proc_value_α
n1618_call_β:           mov              r11, 709;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1619_proc_value_α:     mov              r11, 710
                        mov              rdi, qword ptr [rip + .Lx1822_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx;         jmp   n1620_call_α
.Lx1822_0:              .quad            .Lx1822_0_s
.Lx1822_0_s:            .string          "right"
#-----------------------------------------------------------------------------------------------------------------------
n1620_call_α:           mov              r11, 711
                        .section         .rodata
.Lrkfn1824:             .string          "r0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1824]
                        lea              rsi, [rsp + 5056]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 131072
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx
                        cmp              al, 104;                             je    n1646_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1621_lit_string_α
n1620_call_β:           mov              r11, 711;                            jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1621_lit_string_α:     mov              r11, 712
                        mov              qword ptr [rsp + 5072], 2            # result
                        mov              dword ptr [rsp + 5076], 5
                        mov              rax, qword ptr [rip + .Lx1825_0]
                        mov              qword ptr [rsp + 5080], rax;         jmp   n1622_proc_value_α
.Lx1825_0:              .quad            .Lx1825_0_s
.Lx1825_0_s:            .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n1622_proc_value_α:     mov              r11, 713
                        mov              rdi, qword ptr [rip + .Lx1827_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx;         jmp   n1623_keyword_icon_α
.Lx1827_0:              .quad            .Lx1827_0_s
.Lx1827_0_s:            .string          "messtest"
#-----------------------------------------------------------------------------------------------------------------------
n1623_keyword_icon_α:   mov              r11, 714
                        mov              rdi, qword ptr [rip + .Lx1828_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1646_var_α
                        mov              qword ptr [rsp + 5104], rax
                        mov              qword ptr [rsp + 5112], rdx;         jmp   n1624_lit_integer_α
n1623_keyword_icon_β:   mov              r11, 714;                            jmp   n1646_var_α
.Lx1828_0:              .quad            .Lx1828_0_s
.Lx1828_0_s:            .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n1624_lit_integer_α:    mov              r11, 715
                        mov              qword ptr [rsp + 5152], 3            # result
                        mov              rax, qword ptr [rip + .Lx1829_0]
                        mov              qword ptr [rsp + 5160], rax;         jmp   n1625_lit_integer_α
.Lx1829_0:              .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1625_lit_integer_α:    mov              r11, 716
                        mov              qword ptr [rsp + 5168], 3            # result
                        mov              rax, qword ptr [rip + .Lx1830_0]
                        mov              qword ptr [rsp + 5176], rax;         jmp   n1626_binop_α
.Lx1830_0:              .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n1626_binop_α:          mov              r11, 717
                        mov              rdi, qword ptr [rsp + 5152]
                        mov              rsi, qword ptr [rsp + 5160]
                        mov              rdx, qword ptr [rsp + 5168]
                        mov              rcx, qword ptr [rsp + 5176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n1646_var_α
                        mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1627_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1627_proc_value_α:     mov              r11, 718
                        mov              rdi, qword ptr [rip + .Lx1833_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx;         jmp   n1628_lit_string_α
.Lx1833_0:              .quad            .Lx1833_0_s
.Lx1833_0_s:            .string          "listtest"
#-----------------------------------------------------------------------------------------------------------------------
n1628_lit_string_α:     mov              r11, 719
                        mov              qword ptr [rsp + 5200], 2            # result
                        mov              dword ptr [rsp + 5204], 5
                        mov              rax, qword ptr [rip + .Lx1834_0]
                        mov              qword ptr [rsp + 5208], rax;         jmp   n1629_proc_value_α
.Lx1834_0:              .quad            .Lx1834_0_s
.Lx1834_0_s:            .string          "gamma"
#-----------------------------------------------------------------------------------------------------------------------
n1629_proc_value_α:     mov              r11, 720
                        mov              rdi, qword ptr [rip + .Lx1836_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5216], rax
                        mov              qword ptr [rsp + 5224], rdx;         jmp   n1630_lit_integer_α
.Lx1836_0:              .quad            .Lx1836_0_s
.Lx1836_0_s:            .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n1630_lit_integer_α:    mov              r11, 721
                        mov              qword ptr [rsp + 5232], 3            # result
                        mov              rax, qword ptr [rip + .Lx1837_0]
                        mov              qword ptr [rsp + 5240], rax;         jmp   n1631_make_list_α
.Lx1837_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1631_make_list_α:      mov              r11, 722
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 3808]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 3816]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 3824]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 3832]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 1528], rax
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 1544], rax
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 4320]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 4328]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 5072]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 5080]
                        mov              qword ptr [rsp + 1880], rax
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 1960], rax
                        mov              rax, qword ptr [rsp + 5216]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 5224]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 1992], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 75
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n1632_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1632_assign_α:         mov              r11, 723
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 5280], rax
                        mov              qword ptr [rsp + 5288], rdx;         jmp   n1646_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1633_lit_integer_α:    mov              r11, 724
                        mov              qword ptr [rsp + 4880], 3            # result
                        mov              rax, qword ptr [rip + .Lx1841_0]
                        mov              qword ptr [rsp + 4888], rax;         jmp   n1634_lit_integer_α
.Lx1841_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1634_lit_integer_α:    mov              r11, 725
                        mov              qword ptr [rsp + 4896], 3            # result
                        mov              rax, qword ptr [rip + .Lx1842_0]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n1635_to_α
.Lx1842_0:              .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1635_to_α:             mov              r11, 726
                        mov              rdi, qword ptr [rsp + 4880]
                        mov              rsi, qword ptr [rsp + 4888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4880], 3
                        mov              qword ptr [rsp + 4888], rax
                        mov              rdi, qword ptr [rsp + 4896]
                        mov              rsi, qword ptr [rsp + 4904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4896], 3
                        mov              qword ptr [rsp + 4904], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 4864], rax
.Lx1844_0:              mov              rax, qword ptr [rsp + 4864]
                        mov              rcx, qword ptr [rsp + 4904]
                        cmp              rax, rcx;                            jg    n1637_cofail_α
                        mov              qword ptr [rsp + 4848], 3
                        mov              qword ptr [rsp + 4856], rax;         jmp   n1636_coret_α
n1635_to_β:             mov              r11, 726
                        inc              qword ptr [rsp + 4864];              jmp   .Lx1844_0
#-----------------------------------------------------------------------------------------------------------------------
n1636_coret_α:          mov              r11, 727
                        mov              rdi, qword ptr [rsp + 4848]
                        mov              rsi, qword ptr [rsp + 4856]
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_coret@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1635_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1637_cofail_α:         mov              r11, 728
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_cofail@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   messtest_ω
#-----------------------------------------------------------------------------------------------------------------------
n1638_disjunction_α:    mov              r11, 729
                        mov              qword ptr [rsp + 4240], 0
                        mov              qword ptr [rsp + 4248], 0
                        mov              dword ptr [rsp + 4256], 0;           jmp   n1641_lit_integer_α
n1638_disjunction_as:   mov              r11, 729
                        mov              eax, dword ptr [rsp + 4256]
                        cmp              eax, 0;                              jne   .Lx1850_0
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n1639_coret_α
.Lx1850_0:              cmp              eax, 1;                              jne   .Lx1850_1
                        mov              rax, qword ptr [rsp + 4288]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4296]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n1639_coret_α
.Lx1850_1:                                                                    jmp   n1639_coret_α
n1638_disjunction_β:    mov              r11, 729
                        mov              eax, dword ptr [rsp + 4256]
                        cmp              eax, 0;                              je    n1638_disjunction_af
                                                                              jmp   n1638_disjunction_af
n1638_disjunction_af:   mov              r11, 729
                        add              dword ptr [rsp + 4256], 1
                        mov              eax, dword ptr [rsp + 4256]
                        cmp              eax, 1;                              je    n1640_lit_integer_α
                                                                              jmp   n1670_cofail_α
#-----------------------------------------------------------------------------------------------------------------------
n1639_coret_α:          mov              r11, 730
                        mov              rdi, qword ptr [rsp + 4240]
                        mov              rsi, qword ptr [rsp + 4248]
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_coret@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1638_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1640_lit_integer_α:    mov              r11, 731
                        mov              qword ptr [rsp + 4288], 3            # result
                        mov              rax, qword ptr [rip + .Lx1853_0]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n1638_disjunction_as
n1640_lit_integer_β:    mov              r11, 731;                            jmp   n1638_disjunction_af
.Lx1853_0:              .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1641_lit_integer_α:    mov              r11, 732
                        mov              qword ptr [rsp + 4272], 3            # result
                        mov              rax, qword ptr [rip + .Lx1854_0]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n1638_disjunction_as
n1641_lit_integer_β:    mov              r11, 732;                            jmp   n1638_disjunction_af
.Lx1854_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1642_disjunction_α:    mov              r11, 733
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              dword ptr [rsp + 3136], 0;           jmp   n1645_lit_integer_α
n1642_disjunction_as:   mov              r11, 733
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 0;                              jne   .Lx1856_0
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n1643_coret_α
.Lx1856_0:              cmp              eax, 1;                              jne   .Lx1856_1
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n1643_coret_α
.Lx1856_1:                                                                    jmp   n1643_coret_α
n1642_disjunction_β:    mov              r11, 733
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 0;                              je    n1642_disjunction_af
                                                                              jmp   n1642_disjunction_af
n1642_disjunction_af:   mov              r11, 733
                        add              dword ptr [rsp + 3136], 1
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 1;                              je    n1644_lit_integer_α
                                                                              jmp   n1671_cofail_α
#-----------------------------------------------------------------------------------------------------------------------
n1643_coret_α:          mov              r11, 734
                        mov              rdi, qword ptr [rsp + 3120]
                        mov              rsi, qword ptr [rsp + 3128]
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_coret@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1642_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1644_lit_integer_α:    mov              r11, 735
                        mov              qword ptr [rsp + 3168], 3            # result
                        mov              rax, qword ptr [rip + .Lx1859_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n1642_disjunction_as
n1644_lit_integer_β:    mov              r11, 735;                            jmp   n1642_disjunction_af
.Lx1859_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1645_lit_integer_α:    mov              r11, 736
                        mov              qword ptr [rsp + 3152], 3            # result
                        mov              rax, qword ptr [rip + .Lx1860_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n1642_disjunction_as
n1645_lit_integer_β:    mov              r11, 736;                            jmp   n1642_disjunction_af
.Lx1860_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1646_var_α:            mov              r11, 737
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1647_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1647_var_α:            mov              r11, 738
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 776], rax;          jmp   n1648_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1648_call_builtin_icon_α:
                        mov              r11, 739
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn1866:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1866]
                        lea              rsi, [rsp + 704]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n1649_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1649_var_α
n1648_call_builtin_icon_β:
                        mov              r11, 739;                            jmp   n1649_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1649_var_α:            mov              r11, 740
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 680], rax;          jmp   n1650_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1650_call_builtin_icon_α:
                        mov              r11, 741
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn1870:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1870]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n1652_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1651_assign_α
n1650_call_builtin_icon_β:
                        mov              r11, 741;                            jmp   n1652_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1651_assign_α:         mov              r11, 742
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 5296], rax
                        mov              qword ptr [rsp + 5304], rdx;         jmp   n1652_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1652_var_α:            mov              r11, 743
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 504], rax;          jmp   n1653_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1653_var_α:            mov              r11, 744
                        mov              rax, qword ptr [rsp + 5296]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 5304]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1654_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1654_iterate_α:        mov              r11, 745
                        mov              qword ptr [rsp + 576], 0
.Lx1877_0:              mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              rax, 104;                            je    n1657_call_builtin_icon_α
                                                                              jmp   n1655_call_builtin_icon_α
n1654_iterate_β:        mov              r11, 745
                        inc              qword ptr [rsp + 576];               jmp   .Lx1877_0
#-----------------------------------------------------------------------------------------------------------------------
n1655_call_builtin_icon_α:
                        mov              r11, 746
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn1879:             .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1879]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262257
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n1654_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1656_call_builtin_icon_α
n1655_call_builtin_icon_β:
                        mov              r11, 746;                            jmp   n1654_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1656_call_builtin_icon_α:
                        mov              r11, 747
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn1881:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1881]
                        lea              rsi, [rsp + 448]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n1654_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1654_iterate_β
n1656_call_builtin_icon_β:
                        mov              r11, 747;                            jmp   n1654_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1657_call_builtin_icon_α:
                        mov              r11, 748
                        .section         .rodata
.Lrkfn1883:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1883]
                        lea              rsi, [rsp + 416]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n1658_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1658_var_α
n1657_call_builtin_icon_β:
                        mov              r11, 748;                            jmp   n1658_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1658_var_α:            mov              r11, 749
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 392], rax;          jmp   n1659_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1659_call_builtin_icon_α:
                        mov              r11, 750
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn1887:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1887]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n1663_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1660_iterate_α
n1659_call_builtin_icon_β:
                        mov              r11, 750;                            jmp   n1663_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1660_iterate_α:        mov              r11, 751
                        mov              qword ptr [rsp + 320], 0
.Lx1889_0:              mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              rax, 104;                            je    n1663_var_α
                                                                              jmp   n1661_call_builtin_icon_α
n1660_iterate_β:        mov              r11, 751
                        inc              qword ptr [rsp + 320];               jmp   .Lx1889_0
#-----------------------------------------------------------------------------------------------------------------------
n1661_call_builtin_icon_α:
                        mov              r11, 752
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn1891:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1891]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n1660_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1662_call_builtin_icon_α
n1661_call_builtin_icon_β:
                        mov              r11, 752;                            jmp   n1660_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1662_call_builtin_icon_α:
                        mov              r11, 753
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn1893:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1893]
                        lea              rsi, [rsp + 224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n1660_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1660_iterate_β
n1662_call_builtin_icon_β:
                        mov              r11, 753;                            jmp   n1660_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1663_var_α:            mov              r11, 754
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1664_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1664_lit_integer_α:    mov              r11, 755
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx1896_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n1665_call_proc_staged_α
.Lx1896_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1665_call_proc_staged_α:
                        mov              r11, 756
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 192]
                        call             wsortf_dcα;                          jmp   .Lx1898_2
.Lx1898_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1898_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx1898_29:             mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n1666_var_α
                                                                              jmp   n1666_var_α
n1665_call_proc_staged_β:
                        mov              r11, 756;                            jmp   n1666_var_α
.Lx1898_0:              .quad            .Lx1898_0_s
.Lx1898_0_s:            .string          "wsortf"
#-----------------------------------------------------------------------------------------------------------------------
n1666_var_α:            mov              r11, 757
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1667_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1667_lit_integer_α:    mov              r11, 758
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx1901_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1668_call_proc_staged_α
.Lx1901_0:              .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n1668_call_proc_staged_α:
                        mov              r11, 759
                        lea              rsi, [rsp + 80]
                        lea              rdx, [rsp + 96]
                        call             wsortf_dcα;                          jmp   .Lx1903_2
.Lx1903_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1903_29
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
.Lx1903_29:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n1669_return_α
                                                                              jmp   n1669_return_α
n1668_call_proc_staged_β:
                        mov              r11, 759;                            jmp   n1669_return_α
.Lx1903_0:              .quad            .Lx1903_0_s
.Lx1903_0_s:            .string          "wsortf"
#-----------------------------------------------------------------------------------------------------------------------
n1669_return_α:         mov              r11, 760
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   messtest_γ
#-----------------------------------------------------------------------------------------------------------------------
n1670_cofail_α:         mov              r11, 761
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_cofail@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   messtest_ω
#-----------------------------------------------------------------------------------------------------------------------
n1671_cofail_α:         mov              r11, 762
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_cofail@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   messtest_ω
#-----------------------------------------------------------------------------------------------------------------------
messtest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
messtest_β:
                                                                              jmp   messtest_ω
#-----------------------------------------------------------------------------------------------------------------------
messtest_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 5400]
                        add              rsp, 5424;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
messtest_ω:
                        mov              rcx, qword ptr [rsp + 5408]
                        add              rsp, 5424;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
messtest_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx1909_2]
                        lea              rdx, [rip + .Lx1909_3];              jmp   FN__messtest
.Lx1909_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx1909_3:              pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__wsortf:
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1224], rcx
                        mov              qword ptr [rsp + 1232], rdx
                        mov              rdi, rsp
                        add              rdi, 1104
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
wsortf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1910_call_builtin_icon_α:
                        mov              r11, 763
                        .section         .rodata
.Lrkfn1953:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1953]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n1911_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1911_var_α
n1910_call_builtin_icon_β:
                        mov              r11, 763;                            jmp   n1911_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1911_var_α:            mov              r11, 764
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n1912_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1912_var_α:            mov              r11, 765
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1913_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1913_call_builtin_icon_α:
                        mov              r11, 766
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn1959:             .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1959]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327842
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n1950_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1914_iterate_α
n1913_call_builtin_icon_β:
                        mov              r11, 766;                            jmp   n1950_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1914_iterate_α:        mov              r11, 767
                        mov              qword ptr [rsp + 80], 0
.Lx1961_0:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              rax, 104;                            je    n1950_return_α
                                                                              jmp   n1915_assign_α
n1914_iterate_β:        mov              r11, 767
                        inc              qword ptr [rsp + 80];                jmp   .Lx1961_0
#-----------------------------------------------------------------------------------------------------------------------
n1915_assign_α:         mov              r11, 768
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n1916_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1916_bound_α:          mov              r11, 769
                        mov              qword ptr [rsp + 192], rsp;          jmp   n1917_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1917_var_α:            mov              r11, 770
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n1918_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1918_call_builtin_icon_α:
                        mov              r11, 771
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        .section         .rodata
.Lrkfn1968:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1968]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n1920_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1919_assign_α
n1918_call_builtin_icon_β:
                        mov              r11, 771;                            jmp   n1920_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1919_assign_α:         mov              r11, 772
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n1920_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1920_disjunction_α:    mov              r11, 773
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n1921_var_α
n1920_disjunction_as:   mov              r11, 773
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx1971_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax;          jmp   n1944_var_α
.Lx1971_0:                                                                    jmp   n1944_var_α
n1920_disjunction_β:    mov              r11, 773
                        mov              eax, dword ptr [rsp + 336];          jmp   n1944_var_α
n1920_disjunction_af:   mov              r11, 773
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336];          jmp   n1944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1921_var_α:            mov              r11, 774
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n1922_scan_enter_α
n1921_var_β:            mov              r11, 774;                            jmp   n1920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1922_scan_enter_α:     mov              r11, 775
                        mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
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
                        mov              r14, 0;                              jmp   n1923_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1923_disjunction_α:    mov              r11, 776
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              dword ptr [rsp + 944], 0;            jmp   n1949_lit_string_α
n1923_disjunction_as:   mov              r11, 776
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 0;                              jne   .Lx1977_0
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax;          jmp   n1924_scan_match_α
.Lx1977_0:              cmp              eax, 1;                              jne   .Lx1977_1
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax;          jmp   n1924_scan_match_α
.Lx1977_1:                                                                    jmp   n1924_scan_match_α
n1923_disjunction_β:    mov              r11, 776
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 0;                              je    n1923_disjunction_af
                                                                              jmp   n1923_disjunction_af
n1923_disjunction_af:   mov              r11, 776
                        add              dword ptr [rsp + 944], 1
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 1;                              je    n1948_lit_string_α
                                                                              jmp   n1951_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1924_scan_match_α:     mov              r11, 777
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        push             r12
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_needle@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r12
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, rdx;                            jl    n1923_disjunction_β
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, qword ptr [rsp + 920]
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
                        test             eax, eax;                            jne   n1923_disjunction_β
                        mov              qword ptr [rsp + 896], 3
                        mov              rax, r14
                        mov              rcx, qword ptr [rsp + 920]
                        add              rax, rcx
                        add              rax, 1
                        mov              qword ptr [rsp + 904], rax;          jmp   n1925_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n1925_scan_tab_α:       mov              r11, 778
                        mov              rax, qword ptr [rsp + 904]
                        cmp              rax, 1;                              jge   .Lx1981_0
                        add              rax, r15
                        add              rax, 1
.Lx1981_0:              cmp              rax, 1;                              jl    n1923_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n1923_disjunction_β
                        mov              qword ptr [rsp + 880], r14
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
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n1926_scan_α
n1925_scan_tab_β:       mov              r11, 778
                        mov              r14, qword ptr [rsp + 880];          jmp   n1923_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1926_scan_α:           mov              r11, 779
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 800]
                        mov              r14, qword ptr [rsp + 808]
                        mov              r15, qword ptr [rsp + 816];          jmp   n1927_var_α
n1926_scan_β:           mov              r11, 779;                            jmp   n1920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1927_var_α:            mov              r11, 780
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 776], rax;          jmp   n1928_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1928_scan_enter_α:     mov              r11, 781
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
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
                        mov              r14, 0;                              jmp   n1929_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1929_lit_string_α:     mov              r11, 782
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 18
                        mov              rax, qword ptr [rip + .Lx1988_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1930_scan_match_α
.Lx1988_0:              .quad            .Lx1988_0_s
.Lx1988_0_s:            .string          "record constructor"
#-----------------------------------------------------------------------------------------------------------------------
n1930_scan_match_α:     mov              r11, 783
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 18;                             jl    n1933_scan_α
                        mov              rdi, qword ptr [rip + .Lx1990_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 18
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
                        test             eax, eax;                            jne   n1933_scan_α
                        mov              qword ptr [rsp + 720], 3
                        mov              rax, r14
                        add              rax, 19
                        mov              qword ptr [rsp + 728], rax;          jmp   n1931_scan_tab_α
.Lx1990_0:              .quad            .Lx1990_0_s
.Lx1990_0_s:            .string          "record constructor"
#-----------------------------------------------------------------------------------------------------------------------
n1931_scan_tab_α:       mov              r11, 784
                        mov              rax, qword ptr [rsp + 728]
                        cmp              rax, 1;                              jge   .Lx1992_0
                        add              rax, r15
                        add              rax, 1
.Lx1992_0:              cmp              rax, 1;                              jl    n1933_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n1933_scan_α
                        mov              qword ptr [rsp + 704], r14
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
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n1932_scan_α
n1931_scan_tab_β:       mov              r11, 784
                        mov              r14, qword ptr [rsp + 704];          jmp   n1933_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n1932_scan_α:           mov              r11, 785
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 624]
                        mov              r14, qword ptr [rsp + 632]
                        mov              r15, qword ptr [rsp + 640];          jmp   n1926_scan_β
n1932_scan_β:           mov              r11, 785;                            jmp   n1934_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1933_scan_α:           mov              r11, 786
                        lea              rdi, [rsp + 624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 624]
                        mov              r14, qword ptr [rsp + 632]
                        mov              r15, qword ptr [rsp + 640];          jmp   n1934_var_α
n1933_scan_β:           mov              r11, 786;                            jmp   n1934_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1934_var_α:            mov              r11, 787
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0;            jmp   n1935_conjunction_α
n1934_var_β:            mov              r11, 787;                            jmp   n1926_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n1935_conjunction_α:    mov              r11, 788
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax;          jmp   n1936_lit_string_α
n1935_conjunction_β:    mov              r11, 788;                            jmp   n1920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1936_lit_string_α:     mov              r11, 789
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 4
                        mov              rax, qword ptr [rip + .Lx1999_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n1937_var_ref_α
.Lx1999_0:              .quad            .Lx1999_0_s
.Lx1999_0_s:            .string          "key="
#-----------------------------------------------------------------------------------------------------------------------
n1937_var_ref_α:        mov              r11, 790
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n1938_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1938_var_α:            mov              r11, 791
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 520], rax;          jmp   n1939_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1939_subscript_α:      mov              r11, 792
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
                        cmp              al, 104;                             je    n1944_var_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n1940_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1940_deref_α:          mov              r11, 793
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1944_var_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n1941_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1941_call_builtin_icon_α:
                        mov              r11, 794
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn2007:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2007]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n1944_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1942_lit_string_α
n1941_call_builtin_icon_β:
                        mov              r11, 794;                            jmp   n1944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1942_lit_string_α:     mov              r11, 795
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx2008_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1943_call_builtin_icon_α
.Lx2008_0:              .quad            .Lx2008_0_s
.Lx2008_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1943_call_builtin_icon_α:
                        mov              r11, 796
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn2010:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2010]
                        lea              rsi, [rsp + 368]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n1944_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1920_disjunction_as
n1943_call_builtin_icon_β:
                        mov              r11, 796;                            jmp   n1944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1944_var_α:            mov              r11, 797
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1945_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1945_call_builtin_icon_α:
                        mov              r11, 798
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn2014:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2014]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n1947_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1946_conjunction_α
n1945_call_builtin_icon_β:
                        mov              r11, 798;                            jmp   n1947_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1946_conjunction_α:    mov              r11, 799
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1947_unmark_α
n1946_conjunction_β:    mov              r11, 799;                            jmp   n1947_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1947_unmark_α:         mov              r11, 800
                        mov              rsp, qword ptr [rsp + 192];          jmp   n1914_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1948_lit_string_α:     mov              r11, 801
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 6
                        mov              rax, qword ptr [rip + .Lx2018_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n1923_disjunction_as
n1948_lit_string_β:     mov              r11, 801;                            jmp   n1923_disjunction_af
.Lx2018_0:              .quad            .Lx2018_0_s
.Lx2018_0_s:            .string          "record"
#-----------------------------------------------------------------------------------------------------------------------
n1949_lit_string_α:     mov              r11, 802
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 4
                        mov              rax, qword ptr [rip + .Lx2019_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n1923_disjunction_as
n1949_lit_string_β:     mov              r11, 802;                            jmp   n1923_disjunction_af
.Lx2019_0:              .quad            .Lx2019_0_s
.Lx2019_0_s:            .string          "list"
#-----------------------------------------------------------------------------------------------------------------------
n1950_return_α:         mov              r11, 803
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   wsortf_γ
#-----------------------------------------------------------------------------------------------------------------------
n1951_scan_α:           mov              r11, 804
                        lea              rdi, [rsp + 800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 800]
                        mov              r14, qword ptr [rsp + 808]
                        mov              r15, qword ptr [rsp + 816];          jmp   n1920_disjunction_af
n1951_scan_β:           mov              r11, 804;                            jmp   n1920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
wsortf_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
wsortf_β:
                                                                              jmp   wsortf_ω
#-----------------------------------------------------------------------------------------------------------------------
wsortf_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1224]
                        add              rsp, 1248;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wsortf_ω:
                        mov              rcx, qword ptr [rsp + 1232]
                        add              rsp, 1248;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wsortf_dcα:
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
                        lea              rcx, [rip + .Lx2023_2]
                        lea              rdx, [rip + .Lx2023_3];              jmp   FN__wsortf
.Lx2023_2:              pop              r12
                        pop              r12;                                 jmp   r12
.Lx2023_3:              pop              r12
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
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n2024_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 805
                        call             listtest_dcα;                        jmp   .Lx2030_2
.Lx2030_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx2030_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx2030_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx2030_240
                        add              rsp, 16;                             jmp   n2025_call_proc_staged_α
.Lx2030_240:                                                                  jmp   n2025_call_proc_staged_α
n2024_call_proc_staged_β:
                        mov              r11, 805;                            jmp   n2025_call_proc_staged_α
.Lx2030_0:              .quad            .Lx2030_0_s
.Lx2030_0_s:            .string          "listtest"
#-----------------------------------------------------------------------------------------------------------------------
n2025_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 806
                        call             rectest_dcα;                         jmp   .Lx2032_2
.Lx2032_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx2032_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx2032_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx2032_240
                        add              rsp, 16;                             jmp   n2026_call_proc_staged_α
.Lx2032_240:                                                                  jmp   n2026_call_proc_staged_α
n2025_call_proc_staged_β:
                        mov              r11, 806;                            jmp   n2026_call_proc_staged_α
.Lx2032_0:              .quad            .Lx2032_0_s
.Lx2032_0_s:            .string          "rectest"
#-----------------------------------------------------------------------------------------------------------------------
n2026_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 807
                        call             tbltest_dcα;                         jmp   .Lx2034_2
.Lx2034_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx2034_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx2034_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx2034_240
                        add              rsp, 16;                             jmp   n2027_call_proc_staged_α
.Lx2034_240:                                                                  jmp   n2027_call_proc_staged_α
n2026_call_proc_staged_β:
                        mov              r11, 807;                            jmp   n2027_call_proc_staged_α
.Lx2034_0:              .quad            .Lx2034_0_s
.Lx2034_0_s:            .string          "tbltest"
#-----------------------------------------------------------------------------------------------------------------------
n2027_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 808
                        call             copytest_dcα;                        jmp   .Lx2036_2
.Lx2036_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx2036_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx2036_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx2036_240
                        add              rsp, 16;                             jmp   n2028_call_proc_staged_α
.Lx2036_240:                                                                  jmp   n2028_call_proc_staged_α
n2027_call_proc_staged_β:
                        mov              r11, 808;                            jmp   n2028_call_proc_staged_α
.Lx2036_0:              .quad            .Lx2036_0_s
.Lx2036_0_s:            .string          "copytest"
#-----------------------------------------------------------------------------------------------------------------------
n2028_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 809
                        call             messtest_dcα;                        jmp   .Lx2038_2
.Lx2038_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx2038_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx2038_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx2038_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   main_ω
.Lx2038_240:            add              rsp, 80;                             jmp   main_γ
n2028_call_proc_staged_β:
                        mov              r11, 809;                            jmp   main_ω
.Lx2038_0:              .quad            .Lx2038_0_s
.Lx2038_0_s:            .string          "messtest"
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
.Lclassspec0:           .string          "r0()"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "r1(a)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec2:           .string          "r2(a,b)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec2]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec3:           .string          "r5(a,b,c,d,e)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec3]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "listtest"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__listtest
                        .quad            listtest_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1408
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "rectest"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__rectest
                        .quad            rectest_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1952
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "tbltest"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__tbltest
                        .quad            tbltest_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4160
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "randval"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__randval
                        .quad            randval_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            928
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "check"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__check
                        .quad            check_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            2304
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "wlist"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__wlist
                        .quad            wlist_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            368
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "copytest"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__copytest
                        .quad            copytest_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4560
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "messtest"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__messtest
                        .quad            messtest_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            5328
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "wsortf"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__wsortf
                        .quad            wsortf_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1136
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
