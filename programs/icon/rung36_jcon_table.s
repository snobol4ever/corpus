                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__tdump:
                        sub              rsp, 1648
                        mov              qword ptr [rsp + 1624], rcx
                        mov              qword ptr [rsp + 1632], rdx
                        mov              rdi, rsp
                        add              rdi, 1536
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
tdump_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n2_call_builtin_icon_α
.Lx55_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              r11, 3
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn57:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n10_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_lit_string_α
n2_call_builtin_icon_β: mov              r11, 3;                              jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 2
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n4_var_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          " :"
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n5_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_unop_α:              mov              r11, 6
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
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n7_call_builtin_icon_α
.Lx62_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              r11, 8
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn64:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n10_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_lit_string_α
n7_call_builtin_icon_β: mov              r11, 8;                              jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 2
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n9_call_builtin_icon_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          " :"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              r11, 10
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn67:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n10_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_disjunction_α
n9_call_builtin_icon_β: mov              r11, 10;                             jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:      mov              r11, 11
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n50_keyword_icon_α
n10_disjunction_as:     mov              r11, 11
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx69_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx69_0:                cmp              eax, 1;                              jne   .Lx69_1
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx69_1:                cmp              eax, 2;                              jne   .Lx69_2
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx69_2:                                                                      jmp   n11_assign_α
n10_disjunction_β:      mov              r11, 11
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n10_disjunction_af
                        cmp              eax, 1;                              je    n49_to_β
                                                                              jmp   n46_iterate_β
n10_disjunction_af:     mov              r11, 11
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n47_lit_integer_α
                        cmp              eax, 2;                              je    n45_lit_string_α
                                                                              jmp   n51_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n12_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n12_bound_α:            mov              r11, 13
                        mov              qword ptr [rsp + 272], rsp;          jmp   n13_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:      mov              r11, 14
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n24_var_α
n13_disjunction_as:     mov              r11, 14
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx74_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax;          jmp   n23_unmark_α
.Lx74_0:                cmp              eax, 1;                              jne   .Lx74_1
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 328], rax;          jmp   n23_unmark_α
.Lx74_1:                                                                      jmp   n23_unmark_α
n13_disjunction_β:      mov              r11, 14
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              je    n38_disjunction_β
                                                                              jmp   n22_goto_β
n13_disjunction_af:     mov              r11, 14
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 1;                              je    n14_var_α
                                                                              jmp   n23_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n15_var_α
n14_var_β:              mov              r11, 15;                             jmp   n23_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn80:               .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn80]
                        lea              rsi, [rsp + 1120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n23_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_lit_string_α
n16_call_builtin_icon_β:
                        mov              r11, 17;                             jmp   n23_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 8
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n18_var_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          " MEMBER:"
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n19_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn85:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn85]
                        lea              rsi, [rsp + 1056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n23_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_call_builtin_icon_α
n19_call_builtin_icon_β:
                        mov              r11, 20;                             jmp   n23_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn87:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]
                        lea              rsi, [rsp + 976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n23_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_conjunction_α
n20_call_builtin_icon_β:
                        mov              r11, 21;                             jmp   n23_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n21_conjunction_α:      mov              r11, 22
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 952], rax;          jmp   n13_disjunction_as
n21_conjunction_β:      mov              r11, 22;                             jmp   n23_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n22_goto_α:             mov              r11, 23;                             jmp   n23_unmark_α
n22_goto_β:             mov              r11, 23;                             jmp   n23_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n23_unmark_α:           mov              r11, 24
                        mov              rsp, qword ptr [rsp + 272];          jmp   n10_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 888], rax;          jmp   n25_var_α
n24_var_β:              mov              r11, 25;                             jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              r11, 26
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 936], rax;          jmp   n26_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n26_iterate_α:          mov              r11, 27
                        mov              qword ptr [rsp + 912], 0
.Lx97_0:                mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_key_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              rax, 104;                            je    n13_disjunction_af
                                                                              jmp   n27_binop_test_α
n26_iterate_β:          mov              r11, 27
                        inc              qword ptr [rsp + 912];               jmp   .Lx97_0
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_test_α:       mov              r11, 28
                        mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              r8d, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n26_iterate_β
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax;          jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 2
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n29_var_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          " ["
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 728], rax;          jmp   n30_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn103:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n38_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_lit_string_α
n30_call_builtin_icon_β:
                        mov              r11, 31;                             jmp   n38_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n32_var_ref_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 824], rax;          jmp   n34_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n34_subscript_α:        mov              r11, 35
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n38_disjunction_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n35_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_deref_α:            mov              r11, 36
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n38_disjunction_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n36_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              r11, 37
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn112:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rsp + 768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n38_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_call_builtin_icon_α
n36_call_builtin_icon_β:
                        mov              r11, 37;                             jmp   n38_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn114:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]
                        lea              rsi, [rsp + 576]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n38_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_disjunction_α
n37_call_builtin_icon_β:
                        mov              r11, 38;                             jmp   n38_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n38_disjunction_α:      mov              r11, 39
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n42_var_α
n38_disjunction_as:     mov              r11, 39
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Lx116_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n39_conjunction_α
.Lx116_0:               cmp              eax, 1;                              jne   .Lx116_1
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 376], rax;          jmp   n39_conjunction_α
.Lx116_1:                                                                     jmp   n39_conjunction_α
n38_disjunction_β:      mov              r11, 39
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n38_disjunction_af
                                                                              jmp   n38_disjunction_af
n38_disjunction_af:     mov              r11, 39
                        add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n40_lit_string_α
                                                                              jmp   n23_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n39_conjunction_α:      mov              r11, 40
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax;          jmp   n13_disjunction_as
n39_conjunction_β:      mov              r11, 40;                             jmp   n23_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 10
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n41_call_builtin_icon_α
n40_lit_string_β:       mov              r11, 41;                             jmp   n38_disjunction_af
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          ":NONMEMBER"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn120:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n38_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_disjunction_as
n41_call_builtin_icon_β:
                        mov              r11, 42;                             jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 472], rax;          jmp   n43_var_α
n42_var_β:              mov              r11, 43;                             jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              mov              r11, 44
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 488], rax;          jmp   n44_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn126:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rsp + 416]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n38_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_disjunction_as
n44_call_builtin_icon_β:
                        mov              r11, 45;                             jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 5
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n46_iterate_α
n45_lit_string_β:       mov              r11, 46;                             jmp   n10_disjunction_af
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n46_iterate_α:          mov              r11, 47
                        mov              qword ptr [rsp + 240], 0
.Lx129_0:               mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              rax, 104;                            je    n10_disjunction_af
                                                                              jmp   n10_disjunction_as
n46_iterate_β:          mov              r11, 47
                        inc              qword ptr [rsp + 240];               jmp   .Lx129_0
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n48_lit_integer_α
n47_lit_integer_β:      mov              r11, 48;                             jmp   n10_disjunction_af
.Lx130_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n49_to_α
.Lx131_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n49_to_α:               mov              r11, 50
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 176], rax
.Lx133_0:               mov              rax, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 216]
                        cmp              rax, rcx;                            jg    n10_disjunction_af
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax;          jmp   n10_disjunction_as
n49_to_β:               mov              r11, 50
                        inc              qword ptr [rsp + 176];               jmp   .Lx133_0
#-----------------------------------------------------------------------------------------------------------------------
n50_keyword_icon_α:     mov              r11, 51
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0;            jmp   n10_disjunction_as
n50_keyword_icon_β:     mov              r11, 51;                             jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              r11, 52
                        .section         .rodata
.Lrkfn136:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn136]
                        lea              rsi, [rsp + 64]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n52_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_return_α
n51_call_builtin_icon_β:
                        mov              r11, 52;                             jmp   n52_return_α
#-----------------------------------------------------------------------------------------------------------------------
n52_return_α:           mov              r11, 53
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   tdump_γ
#-----------------------------------------------------------------------------------------------------------------------
tdump_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tdump_β:
                                                                              jmp   tdump_ω
#-----------------------------------------------------------------------------------------------------------------------
tdump_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1624]
                        add              rsp, 1648;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tdump_ω:
                        mov              rcx, qword ptr [rsp + 1632]
                        add              rsp, 1648;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tdump_dcα:
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
                        lea              rcx, [rip + .Lx138_2]
                        lea              rdx, [rip + .Lx138_3];               jmp   FN__tdump
.Lx138_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx138_3:               pop              r12
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 8608
                        mov              qword ptr [rsp + 8584], rcx
                        mov              qword ptr [rsp + 8592], rdx
                        mov              rdi, rsp
                        add              rdi, 8464
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_icon_α:
                        mov              r11, 54
                        .section         .rodata
.Lrkfn446:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]
                        lea              rsi, [rsp + 8448]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8432], rax
                        mov              qword ptr [rsp + 8440], rdx
                        cmp              al, 104;                             je    n141_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_assign_α
n139_call_builtin_icon_β:
                        mov              r11, 54;                             jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              r11, 55
                        mov              rax, qword ptr [rsp + 8432]
                        mov              rdx, qword ptr [rsp + 8440]
                        mov              qword ptr [rsp + 8480], rax
                        mov              qword ptr [rsp + 8488], rdx;         jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 56
                        mov              qword ptr [rsp + 8400], 2            # result
                        mov              dword ptr [rsp + 8404], 7
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 8408], rax;         jmp   n142_var_α
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "initial"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             mov              r11, 57
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 8416], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 8424], rax;         jmp   n143_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        mov              r11, 58
                        lea              rsi, [rsp + 8400]
                        lea              rdx, [rsp + 8416]
                        call             tdump_dcα;                           jmp   .Lx452_2
.Lx452_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx452_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 8336], rax
                        mov              qword ptr [rsp + 8344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8336]
                        mov              rdx, qword ptr [rsp + 8344]
.Lx452_29:              mov              qword ptr [rsp + 8336], rax
                        mov              qword ptr [rsp + 8344], rdx
                        cmp              al, 104;                             je    n144_lit_string_α
                                                                              jmp   n144_lit_string_α
n143_call_proc_staged_β:
                        mov              r11, 58;                             jmp   n144_lit_string_α
.Lx452_0:               .quad            .Lx452_0_s
.Lx452_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:      mov              r11, 59
                        mov              qword ptr [rsp + 8224], 2            # result
                        mov              dword ptr [rsp + 8228], 12
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 8232], rax;         jmp   n145_var_ref_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "should fail "
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 8304], rax
                        mov              qword ptr [rsp + 8312], rdx;         jmp   n146_random_α
#-----------------------------------------------------------------------------------------------------------------------
n146_random_α:          mov              r11, 61
                        mov              rdi, qword ptr [rsp + 8304]
                        mov              rsi, qword ptr [rsp + 8312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n150_lit_string_α
                        mov              qword ptr [rsp + 8288], rax
                        mov              qword ptr [rsp + 8296], rdx;         jmp   n147_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_deref_α:           mov              r11, 62
                        mov              rdi, qword ptr [rsp + 8288]
                        mov              rsi, qword ptr [rsp + 8296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n150_lit_string_α
                        mov              qword ptr [rsp + 8320], rax
                        mov              qword ptr [rsp + 8328], rdx;         jmp   n148_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_icon_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 8320]
                        mov              qword ptr [rsp + 8256], rax
                        mov              rax, qword ptr [rsp + 8328]
                        mov              qword ptr [rsp + 8264], rax
                        .section         .rodata
.Lrkfn459:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn459]
                        lea              rsi, [rsp + 8256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8240], rax
                        mov              qword ptr [rsp + 8248], rdx
                        cmp              al, 104;                             je    n150_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n149_call_builtin_icon_α
n148_call_builtin_icon_β:
                        mov              r11, 63;                             jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_icon_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 8240]
                        mov              qword ptr [rsp + 8192], rax
                        mov              rax, qword ptr [rsp + 8248]
                        mov              qword ptr [rsp + 8200], rax
                        mov              rax, qword ptr [rsp + 8224]
                        mov              qword ptr [rsp + 8176], rax
                        mov              rax, qword ptr [rsp + 8232]
                        mov              qword ptr [rsp + 8184], rax
                        .section         .rodata
.Lrkfn461:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn461]
                        lea              rsi, [rsp + 8176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8160], rax
                        mov              qword ptr [rsp + 8168], rdx
                        cmp              al, 104;                             je    n150_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_lit_string_α
n149_call_builtin_icon_β:
                        mov              r11, 64;                             jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              r11, 65
                        mov              qword ptr [rsp + 8032], 2            # result
                        mov              dword ptr [rsp + 8036], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 8040], rax;         jmp   n151_disjunction_α
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n151_disjunction_α:     mov              r11, 66
                        mov              qword ptr [rsp + 8048], 0
                        mov              qword ptr [rsp + 8056], 0
                        mov              dword ptr [rsp + 8064], 0;           jmp   n156_lit_string_α
n151_disjunction_as:    mov              r11, 66
                        mov              eax, dword ptr [rsp + 8064]
                        cmp              eax, 0;                              jne   .Lx464_0
                        mov              rax, qword ptr [rsp + 8080]
                        mov              qword ptr [rsp + 8048], rax
                        mov              rax, qword ptr [rsp + 8088]
                        mov              qword ptr [rsp + 8056], rax;         jmp   n152_call_builtin_icon_α
.Lx464_0:               cmp              eax, 1;                              jne   .Lx464_1
                        mov              rax, qword ptr [rsp + 8096]
                        mov              qword ptr [rsp + 8048], rax
                        mov              rax, qword ptr [rsp + 8104]
                        mov              qword ptr [rsp + 8056], rax;         jmp   n152_call_builtin_icon_α
.Lx464_1:               cmp              eax, 2;                              jne   .Lx464_2
                        mov              rax, qword ptr [rsp + 8144]
                        mov              qword ptr [rsp + 8048], rax
                        mov              rax, qword ptr [rsp + 8152]
                        mov              qword ptr [rsp + 8056], rax;         jmp   n152_call_builtin_icon_α
.Lx464_2:                                                                     jmp   n152_call_builtin_icon_α
n151_disjunction_β:     mov              r11, 66
                        mov              eax, dword ptr [rsp + 8064]
                        cmp              eax, 0;                              je    n151_disjunction_af
                        cmp              eax, 1;                              je    n155_iterate_β
                                                                              jmp   n151_disjunction_af
n151_disjunction_af:    mov              r11, 66
                        add              dword ptr [rsp + 8064], 1
                        mov              eax, dword ptr [rsp + 8064]
                        cmp              eax, 1;                              je    n154_var_α
                        cmp              eax, 2;                              je    n153_lit_string_α
                                                                              jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        mov              r11, 67
                        mov              rax, qword ptr [rsp + 8048]
                        mov              qword ptr [rsp + 8000], rax
                        mov              rax, qword ptr [rsp + 8056]
                        mov              qword ptr [rsp + 8008], rax
                        mov              rax, qword ptr [rsp + 8032]
                        mov              qword ptr [rsp + 7984], rax
                        mov              rax, qword ptr [rsp + 8040]
                        mov              qword ptr [rsp + 7992], rax
                        .section         .rodata
.Lrkfn466:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn466]
                        lea              rsi, [rsp + 7984]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7968], rax
                        mov              qword ptr [rsp + 7976], rdx
                        cmp              al, 104;                             je    n151_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_disjunction_β
n152_call_builtin_icon_β:
                        mov              r11, 67;                             jmp   n151_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      mov              r11, 68
                        mov              qword ptr [rsp + 8144], 2            # result
                        mov              dword ptr [rsp + 8148], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 8152], rax;         jmp   n151_disjunction_as
n153_lit_string_β:      mov              r11, 68;                             jmp   n151_disjunction_af
.Lx467_0:               .quad            .Lx467_0_s
.Lx467_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             mov              r11, 69
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 8128], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 8136], rax;         jmp   n155_iterate_α
n154_var_β:             mov              r11, 69;                             jmp   n151_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n155_iterate_α:         mov              r11, 70
                        mov              qword ptr [rsp + 8112], 0
.Lx471_0:               mov              rdi, qword ptr [rsp + 8128]
                        mov              rsi, qword ptr [rsp + 8136]
                        mov              rdx, qword ptr [rsp + 8112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8096], rax
                        mov              qword ptr [rsp + 8104], rdx
                        cmp              rax, 104;                            je    n151_disjunction_af
                                                                              jmp   n151_disjunction_as
n155_iterate_β:         mov              r11, 70
                        inc              qword ptr [rsp + 8112];              jmp   .Lx471_0
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              r11, 71
                        mov              qword ptr [rsp + 8080], 2            # result
                        mov              dword ptr [rsp + 8084], 2
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 8088], rax;         jmp   n151_disjunction_as
n156_lit_string_β:      mov              r11, 71;                             jmp   n151_disjunction_af
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          ">>"
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 7888], rax
                        mov              qword ptr [rsp + 7896], rdx;         jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     mov              r11, 73
                        mov              qword ptr [rsp + 7904], 3            # result
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 7912], rax;         jmp   n159_subscript_α
.Lx475_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n159_subscript_α:       mov              r11, 74
                        mov              rdi, qword ptr [rsp + 7888]
                        mov              rsi, qword ptr [rsp + 7896]
                        mov              rdx, qword ptr [rsp + 7904]
                        mov              rcx, qword ptr [rsp + 7912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n162_lit_string_α
                        mov              qword ptr [rsp + 7920], rax
                        mov              qword ptr [rsp + 7928], rdx;         jmp   n160_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     mov              r11, 75
                        mov              qword ptr [rsp + 7952], 3            # result
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 7960], rax;         jmp   n161_assign_var_α
.Lx477_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_var_α:      mov              r11, 76
                        mov              rdi, qword ptr [rsp + 7920]
                        mov              rsi, qword ptr [rsp + 7928]
                        mov              rdx, qword ptr [rsp + 7952]
                        mov              rcx, qword ptr [rsp + 7960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n162_lit_string_α
                        mov              qword ptr [rsp + 7936], rax
                        mov              qword ptr [rsp + 7944], rdx;         jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 77
                        mov              qword ptr [rsp + 7664], 2            # result
                        mov              dword ptr [rsp + 7668], 1
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rsp + 7672], rax;         jmp   n163_disjunction_α
.Lx479_0:               .quad            .Lx479_0_s
.Lx479_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n163_disjunction_α:     mov              r11, 78
                        mov              qword ptr [rsp + 7680], 0
                        mov              qword ptr [rsp + 7688], 0
                        mov              dword ptr [rsp + 7696], 0;           jmp   n172_lit_string_α
n163_disjunction_as:    mov              r11, 78
                        mov              eax, dword ptr [rsp + 7696]
                        cmp              eax, 0;                              jne   .Lx481_0
                        mov              rax, qword ptr [rsp + 7712]
                        mov              qword ptr [rsp + 7680], rax
                        mov              rax, qword ptr [rsp + 7720]
                        mov              qword ptr [rsp + 7688], rax;         jmp   n164_call_builtin_icon_α
.Lx481_0:               cmp              eax, 1;                              jne   .Lx481_1
                        mov              rax, qword ptr [rsp + 7728]
                        mov              qword ptr [rsp + 7680], rax
                        mov              rax, qword ptr [rsp + 7736]
                        mov              qword ptr [rsp + 7688], rax;         jmp   n164_call_builtin_icon_α
.Lx481_1:               cmp              eax, 2;                              jne   .Lx481_2
                        mov              rax, qword ptr [rsp + 7776]
                        mov              qword ptr [rsp + 7680], rax
                        mov              rax, qword ptr [rsp + 7784]
                        mov              qword ptr [rsp + 7688], rax;         jmp   n164_call_builtin_icon_α
.Lx481_2:               cmp              eax, 3;                              jne   .Lx481_3
                        mov              rax, qword ptr [rsp + 7872]
                        mov              qword ptr [rsp + 7680], rax
                        mov              rax, qword ptr [rsp + 7880]
                        mov              qword ptr [rsp + 7688], rax;         jmp   n164_call_builtin_icon_α
.Lx481_3:                                                                     jmp   n164_call_builtin_icon_α
n163_disjunction_β:     mov              r11, 78
                        mov              eax, dword ptr [rsp + 7696]
                        cmp              eax, 0;                              je    n163_disjunction_af
                        cmp              eax, 1;                              je    n171_iterate_β
                        cmp              eax, 2;                              je    n163_disjunction_af
                                                                              jmp   n163_disjunction_af
n163_disjunction_af:    mov              r11, 78
                        add              dword ptr [rsp + 7696], 1
                        mov              eax, dword ptr [rsp + 7696]
                        cmp              eax, 1;                              je    n170_var_α
                        cmp              eax, 2;                              je    n166_var_ref_α
                        cmp              eax, 3;                              je    n165_lit_string_α
                                                                              jmp   n173_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        mov              r11, 79
                        mov              rax, qword ptr [rsp + 7680]
                        mov              qword ptr [rsp + 7632], rax
                        mov              rax, qword ptr [rsp + 7688]
                        mov              qword ptr [rsp + 7640], rax
                        mov              rax, qword ptr [rsp + 7664]
                        mov              qword ptr [rsp + 7616], rax
                        mov              rax, qword ptr [rsp + 7672]
                        mov              qword ptr [rsp + 7624], rax
                        .section         .rodata
.Lrkfn483:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn483]
                        lea              rsi, [rsp + 7616]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7600], rax
                        mov              qword ptr [rsp + 7608], rdx
                        cmp              al, 104;                             je    n163_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_disjunction_β
n164_call_builtin_icon_β:
                        mov              r11, 79;                             jmp   n163_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rsp + 7872], 2            # result
                        mov              dword ptr [rsp + 7876], 1
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 7880], rax;         jmp   n163_disjunction_as
n165_lit_string_β:      mov              r11, 80;                             jmp   n163_disjunction_af
.Lx484_0:               .quad            .Lx484_0_s
.Lx484_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 7840], rax
                        mov              qword ptr [rsp + 7848], rdx;         jmp   n167_random_α
n166_var_ref_β:         mov              r11, 81;                             jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n167_random_α:          mov              r11, 82
                        mov              rdi, qword ptr [rsp + 7840]
                        mov              rsi, qword ptr [rsp + 7848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n163_disjunction_af
                        mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx;         jmp   n168_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n168_deref_α:           mov              r11, 83
                        mov              rdi, qword ptr [rsp + 7824]
                        mov              rsi, qword ptr [rsp + 7832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n163_disjunction_af
                        mov              qword ptr [rsp + 7856], rax
                        mov              qword ptr [rsp + 7864], rdx;         jmp   n169_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_icon_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 7856]
                        mov              qword ptr [rsp + 7792], rax
                        mov              rax, qword ptr [rsp + 7864]
                        mov              qword ptr [rsp + 7800], rax
                        .section         .rodata
.Lrkfn490:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn490]
                        lea              rsi, [rsp + 7792]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7776], rax
                        mov              qword ptr [rsp + 7784], rdx
                        cmp              al, 104;                             je    n163_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_disjunction_as
n169_call_builtin_icon_β:
                        mov              r11, 84;                             jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             mov              r11, 85
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 7760], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 7768], rax;         jmp   n171_iterate_α
n170_var_β:             mov              r11, 85;                             jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n171_iterate_α:         mov              r11, 86
                        mov              qword ptr [rsp + 7744], 0
.Lx494_0:               mov              rdi, qword ptr [rsp + 7760]
                        mov              rsi, qword ptr [rsp + 7768]
                        mov              rdx, qword ptr [rsp + 7744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7728], rax
                        mov              qword ptr [rsp + 7736], rdx
                        cmp              rax, 104;                            je    n163_disjunction_af
                                                                              jmp   n163_disjunction_as
n171_iterate_β:         mov              r11, 86
                        inc              qword ptr [rsp + 7744];              jmp   .Lx494_0
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 7712], 2            # result
                        mov              dword ptr [rsp + 7716], 2
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 7720], rax;         jmp   n163_disjunction_as
n172_lit_string_β:      mov              r11, 87;                             jmp   n163_disjunction_af
.Lx495_0:               .quad            .Lx495_0_s
.Lx495_0_s:             .string          ">>"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx;         jmp   n174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              r11, 89
                        mov              qword ptr [rsp + 7536], 3            # result
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 7544], rax;         jmp   n175_subscript_α
.Lx498_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n175_subscript_α:       mov              r11, 90
                        mov              rdi, qword ptr [rsp + 7520]
                        mov              rsi, qword ptr [rsp + 7528]
                        mov              rdx, qword ptr [rsp + 7536]
                        mov              rcx, qword ptr [rsp + 7544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n178_var_ref_α
                        mov              qword ptr [rsp + 7552], rax
                        mov              qword ptr [rsp + 7560], rdx;         jmp   n176_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rsp + 7584], 3            # result
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 7592], rax;         jmp   n177_assign_var_α
.Lx500_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_var_α:      mov              r11, 92
                        mov              rdi, qword ptr [rsp + 7552]
                        mov              rsi, qword ptr [rsp + 7560]
                        mov              rdx, qword ptr [rsp + 7584]
                        mov              rcx, qword ptr [rsp + 7592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n178_var_ref_α
                        mov              qword ptr [rsp + 7568], rax
                        mov              qword ptr [rsp + 7576], rdx;         jmp   n178_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 7440], rax
                        mov              qword ptr [rsp + 7448], rdx;         jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              r11, 94
                        mov              qword ptr [rsp + 7456], 2            # result
                        mov              dword ptr [rsp + 7460], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 7464], rax;         jmp   n180_subscript_α
.Lx504_0:               .quad            .Lx504_0_s
.Lx504_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n180_subscript_α:       mov              r11, 95
                        mov              rdi, qword ptr [rsp + 7440]
                        mov              rsi, qword ptr [rsp + 7448]
                        mov              rdx, qword ptr [rsp + 7456]
                        mov              rcx, qword ptr [rsp + 7464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n183_lit_string_α
                        mov              qword ptr [rsp + 7472], rax
                        mov              qword ptr [rsp + 7480], rdx;         jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rsp + 7504], 2            # result
                        mov              dword ptr [rsp + 7508], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 7512], rax;         jmp   n182_assign_var_α
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_var_α:      mov              r11, 97
                        mov              rdi, qword ptr [rsp + 7472]
                        mov              rsi, qword ptr [rsp + 7480]
                        mov              rdx, qword ptr [rsp + 7504]
                        mov              rcx, qword ptr [rsp + 7512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n183_lit_string_α
                        mov              qword ptr [rsp + 7488], rax
                        mov              qword ptr [rsp + 7496], rdx;         jmp   n183_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      mov              r11, 98
                        mov              qword ptr [rsp + 7408], 2            # result
                        mov              dword ptr [rsp + 7412], 6
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 7416], rax;         jmp   n184_var_α
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "+2+4+a"
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             mov              r11, 99
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 7424], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 7432], rax;         jmp   n185_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        mov              r11, 100
                        lea              rsi, [rsp + 7408]
                        lea              rdx, [rsp + 7424]
                        call             tdump_dcα;                           jmp   .Lx512_2
.Lx512_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx512_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7344], rax
                        mov              qword ptr [rsp + 7352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7344]
                        mov              rdx, qword ptr [rsp + 7352]
.Lx512_29:              mov              qword ptr [rsp + 7344], rax
                        mov              qword ptr [rsp + 7352], rdx
                        cmp              al, 104;                             je    n186_var_ref_α
                                                                              jmp   n186_var_ref_α
n185_call_proc_staged_β:
                        mov              r11, 100;                            jmp   n186_var_ref_α
.Lx512_0:               .quad            .Lx512_0_s
.Lx512_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx;         jmp   n187_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n187_iterate_α:         mov              r11, 102
                        mov              qword ptr [rsp + 7280], 0
.Lx516_0:               mov              rdi, qword ptr [rsp + 7296]
                        mov              rsi, qword ptr [rsp + 7304]
                        mov              rdx, qword ptr [rsp + 7280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7264], rax
                        mov              qword ptr [rsp + 7272], rdx
                        cmp              rax, 104;                            je    n190_lit_string_α
                                                                              jmp   n188_lit_integer_α
n187_iterate_β:         mov              r11, 102
                        inc              qword ptr [rsp + 7280];              jmp   .Lx516_0
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 7328], 3            # result
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 7336], rax;         jmp   n189_assign_var_α
.Lx517_0:               .quad            88
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_var_α:      mov              r11, 104
                        mov              rdi, qword ptr [rsp + 7264]
                        mov              rsi, qword ptr [rsp + 7272]
                        mov              rdx, qword ptr [rsp + 7328]
                        mov              rcx, qword ptr [rsp + 7336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n190_lit_string_α
                        mov              qword ptr [rsp + 7312], rax
                        mov              qword ptr [rsp + 7320], rdx;         jmp   n187_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 7232], 2            # result
                        mov              dword ptr [rsp + 7236], 5
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n191_var_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "!x=88"
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             mov              r11, 106
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 7248], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n192_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_proc_staged_α:
                        mov              r11, 107
                        lea              rsi, [rsp + 7232]
                        lea              rdx, [rsp + 7248]
                        call             tdump_dcα;                           jmp   .Lx523_2
.Lx523_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx523_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7168], rax
                        mov              qword ptr [rsp + 7176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7168]
                        mov              rdx, qword ptr [rsp + 7176]
.Lx523_29:              mov              qword ptr [rsp + 7168], rax
                        mov              qword ptr [rsp + 7176], rdx
                        cmp              al, 104;                             je    n193_var_ref_α
                                                                              jmp   n193_var_ref_α
n192_call_proc_staged_β:
                        mov              r11, 107;                            jmp   n193_var_ref_α
.Lx523_0:               .quad            .Lx523_0_s
.Lx523_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx;         jmp   n194_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             mov              r11, 109
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 7104], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 7112], rax;         jmp   n195_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n195_iterate_α:         mov              r11, 110
                        mov              qword ptr [rsp + 7088], 0
.Lx529_0:               mov              rdi, qword ptr [rsp + 7104]
                        mov              rsi, qword ptr [rsp + 7112]
                        mov              rdx, qword ptr [rsp + 7088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_key_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7072], rax
                        mov              qword ptr [rsp + 7080], rdx
                        cmp              rax, 104;                            je    n199_lit_string_α
                                                                              jmp   n196_subscript_α
n195_iterate_β:         mov              r11, 110
                        inc              qword ptr [rsp + 7088];              jmp   .Lx529_0
#-----------------------------------------------------------------------------------------------------------------------
n196_subscript_α:       mov              r11, 111
                        mov              rdi, qword ptr [rsp + 7056]
                        mov              rsi, qword ptr [rsp + 7064]
                        mov              rdx, qword ptr [rsp + 7072]
                        mov              rcx, qword ptr [rsp + 7080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n195_iterate_β
                        mov              qword ptr [rsp + 7120], rax
                        mov              qword ptr [rsp + 7128], rdx;         jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 7152], 3            # result
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 7160], rax;         jmp   n198_assign_var_α
.Lx531_0:               .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_var_α:      mov              r11, 113
                        mov              rdi, qword ptr [rsp + 7120]
                        mov              rsi, qword ptr [rsp + 7128]
                        mov              rdx, qword ptr [rsp + 7152]
                        mov              rcx, qword ptr [rsp + 7160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n199_lit_string_α
                        mov              qword ptr [rsp + 7136], rax
                        mov              qword ptr [rsp + 7144], rdx;         jmp   n195_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rsp + 7024], 2            # result
                        mov              dword ptr [rsp + 7028], 8
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 7032], rax;         jmp   n200_var_α
.Lx533_0:               .quad            .Lx533_0_s
.Lx533_0_s:             .string          "[all]=99"
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             mov              r11, 115
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 7040], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 7048], rax;         jmp   n201_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_proc_staged_α:
                        mov              r11, 116
                        lea              rsi, [rsp + 7024]
                        lea              rdx, [rsp + 7040]
                        call             tdump_dcα;                           jmp   .Lx537_2
.Lx537_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx537_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6960], rax
                        mov              qword ptr [rsp + 6968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6960]
                        mov              rdx, qword ptr [rsp + 6968]
.Lx537_29:              mov              qword ptr [rsp + 6960], rax
                        mov              qword ptr [rsp + 6968], rdx
                        cmp              al, 104;                             je    n202_var_α
                                                                              jmp   n202_var_α
n201_call_proc_staged_β:
                        mov              r11, 116;                            jmp   n202_var_α
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 6824], rax;         jmp   n203_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n203_iterate_α:         mov              r11, 118
                        mov              qword ptr [rsp + 6800], 0
.Lx541_0:               mov              rdi, qword ptr [rsp + 6816]
                        mov              rsi, qword ptr [rsp + 6824]
                        mov              rdx, qword ptr [rsp + 6800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_key_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6784], rax
                        mov              qword ptr [rsp + 6792], rdx
                        cmp              rax, 104;                            je    n212_lit_string_α
                                                                              jmp   n204_assign_α
n203_iterate_β:         mov              r11, 118
                        inc              qword ptr [rsp + 6800];              jmp   .Lx541_0
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              r11, 119
                        mov              rax, qword ptr [rsp + 6784]
                        mov              rdx, qword ptr [rsp + 6792]
                        mov              qword ptr [rsp + 8496], rax
                        mov              qword ptr [rsp + 8504], rdx;         jmp   n205_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n205_bound_α:           mov              r11, 120
                        mov              qword ptr [rsp + 6832], rsp;         jmp   n206_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 6880], rax
                        mov              qword ptr [rsp + 6888], rdx;         jmp   n207_var_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             mov              r11, 122
                        mov              rax, qword ptr [rsp + 8496]
                        mov              qword ptr [rsp + 6896], rax
                        mov              rax, qword ptr [rsp + 8504]
                        mov              qword ptr [rsp + 6904], rax;         jmp   n208_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n208_subscript_α:       mov              r11, 123
                        mov              rdi, qword ptr [rsp + 6880]
                        mov              rsi, qword ptr [rsp + 6888]
                        mov              rdx, qword ptr [rsp + 6896]
                        mov              rcx, qword ptr [rsp + 6904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n211_unmark_α
                        mov              qword ptr [rsp + 6912], rax
                        mov              qword ptr [rsp + 6920], rdx;         jmp   n209_var_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 8496]
                        mov              qword ptr [rsp + 6944], rax
                        mov              rax, qword ptr [rsp + 8504]
                        mov              qword ptr [rsp + 6952], rax;         jmp   n210_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_var_α:      mov              r11, 125
                        mov              rdi, qword ptr [rsp + 6912]
                        mov              rsi, qword ptr [rsp + 6920]
                        mov              rdx, qword ptr [rsp + 6944]
                        mov              rcx, qword ptr [rsp + 6952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n211_unmark_α
                        mov              qword ptr [rsp + 6928], rax
                        mov              qword ptr [rsp + 6936], rdx;         jmp   n211_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n211_unmark_α:          mov              r11, 126
                        mov              rsp, qword ptr [rsp + 6832];         jmp   n203_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 6752], 2            # result
                        mov              dword ptr [rsp + 6756], 6
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 6760], rax;         jmp   n213_var_α
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "x[k]=k"
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 6768], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 6776], rax;         jmp   n214_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_proc_staged_α:
                        mov              r11, 129
                        lea              rsi, [rsp + 6752]
                        lea              rdx, [rsp + 6768]
                        call             tdump_dcα;                           jmp   .Lx559_2
.Lx559_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx559_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6688]
                        mov              rdx, qword ptr [rsp + 6696]
.Lx559_29:              mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        cmp              al, 104;                             je    n215_disjunction_α
                                                                              jmp   n215_disjunction_α
n214_call_proc_staged_β:
                        mov              r11, 129;                            jmp   n215_disjunction_α
.Lx559_0:               .quad            .Lx559_0_s
.Lx559_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n215_disjunction_α:     mov              r11, 130
                        mov              qword ptr [rsp + 6512], 0
                        mov              qword ptr [rsp + 6520], 0
                        mov              dword ptr [rsp + 6528], 0;           jmp   n440_var_ref_α
n215_disjunction_as:    mov              r11, 130
                        mov              eax, dword ptr [rsp + 6528]
                        cmp              eax, 0;                              jne   .Lx561_0
                        mov              rax, qword ptr [rsp + 6544]
                        mov              qword ptr [rsp + 6512], rax
                        mov              rax, qword ptr [rsp + 6552]
                        mov              qword ptr [rsp + 6520], rax;         jmp   n216_disjunction_α
.Lx561_0:               cmp              eax, 1;                              jne   .Lx561_1
                        mov              rax, qword ptr [rsp + 6624]
                        mov              qword ptr [rsp + 6512], rax
                        mov              rax, qword ptr [rsp + 6632]
                        mov              qword ptr [rsp + 6520], rax;         jmp   n216_disjunction_α
.Lx561_1:                                                                     jmp   n216_disjunction_α
n215_disjunction_β:     mov              r11, 130
                        mov              eax, dword ptr [rsp + 6528]
                        cmp              eax, 0;                              je    n215_disjunction_af
                                                                              jmp   n215_disjunction_af
n215_disjunction_af:    mov              r11, 130
                        add              dword ptr [rsp + 6528], 1
                        mov              eax, dword ptr [rsp + 6528]
                        cmp              eax, 1;                              je    n438_lit_string_α
                                                                              jmp   n216_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n216_disjunction_α:     mov              r11, 131
                        mov              qword ptr [rsp + 6336], 0
                        mov              qword ptr [rsp + 6344], 0
                        mov              dword ptr [rsp + 6352], 0;           jmp   n433_var_ref_α
n216_disjunction_as:    mov              r11, 131
                        mov              eax, dword ptr [rsp + 6352]
                        cmp              eax, 0;                              jne   .Lx563_0
                        mov              rax, qword ptr [rsp + 6368]
                        mov              qword ptr [rsp + 6336], rax
                        mov              rax, qword ptr [rsp + 6376]
                        mov              qword ptr [rsp + 6344], rax;         jmp   n217_call_builtin_icon_α
.Lx563_0:               cmp              eax, 1;                              jne   .Lx563_1
                        mov              rax, qword ptr [rsp + 6448]
                        mov              qword ptr [rsp + 6336], rax
                        mov              rax, qword ptr [rsp + 6456]
                        mov              qword ptr [rsp + 6344], rax;         jmp   n217_call_builtin_icon_α
.Lx563_1:                                                                     jmp   n217_call_builtin_icon_α
n216_disjunction_β:     mov              r11, 131
                        mov              eax, dword ptr [rsp + 6352]
                        cmp              eax, 0;                              je    n216_disjunction_af
                                                                              jmp   n216_disjunction_af
n216_disjunction_af:    mov              r11, 131
                        add              dword ptr [rsp + 6352], 1
                        mov              eax, dword ptr [rsp + 6352]
                        cmp              eax, 1;                              je    n431_lit_string_α
                                                                              jmp   n217_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_icon_α:
                        mov              r11, 132
                        .section         .rodata
.Lrkfn565:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn565]
                        lea              rsi, [rsp + 6320]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6304], rax
                        mov              qword ptr [rsp + 6312], rdx
                        cmp              al, 104;                             je    n219_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n218_assign_α
n217_call_builtin_icon_β:
                        mov              r11, 132;                            jmp   n219_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              r11, 133
                        mov              rax, qword ptr [rsp + 6304]
                        mov              rdx, qword ptr [rsp + 6312]
                        mov              qword ptr [rsp + 8480], rax
                        mov              qword ptr [rsp + 8488], rdx;         jmp   n219_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n219_disjunction_α:     mov              r11, 134
                        mov              qword ptr [rsp + 6144], 0
                        mov              qword ptr [rsp + 6152], 0
                        mov              dword ptr [rsp + 6160], 0;           jmp   n220_var_α
n219_disjunction_as:    mov              r11, 134
                        mov              eax, dword ptr [rsp + 6160]
                        cmp              eax, 0;                              jne   .Lx568_0
                        mov              rax, qword ptr [rsp + 6176]
                        mov              qword ptr [rsp + 6144], rax
                        mov              rax, qword ptr [rsp + 6184]
                        mov              qword ptr [rsp + 6152], rax;         jmp   n224_disjunction_α
.Lx568_0:                                                                     jmp   n224_disjunction_α
n219_disjunction_β:     mov              r11, 134
                        mov              eax, dword ptr [rsp + 6160];         jmp   n224_disjunction_α
n219_disjunction_af:    mov              r11, 134
                        add              dword ptr [rsp + 6160], 1
                        mov              eax, dword ptr [rsp + 6160];         jmp   n224_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             mov              r11, 135
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 6288], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 6296], rax;         jmp   n221_call_builtin_icon_α
n220_var_β:             mov              r11, 135;                            jmp   n219_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n221_call_builtin_icon_α:
                        mov              r11, 136
                        mov              rax, qword ptr [rsp + 6288]
                        mov              qword ptr [rsp + 6256], rax
                        mov              rax, qword ptr [rsp + 6296]
                        mov              qword ptr [rsp + 6264], rax
                        .section         .rodata
.Lrkfn572:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn572]
                        lea              rsi, [rsp + 6256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6240], rax
                        mov              qword ptr [rsp + 6248], rdx
                        cmp              al, 104;                             je    n219_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n222_lit_string_α
n221_call_builtin_icon_β:
                        mov              r11, 136;                            jmp   n219_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 6224], 2            # result
                        mov              dword ptr [rsp + 6228], 14
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rsp + 6232], rax;         jmp   n223_call_builtin_icon_α
.Lx573_0:               .quad            .Lx573_0_s
.Lx573_0_s:             .string          "NULL IS MEMBER"
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_icon_α:
                        mov              r11, 138
                        mov              rax, qword ptr [rsp + 6224]
                        mov              qword ptr [rsp + 6192], rax
                        mov              rax, qword ptr [rsp + 6232]
                        mov              qword ptr [rsp + 6200], rax
                        .section         .rodata
.Lrkfn575:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn575]
                        lea              rsi, [rsp + 6192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx
                        cmp              al, 104;                             je    n224_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n219_disjunction_as
n223_call_builtin_icon_β:
                        mov              r11, 138;                            jmp   n224_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n224_disjunction_α:     mov              r11, 139
                        mov              qword ptr [rsp + 5984], 0
                        mov              qword ptr [rsp + 5992], 0
                        mov              dword ptr [rsp + 6000], 0;           jmp   n429_var_α
n224_disjunction_as:    mov              r11, 139
                        mov              eax, dword ptr [rsp + 6000]
                        cmp              eax, 0;                              jne   .Lx577_0
                        mov              rax, qword ptr [rsp + 6016]
                        mov              qword ptr [rsp + 5984], rax
                        mov              rax, qword ptr [rsp + 6024]
                        mov              qword ptr [rsp + 5992], rax;         jmp   n225_disjunction_α
.Lx577_0:               cmp              eax, 1;                              jne   .Lx577_1
                        mov              rax, qword ptr [rsp + 6080]
                        mov              qword ptr [rsp + 5984], rax
                        mov              rax, qword ptr [rsp + 6088]
                        mov              qword ptr [rsp + 5992], rax;         jmp   n225_disjunction_α
.Lx577_1:                                                                     jmp   n225_disjunction_α
n224_disjunction_β:     mov              r11, 139
                        mov              eax, dword ptr [rsp + 6000]
                        cmp              eax, 0;                              je    n224_disjunction_af
                                                                              jmp   n224_disjunction_af
n224_disjunction_af:    mov              r11, 139
                        add              dword ptr [rsp + 6000], 1
                        mov              eax, dword ptr [rsp + 6000]
                        cmp              eax, 1;                              je    n427_lit_string_α
                                                                              jmp   n225_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n225_disjunction_α:     mov              r11, 140
                        mov              qword ptr [rsp + 5792], 0
                        mov              qword ptr [rsp + 5800], 0
                        mov              dword ptr [rsp + 5808], 0;           jmp   n424_var_α
n225_disjunction_as:    mov              r11, 140
                        mov              eax, dword ptr [rsp + 5808]
                        cmp              eax, 0;                              jne   .Lx579_0
                        mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 5792], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 5800], rax;         jmp   n226_disjunction_α
.Lx579_0:               cmp              eax, 1;                              jne   .Lx579_1
                        mov              rax, qword ptr [rsp + 5920]
                        mov              qword ptr [rsp + 5792], rax
                        mov              rax, qword ptr [rsp + 5928]
                        mov              qword ptr [rsp + 5800], rax;         jmp   n226_disjunction_α
.Lx579_1:                                                                     jmp   n226_disjunction_α
n225_disjunction_β:     mov              r11, 140
                        mov              eax, dword ptr [rsp + 5808]
                        cmp              eax, 0;                              je    n225_disjunction_af
                                                                              jmp   n225_disjunction_af
n225_disjunction_af:    mov              r11, 140
                        add              dword ptr [rsp + 5808], 1
                        mov              eax, dword ptr [rsp + 5808]
                        cmp              eax, 1;                              je    n422_lit_string_α
                                                                              jmp   n226_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n226_disjunction_α:     mov              r11, 141
                        mov              qword ptr [rsp + 5552], 0
                        mov              qword ptr [rsp + 5560], 0
                        mov              dword ptr [rsp + 5568], 0;           jmp   n418_var_α
n226_disjunction_as:    mov              r11, 141
                        mov              eax, dword ptr [rsp + 5568]
                        cmp              eax, 0;                              jne   .Lx581_0
                        mov              rax, qword ptr [rsp + 5584]
                        mov              qword ptr [rsp + 5552], rax
                        mov              rax, qword ptr [rsp + 5592]
                        mov              qword ptr [rsp + 5560], rax;         jmp   n227_disjunction_α
.Lx581_0:               cmp              eax, 1;                              jne   .Lx581_1
                        mov              rax, qword ptr [rsp + 5728]
                        mov              qword ptr [rsp + 5552], rax
                        mov              rax, qword ptr [rsp + 5736]
                        mov              qword ptr [rsp + 5560], rax;         jmp   n227_disjunction_α
.Lx581_1:                                                                     jmp   n227_disjunction_α
n226_disjunction_β:     mov              r11, 141
                        mov              eax, dword ptr [rsp + 5568]
                        cmp              eax, 0;                              je    n226_disjunction_af
                                                                              jmp   n226_disjunction_af
n226_disjunction_af:    mov              r11, 141
                        add              dword ptr [rsp + 5568], 1
                        mov              eax, dword ptr [rsp + 5568]
                        cmp              eax, 1;                              je    n416_lit_string_α
                                                                              jmp   n227_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n227_disjunction_α:     mov              r11, 142
                        mov              qword ptr [rsp + 5328], 0
                        mov              qword ptr [rsp + 5336], 0
                        mov              dword ptr [rsp + 5344], 0;           jmp   n412_var_α
n227_disjunction_as:    mov              r11, 142
                        mov              eax, dword ptr [rsp + 5344]
                        cmp              eax, 0;                              jne   .Lx583_0
                        mov              rax, qword ptr [rsp + 5360]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 5368]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n228_disjunction_α
.Lx583_0:               cmp              eax, 1;                              jne   .Lx583_1
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n228_disjunction_α
.Lx583_1:                                                                     jmp   n228_disjunction_α
n227_disjunction_β:     mov              r11, 142
                        mov              eax, dword ptr [rsp + 5344]
                        cmp              eax, 0;                              je    n227_disjunction_af
                                                                              jmp   n227_disjunction_af
n227_disjunction_af:    mov              r11, 142
                        add              dword ptr [rsp + 5344], 1
                        mov              eax, dword ptr [rsp + 5344]
                        cmp              eax, 1;                              je    n410_lit_string_α
                                                                              jmp   n228_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n228_disjunction_α:     mov              r11, 143
                        mov              qword ptr [rsp + 4992], 0
                        mov              qword ptr [rsp + 5000], 0
                        mov              dword ptr [rsp + 5008], 0;           jmp   n403_var_α
n228_disjunction_as:    mov              r11, 143
                        mov              eax, dword ptr [rsp + 5008]
                        cmp              eax, 0;                              jne   .Lx585_0
                        mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 4992], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n229_disjunction_α
.Lx585_0:               cmp              eax, 1;                              jne   .Lx585_1
                        mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 4992], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n229_disjunction_α
.Lx585_1:                                                                     jmp   n229_disjunction_α
n228_disjunction_β:     mov              r11, 143
                        mov              eax, dword ptr [rsp + 5008]
                        cmp              eax, 0;                              je    n228_disjunction_af
                                                                              jmp   n228_disjunction_af
n228_disjunction_af:    mov              r11, 143
                        add              dword ptr [rsp + 5008], 1
                        mov              eax, dword ptr [rsp + 5008]
                        cmp              eax, 1;                              je    n401_lit_string_α
                                                                              jmp   n229_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n229_disjunction_α:     mov              r11, 144
                        mov              qword ptr [rsp + 4752], 0
                        mov              qword ptr [rsp + 4760], 0
                        mov              dword ptr [rsp + 4768], 0;           jmp   n397_var_α
n229_disjunction_as:    mov              r11, 144
                        mov              eax, dword ptr [rsp + 4768]
                        cmp              eax, 0;                              jne   .Lx587_0
                        mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 4752], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n230_disjunction_α
.Lx587_0:               cmp              eax, 1;                              jne   .Lx587_1
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 4752], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n230_disjunction_α
.Lx587_1:                                                                     jmp   n230_disjunction_α
n229_disjunction_β:     mov              r11, 144
                        mov              eax, dword ptr [rsp + 4768]
                        cmp              eax, 0;                              je    n229_disjunction_af
                                                                              jmp   n229_disjunction_af
n229_disjunction_af:    mov              r11, 144
                        add              dword ptr [rsp + 4768], 1
                        mov              eax, dword ptr [rsp + 4768]
                        cmp              eax, 1;                              je    n395_lit_string_α
                                                                              jmp   n230_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n230_disjunction_α:     mov              r11, 145
                        mov              qword ptr [rsp + 4576], 0
                        mov              qword ptr [rsp + 4584], 0
                        mov              dword ptr [rsp + 4592], 0;           jmp   n231_var_α
n230_disjunction_as:    mov              r11, 145
                        mov              eax, dword ptr [rsp + 4592]
                        cmp              eax, 0;                              jne   .Lx589_0
                        mov              rax, qword ptr [rsp + 4608]
                        mov              qword ptr [rsp + 4576], rax
                        mov              rax, qword ptr [rsp + 4616]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n236_lit_string_α
.Lx589_0:                                                                     jmp   n236_lit_string_α
n230_disjunction_β:     mov              r11, 145
                        mov              eax, dword ptr [rsp + 4592];         jmp   n236_lit_string_α
n230_disjunction_af:    mov              r11, 145
                        add              dword ptr [rsp + 4592], 1
                        mov              eax, dword ptr [rsp + 4592];         jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             mov              r11, 146
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 4736], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 4744], rax;         jmp   n232_call_builtin_icon_α
n231_var_β:             mov              r11, 146;                            jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_icon_α:
                        mov              r11, 147
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4712], rax
                        .section         .rodata
.Lrkfn593:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn593]
                        lea              rsi, [rsp + 4704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              al, 104;                             je    n233_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n230_disjunction_af
n232_call_builtin_icon_β:
                        mov              r11, 147;                            jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             mov              r11, 148
                        mov              qword ptr [rsp + 4672], 0
                        mov              qword ptr [rsp + 4680], 0;           jmp   n234_lit_string_α
n233_var_β:             mov              r11, 148;                            jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 4656], 2            # result
                        mov              dword ptr [rsp + 4660], 18
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n235_call_builtin_icon_α
.Lx595_0:               .quad            .Lx595_0_s
.Lx595_0_s:             .string          "NULL IS NOT MEMBER"
#-----------------------------------------------------------------------------------------------------------------------
n235_call_builtin_icon_α:
                        mov              r11, 150
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4632], rax
                        .section         .rodata
.Lrkfn597:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn597]
                        lea              rsi, [rsp + 4624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                        cmp              al, 104;                             je    n236_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n230_disjunction_as
n235_call_builtin_icon_β:
                        mov              r11, 150;                            jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rsp + 4544], 2            # result
                        mov              dword ptr [rsp + 4548], 6
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n237_var_α
.Lx598_0:               .quad            .Lx598_0_s
.Lx598_0_s:             .string          "insert"
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             mov              r11, 152
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 4560], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n238_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_proc_staged_α:
                        mov              r11, 153
                        lea              rsi, [rsp + 4544]
                        lea              rdx, [rsp + 4560]
                        call             tdump_dcα;                           jmp   .Lx602_2
.Lx602_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx602_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4480]
                        mov              rdx, qword ptr [rsp + 4488]
.Lx602_29:              mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx
                        cmp              al, 104;                             je    n239_disjunction_α
                                                                              jmp   n239_disjunction_α
n238_call_proc_staged_β:
                        mov              r11, 153;                            jmp   n239_disjunction_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n239_disjunction_α:     mov              r11, 154
                        mov              qword ptr [rsp + 4320], 0
                        mov              qword ptr [rsp + 4328], 0
                        mov              dword ptr [rsp + 4336], 0;           jmp   n393_var_α
n239_disjunction_as:    mov              r11, 154
                        mov              eax, dword ptr [rsp + 4336]
                        cmp              eax, 0;                              jne   .Lx604_0
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n240_disjunction_α
.Lx604_0:               cmp              eax, 1;                              jne   .Lx604_1
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n240_disjunction_α
.Lx604_1:                                                                     jmp   n240_disjunction_α
n239_disjunction_β:     mov              r11, 154
                        mov              eax, dword ptr [rsp + 4336]
                        cmp              eax, 0;                              je    n239_disjunction_af
                                                                              jmp   n239_disjunction_af
n239_disjunction_af:    mov              r11, 154
                        add              dword ptr [rsp + 4336], 1
                        mov              eax, dword ptr [rsp + 4336]
                        cmp              eax, 1;                              je    n391_lit_string_α
                                                                              jmp   n240_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n240_disjunction_α:     mov              r11, 155
                        mov              qword ptr [rsp + 4096], 0
                        mov              qword ptr [rsp + 4104], 0
                        mov              dword ptr [rsp + 4112], 0;           jmp   n387_var_α
n240_disjunction_as:    mov              r11, 155
                        mov              eax, dword ptr [rsp + 4112]
                        cmp              eax, 0;                              jne   .Lx606_0
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n241_disjunction_α
.Lx606_0:               cmp              eax, 1;                              jne   .Lx606_1
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n241_disjunction_α
.Lx606_1:                                                                     jmp   n241_disjunction_α
n240_disjunction_β:     mov              r11, 155
                        mov              eax, dword ptr [rsp + 4112]
                        cmp              eax, 0;                              je    n240_disjunction_af
                                                                              jmp   n240_disjunction_af
n240_disjunction_af:    mov              r11, 155
                        add              dword ptr [rsp + 4112], 1
                        mov              eax, dword ptr [rsp + 4112]
                        cmp              eax, 1;                              je    n385_lit_string_α
                                                                              jmp   n241_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n241_disjunction_α:     mov              r11, 156
                        mov              qword ptr [rsp + 3824], 0
                        mov              qword ptr [rsp + 3832], 0
                        mov              dword ptr [rsp + 3840], 0;           jmp   n380_var_α
n241_disjunction_as:    mov              r11, 156
                        mov              eax, dword ptr [rsp + 3840]
                        cmp              eax, 0;                              jne   .Lx608_0
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n242_lit_string_α
.Lx608_0:               cmp              eax, 1;                              jne   .Lx608_1
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n242_lit_string_α
.Lx608_1:                                                                     jmp   n242_lit_string_α
n241_disjunction_β:     mov              r11, 156
                        mov              eax, dword ptr [rsp + 3840]
                        cmp              eax, 0;                              je    n241_disjunction_af
                                                                              jmp   n241_disjunction_af
n241_disjunction_af:    mov              r11, 156
                        add              dword ptr [rsp + 3840], 1
                        mov              eax, dword ptr [rsp + 3840]
                        cmp              eax, 1;                              je    n378_lit_string_α
                                                                              jmp   n242_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rsp + 3792], 2            # result
                        mov              dword ptr [rsp + 3796], 6
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n243_var_α
.Lx609_0:               .quad            .Lx609_0_s
.Lx609_0_s:             .string          "delete"
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             mov              r11, 158
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n244_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n244_call_proc_staged_α:
                        mov              r11, 159
                        lea              rsi, [rsp + 3792]
                        lea              rdx, [rsp + 3808]
                        call             tdump_dcα;                           jmp   .Lx613_2
.Lx613_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx613_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3728]
                        mov              rdx, qword ptr [rsp + 3736]
.Lx613_29:              mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx
                        cmp              al, 104;                             je    n245_lit_integer_α
                                                                              jmp   n245_lit_integer_α
n244_call_proc_staged_β:
                        mov              r11, 159;                            jmp   n245_lit_integer_α
.Lx613_0:               .quad            .Lx613_0_s
.Lx613_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:     mov              r11, 160
                        mov              qword ptr [rsp + 3712], 3            # result
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n246_call_builtin_icon_α
.Lx614_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_icon_α:
                        mov              r11, 161
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3688], rax
                        .section         .rodata
.Lrkfn616:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn616]
                        lea              rsi, [rsp + 3680]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        cmp              al, 104;                             je    n248_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n247_assign_α
n246_call_builtin_icon_β:
                        mov              r11, 161;                            jmp   n248_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:          mov              r11, 162
                        mov              rax, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 8480], rax
                        mov              qword ptr [rsp + 8488], rdx;         jmp   n248_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx;         jmp   n249_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_integer_α:     mov              r11, 164
                        mov              qword ptr [rsp + 3616], 3            # result
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n250_subscript_α
.Lx620_0:               .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n250_subscript_α:       mov              r11, 165
                        mov              rdi, qword ptr [rsp + 3600]
                        mov              rsi, qword ptr [rsp + 3608]
                        mov              rdx, qword ptr [rsp + 3616]
                        mov              rcx, qword ptr [rsp + 3624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n253_lit_string_α
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx;         jmp   n251_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n251_deref_α:           mov              r11, 166
                        mov              rdi, qword ptr [rsp + 3632]
                        mov              rsi, qword ptr [rsp + 3640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n253_lit_string_α
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n252_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_icon_α:
                        mov              r11, 167
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3576], rax
                        .section         .rodata
.Lrkfn624:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rsp + 3568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        cmp              al, 104;                             je    n253_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_lit_string_α
n252_call_builtin_icon_β:
                        mov              r11, 167;                            jmp   n253_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rsp + 3520], 2            # result
                        mov              dword ptr [rsp + 3524], 2
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n254_var_α
.Lx625_0:               .quad            .Lx625_0_s
.Lx625_0_s:             .string          "t0"
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:             mov              r11, 169
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n255_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_proc_staged_α:
                        mov              r11, 170
                        lea              rsi, [rsp + 3520]
                        lea              rdx, [rsp + 3536]
                        call             tdump_dcα;                           jmp   .Lx629_2
.Lx629_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx629_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3456]
                        mov              rdx, qword ptr [rsp + 3464]
.Lx629_29:              mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    n256_disjunction_α
                                                                              jmp   n256_disjunction_α
n255_call_proc_staged_β:
                        mov              r11, 170;                            jmp   n256_disjunction_α
.Lx629_0:               .quad            .Lx629_0_s
.Lx629_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n256_disjunction_α:     mov              r11, 171
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              dword ptr [rsp + 3312], 0;           jmp   n376_var_α
n256_disjunction_as:    mov              r11, 171
                        mov              eax, dword ptr [rsp + 3312]
                        cmp              eax, 0;                              jne   .Lx631_0
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n257_disjunction_α
.Lx631_0:               cmp              eax, 1;                              jne   .Lx631_1
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n257_disjunction_α
.Lx631_1:                                                                     jmp   n257_disjunction_α
n256_disjunction_β:     mov              r11, 171
                        mov              eax, dword ptr [rsp + 3312]
                        cmp              eax, 0;                              je    n256_disjunction_af
                                                                              jmp   n256_disjunction_af
n256_disjunction_af:    mov              r11, 171
                        add              dword ptr [rsp + 3312], 1
                        mov              eax, dword ptr [rsp + 3312]
                        cmp              eax, 1;                              je    n374_lit_string_α
                                                                              jmp   n257_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n257_disjunction_α:     mov              r11, 172
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              dword ptr [rsp + 3120], 0;           jmp   n371_var_α
n257_disjunction_as:    mov              r11, 172
                        mov              eax, dword ptr [rsp + 3120]
                        cmp              eax, 0;                              jne   .Lx633_0
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n258_disjunction_α
.Lx633_0:               cmp              eax, 1;                              jne   .Lx633_1
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n258_disjunction_α
.Lx633_1:                                                                     jmp   n258_disjunction_α
n257_disjunction_β:     mov              r11, 172
                        mov              eax, dword ptr [rsp + 3120]
                        cmp              eax, 0;                              je    n257_disjunction_af
                                                                              jmp   n257_disjunction_af
n257_disjunction_af:    mov              r11, 172
                        add              dword ptr [rsp + 3120], 1
                        mov              eax, dword ptr [rsp + 3120]
                        cmp              eax, 1;                              je    n369_lit_string_α
                                                                              jmp   n258_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n258_disjunction_α:     mov              r11, 173
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              dword ptr [rsp + 2880], 0;           jmp   n365_var_α
n258_disjunction_as:    mov              r11, 173
                        mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 0;                              jne   .Lx635_0
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n259_disjunction_α
.Lx635_0:               cmp              eax, 1;                              jne   .Lx635_1
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n259_disjunction_α
.Lx635_1:                                                                     jmp   n259_disjunction_α
n258_disjunction_β:     mov              r11, 173
                        mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 0;                              je    n258_disjunction_af
                                                                              jmp   n258_disjunction_af
n258_disjunction_af:    mov              r11, 173
                        add              dword ptr [rsp + 2880], 1
                        mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 1;                              je    n363_lit_string_α
                                                                              jmp   n259_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n259_disjunction_α:     mov              r11, 174
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              dword ptr [rsp + 2656], 0;           jmp   n359_var_α
n259_disjunction_as:    mov              r11, 174
                        mov              eax, dword ptr [rsp + 2656]
                        cmp              eax, 0;                              jne   .Lx637_0
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n260_disjunction_α
.Lx637_0:               cmp              eax, 1;                              jne   .Lx637_1
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n260_disjunction_α
.Lx637_1:                                                                     jmp   n260_disjunction_α
n259_disjunction_β:     mov              r11, 174
                        mov              eax, dword ptr [rsp + 2656]
                        cmp              eax, 0;                              je    n259_disjunction_af
                                                                              jmp   n259_disjunction_af
n259_disjunction_af:    mov              r11, 174
                        add              dword ptr [rsp + 2656], 1
                        mov              eax, dword ptr [rsp + 2656]
                        cmp              eax, 1;                              je    n357_lit_string_α
                                                                              jmp   n260_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n260_disjunction_α:     mov              r11, 175
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              dword ptr [rsp + 2320], 0;           jmp   n350_var_α
n260_disjunction_as:    mov              r11, 175
                        mov              eax, dword ptr [rsp + 2320]
                        cmp              eax, 0;                              jne   .Lx639_0
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n261_disjunction_α
.Lx639_0:               cmp              eax, 1;                              jne   .Lx639_1
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n261_disjunction_α
.Lx639_1:                                                                     jmp   n261_disjunction_α
n260_disjunction_β:     mov              r11, 175
                        mov              eax, dword ptr [rsp + 2320]
                        cmp              eax, 0;                              je    n260_disjunction_af
                                                                              jmp   n260_disjunction_af
n260_disjunction_af:    mov              r11, 175
                        add              dword ptr [rsp + 2320], 1
                        mov              eax, dword ptr [rsp + 2320]
                        cmp              eax, 1;                              je    n348_lit_string_α
                                                                              jmp   n261_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n261_disjunction_α:     mov              r11, 176
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              dword ptr [rsp + 2080], 0;           jmp   n344_var_α
n261_disjunction_as:    mov              r11, 176
                        mov              eax, dword ptr [rsp + 2080]
                        cmp              eax, 0;                              jne   .Lx641_0
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n262_lit_string_α
.Lx641_0:               cmp              eax, 1;                              jne   .Lx641_1
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n262_lit_string_α
.Lx641_1:                                                                     jmp   n262_lit_string_α
n261_disjunction_β:     mov              r11, 176
                        mov              eax, dword ptr [rsp + 2080]
                        cmp              eax, 0;                              je    n261_disjunction_af
                                                                              jmp   n261_disjunction_af
n261_disjunction_af:    mov              r11, 176
                        add              dword ptr [rsp + 2080], 1
                        mov              eax, dword ptr [rsp + 2080]
                        cmp              eax, 1;                              je    n342_lit_string_α
                                                                              jmp   n262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n263_var_α
.Lx642_0:               .quad            .Lx642_0_s
.Lx642_0_s:             .string          "t0i"
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n264_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_proc_staged_α:
                        mov              r11, 179
                        lea              rsi, [rsp + 2032]
                        lea              rdx, [rsp + 2048]
                        call             tdump_dcα;                           jmp   .Lx646_2
.Lx646_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx646_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1968]
                        mov              rdx, qword ptr [rsp + 1976]
.Lx646_29:              mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n265_disjunction_α
                                                                              jmp   n265_disjunction_α
n264_call_proc_staged_β:
                        mov              r11, 179;                            jmp   n265_disjunction_α
.Lx646_0:               .quad            .Lx646_0_s
.Lx646_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n265_disjunction_α:     mov              r11, 180
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              dword ptr [rsp + 1824], 0;           jmp   n340_var_α
n265_disjunction_as:    mov              r11, 180
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              eax, 0;                              jne   .Lx648_0
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n266_disjunction_α
.Lx648_0:               cmp              eax, 1;                              jne   .Lx648_1
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n266_disjunction_α
.Lx648_1:                                                                     jmp   n266_disjunction_α
n265_disjunction_β:     mov              r11, 180
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              eax, 0;                              je    n265_disjunction_af
                                                                              jmp   n265_disjunction_af
n265_disjunction_af:    mov              r11, 180
                        add              dword ptr [rsp + 1824], 1
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              eax, 1;                              je    n338_lit_string_α
                                                                              jmp   n266_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n266_disjunction_α:     mov              r11, 181
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              dword ptr [rsp + 1600], 0;           jmp   n334_var_α
n266_disjunction_as:    mov              r11, 181
                        mov              eax, dword ptr [rsp + 1600]
                        cmp              eax, 0;                              jne   .Lx650_0
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n267_disjunction_α
.Lx650_0:               cmp              eax, 1;                              jne   .Lx650_1
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n267_disjunction_α
.Lx650_1:                                                                     jmp   n267_disjunction_α
n266_disjunction_β:     mov              r11, 181
                        mov              eax, dword ptr [rsp + 1600]
                        cmp              eax, 0;                              je    n266_disjunction_af
                                                                              jmp   n266_disjunction_af
n266_disjunction_af:    mov              r11, 181
                        add              dword ptr [rsp + 1600], 1
                        mov              eax, dword ptr [rsp + 1600]
                        cmp              eax, 1;                              je    n332_lit_string_α
                                                                              jmp   n267_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n267_disjunction_α:     mov              r11, 182
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              dword ptr [rsp + 1328], 0;           jmp   n327_var_α
n267_disjunction_as:    mov              r11, 182
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 0;                              jne   .Lx652_0
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n268_lit_string_α
.Lx652_0:               cmp              eax, 1;                              jne   .Lx652_1
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n268_lit_string_α
.Lx652_1:                                                                     jmp   n268_lit_string_α
n267_disjunction_β:     mov              r11, 182
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 0;                              je    n267_disjunction_af
                                                                              jmp   n267_disjunction_af
n267_disjunction_af:    mov              r11, 182
                        add              dword ptr [rsp + 1328], 1
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 1;                              je    n325_lit_string_α
                                                                              jmp   n268_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n269_var_α
.Lx653_0:               .quad            .Lx653_0_s
.Lx653_0_s:             .string          "t0d"
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n270_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_proc_staged_α:
                        mov              r11, 185
                        lea              rsi, [rsp + 1280]
                        lea              rdx, [rsp + 1296]
                        call             tdump_dcα;                           jmp   .Lx657_2
.Lx657_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx657_29
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
.Lx657_29:              mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n271_call_builtin_icon_α
                                                                              jmp   n271_call_builtin_icon_α
n270_call_proc_staged_β:
                        mov              r11, 185;                            jmp   n271_call_builtin_icon_α
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_icon_α:
                        mov              r11, 186
                        .section         .rodata
.Lrkfn659:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn659]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n272_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n272_lit_integer_α
n271_call_builtin_icon_β:
                        mov              r11, 186;                            jmp   n272_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:     mov              r11, 187
                        mov              qword ptr [rsp + 1168], 3            # result
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n273_call_builtin_icon_α
.Lx660_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_icon_α:
                        mov              r11, 188
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn662:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn662]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n275_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n274_assign_α
n273_call_builtin_icon_β:
                        mov              r11, 188;                            jmp   n275_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:          mov              r11, 189
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 8480], rax
                        mov              qword ptr [rsp + 8488], rdx;         jmp   n275_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n276_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:     mov              r11, 191
                        mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n277_subscript_α
.Lx666_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n277_subscript_α:       mov              r11, 192
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n280_lit_string_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              r11, 193
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n279_rev_assign_var_α
.Lx668_0:               .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n279_rev_assign_var_α:  mov              r11, 194
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n280_lit_string_α
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n279_rev_assign_var_β
n279_rev_assign_var_β:  mov              r11, 194
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n280_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n281_var_α
.Lx670_0:               .quad            .Lx670_0_s
.Lx670_0_s:             .string          "k "
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             mov              r11, 196
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n282_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n282_iterate_α:         mov              r11, 197
                        mov              qword ptr [rsp + 992], 0
.Lx674_0:               mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_key_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              rax, 104;                            je    n284_lit_string_α
                                                                              jmp   n283_call_builtin_icon_α
n282_iterate_β:         mov              r11, 197
                        inc              qword ptr [rsp + 992];               jmp   .Lx674_0
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_icon_α:
                        mov              r11, 198
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn676:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn676]
                        lea              rsi, [rsp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n282_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n282_iterate_β
n283_call_builtin_icon_β:
                        mov              r11, 198;                            jmp   n282_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 2
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n285_var_α
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "v "
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:             mov              r11, 200
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 888], rax;          jmp   n286_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n286_iterate_α:         mov              r11, 201
                        mov              qword ptr [rsp + 864], 0
.Lx681_0:               mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
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
                        cmp              rax, 104;                            je    n288_call_builtin_icon_α
                                                                              jmp   n287_call_builtin_icon_α
n286_iterate_β:         mov              r11, 201
                        inc              qword ptr [rsp + 864];               jmp   .Lx681_0
#-----------------------------------------------------------------------------------------------------------------------
n287_call_builtin_icon_α:
                        mov              r11, 202
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn683:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rsp + 784]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n286_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n286_iterate_β
n287_call_builtin_icon_β:
                        mov              r11, 202;                            jmp   n286_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_icon_α:
                        mov              r11, 203
                        .section         .rodata
.Lrkfn685:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn685]
                        lea              rsi, [rsp + 752]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n290_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n289_assign_α
n288_call_builtin_icon_β:
                        mov              r11, 203;                            jmp   n290_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 8480], rax
                        mov              qword ptr [rsp + 8488], rdx;         jmp   n290_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n291_lit_integer_α
.Lx687_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:     mov              r11, 206
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n292_to_α
.Lx688_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n292_to_α:              mov              r11, 207
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], 3
                        mov              qword ptr [rsp + 536], rax
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], 3
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 512], rax
.Lx690_0:               mov              rax, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 552]
                        cmp              rax, rcx;                            jg    n304_var_α
                        mov              qword ptr [rsp + 496], 3
                        mov              qword ptr [rsp + 504], rax;          jmp   n293_assign_α
n292_to_β:              mov              r11, 207
                        inc              qword ptr [rsp + 512];               jmp   .Lx690_0
#-----------------------------------------------------------------------------------------------------------------------
n293_assign_α:          mov              r11, 208
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 8496], rax
                        mov              qword ptr [rsp + 8504], rdx;         jmp   n294_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n294_bound_α:           mov              r11, 209
                        mov              qword ptr [rsp + 560], rsp;          jmp   n295_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rsp + 8496]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 8504]
                        mov              qword ptr [rsp + 632], rax;          jmp   n297_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n297_subscript_α:       mov              r11, 212
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n303_unmark_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n298_var_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             mov              r11, 213
                        mov              rax, qword ptr [rsp + 8496]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 8504]
                        mov              qword ptr [rsp + 712], rax;          jmp   n299_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n300_coerce_numeric_α
.Lx701_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n300_coerce_numeric_α:  mov              r11, 215
                        mov              eax, dword ptr [rsp + 8496]
                        cmp              al, 5;                               je    .Lx703_1
                        cmp              al, 3;                               jne   .Lx703_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              al, 3;                               jne   .Lx703_0
.Lx703_1:               mov              rax, qword ptr [rsp + 8496]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 8504]
                        mov              qword ptr [rsp + 696], rax;          jmp   n301_binop_α
.Lx703_0:               lea              rdi, [rsp + 8496]
                        lea              rsi, [rsp + 720]
                        lea              rdx, [rsp + 688]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n301_binop_α:           mov              r11, 216
                        mov              eax, dword ptr [rsp + 688]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx704_2
                        mov              rax, qword ptr [rsp + 696]
                        mov              rdx, 10
                        add              rax, rdx
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   .Lx704_7
.Lx704_2:               and              edx, 1;                              jz    .Lx704_0
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdi, 10
                        cmp              al, 5;                               je    .Lx704_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx704_4
.Lx704_3:               movq             xmm0, rsi
.Lx704_4:               cmp              cl, 5;                               je    .Lx704_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx704_6
.Lx704_5:               movq             xmm1, rdi
.Lx704_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 672], 5
                        mov              qword ptr [rsp + 680], rax
.Lx704_7:                                                                     jmp   n302_assign_var_α
.Lx704_0:               mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n303_unmark_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n302_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_var_α:      mov              r11, 217
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n303_unmark_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n303_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n303_unmark_α:          mov              r11, 218
                        mov              rsp, qword ptr [rsp + 560];          jmp   n292_to_β
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:             mov              r11, 219
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 488], rax;          jmp   n305_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_builtin_icon_α:
                        mov              r11, 220
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn711:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn711]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n307_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n306_assign_α
n305_call_builtin_icon_β:
                        mov              r11, 220;                            jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_α:          mov              r11, 221
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 8464], rax
                        mov              qword ptr [rsp + 8472], rdx;         jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n308_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n308_iterate_α:         mov              r11, 223
                        mov              qword ptr [rsp + 320], 0
.Lx716_0:               mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              rax, 104;                            je    n313_var_ref_α
                                                                              jmp   n309_deref_α
n308_iterate_β:         mov              r11, 223
                        inc              qword ptr [rsp + 320];               jmp   .Lx716_0
#-----------------------------------------------------------------------------------------------------------------------
n309_deref_α:           mov              r11, 224
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n313_var_ref_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n310_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:     mov              r11, 225
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx718_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n311_binop_α
.Lx718_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n311_binop_α:           mov              r11, 226
                        mov              eax, dword ptr [rsp + 384]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx719_2
                        mov              rax, qword ptr [rsp + 392]
                        mov              rdx, 20
                        add              rax, rdx
                        mov              qword ptr [rsp + 368], 3
                        mov              qword ptr [rsp + 376], rax;          jmp   .Lx719_7
.Lx719_2:               and              edx, 1;                              jz    .Lx719_0
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdi, 20
                        cmp              al, 5;                               je    .Lx719_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx719_4
.Lx719_3:               movq             xmm0, rsi
.Lx719_4:               cmp              cl, 5;                               je    .Lx719_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx719_6
.Lx719_5:               movq             xmm1, rdi
.Lx719_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 368], 5
                        mov              qword ptr [rsp + 376], rax
.Lx719_7:                                                                     jmp   n312_assign_var_α
.Lx719_0:               mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n313_var_ref_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n312_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_assign_var_α:      mov              r11, 227
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n313_var_ref_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n308_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8464]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n314_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n314_iterate_α:         mov              r11, 229
                        mov              qword ptr [rsp + 208], 0
.Lx724_0:               mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              rax, 104;                            je    n319_lit_string_α
                                                                              jmp   n315_deref_α
n314_iterate_β:         mov              r11, 229
                        inc              qword ptr [rsp + 208];               jmp   .Lx724_0
#-----------------------------------------------------------------------------------------------------------------------
n315_deref_α:           mov              r11, 230
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
                        cmp              al, 104;                             je    n319_lit_string_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n316_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_integer_α:     mov              r11, 231
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n317_binop_α
.Lx726_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:           mov              r11, 232
                        mov              eax, dword ptr [rsp + 272]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx727_2
                        mov              rax, qword ptr [rsp + 280]
                        mov              rdx, 40
                        add              rax, rdx
                        mov              qword ptr [rsp + 256], 3
                        mov              qword ptr [rsp + 264], rax;          jmp   .Lx727_7
.Lx727_2:               and              edx, 1;                              jz    .Lx727_0
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdi, 40
                        cmp              al, 5;                               je    .Lx727_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx727_4
.Lx727_3:               movq             xmm0, rsi
.Lx727_4:               cmp              cl, 5;                               je    .Lx727_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx727_6
.Lx727_5:               movq             xmm1, rdi
.Lx727_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 256], 5
                        mov              qword ptr [rsp + 264], rax
.Lx727_7:                                                                     jmp   n318_assign_var_α
.Lx727_0:               mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n319_lit_string_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n318_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_var_α:      mov              r11, 233
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n319_lit_string_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n314_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 3
                        mov              rax, qword ptr [rip + .Lx729_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n320_var_α
.Lx729_0:               .quad            .Lx729_0_s
.Lx729_0_s:             .string          "30s"
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 184], rax;          jmp   n321_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n321_call_proc_staged_α:
                        mov              r11, 236
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 176]
                        call             tdump_dcα;                           jmp   .Lx733_2
.Lx733_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx733_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx733_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n322_lit_string_α
                                                                              jmp   n322_lit_string_α
n321_call_proc_staged_β:
                        mov              r11, 236;                            jmp   n322_lit_string_α
.Lx733_0:               .quad            .Lx733_0_s
.Lx733_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 3
                        mov              rax, qword ptr [rip + .Lx734_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n323_var_α
.Lx734_0:               .quad            .Lx734_0_s
.Lx734_0_s:             .string          "50s"
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rsp + 8464]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 8472]
                        mov              qword ptr [rsp + 88], rax;           jmp   n324_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_proc_staged_α:
                        mov              r11, 239
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 80]
                        call             tdump_dcα;                           jmp   .Lx738_2
.Lx738_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx738_29
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
.Lx738_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n324_call_proc_staged_β:
                        mov              r11, 239;                            jmp   main_ω
.Lx738_0:               .quad            .Lx738_0_s
.Lx738_0_s:             .string          "tdump"
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rsp + 1568], 2            # result
                        mov              dword ptr [rsp + 1572], 10
                        mov              rax, qword ptr [rip + .Lx739_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n326_call_builtin_icon_α
n325_lit_string_β:      mov              r11, 240;                            jmp   n267_disjunction_af
.Lx739_0:               .quad            .Lx739_0_s
.Lx739_0_s:             .string          "failed d71"
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_icon_α:
                        mov              r11, 241
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn741:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn741]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n267_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_disjunction_as
n326_call_builtin_icon_β:
                        mov              r11, 241;                            jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:             mov              r11, 242
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n328_lit_integer_α
n327_var_β:             mov              r11, 242;                            jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_integer_α:     mov              r11, 243
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n329_call_builtin_icon_α
.Lx744_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_icon_α:
                        mov              r11, 244
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn746:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn746]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n267_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n330_lit_integer_α
n329_call_builtin_icon_β:
                        mov              r11, 244;                            jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_integer_α:     mov              r11, 245
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n331_call_builtin_icon_α
.Lx747_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_icon_α:
                        mov              r11, 246
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn749:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn749]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n267_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_disjunction_as
n331_call_builtin_icon_β:
                        mov              r11, 246;                            jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 10
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n333_call_builtin_icon_α
n332_lit_string_β:      mov              r11, 247;                            jmp   n266_disjunction_af
.Lx750_0:               .quad            .Lx750_0_s
.Lx750_0_s:             .string          "failed d36"
#-----------------------------------------------------------------------------------------------------------------------
n333_call_builtin_icon_α:
                        mov              r11, 248
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn752:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn752]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n266_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n266_disjunction_as
n333_call_builtin_icon_β:
                        mov              r11, 248;                            jmp   n266_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n335_lit_integer_α
n334_var_β:             mov              r11, 249;                            jmp   n266_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_integer_α:     mov              r11, 250
                        mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n336_lit_integer_α
.Lx755_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              r11, 251
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx756_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n337_call_builtin_icon_α
.Lx756_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_icon_α:
                        mov              r11, 252
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lrkfn758:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn758]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n266_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n266_disjunction_as
n337_call_builtin_icon_β:
                        mov              r11, 252;                            jmp   n266_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      mov              r11, 253
                        mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 9
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n339_call_builtin_icon_α
n338_lit_string_β:      mov              r11, 253;                            jmp   n265_disjunction_af
.Lx759_0:               .quad            .Lx759_0_s
.Lx759_0_s:             .string          "failed dn"
#-----------------------------------------------------------------------------------------------------------------------
n339_call_builtin_icon_α:
                        mov              r11, 254
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1928], rax
                        .section         .rodata
.Lrkfn761:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn761]
                        lea              rsi, [rsp + 1920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n265_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_disjunction_as
n339_call_builtin_icon_β:
                        mov              r11, 254;                            jmp   n265_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:             mov              r11, 255
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n341_call_builtin_icon_α
n340_var_β:             mov              r11, 255;                            jmp   n265_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_icon_α:
                        mov              r11, 256
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn765:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn765]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n265_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_disjunction_as
n341_call_builtin_icon_β:
                        mov              r11, 256;                            jmp   n265_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:      mov              r11, 257
                        mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 8
                        mov              rax, qword ptr [rip + .Lx766_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n343_call_builtin_icon_α
n342_lit_string_β:      mov              r11, 257;                            jmp   n261_disjunction_af
.Lx766_0:               .quad            .Lx766_0_s
.Lx766_0_s:             .string          "failed n"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_icon_α:
                        mov              r11, 258
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax
                        .section         .rodata
.Lrkfn768:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn768]
                        lea              rsi, [rsp + 2256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n261_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n261_disjunction_as
n343_call_builtin_icon_β:
                        mov              r11, 258;                            jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             mov              r11, 259
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n345_keyword_icon_α
n344_var_β:             mov              r11, 259;                            jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n345_keyword_icon_α:    mov              r11, 260
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0;           jmp   n346_lit_string_α
n345_keyword_icon_β:    mov              r11, 260;                            jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 4
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n347_call_builtin_icon_α
.Lx772_0:               .quad            .Lx772_0_s
.Lx772_0_s:             .string          "null"
#-----------------------------------------------------------------------------------------------------------------------
n347_call_builtin_icon_α:
                        mov              r11, 262
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2120], rax
                        .section         .rodata
.Lrkfn774:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn774]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n261_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n261_disjunction_as
n347_call_builtin_icon_β:
                        mov              r11, 262;                            jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:      mov              r11, 263
                        mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], 9
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n349_call_builtin_icon_α
n348_lit_string_β:      mov              r11, 263;                            jmp   n260_disjunction_af
.Lx775_0:               .quad            .Lx775_0_s
.Lx775_0_s:             .string          "failed 67"
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_icon_α:
                        mov              r11, 264
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2600], rax
                        .section         .rodata
.Lrkfn777:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn777]
                        lea              rsi, [rsp + 2592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              al, 104;                             je    n260_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n260_disjunction_as
n349_call_builtin_icon_β:
                        mov              r11, 264;                            jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:             mov              r11, 265
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n351_lit_integer_α
n350_var_β:             mov              r11, 265;                            jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:     mov              r11, 266
                        mov              qword ptr [rsp + 2512], 3            # result
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n352_lit_integer_α
.Lx780_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:     mov              r11, 267
                        mov              qword ptr [rsp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n353_call_builtin_icon_α
.Lx781_0:               .quad            66
#-----------------------------------------------------------------------------------------------------------------------
n353_call_builtin_icon_α:
                        mov              r11, 268
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2456], rax
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2440], rax
                        .section         .rodata
.Lrkfn783:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn783]
                        lea              rsi, [rsp + 2432]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    n260_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n354_lit_integer_α
n353_call_builtin_icon_β:
                        mov              r11, 268;                            jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:     mov              r11, 269
                        mov              qword ptr [rsp + 2544], 3            # result
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n355_lit_integer_α
.Lx784_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:     mov              r11, 270
                        mov              qword ptr [rsp + 2560], 3            # result
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n356_call_builtin_icon_α
.Lx785_0:               .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_icon_α:
                        mov              r11, 271
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2360], rax
                        .section         .rodata
.Lrkfn787:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn787]
                        lea              rsi, [rsp + 2352]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n260_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n260_disjunction_as
n356_call_builtin_icon_β:
                        mov              r11, 271;                            jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 8
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n358_call_builtin_icon_α
n357_lit_string_β:      mov              r11, 272;                            jmp   n259_disjunction_af
.Lx788_0:               .quad            .Lx788_0_s
.Lx788_0_s:             .string          "failed 5"
#-----------------------------------------------------------------------------------------------------------------------
n358_call_builtin_icon_α:
                        mov              r11, 273
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        .section         .rodata
.Lrkfn790:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn790]
                        lea              rsi, [rsp + 2816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    n259_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n259_disjunction_as
n358_call_builtin_icon_β:
                        mov              r11, 273;                            jmp   n259_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             mov              r11, 274
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n360_lit_integer_α
n359_var_β:             mov              r11, 274;                            jmp   n259_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_integer_α:     mov              r11, 275
                        mov              qword ptr [rsp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n361_lit_integer_α
.Lx793_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_integer_α:     mov              r11, 276
                        mov              qword ptr [rsp + 2784], 3            # result
                        mov              rax, qword ptr [rip + .Lx794_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n362_call_builtin_icon_α
.Lx794_0:               .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n362_call_builtin_icon_α:
                        mov              r11, 277
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2696], rax
                        .section         .rodata
.Lrkfn796:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn796]
                        lea              rsi, [rsp + 2688]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    n259_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n259_disjunction_as
n362_call_builtin_icon_β:
                        mov              r11, 277;                            jmp   n259_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              r11, 278
                        mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 8
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n364_call_builtin_icon_α
n363_lit_string_β:      mov              r11, 278;                            jmp   n258_disjunction_af
.Lx797_0:               .quad            .Lx797_0_s
.Lx797_0_s:             .string          "failed 3"
#-----------------------------------------------------------------------------------------------------------------------
n364_call_builtin_icon_α:
                        mov              r11, 279
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3064], rax
                        .section         .rodata
.Lrkfn799:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn799]
                        lea              rsi, [rsp + 3056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        cmp              al, 104;                             je    n258_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n258_disjunction_as
n364_call_builtin_icon_β:
                        mov              r11, 279;                            jmp   n258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             mov              r11, 280
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n366_lit_integer_α
n365_var_β:             mov              r11, 280;                            jmp   n258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:     mov              r11, 281
                        mov              qword ptr [rsp + 2992], 3            # result
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n367_keyword_icon_α
.Lx802_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n367_keyword_icon_α:    mov              r11, 282
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0;           jmp   n368_call_builtin_icon_α
n367_keyword_icon_β:    mov              r11, 282;                            jmp   n258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n368_call_builtin_icon_α:
                        mov              r11, 283
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2920], rax
                        .section         .rodata
.Lrkfn805:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn805]
                        lea              rsi, [rsp + 2912]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    n258_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n258_disjunction_as
n368_call_builtin_icon_β:
                        mov              r11, 283;                            jmp   n258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              r11, 284
                        mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 8
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n370_call_builtin_icon_α
n369_lit_string_β:      mov              r11, 284;                            jmp   n257_disjunction_af
.Lx806_0:               .quad            .Lx806_0_s
.Lx806_0_s:             .string          "failed 1"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_icon_α:
                        mov              r11, 285
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3256], rax
                        .section         .rodata
.Lrkfn808:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn808]
                        lea              rsi, [rsp + 3248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n257_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n257_disjunction_as
n370_call_builtin_icon_β:
                        mov              r11, 285;                            jmp   n257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             mov              r11, 286
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n372_lit_integer_α
n371_var_β:             mov              r11, 286;                            jmp   n257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_integer_α:     mov              r11, 287
                        mov              qword ptr [rsp + 3216], 3            # result
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n373_call_builtin_icon_α
.Lx811_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_icon_α:
                        mov              r11, 288
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3176], rax
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3160], rax
                        .section         .rodata
.Lrkfn813:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn813]
                        lea              rsi, [rsp + 3152]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx
                        cmp              al, 104;                             je    n257_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n257_disjunction_as
n373_call_builtin_icon_β:
                        mov              r11, 288;                            jmp   n257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      mov              r11, 289
                        mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 8
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n375_call_builtin_icon_α
n374_lit_string_β:      mov              r11, 289;                            jmp   n256_disjunction_af
.Lx814_0:               .quad            .Lx814_0_s
.Lx814_0_s:             .string          "failed 0"
#-----------------------------------------------------------------------------------------------------------------------
n375_call_builtin_icon_α:
                        mov              r11, 290
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3416], rax
                        .section         .rodata
.Lrkfn816:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn816]
                        lea              rsi, [rsp + 3408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              al, 104;                             je    n256_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_disjunction_as
n375_call_builtin_icon_β:
                        mov              r11, 290;                            jmp   n256_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             mov              r11, 291
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n377_call_builtin_icon_α
n376_var_β:             mov              r11, 291;                            jmp   n256_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n377_call_builtin_icon_α:
                        mov              r11, 292
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax
                        .section         .rodata
.Lrkfn820:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn820]
                        lea              rsi, [rsp + 3344]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              al, 104;                             je    n256_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_disjunction_as
n377_call_builtin_icon_β:
                        mov              r11, 292;                            jmp   n256_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      mov              r11, 293
                        mov              qword ptr [rsp + 4080], 2            # result
                        mov              dword ptr [rsp + 4084], 10
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n379_call_builtin_icon_α
n378_lit_string_β:      mov              r11, 293;                            jmp   n241_disjunction_af
.Lx821_0:               .quad            .Lx821_0_s
.Lx821_0_s:             .string          "failed d71"
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_icon_α:
                        mov              r11, 294
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 4056], rax
                        .section         .rodata
.Lrkfn823:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn823]
                        lea              rsi, [rsp + 4048]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              al, 104;                             je    n241_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n241_disjunction_as
n379_call_builtin_icon_β:
                        mov              r11, 294;                            jmp   n241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:             mov              r11, 295
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n381_lit_integer_α
n380_var_β:             mov              r11, 295;                            jmp   n241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_integer_α:     mov              r11, 296
                        mov              qword ptr [rsp + 4000], 3            # result
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n382_call_builtin_icon_α
.Lx826_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_icon_α:
                        mov              r11, 297
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3960], rax
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3944], rax
                        .section         .rodata
.Lrkfn828:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn828]
                        lea              rsi, [rsp + 3936]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                        cmp              al, 104;                             je    n241_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n383_lit_integer_α
n382_call_builtin_icon_β:
                        mov              r11, 297;                            jmp   n241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_integer_α:     mov              r11, 298
                        mov              qword ptr [rsp + 4016], 3            # result
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n384_call_builtin_icon_α
.Lx829_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_icon_α:
                        mov              r11, 299
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 3896], rax
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3880], rax
                        .section         .rodata
.Lrkfn831:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn831]
                        lea              rsi, [rsp + 3872]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx
                        cmp              al, 104;                             je    n241_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n241_disjunction_as
n384_call_builtin_icon_β:
                        mov              r11, 299;                            jmp   n241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      mov              r11, 300
                        mov              qword ptr [rsp + 4304], 2            # result
                        mov              dword ptr [rsp + 4308], 10
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rsp + 4312], rax;         jmp   n386_call_builtin_icon_α
n385_lit_string_β:      mov              r11, 300;                            jmp   n240_disjunction_af
.Lx832_0:               .quad            .Lx832_0_s
.Lx832_0_s:             .string          "failed d36"
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_icon_α:
                        mov              r11, 301
                        mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4280], rax
                        .section         .rodata
.Lrkfn834:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn834]
                        lea              rsi, [rsp + 4272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              al, 104;                             je    n240_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n240_disjunction_as
n386_call_builtin_icon_β:
                        mov              r11, 301;                            jmp   n240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             mov              r11, 302
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 4208], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n388_lit_integer_α
n387_var_β:             mov              r11, 302;                            jmp   n240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_integer_α:     mov              r11, 303
                        mov              qword ptr [rsp + 4224], 3            # result
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n389_lit_integer_α
.Lx837_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     mov              r11, 304
                        mov              qword ptr [rsp + 4240], 3            # result
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n390_call_builtin_icon_α
.Lx838_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              r11, 305
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4184], rax
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4168], rax
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4152], rax
                        .section         .rodata
.Lrkfn840:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn840]
                        lea              rsi, [rsp + 4144]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx
                        cmp              al, 104;                             je    n240_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n240_disjunction_as
n390_call_builtin_icon_β:
                        mov              r11, 305;                            jmp   n240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], 9
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n392_call_builtin_icon_α
n391_lit_string_β:      mov              r11, 306;                            jmp   n239_disjunction_af
.Lx841_0:               .quad            .Lx841_0_s
.Lx841_0_s:             .string          "failed dn"
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_icon_α:
                        mov              r11, 307
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4440], rax
                        .section         .rodata
.Lrkfn843:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn843]
                        lea              rsi, [rsp + 4432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx
                        cmp              al, 104;                             je    n239_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n239_disjunction_as
n392_call_builtin_icon_β:
                        mov              r11, 307;                            jmp   n239_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n393_var_α:             mov              r11, 308
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 4408], rax;         jmp   n394_call_builtin_icon_α
n393_var_β:             mov              r11, 308;                            jmp   n239_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n394_call_builtin_icon_α:
                        mov              r11, 309
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 4376], rax
                        .section         .rodata
.Lrkfn847:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn847]
                        lea              rsi, [rsp + 4368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              al, 104;                             je    n239_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n239_disjunction_as
n394_call_builtin_icon_β:
                        mov              r11, 309;                            jmp   n239_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:      mov              r11, 310
                        mov              qword ptr [rsp + 4976], 2            # result
                        mov              dword ptr [rsp + 4980], 8
                        mov              rax, qword ptr [rip + .Lx848_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n396_call_builtin_icon_α
n395_lit_string_β:      mov              r11, 310;                            jmp   n229_disjunction_af
.Lx848_0:               .quad            .Lx848_0_s
.Lx848_0_s:             .string          "failed n"
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_icon_α:
                        mov              r11, 311
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4952], rax
                        .section         .rodata
.Lrkfn850:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn850]
                        lea              rsi, [rsp + 4944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              al, 104;                             je    n229_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n229_disjunction_as
n396_call_builtin_icon_β:
                        mov              r11, 311;                            jmp   n229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:             mov              r11, 312
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 4872], rax;         jmp   n398_keyword_icon_α
n397_var_β:             mov              r11, 312;                            jmp   n229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n398_keyword_icon_α:    mov              r11, 313
                        mov              qword ptr [rsp + 4880], 0
                        mov              qword ptr [rsp + 4888], 0;           jmp   n399_lit_string_α
n398_keyword_icon_β:    mov              r11, 313;                            jmp   n229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              r11, 314
                        mov              qword ptr [rsp + 4912], 2            # result
                        mov              dword ptr [rsp + 4916], 4
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rsp + 4920], rax;         jmp   n400_call_builtin_icon_α
.Lx854_0:               .quad            .Lx854_0_s
.Lx854_0_s:             .string          "null"
#-----------------------------------------------------------------------------------------------------------------------
n400_call_builtin_icon_α:
                        mov              r11, 315
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 4832], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 4840], rax
                        mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 4824], rax
                        mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 4808], rax
                        .section         .rodata
.Lrkfn856:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn856]
                        lea              rsi, [rsp + 4800]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx
                        cmp              al, 104;                             je    n229_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n229_disjunction_as
n400_call_builtin_icon_β:
                        mov              r11, 315;                            jmp   n229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rsp + 5312], 2            # result
                        mov              dword ptr [rsp + 5316], 9
                        mov              rax, qword ptr [rip + .Lx857_0]
                        mov              qword ptr [rsp + 5320], rax;         jmp   n402_call_builtin_icon_α
n401_lit_string_β:      mov              r11, 316;                            jmp   n228_disjunction_af
.Lx857_0:               .quad            .Lx857_0_s
.Lx857_0_s:             .string          "failed 67"
#-----------------------------------------------------------------------------------------------------------------------
n402_call_builtin_icon_α:
                        mov              r11, 317
                        mov              rax, qword ptr [rsp + 5312]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5320]
                        mov              qword ptr [rsp + 5288], rax
                        .section         .rodata
.Lrkfn859:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn859]
                        lea              rsi, [rsp + 5280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx
                        cmp              al, 104;                             je    n228_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n228_disjunction_as
n402_call_builtin_icon_β:
                        mov              r11, 317;                            jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:             mov              r11, 318
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 5184], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n404_lit_integer_α
n403_var_β:             mov              r11, 318;                            jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:     mov              r11, 319
                        mov              qword ptr [rsp + 5200], 3            # result
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rsp + 5208], rax;         jmp   n405_lit_integer_α
.Lx862_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:     mov              r11, 320
                        mov              qword ptr [rsp + 5216], 3            # result
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rsp + 5224], rax;         jmp   n406_call_builtin_icon_α
.Lx863_0:               .quad            66
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_icon_α:
                        mov              r11, 321
                        mov              rax, qword ptr [rsp + 5216]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5224]
                        mov              qword ptr [rsp + 5160], rax
                        mov              rax, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 5144], rax
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5128], rax
                        .section         .rodata
.Lrkfn865:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn865]
                        lea              rsi, [rsp + 5120]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5104], rax
                        mov              qword ptr [rsp + 5112], rdx
                        cmp              al, 104;                             je    n228_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n407_lit_integer_α
n406_call_builtin_icon_β:
                        mov              r11, 321;                            jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_integer_α:     mov              r11, 322
                        mov              qword ptr [rsp + 5232], 3            # result
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rsp + 5240], rax;         jmp   n408_lit_integer_α
.Lx866_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_integer_α:     mov              r11, 323
                        mov              qword ptr [rsp + 5248], 3            # result
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rsp + 5256], rax;         jmp   n409_call_builtin_icon_α
.Lx867_0:               .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n409_call_builtin_icon_α:
                        mov              r11, 324
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5072], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5080], rax
                        mov              rax, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 5064], rax
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 5040], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 5048], rax
                        .section         .rodata
.Lrkfn869:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]
                        lea              rsi, [rsp + 5040]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        cmp              al, 104;                             je    n228_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n228_disjunction_as
n409_call_builtin_icon_β:
                        mov              r11, 324;                            jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:      mov              r11, 325
                        mov              qword ptr [rsp + 5536], 2            # result
                        mov              dword ptr [rsp + 5540], 8
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rsp + 5544], rax;         jmp   n411_call_builtin_icon_α
n410_lit_string_β:      mov              r11, 325;                            jmp   n227_disjunction_af
.Lx870_0:               .quad            .Lx870_0_s
.Lx870_0_s:             .string          "failed 5"
#-----------------------------------------------------------------------------------------------------------------------
n411_call_builtin_icon_α:
                        mov              r11, 326
                        mov              rax, qword ptr [rsp + 5536]
                        mov              qword ptr [rsp + 5504], rax
                        mov              rax, qword ptr [rsp + 5544]
                        mov              qword ptr [rsp + 5512], rax
                        .section         .rodata
.Lrkfn872:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn872]
                        lea              rsi, [rsp + 5504]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx
                        cmp              al, 104;                             je    n227_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_disjunction_as
n411_call_builtin_icon_β:
                        mov              r11, 326;                            jmp   n227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             mov              r11, 327
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 5440], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 5448], rax;         jmp   n413_lit_integer_α
n412_var_β:             mov              r11, 327;                            jmp   n227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:     mov              r11, 328
                        mov              qword ptr [rsp + 5456], 3            # result
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rsp + 5464], rax;         jmp   n414_lit_integer_α
.Lx875_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:     mov              r11, 329
                        mov              qword ptr [rsp + 5472], 3            # result
                        mov              rax, qword ptr [rip + .Lx876_0]
                        mov              qword ptr [rsp + 5480], rax;         jmp   n415_call_builtin_icon_α
.Lx876_0:               .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_icon_α:
                        mov              r11, 330
                        mov              rax, qword ptr [rsp + 5472]
                        mov              qword ptr [rsp + 5408], rax
                        mov              rax, qword ptr [rsp + 5480]
                        mov              qword ptr [rsp + 5416], rax
                        mov              rax, qword ptr [rsp + 5456]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5464]
                        mov              qword ptr [rsp + 5400], rax
                        mov              rax, qword ptr [rsp + 5440]
                        mov              qword ptr [rsp + 5376], rax
                        mov              rax, qword ptr [rsp + 5448]
                        mov              qword ptr [rsp + 5384], rax
                        .section         .rodata
.Lrkfn878:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn878]
                        lea              rsi, [rsp + 5376]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5360], rax
                        mov              qword ptr [rsp + 5368], rdx
                        cmp              al, 104;                             je    n227_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_disjunction_as
n415_call_builtin_icon_β:
                        mov              r11, 330;                            jmp   n227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rsp + 5776], 2            # result
                        mov              dword ptr [rsp + 5780], 8
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n417_call_builtin_icon_α
n416_lit_string_β:      mov              r11, 331;                            jmp   n226_disjunction_af
.Lx879_0:               .quad            .Lx879_0_s
.Lx879_0_s:             .string          "failed 3"
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_icon_α:
                        mov              r11, 332
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5744], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5752], rax
                        .section         .rodata
.Lrkfn881:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn881]
                        lea              rsi, [rsp + 5744]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5728], rax
                        mov              qword ptr [rsp + 5736], rdx
                        cmp              al, 104;                             je    n226_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n226_disjunction_as
n417_call_builtin_icon_β:
                        mov              r11, 332;                            jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             mov              r11, 333
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 5664], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 5672], rax;         jmp   n419_lit_integer_α
n418_var_β:             mov              r11, 333;                            jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_integer_α:     mov              r11, 334
                        mov              qword ptr [rsp + 5680], 3            # result
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rsp + 5688], rax;         jmp   n420_keyword_icon_α
.Lx884_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n420_keyword_icon_α:    mov              r11, 335
                        mov              qword ptr [rsp + 5696], 0
                        mov              qword ptr [rsp + 5704], 0;           jmp   n421_call_builtin_icon_α
n420_keyword_icon_β:    mov              r11, 335;                            jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n421_call_builtin_icon_α:
                        mov              r11, 336
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 5632], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 5640], rax
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5624], rax
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5608], rax
                        .section         .rodata
.Lrkfn887:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn887]
                        lea              rsi, [rsp + 5600]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx
                        cmp              al, 104;                             je    n226_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n226_disjunction_as
n421_call_builtin_icon_β:
                        mov              r11, 336;                            jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              r11, 337
                        mov              qword ptr [rsp + 5968], 2            # result
                        mov              dword ptr [rsp + 5972], 8
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rsp + 5976], rax;         jmp   n423_call_builtin_icon_α
n422_lit_string_β:      mov              r11, 337;                            jmp   n225_disjunction_af
.Lx888_0:               .quad            .Lx888_0_s
.Lx888_0_s:             .string          "failed 1"
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_icon_α:
                        mov              r11, 338
                        mov              rax, qword ptr [rsp + 5968]
                        mov              qword ptr [rsp + 5936], rax
                        mov              rax, qword ptr [rsp + 5976]
                        mov              qword ptr [rsp + 5944], rax
                        .section         .rodata
.Lrkfn890:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn890]
                        lea              rsi, [rsp + 5936]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5920], rax
                        mov              qword ptr [rsp + 5928], rdx
                        cmp              al, 104;                             je    n225_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_disjunction_as
n423_call_builtin_icon_β:
                        mov              r11, 338;                            jmp   n225_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             mov              r11, 339
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 5888], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 5896], rax;         jmp   n425_lit_integer_α
n424_var_β:             mov              r11, 339;                            jmp   n225_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:     mov              r11, 340
                        mov              qword ptr [rsp + 5904], 3            # result
                        mov              rax, qword ptr [rip + .Lx893_0]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n426_call_builtin_icon_α
.Lx893_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_icon_α:
                        mov              r11, 341
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5856], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5864], rax
                        mov              rax, qword ptr [rsp + 5888]
                        mov              qword ptr [rsp + 5840], rax
                        mov              rax, qword ptr [rsp + 5896]
                        mov              qword ptr [rsp + 5848], rax
                        .section         .rodata
.Lrkfn895:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn895]
                        lea              rsi, [rsp + 5840]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5824], rax
                        mov              qword ptr [rsp + 5832], rdx
                        cmp              al, 104;                             je    n225_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_disjunction_as
n426_call_builtin_icon_β:
                        mov              r11, 341;                            jmp   n225_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rsp + 6128], 2            # result
                        mov              dword ptr [rsp + 6132], 8
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rsp + 6136], rax;         jmp   n428_call_builtin_icon_α
n427_lit_string_β:      mov              r11, 342;                            jmp   n224_disjunction_af
.Lx896_0:               .quad            .Lx896_0_s
.Lx896_0_s:             .string          "failed 0"
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_icon_α:
                        mov              r11, 343
                        mov              rax, qword ptr [rsp + 6128]
                        mov              qword ptr [rsp + 6096], rax
                        mov              rax, qword ptr [rsp + 6136]
                        mov              qword ptr [rsp + 6104], rax
                        .section         .rodata
.Lrkfn898:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn898]
                        lea              rsi, [rsp + 6096]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx
                        cmp              al, 104;                             je    n224_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n224_disjunction_as
n428_call_builtin_icon_β:
                        mov              r11, 343;                            jmp   n224_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 6064], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 6072], rax;         jmp   n430_call_builtin_icon_α
n429_var_β:             mov              r11, 344;                            jmp   n224_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n430_call_builtin_icon_α:
                        mov              r11, 345
                        mov              rax, qword ptr [rsp + 6064]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 6072]
                        mov              qword ptr [rsp + 6040], rax
                        .section         .rodata
.Lrkfn902:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn902]
                        lea              rsi, [rsp + 6032]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              al, 104;                             je    n224_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n224_disjunction_as
n430_call_builtin_icon_β:
                        mov              r11, 345;                            jmp   n224_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rsp + 6496], 2            # result
                        mov              dword ptr [rsp + 6500], 2
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rsp + 6504], rax;         jmp   n432_call_builtin_icon_α
n431_lit_string_β:      mov              r11, 346;                            jmp   n216_disjunction_af
.Lx903_0:               .quad            .Lx903_0_s
.Lx903_0_s:             .string          "\\2"
#-----------------------------------------------------------------------------------------------------------------------
n432_call_builtin_icon_α:
                        mov              r11, 347
                        mov              rax, qword ptr [rsp + 6496]
                        mov              qword ptr [rsp + 6464], rax
                        mov              rax, qword ptr [rsp + 6504]
                        mov              qword ptr [rsp + 6472], rax
                        .section         .rodata
.Lrkfn905:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn905]
                        lea              rsi, [rsp + 6464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6448], rax
                        mov              qword ptr [rsp + 6456], rdx
                        cmp              al, 104;                             je    n216_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n216_disjunction_as
n432_call_builtin_icon_β:
                        mov              r11, 347;                            jmp   n216_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 6384], rax
                        mov              qword ptr [rsp + 6392], rdx;         jmp   n434_lit_integer_α
n433_var_ref_β:         mov              r11, 348;                            jmp   n216_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:     mov              r11, 349
                        mov              qword ptr [rsp + 6400], 3            # result
                        mov              rax, qword ptr [rip + .Lx908_0]
                        mov              qword ptr [rsp + 6408], rax;         jmp   n435_subscript_α
.Lx908_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n435_subscript_α:       mov              r11, 350
                        mov              rdi, qword ptr [rsp + 6384]
                        mov              rsi, qword ptr [rsp + 6392]
                        mov              rdx, qword ptr [rsp + 6400]
                        mov              rcx, qword ptr [rsp + 6408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n216_disjunction_af
                        mov              qword ptr [rsp + 6416], rax
                        mov              qword ptr [rsp + 6424], rdx;         jmp   n436_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n436_deref_α:           mov              r11, 351
                        mov              rdi, qword ptr [rsp + 6416]
                        mov              rsi, qword ptr [rsp + 6424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n216_disjunction_af
                        mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx;         jmp   n437_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n437_unop_test_α:       mov              r11, 352
                        mov              eax, dword ptr [rsp + 6432]
                        cmp              al, 104;                             je    n216_disjunction_af
                        cmp              eax, 0;                              je    n216_disjunction_af
                        mov              rax, qword ptr [rsp + 6432]
                        mov              qword ptr [rsp + 6368], rax
                        mov              rax, qword ptr [rsp + 6440]
                        mov              qword ptr [rsp + 6376], rax;         jmp   n216_disjunction_as
n437_unop_test_β:       mov              r11, 352;                            jmp   n216_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:      mov              r11, 353
                        mov              qword ptr [rsp + 6672], 2            # result
                        mov              dword ptr [rsp + 6676], 2
                        mov              rax, qword ptr [rip + .Lx912_0]
                        mov              qword ptr [rsp + 6680], rax;         jmp   n439_call_builtin_icon_α
n438_lit_string_β:      mov              r11, 353;                            jmp   n215_disjunction_af
.Lx912_0:               .quad            .Lx912_0_s
.Lx912_0_s:             .string          "/1"
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_icon_α:
                        mov              r11, 354
                        mov              rax, qword ptr [rsp + 6672]
                        mov              qword ptr [rsp + 6640], rax
                        mov              rax, qword ptr [rsp + 6680]
                        mov              qword ptr [rsp + 6648], rax
                        .section         .rodata
.Lrkfn914:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn914]
                        lea              rsi, [rsp + 6640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6624], rax
                        mov              qword ptr [rsp + 6632], rdx
                        cmp              al, 104;                             je    n215_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n215_disjunction_as
n439_call_builtin_icon_β:
                        mov              r11, 354;                            jmp   n215_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              r11, 355
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8480]
                        mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx;         jmp   n441_lit_integer_α
n440_var_ref_β:         mov              r11, 355;                            jmp   n215_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_integer_α:     mov              r11, 356
                        mov              qword ptr [rsp + 6576], 3            # result
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rsp + 6584], rax;         jmp   n442_subscript_α
.Lx917_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n442_subscript_α:       mov              r11, 357
                        mov              rdi, qword ptr [rsp + 6560]
                        mov              rsi, qword ptr [rsp + 6568]
                        mov              rdx, qword ptr [rsp + 6576]
                        mov              rcx, qword ptr [rsp + 6584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n215_disjunction_af
                        mov              qword ptr [rsp + 6592], rax
                        mov              qword ptr [rsp + 6600], rdx;         jmp   n443_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n443_deref_α:           mov              r11, 358
                        mov              rdi, qword ptr [rsp + 6592]
                        mov              rsi, qword ptr [rsp + 6600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n215_disjunction_af
                        mov              qword ptr [rsp + 6608], rax
                        mov              qword ptr [rsp + 6616], rdx;         jmp   n444_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n444_unop_test_α:       mov              r11, 359
                        mov              eax, dword ptr [rsp + 6608]
                        cmp              al, 104;                             je    n215_disjunction_af
                        cmp              eax, 0;                              jne   n215_disjunction_af
                        mov              qword ptr [rsp + 6544], 0
                        mov              qword ptr [rsp + 6552], 0;           jmp   n215_disjunction_as
n444_unop_test_β:       mov              r11, 359;                            jmp   n215_disjunction_af
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
.Lstartup_pname0:       .string          "tdump"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tdump
                        .quad            tdump_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1552
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
