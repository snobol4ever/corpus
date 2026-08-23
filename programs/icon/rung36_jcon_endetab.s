                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__ferr:
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rcx
                        mov              qword ptr [rsp + 1456], rdx
                        mov              rdi, rsp
                        add              rdi, 1312
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
ferr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 0
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n1_assign_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              r11, 4
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n4_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n4_iterate_α:           mov              r11, 5
                        mov              qword ptr [rsp + 1248], 0
.Lx62_0:                mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              rax, 104;                            je    n10_var_α
                                                                              jmp   n5_call_builtin_icon_α
n4_iterate_β:           mov              r11, 5
                        inc              qword ptr [rsp + 1248];              jmp   .Lx62_0
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn64:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n4_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_lit_string_α
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n4_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n7_binop_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:             mov              r11, 8
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              r11, 9
                        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              rcx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 10
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n4_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n12_lit_integer_α
.Lx71_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n13_subscript_α
.Lx72_0:                .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n13_subscript_α:        mov              r11, 14
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              r8, qword ptr [rsp + 1120]
                        mov              r9, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n15_lit_string_α
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 8
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n16_var_α
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "oops -- "
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n17_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn79:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rsp + 976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n26_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_binop_α
n17_call_builtin_icon_β:
                        mov              r11, 18;                             jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:            mov              r11, 19
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n20_binop_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:            mov              r11, 21
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n22_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              r11, 23
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 2
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n24_binop_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          ") "
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              r11, 25
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n27_keyword_assign_α
.Lx89_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n27_keyword_assign_α:   mov              r11, 28
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_error_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n28_disjunction_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              r11, 29
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n46_var_α
n28_disjunction_as:     mov              r11, 29
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx92_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n52_lit_integer_α
.Lx92_0:                cmp              eax, 1;                              jne   .Lx92_1
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 104], rax;          jmp   n52_lit_integer_α
.Lx92_1:                                                                      jmp   n52_lit_integer_α
n28_disjunction_β:      mov              r11, 29
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n52_lit_integer_α
                                                                              jmp   n29_disjunction_β
n28_disjunction_af:     mov              r11, 29
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n29_disjunction_α
                                                                              jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_disjunction_α:      mov              r11, 30
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n40_keyword_icon_α
n29_disjunction_as:     mov              r11, 30
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx94_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n28_disjunction_as
.Lx94_0:                cmp              eax, 1;                              jne   .Lx94_1
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 344], rax;          jmp   n28_disjunction_as
.Lx94_1:                                                                      jmp   n28_disjunction_as
n29_disjunction_β:      mov              r11, 30
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n52_lit_integer_α
                                                                              jmp   n30_disjunction_β
n29_disjunction_af:     mov              r11, 30
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n30_disjunction_α
                                                                              jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_disjunction_α:      mov              r11, 31
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              dword ptr [rsp + 544], 0;            jmp   n31_keyword_icon_α
n30_disjunction_as:     mov              r11, 31
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 0;                              jne   .Lx96_0
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax;          jmp   n29_disjunction_as
.Lx96_0:                                                                      jmp   n29_disjunction_as
n30_disjunction_β:      mov              r11, 31
                        mov              eax, dword ptr [rsp + 544];          jmp   n52_lit_integer_α
n30_disjunction_af:     mov              r11, 31
                        add              dword ptr [rsp + 544], 1
                        mov              eax, dword ptr [rsp + 544];          jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_keyword_icon_α:     mov              r11, 32
                        mov              rdi, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n30_disjunction_af
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n32_var_α
n31_keyword_icon_β:     mov              r11, 32;                             jmp   n30_disjunction_af
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              r11, 33
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 824], rax;          jmp   n33_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_test_α:       mov              r11, 34
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 112;                             je    .Lx100_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx100_0
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 3;                               jne   .Lx100_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx100_2
.Lx100_1:               mov              rax, qword ptr [rsp + 792]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            je    n30_disjunction_af
                        mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 768], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 776], rcx;          jmp   n34_var_α
.Lx100_0:               mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 10
                        lea              r9, [rsp + 768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx100_1
                        cmp              eax, 1;                              je    n30_disjunction_af
                                                                              jmp   n34_var_α
.Lx100_2:               mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n30_disjunction_af
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 776], rax;          jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 680], rax;          jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 10
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n36_keyword_icon_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "got error "
#-----------------------------------------------------------------------------------------------------------------------
n36_keyword_icon_α:     mov              r11, 37
                        mov              rdi, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n52_lit_integer_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n37_lit_string_α
n36_keyword_icon_β:     mov              r11, 37;                             jmp   n52_lit_integer_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 12
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n38_var_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          " instead of "
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              r11, 39
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 760], rax;          jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn109:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rsp + 576]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n52_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_disjunction_as
n39_call_builtin_icon_β:
                        mov              r11, 40;                             jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_keyword_icon_α:     mov              r11, 41
                        mov              rdi, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n29_disjunction_af
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n41_lit_integer_α
n40_keyword_icon_β:     mov              r11, 41;                             jmp   n29_disjunction_af
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n42_binop_test_α
.Lx111_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_test_α:       mov              r11, 43
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 112;                             je    .Lx112_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 112;                             je    .Lx112_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 3;                               jne   .Lx112_2
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 3;                               jne   .Lx112_2
.Lx112_1:               mov              rax, qword ptr [rsp + 488]
                        mov              rcx, qword ptr [rsp + 520]
                        cmp              rax, rcx;                            je    n29_disjunction_af
                        mov              rcx, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rcx
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rcx;          jmp   n43_var_α
.Lx112_0:               mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              r8d, 10
                        lea              r9, [rsp + 464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx112_1
                        cmp              eax, 1;                              je    n29_disjunction_af
                                                                              jmp   n43_var_α
.Lx112_2:               mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n29_disjunction_af
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax;          jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              mov              r11, 44
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 440], rax;          jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 19
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n45_call_builtin_icon_α
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "failed but no error"
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn117:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n52_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_disjunction_as
n45_call_builtin_icon_β:
                        mov              r11, 46;                             jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 232], rax;          jmp   n47_var_α
n46_var_β:              mov              r11, 47;                             jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 328], rax;          jmp   n48_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_value_α:       mov              r11, 49
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 264], rax
                        mov              qword ptr [rsp + 272], 0
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx123_7
                        lea              rcx, [rip + .Lx123_4]
                        push             rcx
                        lea              rcx, [rip + .Lx123_3]
                        push             rcx;                                 jmp   rax
.Lx123_3:               mov              qword ptr [rsp + 280], rsp
                        mov              rax, qword ptr [rsp + 272]
                        test             rax, rax;                            jne   .Lx123_5
                        mov              qword ptr [rsp + 272], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx123_2
.Lx123_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx123_2
.Lx123_4:               mov              qword ptr [rsp + 280], rsp
                        mov              rax, qword ptr [rsp + 272]
                        test             rax, rax;                            jne   .Lx123_6
                        mov              qword ptr [rsp + 272], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx123_2
.Lx123_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx123_2
.Lx123_7:               mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        lea              r8, [rsp + 272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx123_2:               mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n28_disjunction_af
                                                                              jmp   n49_var_α
n48_call_value_β:       mov              r11, 49
                        mov              rax, qword ptr [rsp + 272]
                        cmp              rax, 1;                              jne   .Lx123_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 280];          jmp   qword ptr [rsp]
.Lx123_8:               lea              rdi, [rsp + 272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n28_disjunction_af
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n49_var_α
                                                                              jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              r11, 50
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 200], rax;          jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 9
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n51_call_builtin_icon_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "succeeded"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn128:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rsp + 144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n52_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_disjunction_as
n51_call_builtin_icon_β:
                        mov              r11, 52;                             jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 53
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n53_keyword_assign_α
.Lx129_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n53_keyword_assign_α:   mov              r11, 54
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_error_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n54_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n54_return_α
#-----------------------------------------------------------------------------------------------------------------------
n54_return_α:           mov              r11, 55
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   ferr_γ
#-----------------------------------------------------------------------------------------------------------------------
ferr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ferr_β:
                                                                              jmp   ferr_ω
#-----------------------------------------------------------------------------------------------------------------------
ferr_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1448]
                        add              rsp, 1472;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ferr_ω:
                        mov              rcx, qword ptr [rsp + 1456]
                        add              rsp, 1472;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ferr_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rcx
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
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
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
                        add              rsp, 32
                        lea              rcx, [rip + .Lx132_2]
                        lea              rdx, [rip + .Lx132_3];               jmp   FN__ferr
.Lx132_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx132_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__endetab1:
                        sub              rsp, 2416
                        mov              qword ptr [rsp + 2392], rcx
                        mov              qword ptr [rsp + 2400], rdx
                        mov              rdi, rsp
                        add              rdi, 2240
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
endetab1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      mov              r11, 56
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n134_call_proc_staged_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        mov              r11, 57
                        lea              rsi, [rsp + 2224]
                        call             setup_dcα;                           jmp   .Lx219_2
.Lx219_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx219_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2176]
                        mov              rdx, qword ptr [rsp + 2184]
.Lx219_29:              mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        cmp              al, 104;                             je    n136_call_builtin_icon_α
                                                                              jmp   n135_assign_α
n134_call_proc_staged_β:
                        mov              r11, 57;                             jmp   n136_call_builtin_icon_α
.Lx219_0:               .quad            .Lx219_0_s
.Lx219_0_s:             .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 58
                        mov              rax, qword ptr [rsp + 2176]
                        mov              rdx, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        mov              r11, 59
                        .section         .rodata
.Lrkfn222:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn222]
                        lea              rsi, [rsp + 80]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    endetab1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_call_proc_staged_α
n136_call_builtin_icon_β:
                        mov              r11, 59;                             jmp   endetab1_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              r11, 60
                        lea              rsi, [rsp + 64]
                        call             escape_dcα;                          jmp   .Lx224_2
.Lx224_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx224_29
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
.Lx224_29:              mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    endetab1_ω
                                                                              jmp   n138_assign_α
n137_call_proc_staged_β:
                        mov              r11, 60;                             jmp   endetab1_ω
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "escape"
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:          mov              r11, 61
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n139_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n139_disjunction_α:     mov              r11, 62
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n208_var_ref_α
n139_disjunction_as:    mov              r11, 62
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx227_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n136_call_builtin_icon_α
.Lx227_0:               cmp              eax, 1;                              jne   .Lx227_1
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 104], rax;          jmp   n136_call_builtin_icon_α
.Lx227_1:                                                                     jmp   n136_call_builtin_icon_α
n139_disjunction_β:     mov              r11, 62
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n136_call_builtin_icon_α
                                                                              jmp   n154_disjunction_β
n139_disjunction_af:    mov              r11, 62
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n140_var_α
                                                                              jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             mov              r11, 63
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n141_lit_string_α
n140_var_β:             mov              r11, 63;                             jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 64
                        mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 2
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n142_lit_string_α
.Lx230_0:               .quad            .Lx230_0_s
.Lx230_0_s:             .string          "!."
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 65
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 2
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n143_call_builtin_icon_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_icon_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2072], rax
                        .section         .rodata
.Lrkfn233:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rsp + 2064]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n145_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_assign_α
n143_call_builtin_icon_β:
                        mov              r11, 66;                             jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:          mov              r11, 67
                        mov              rax, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2256]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n146_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     mov              r11, 69
                        mov              qword ptr [rsp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n147_subscript_α
.Lx237_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n147_subscript_α:       mov              r11, 70
                        mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 1984]
                        mov              rcx, qword ptr [rsp + 1992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n150_lit_string_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             mov              r11, 71
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n149_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_var_α:      mov              r11, 72
                        mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, qword ptr [rsp + 2032]
                        mov              rcx, qword ptr [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n150_lit_string_α
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              r11, 73
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 5
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n151_var_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             mov              r11, 74
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n152_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_value_α:      mov              r11, 75
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1896], rax
                        mov              qword ptr [rsp + 1904], 0
                        mov              rdi, qword ptr [rsp + 1856]
                        mov              rsi, qword ptr [rsp + 1864]
                        mov              rdx, qword ptr [rsp + 1888]
                        mov              rcx, qword ptr [rsp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx246_7
                        lea              rcx, [rip + .Lx246_4]
                        push             rcx
                        lea              rcx, [rip + .Lx246_3]
                        push             rcx;                                 jmp   rax
.Lx246_3:               mov              qword ptr [rsp + 1912], rsp
                        mov              rax, qword ptr [rsp + 1904]
                        test             rax, rax;                            jne   .Lx246_5
                        mov              qword ptr [rsp + 1904], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx246_2
.Lx246_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx246_2
.Lx246_4:               mov              qword ptr [rsp + 1912], rsp
                        mov              rax, qword ptr [rsp + 1904]
                        test             rax, rax;                            jne   .Lx246_6
                        mov              qword ptr [rsp + 1904], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx246_2
.Lx246_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx246_2
.Lx246_7:               mov              rdi, qword ptr [rsp + 1856]
                        mov              rsi, qword ptr [rsp + 1864]
                        mov              rdx, qword ptr [rsp + 1888]
                        mov              rcx, qword ptr [rsp + 1896]
                        lea              r8, [rsp + 1904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx246_2:               mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n154_disjunction_α
                                                                              jmp   n153_assign_α
n152_call_value_β:      mov              r11, 75
                        mov              rax, qword ptr [rsp + 1904]
                        cmp              rax, 1;                              jne   .Lx246_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1912];         jmp   qword ptr [rsp]
.Lx246_8:               lea              rdi, [rsp + 1904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n154_disjunction_α
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n153_assign_α
                                                                              jmp   n154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:          mov              r11, 76
                        mov              rax, qword ptr [rsp + 1872]
                        mov              rdx, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n154_disjunction_α:     mov              r11, 77
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n191_var_α
n154_disjunction_as:    mov              r11, 77
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx249_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax;          jmp   n155_conjunction_α
.Lx249_0:               cmp              eax, 1;                              jne   .Lx249_1
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 328], rax;          jmp   n155_conjunction_α
.Lx249_1:                                                                     jmp   n155_conjunction_α
n154_disjunction_β:     mov              r11, 77
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              je    n136_call_builtin_icon_α
                                                                              jmp   n173_disjunction_β
n154_disjunction_af:    mov              r11, 77
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 1;                              je    n156_disjunction_α
                                                                              jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n155_conjunction_α:     mov              r11, 78
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   n139_disjunction_as
n155_conjunction_β:     mov              r11, 78;                             jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n156_disjunction_α:     mov              r11, 79
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              dword ptr [rsp + 1616], 0;           jmp   n157_lit_charset_α
n156_disjunction_as:    mov              r11, 79
                        mov              eax, dword ptr [rsp + 1616]
                        cmp              eax, 0;                              jne   .Lx252_0
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n164_var_ref_α
.Lx252_0:                                                                     jmp   n164_var_ref_α
n156_disjunction_β:     mov              r11, 79
                        mov              eax, dword ptr [rsp + 1616];         jmp   n162_call_value_β
n156_disjunction_af:    mov              r11, 79
                        add              dword ptr [rsp + 1616], 1
                        mov              eax, dword ptr [rsp + 1616];         jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_charset_α:     mov              r11, 80
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], -1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n158_var_α
n157_lit_charset_β:     mov              r11, 80;                             jmp   n156_disjunction_af
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             mov              r11, 81
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n159_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_gen_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1784], rax
                        mov              qword ptr [rsp + 1808], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx256_60:              .section         .rodata
.Lbynamegenfn82:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn82]
                        lea              rsi, [rsp + 1776]
                        mov              edx, 2
                        lea              rcx, [rsp + 1808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    n156_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n160_lit_string_α
n159_call_builtin_gen_β:
                        mov              r11, 82;                             jmp   .Lx256_60
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 5
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n161_var_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             mov              r11, 84
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n162_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_value_α:      mov              r11, 85
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1688], rax
                        mov              qword ptr [rsp + 1696], 0
                        mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx261_7
                        lea              rcx, [rip + .Lx261_4]
                        push             rcx
                        lea              rcx, [rip + .Lx261_3]
                        push             rcx;                                 jmp   rax
.Lx261_3:               mov              qword ptr [rsp + 1704], rsp
                        mov              rax, qword ptr [rsp + 1696]
                        test             rax, rax;                            jne   .Lx261_5
                        mov              qword ptr [rsp + 1696], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx261_2
.Lx261_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx261_2
.Lx261_4:               mov              qword ptr [rsp + 1704], rsp
                        mov              rax, qword ptr [rsp + 1696]
                        test             rax, rax;                            jne   .Lx261_6
                        mov              qword ptr [rsp + 1696], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx261_2
.Lx261_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx261_2
.Lx261_7:               mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        lea              r8, [rsp + 1696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx261_2:               mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n164_var_ref_α
                                                                              jmp   n163_assign_α
n162_call_value_β:      mov              r11, 85
                        mov              rax, qword ptr [rsp + 1696]
                        cmp              rax, 1;                              jne   .Lx261_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1704];         jmp   qword ptr [rsp]
.Lx261_8:               lea              rdi, [rsp + 1696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n164_var_ref_α
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n163_assign_α
                                                                              jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              r11, 86
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n156_disjunction_as
n163_assign_β:          mov              r11, 86;                             jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2256]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              r11, 88
                        mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n166_subscript_α
.Lx265_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n166_subscript_α:       mov              r11, 89
                        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdx, qword ptr [rsp + 1536]
                        mov              rcx, qword ptr [rsp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n169_lit_string_α
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n167_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             mov              r11, 90
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n168_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_var_α:      mov              r11, 91
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              rdx, qword ptr [rsp + 1584]
                        mov              rcx, qword ptr [rsp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n169_lit_string_α
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 5
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n170_var_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             mov              r11, 93
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n171_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_value_α:      mov              r11, 94
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        mov              qword ptr [rsp + 1456], 0
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx274_7
                        lea              rcx, [rip + .Lx274_4]
                        push             rcx
                        lea              rcx, [rip + .Lx274_3]
                        push             rcx;                                 jmp   rax
.Lx274_3:               mov              qword ptr [rsp + 1464], rsp
                        mov              rax, qword ptr [rsp + 1456]
                        test             rax, rax;                            jne   .Lx274_5
                        mov              qword ptr [rsp + 1456], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx274_2
.Lx274_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx274_2
.Lx274_4:               mov              qword ptr [rsp + 1464], rsp
                        mov              rax, qword ptr [rsp + 1456]
                        test             rax, rax;                            jne   .Lx274_6
                        mov              qword ptr [rsp + 1456], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx274_2
.Lx274_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx274_2
.Lx274_7:               mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        lea              r8, [rsp + 1456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx274_2:               mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n173_disjunction_α
                                                                              jmp   n172_assign_α
n171_call_value_β:      mov              r11, 94
                        mov              rax, qword ptr [rsp + 1456]
                        cmp              rax, 1;                              jne   .Lx274_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1464];         jmp   qword ptr [rsp]
.Lx274_8:               lea              rdi, [rsp + 1456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n173_disjunction_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n172_assign_α
                                                                              jmp   n173_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              r11, 95
                        mov              rax, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n173_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n173_disjunction_α:     mov              r11, 96
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              dword ptr [rsp + 912], 0;            jmp   n175_var_α
n173_disjunction_as:    mov              r11, 96
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              jne   .Lx277_0
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax;          jmp   n174_conjunction_α
.Lx277_0:                                                                     jmp   n174_conjunction_α
n173_disjunction_β:     mov              r11, 96
                        mov              eax, dword ptr [rsp + 912];          jmp   n136_call_builtin_icon_α
n173_disjunction_af:    mov              r11, 96
                        add              dword ptr [rsp + 912], 1
                        mov              eax, dword ptr [rsp + 912];          jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n174_conjunction_α:     mov              r11, 97
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 888], rax;          jmp   n154_disjunction_as
n174_conjunction_β:     mov              r11, 97;                             jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:             mov              r11, 98
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n176_var_α
n175_var_β:             mov              r11, 98;                             jmp   n173_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             mov              r11, 99
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n177_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n177_binop_test_α:      mov              r11, 100
                        mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2288]
                        mov              rcx, qword ptr [rsp + 2296]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n173_disjunction_af
                        mov              rdi, qword ptr [rsp + 2288]
                        mov              rsi, qword ptr [rsp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 13
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n179_var_α
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "detab error: "
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 5
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n181_lit_string_α
.Lx287_0:               .quad            .Lx287_0_s
.Lx287_0_s:             .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 5
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n182_call_builtin_icon_α
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_icon_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn290:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_call_builtin_icon_α
n182_call_builtin_icon_β:
                        mov              r11, 105;                            jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_icon_α:
                        mov              r11, 106
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lrkfn292:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn292]
                        lea              rsi, [rsp + 1168]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n184_lit_string_α
n183_call_builtin_icon_β:
                        mov              r11, 106;                            jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 13
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n185_var_α
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "   returned: "
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             mov              r11, 108
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 5
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n187_lit_string_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 5
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n188_call_builtin_icon_α
.Lx297_0:               .quad            .Lx297_0_s
.Lx297_0_s:             .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1048], rax
                        .section         .rodata
.Lrkfn299:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n136_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_call_builtin_icon_α
n188_call_builtin_icon_β:
                        mov              r11, 111;                            jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        mov              r11, 112
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn301:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn301]
                        lea              rsi, [rsp + 960]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n136_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n190_conjunction_α
n189_call_builtin_icon_β:
                        mov              r11, 112;                            jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n190_conjunction_α:     mov              r11, 113
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 936], rax;          jmp   n173_disjunction_as
n190_conjunction_β:     mov              r11, 113;                            jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 808], rax;          jmp   n192_var_α
n191_var_β:             mov              r11, 114;                            jmp   n154_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             mov              r11, 115
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 872], rax;          jmp   n193_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        mov              r11, 116
                        lea              rsi, [rsp + 864]
                        call             interp_dcα;                          jmp   .Lx308_2
.Lx308_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx308_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
.Lx308_29:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n154_disjunction_af
                                                                              jmp   n194_binop_test_α
n193_call_proc_staged_β:
                        mov              r11, 116;                            jmp   n154_disjunction_af
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "interp"
#-----------------------------------------------------------------------------------------------------------------------
n194_binop_test_α:      mov              r11, 117
                        mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n154_disjunction_af
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 13
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n196_var_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "entab error: "
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             mov              r11, 119
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 744], rax;          jmp   n197_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 5
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n198_lit_string_α
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n199_call_builtin_icon_α
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_icon_α:
                        mov              r11, 122
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn316:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn316]
                        lea              rsi, [rsp + 672]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n201_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n200_call_builtin_icon_α
n199_call_builtin_icon_β:
                        mov              r11, 122;                            jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_icon_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn318:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn318]
                        lea              rsi, [rsp + 592]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n201_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_lit_string_α
n200_call_builtin_icon_β:
                        mov              r11, 123;                            jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 13
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n202_var_α
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "   returned: "
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             mov              r11, 125
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 536], rax;          jmp   n203_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 5
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n204_lit_string_α
.Lx322_0:               .quad            .Lx322_0_s
.Lx322_0_s:             .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 5
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n205_call_builtin_icon_α
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              r11, 128
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn325:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]
                        lea              rsi, [rsp + 464]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n136_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n206_call_builtin_icon_α
n205_call_builtin_icon_β:
                        mov              r11, 128;                            jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n206_call_builtin_icon_α:
                        mov              r11, 129
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn327:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn327]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n136_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_conjunction_α
n206_call_builtin_icon_β:
                        mov              r11, 129;                            jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n207_conjunction_α:     mov              r11, 130
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax;          jmp   n154_disjunction_as
n207_conjunction_β:     mov              r11, 130;                            jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2240]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n209_lit_integer_α
n208_var_ref_β:         mov              r11, 131;                            jmp   n139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:     mov              r11, 132
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n210_subscript_α
.Lx331_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n210_subscript_α:       mov              r11, 133
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
                        cmp              al, 104;                             je    n139_disjunction_af
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n211_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_deref_α:           mov              r11, 134
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
                        cmp              al, 104;                             je    n139_disjunction_af
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n212_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n213_binop_test_α
.Lx334_0:               .quad            .Lx334_0_s
.Lx334_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_test_α:      mov              r11, 136
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n139_disjunction_af
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             mov              r11, 137
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 200], rax;          jmp   n215_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_proc_staged_α:
                        mov              r11, 138
                        lea              rsi, [rsp + 192]
                        call             setup_dcα;                           jmp   .Lx339_2
.Lx339_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx339_29
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
.Lx339_29:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n136_call_builtin_icon_α
                                                                              jmp   n216_assign_α
n215_call_proc_staged_β:
                        mov              r11, 138;                            jmp   n136_call_builtin_icon_α
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              r11, 139
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n139_disjunction_as
n216_assign_β:          mov              r11, 139;                            jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
endetab1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
endetab1_β:
                                                                              jmp   endetab1_ω
#-----------------------------------------------------------------------------------------------------------------------
endetab1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2392]
                        add              rsp, 2416;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
endetab1_ω:
                        mov              rcx, qword ptr [rsp + 2400]
                        add              rsp, 2416;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
endetab1_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx341_2]
                        lea              rdx, [rip + .Lx341_3];               jmp   FN__endetab1
.Lx341_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx341_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__escape:
                        sub              rsp, 1488
                        mov              qword ptr [rsp + 1464], rcx
                        mov              qword ptr [rsp + 1472], rdx
                        mov              rdi, rsp
                        add              rdi, 1344
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
escape_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n342_disjunction_α:     mov              r11, 140
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              dword ptr [rsp + 1152], 0;           jmp   n343_var_ref_α
n342_disjunction_as:    mov              r11, 140
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              jne   .Lx409_0
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n354_lit_string_α
.Lx409_0:                                                                     jmp   n354_lit_string_α
n342_disjunction_β:     mov              r11, 140
                        mov              eax, dword ptr [rsp + 1152];         jmp   n354_lit_string_α
n342_disjunction_af:    mov              r11, 140
                        add              dword ptr [rsp + 1152], 1
                        mov              eax, dword ptr [rsp + 1152];         jmp   n354_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n344_lit_integer_α
n343_var_ref_β:         mov              r11, 141;                            jmp   n342_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:     mov              r11, 142
                        mov              qword ptr [rsp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n345_subscript_α
.Lx412_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n345_subscript_α:       mov              r11, 143
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n342_disjunction_af
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n346_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n346_deref_α:           mov              r11, 144
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n342_disjunction_af
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n347_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              r11, 145
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n348_binop_test_α
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "$"
#-----------------------------------------------------------------------------------------------------------------------
n348_binop_test_α:      mov              r11, 146
                        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n342_disjunction_af
                        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n349_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:             mov              r11, 147
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n350_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:     mov              r11, 148
                        mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n351_lit_integer_α
.Lx419_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:     mov              r11, 149
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n352_subscript_α
.Lx420_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n352_subscript_α:       mov              r11, 150
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              r8, qword ptr [rsp + 1232]
                        mov              r9, qword ptr [rsp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n354_lit_string_α
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n353_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n342_disjunction_as
n353_assign_β:          mov              r11, 151;                            jmp   n354_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 0
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n355_assign_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n355_assign_α:          mov              r11, 153
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n357_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n357_scan_enter_α:      mov              r11, 155
                        mov              rdi, qword ptr [rsp + 1104]
                        mov              rsi, qword ptr [rsp + 1112]
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
                        mov              r14, 0;                              jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n359_scan_pos_α
.Lx429_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n359_scan_pos_α:        mov              r11, 157
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx431_0
                        add              rax, r15
                        add              rax, 1
.Lx431_0:               cmp              rax, 1;                              jl    n360_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n360_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n360_var_α
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax;          jmp   n405_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:             mov              r11, 158
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0;            jmp   n361_var_α
n360_var_β:             mov              r11, 158;                            jmp   n405_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             mov              r11, 159
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 968], rax;          jmp   n362_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n362_disjunction_α:     mov              r11, 160
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              dword ptr [rsp + 1024], 0;           jmp   n367_lit_charset_α
n362_disjunction_as:    mov              r11, 160
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              jne   .Lx436_0
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n363_scan_tab_α
.Lx436_0:               cmp              eax, 1;                              jne   .Lx436_1
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n363_scan_tab_α
.Lx436_1:                                                                     jmp   n363_scan_tab_α
n362_disjunction_β:     mov              r11, 160
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              je    n368_scan_upto_β
                                                                              jmp   n362_disjunction_af
n362_disjunction_af:    mov              r11, 160
                        add              dword ptr [rsp + 1024], 1
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 1;                              je    n366_lit_integer_α
                                                                              jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_scan_tab_α:        mov              r11, 161
                        mov              rax, qword ptr [rsp + 1016]
                        cmp              rax, 1;                              jge   .Lx438_0
                        add              rax, r15
                        add              rax, 1
.Lx438_0:               cmp              rax, 1;                              jl    n362_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n362_disjunction_β
                        mov              qword ptr [rsp + 992], r14
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
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n364_binop_α
n363_scan_tab_β:        mov              r11, 161
                        mov              r14, qword ptr [rsp + 992];          jmp   n362_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n364_binop_α:           mov              r11, 162
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n365_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n365_assign_α:          mov              r11, 163
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:     mov              r11, 164
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n362_disjunction_as
n366_lit_integer_β:     mov              r11, 164;                            jmp   n362_disjunction_af
.Lx441_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_charset_α:     mov              r11, 165
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n368_scan_upto_α
n367_lit_charset_β:     mov              r11, 165;                            jmp   n362_disjunction_af
.Lx442_0:               .quad            .Lx442_0_s
.Lx442_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n368_scan_upto_α:       mov              r11, 166
                        mov              qword ptr [rsp + 1056], r14
.Lx444_0:               mov              rax, qword ptr [rsp + 1056]
                        cmp              rax, r15;                            jge   n362_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx444_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx444_1
                        mov              qword ptr [rsp + 1040], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1048], rax;         jmp   n362_disjunction_as
.Lx444_1:               inc              qword ptr [rsp + 1056];              jmp   .Lx444_0
n368_scan_upto_β:       mov              r11, 166
                        inc              qword ptr [rsp + 1056];              jmp   .Lx444_0
.Lx444_2:               .quad            .Lx444_2_s
.Lx444_2_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             mov              r11, 167
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 216], rax;          jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n371_scan_match_α
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n371_scan_match_α:      mov              r11, 169
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n358_lit_integer_α
                        mov              rdi, qword ptr [rip + .Lx449_0]
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
                        test             eax, eax;                            jne   n358_lit_integer_α
                        mov              qword ptr [rsp + 896], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 904], rax;          jmp   n372_scan_tab_α
.Lx449_0:               .quad            .Lx449_0_s
.Lx449_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n372_scan_tab_α:        mov              r11, 170
                        mov              rax, qword ptr [rsp + 904]
                        cmp              rax, 1;                              jge   .Lx451_0
                        add              rax, r15
                        add              rax, 1
.Lx451_0:               cmp              rax, 1;                              jl    n358_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n358_lit_integer_α
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
                        mov              qword ptr [rsp + 872], rdx;          jmp   n373_lit_integer_α
n372_scan_tab_β:        mov              r11, 170
                        mov              r14, qword ptr [rsp + 880];          jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:     mov              r11, 171
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n374_scan_move_α
.Lx452_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n374_scan_move_α:       mov              r11, 172
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n372_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n372_scan_tab_β
                        mov              qword ptr [rsp + 288], r14
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
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n375_assign_α
n374_scan_move_β:       mov              r11, 172
                        mov              r14, qword ptr [rsp + 288];          jmp   n372_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:          mov              r11, 173
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n376_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n377_call_builtin_α
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n377_call_builtin_α:    mov              r11, 175
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn458:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n380_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n378_lit_string_α
n377_call_builtin_β:    mov              r11, 175;                            jmp   n380_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n379_assign_α
.Lx459_0:               .quad            .Lx459_0_s
.Lx459_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              r11, 177
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n381_call_builtin_α
.Lx461_0:               .quad            .Lx461_0_s
.Lx461_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n381_call_builtin_α:    mov              r11, 179
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn463:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]
                        lea              rsi, [rsp + 720]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n384_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n382_lit_string_α
n381_call_builtin_β:    mov              r11, 179;                            jmp   n384_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n383_assign_α
.Lx464_0:               .quad            .Lx464_0_s
.Lx464_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:          mov              r11, 181
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n385_call_builtin_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n385_call_builtin_α:    mov              r11, 183
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn468:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn468]
                        lea              rsi, [rsp + 624]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n388_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n386_lit_string_α
n385_call_builtin_β:    mov              r11, 183;                            jmp   n388_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n387_assign_α
.Lx469_0:               .quad            .Lx469_0_s
.Lx469_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:          mov              r11, 185
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n389_call_builtin_α
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_α:    mov              r11, 187
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn473:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn473]
                        lea              rsi, [rsp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n392_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n390_lit_string_α
n389_call_builtin_β:    mov              r11, 187;                            jmp   n392_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      mov              r11, 188
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 1
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n391_assign_α
.Lx474_0:               .quad            .Lx474_0_s
.Lx474_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:          mov              r11, 189
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n393_call_builtin_α
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_α:    mov              r11, 191
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn478:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]
                        lea              rsi, [rsp + 432]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n396_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n394_lit_string_α
n393_call_builtin_β:    mov              r11, 191;                            jmp   n396_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n395_assign_α
.Lx479_0:               .quad            .Lx479_0_s
.Lx479_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n395_assign_α:          mov              r11, 193
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n397_var_α
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 360], rax;          jmp   n398_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n398_binop_α:           mov              r11, 196
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n399_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n399_assign_α:          mov              r11, 197
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             mov              r11, 198
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 248], rax;          jmp   n401_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n401_conjunction_α:     mov              r11, 199
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n402_binop_α
n401_conjunction_β:     mov              r11, 199;                            jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n402_binop_α:           mov              r11, 200
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n403_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n403_assign_α:          mov              r11, 201
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n404_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n404_conjunction_α:     mov              r11, 202
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax;          jmp   n358_lit_integer_α
n404_conjunction_β:     mov              r11, 202;                            jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n405_scan_α:            mov              r11, 203
                        lea              rdi, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80];           jmp   n406_var_α
n405_scan_β:            mov              r11, 203;                            jmp   n406_var_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:             mov              r11, 204
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 40], rax;           jmp   n407_return_α
#-----------------------------------------------------------------------------------------------------------------------
n407_return_α:          mov              r11, 205
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   escape_γ
#-----------------------------------------------------------------------------------------------------------------------
escape_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
escape_β:
                                                                              jmp   escape_ω
#-----------------------------------------------------------------------------------------------------------------------
escape_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1464]
                        add              rsp, 1488;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
escape_ω:
                        mov              rcx, qword ptr [rsp + 1472]
                        add              rsp, 1488;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
escape_dcα:
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
                        lea              rcx, [rip + .Lx497_2]
                        lea              rdx, [rip + .Lx497_3];               jmp   FN__escape
.Lx497_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx497_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__interp:
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rcx
                        mov              qword ptr [rsp + 656], rdx
                        mov              rdi, rsp
                        add              rdi, 576
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
interp_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 0
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n499_assign_α
.Lx523_0:               .quad            .Lx523_0_s
.Lx523_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:          mov              r11, 207
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n500_var_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:             mov              r11, 208
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 536], rax;          jmp   n501_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n501_scan_enter_α:      mov              r11, 209
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
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
                        mov              r14, 0;                              jmp   n502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_integer_α:     mov              r11, 210
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n503_scan_pos_α
.Lx529_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n503_scan_pos_α:        mov              r11, 211
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx531_0
                        add              rax, r15
                        add              rax, 1
.Lx531_0:               cmp              rax, 1;                              jl    n504_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n504_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n504_var_α
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax;          jmp   n517_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             mov              r11, 212
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0;            jmp   n505_lit_charset_α
n504_var_β:             mov              r11, 212;                            jmp   n517_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_charset_α:     mov              r11, 213
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], -1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n506_scan_many_α
.Lx533_0:               .quad            .Lx533_0_s
.Lx533_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n506_scan_many_α:       mov              r11, 214
                        mov              eax, r14d
.Lx535_0:               cmp              eax, r15d;                           jge   .Lx535_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx535_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx535_1
                        add              eax, 1;                              jmp   .Lx535_0
.Lx535_1:               cmp              eax, r14d;                           je    n508_var_α
                        mov              qword ptr [rsp + 496], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 504], rcx;          jmp   n507_scan_tab_α
n506_scan_many_β:       mov              r11, 214;                            jmp   n508_var_α
.Lx535_2:               .quad            .Lx535_2_s
.Lx535_2_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n507_scan_tab_α:        mov              r11, 215
                        mov              rax, qword ptr [rsp + 504]
                        cmp              rax, 1;                              jge   .Lx537_0
                        add              rax, r15
                        add              rax, 1
.Lx537_0:               cmp              rax, 1;                              jl    n508_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n508_var_α
                        mov              qword ptr [rsp + 480], r14
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
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n508_var_α
n507_scan_tab_β:        mov              r11, 215
                        mov              r14, qword ptr [rsp + 480];          jmp   n508_var_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:             mov              r11, 216
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 328], rax;          jmp   n509_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n509_disjunction_α:     mov              r11, 217
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n515_lit_charset_α
n509_disjunction_as:    mov              r11, 217
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Lx541_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n510_scan_tab_α
.Lx541_0:               cmp              eax, 1;                              jne   .Lx541_1
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 376], rax;          jmp   n510_scan_tab_α
.Lx541_1:                                                                     jmp   n510_scan_tab_α
n509_disjunction_β:     mov              r11, 217
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n516_scan_upto_β
                                                                              jmp   n509_disjunction_af
n509_disjunction_af:    mov              r11, 217
                        add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n514_lit_integer_α
                                                                              jmp   n502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n510_scan_tab_α:        mov              r11, 218
                        mov              rax, qword ptr [rsp + 376]
                        cmp              rax, 1;                              jge   .Lx543_0
                        add              rax, r15
                        add              rax, 1
.Lx543_0:               cmp              rax, 1;                              jl    n509_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n509_disjunction_β
                        mov              qword ptr [rsp + 352], r14
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
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n511_binop_α
n510_scan_tab_β:        mov              r11, 218
                        mov              r14, qword ptr [rsp + 352];          jmp   n509_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n511_binop_α:           mov              r11, 219
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n512_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n512_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n513_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n513_conjunction_α:     mov              r11, 221
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 280], rax;          jmp   n502_lit_integer_α
n513_conjunction_β:     mov              r11, 221;                            jmp   n502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_integer_α:     mov              r11, 222
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n509_disjunction_as
n514_lit_integer_β:     mov              r11, 222;                            jmp   n509_disjunction_af
.Lx547_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_charset_α:     mov              r11, 223
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], -1
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n516_scan_upto_α
n515_lit_charset_β:     mov              r11, 223;                            jmp   n509_disjunction_af
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n516_scan_upto_α:       mov              r11, 224
                        mov              qword ptr [rsp + 416], r14
.Lx550_0:               mov              rax, qword ptr [rsp + 416]
                        cmp              rax, r15;                            jge   n509_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx550_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx550_1
                        mov              qword ptr [rsp + 400], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 408], rax;          jmp   n509_disjunction_as
.Lx550_1:               inc              qword ptr [rsp + 416];               jmp   .Lx550_0
n516_scan_upto_β:       mov              r11, 224
                        inc              qword ptr [rsp + 416];               jmp   .Lx550_0
.Lx550_2:               .quad            .Lx550_2_s
.Lx550_2_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n517_scan_α:            mov              r11, 225
                        lea              rdi, [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 176]
                        mov              r14, qword ptr [rsp + 184]
                        mov              r15, qword ptr [rsp + 192];          jmp   n518_var_α
n517_scan_β:            mov              r11, 225;                            jmp   n518_var_α
#-----------------------------------------------------------------------------------------------------------------------
n518_var_α:             mov              r11, 226
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 120], rax;          jmp   n519_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:      mov              r11, 227
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n520_lit_string_α
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n521_call_builtin_icon_α
.Lx556_0:               .quad            .Lx556_0_s
.Lx556_0_s:             .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_icon_α:
                        mov              r11, 229
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn558:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]
                        lea              rsi, [rsp + 48]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    interp_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n522_return_α
n521_call_builtin_icon_β:
                        mov              r11, 229;                            jmp   interp_ω
#-----------------------------------------------------------------------------------------------------------------------
n522_return_α:          mov              r11, 230
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   interp_γ
#-----------------------------------------------------------------------------------------------------------------------
interp_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
interp_β:
                                                                              jmp   interp_ω
#-----------------------------------------------------------------------------------------------------------------------
interp_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 648]
                        add              rsp, 672;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
interp_ω:
                        mov              rcx, qword ptr [rsp + 656]
                        add              rsp, 672;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
interp_dcα:
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
                        lea              rcx, [rip + .Lx560_2]
                        lea              rdx, [rip + .Lx560_3];               jmp   FN__interp
.Lx560_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx560_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__setup:
                        sub              rsp, 848
                        mov              qword ptr [rsp + 824], rcx
                        mov              qword ptr [rsp + 832], rdx
                        mov              rdi, rsp
                        add              rdi, 752
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
setup_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n561_keyword_icon_α:    mov              r11, 231
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0;            jmp   n562_make_list_α
n561_keyword_icon_β:    mov              r11, 231;                            jmp   n564_var_α
#-----------------------------------------------------------------------------------------------------------------------
n562_make_list_α:       mov              r11, 232
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n563_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n563_assign_α:          mov              r11, 233
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n564_var_α
#-----------------------------------------------------------------------------------------------------------------------
n564_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 664], rax;          jmp   n565_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n565_scan_enter_α:      mov              r11, 235
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
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
                        mov              r14, 0;                              jmp   n566_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_charset_α:     mov              r11, 236
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], -1
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n567_scan_upto_α
.Lx595_0:               .quad            .Lx595_0_s
.Lx595_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n567_scan_upto_α:       mov              r11, 237
                        mov              qword ptr [rsp + 432], r14
.Lx597_0:               mov              rax, qword ptr [rsp + 432]
                        cmp              rax, r15;                            jge   n586_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx597_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx597_1
                        mov              qword ptr [rsp + 416], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 424], rax;          jmp   n568_scan_tab_α
.Lx597_1:               inc              qword ptr [rsp + 432];               jmp   .Lx597_0
n567_scan_upto_β:       mov              r11, 237
                        inc              qword ptr [rsp + 432];               jmp   .Lx597_0
.Lx597_2:               .quad            .Lx597_2_s
.Lx597_2_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n568_scan_tab_α:        mov              r11, 238
                        mov              rax, qword ptr [rsp + 424]
                        cmp              rax, 1;                              jge   .Lx599_0
                        add              rax, r15
                        add              rax, 1
.Lx599_0:               cmp              rax, 1;                              jl    n567_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n567_scan_upto_β
                        mov              qword ptr [rsp + 400], r14
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
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n569_var_α
n568_scan_tab_β:        mov              r11, 238
                        mov              r14, qword ptr [rsp + 400];          jmp   n567_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n569_var_α:             mov              r11, 239
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 536], rax;          jmp   n570_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_charset_α:     mov              r11, 240
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], -1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n571_scan_many_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n571_scan_many_α:       mov              r11, 241
                        mov              eax, r14d
.Lx604_0:               cmp              eax, r15d;                           jge   .Lx604_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx604_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx604_1
                        add              eax, 1;                              jmp   .Lx604_0
.Lx604_1:               cmp              eax, r14d;                           je    n566_lit_charset_α
                        mov              qword ptr [rsp + 624], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 632], rcx;          jmp   n572_scan_tab_α
n571_scan_many_β:       mov              r11, 241;                            jmp   n566_lit_charset_α
.Lx604_2:               .quad            .Lx604_2_s
.Lx604_2_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n572_scan_tab_α:        mov              r11, 242
                        mov              rax, qword ptr [rsp + 632]
                        cmp              rax, 1;                              jge   .Lx606_0
                        add              rax, r15
                        add              rax, 1
.Lx606_0:               cmp              rax, 1;                              jl    n566_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n566_lit_charset_α
                        mov              qword ptr [rsp + 608], r14
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
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n573_call_builtin_icon_α
n572_scan_tab_β:        mov              r11, 242
                        mov              r14, qword ptr [rsp + 608];          jmp   n566_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_builtin_icon_α:
                        mov              r11, 243
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn608:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n566_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n574_call_builtin_icon_α
n573_call_builtin_icon_β:
                        mov              r11, 243;                            jmp   n566_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_icon_α:
                        mov              r11, 244
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn610:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn610]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n566_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n566_lit_charset_α
n574_call_builtin_icon_β:
                        mov              r11, 244;                            jmp   n566_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 21
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n576_call_builtin_icon_α
.Lx611_0:               .quad            .Lx611_0_s
.Lx611_0_s:             .string          "testing entab/detab(s"
#-----------------------------------------------------------------------------------------------------------------------
n576_call_builtin_icon_α:
                        mov              r11, 246
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn613:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn613]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n577_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n577_lit_string_α
n576_call_builtin_icon_β:
                        mov              r11, 246;                            jmp   n577_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n578_var_α
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n578_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 248], rax;          jmp   n579_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n579_iterate_α:         mov              r11, 249
                        mov              qword ptr [rsp + 224], 0
.Lx618_0:               mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              rax, 104;                            je    n582_lit_string_α
                                                                              jmp   n580_unop_test_α
n579_iterate_β:         mov              r11, 249
                        inc              qword ptr [rsp + 224];               jmp   .Lx618_0
#-----------------------------------------------------------------------------------------------------------------------
n580_unop_test_α:       mov              r11, 250
                        mov              eax, dword ptr [rsp + 208]
                        cmp              al, 104;                             je    n579_iterate_β
                        cmp              eax, 0;                              je    n579_iterate_β
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax;          jmp   n581_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n581_call_builtin_icon_α:
                        mov              r11, 251
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn621:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]
                        lea              rsi, [rsp + 128]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n579_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n579_iterate_β
n581_call_builtin_icon_β:
                        mov              r11, 251;                            jmp   n579_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 1
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n583_call_builtin_icon_α
.Lx622_0:               .quad            .Lx622_0_s
.Lx622_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n583_call_builtin_icon_α:
                        mov              r11, 253
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn624:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n584_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n584_var_α
n583_call_builtin_icon_β:
                        mov              r11, 253;                            jmp   n584_var_α
#-----------------------------------------------------------------------------------------------------------------------
n584_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 40], rax;           jmp   n585_return_α
#-----------------------------------------------------------------------------------------------------------------------
n585_return_α:          mov              r11, 255
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   setup_γ
#-----------------------------------------------------------------------------------------------------------------------
n586_scan_α:            mov              r11, 256
                        lea              rdi, [rsp + 336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 336]
                        mov              r14, qword ptr [rsp + 344]
                        mov              r15, qword ptr [rsp + 352];          jmp   n575_lit_string_α
n586_scan_β:            mov              r11, 256;                            jmp   n575_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
setup_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
setup_β:
                                                                              jmp   setup_ω
#-----------------------------------------------------------------------------------------------------------------------
setup_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 824]
                        add              rsp, 848;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
setup_ω:
                        mov              rcx, qword ptr [rsp + 832]
                        add              rsp, 848;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
setup_dcα:
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
                        lea              rcx, [rip + .Lx630_2]
                        lea              rdx, [rip + .Lx630_3];               jmp   FN__setup
.Lx630_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx630_3:               pop              r12
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
                        sub              rsp, 2960
                        mov              qword ptr [rsp + 2936], rcx
                        mov              qword ptr [rsp + 2944], rdx
                        mov              rdi, rsp
                        add              rdi, 2880
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:      mov              r11, 257
                        mov              qword ptr [rsp + 2864], 2            # result
                        mov              dword ptr [rsp + 2868], 8
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n632_assign_α
.Lx726_0:               .quad            .Lx726_0_s
.Lx726_0_s:             .string          "rutabaga"
#-----------------------------------------------------------------------------------------------------------------------
n632_assign_α:          mov              r11, 258
                        mov              rax, qword ptr [rsp + 2864]
                        mov              rdx, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n633_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n633_disjunction_α:     mov              r11, 259
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              dword ptr [rsp + 2672], 0;           jmp   n634_lit_charset_α
n633_disjunction_as:    mov              r11, 259
                        mov              eax, dword ptr [rsp + 2672]
                        cmp              eax, 0;                              jne   .Lx729_0
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n640_disjunction_α
.Lx729_0:                                                                     jmp   n640_disjunction_α
n633_disjunction_β:     mov              r11, 259
                        mov              eax, dword ptr [rsp + 2672];         jmp   n640_disjunction_α
n633_disjunction_af:    mov              r11, 259
                        add              dword ptr [rsp + 2672], 1
                        mov              eax, dword ptr [rsp + 2672];         jmp   n640_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_charset_α:     mov              r11, 260
                        mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], -1
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n635_call_builtin_icon_α
n634_lit_charset_β:     mov              r11, 260;                            jmp   n633_disjunction_af
.Lx730_0:               .quad            .Lx730_0_s
.Lx730_0_s:             .string          "1789"
#-----------------------------------------------------------------------------------------------------------------------
n635_call_builtin_icon_α:
                        mov              r11, 261
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2792], rax
                        .section         .rodata
.Lrkfn732:              .string          "entab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn732]
                        lea              rsi, [rsp + 2784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              al, 104;                             je    n633_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n636_lit_string_α
n635_call_builtin_icon_β:
                        mov              r11, 261;                            jmp   n633_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:      mov              r11, 262
                        mov              qword ptr [rsp + 2832], 2            # result
                        mov              dword ptr [rsp + 2836], 4
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n637_binop_test_α
.Lx733_0:               .quad            .Lx733_0_s
.Lx733_0_s:             .string          "1789"
#-----------------------------------------------------------------------------------------------------------------------
n637_binop_test_α:      mov              r11, 263
                        mov              rdi, qword ptr [rsp + 2768]
                        mov              rsi, qword ptr [rsp + 2776]
                        mov              rdx, qword ptr [rsp + 2832]
                        mov              rcx, qword ptr [rsp + 2840]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n633_disjunction_af
                        mov              rdi, qword ptr [rsp + 2832]
                        mov              rsi, qword ptr [rsp + 2840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n638_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 6
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n639_call_builtin_icon_α
.Lx735_0:               .quad            .Lx735_0_s
.Lx735_0_s:             .string          "oops 1"
#-----------------------------------------------------------------------------------------------------------------------
n639_call_builtin_icon_α:
                        mov              r11, 265
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2712], rax
                        .section         .rodata
.Lrkfn737:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn737]
                        lea              rsi, [rsp + 2704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              al, 104;                             je    n640_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n633_disjunction_as
n639_call_builtin_icon_β:
                        mov              r11, 265;                            jmp   n640_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n640_disjunction_α:     mov              r11, 266
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              dword ptr [rsp + 2480], 0;           jmp   n641_lit_charset_α
n640_disjunction_as:    mov              r11, 266
                        mov              eax, dword ptr [rsp + 2480]
                        cmp              eax, 0;                              jne   .Lx739_0
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n647_disjunction_α
.Lx739_0:                                                                     jmp   n647_disjunction_α
n640_disjunction_β:     mov              r11, 266
                        mov              eax, dword ptr [rsp + 2480];         jmp   n647_disjunction_α
n640_disjunction_af:    mov              r11, 266
                        add              dword ptr [rsp + 2480], 1
                        mov              eax, dword ptr [rsp + 2480];         jmp   n647_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_charset_α:     mov              r11, 267
                        mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], -1
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n642_call_builtin_icon_α
n641_lit_charset_β:     mov              r11, 267;                            jmp   n640_disjunction_af
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "1249"
#-----------------------------------------------------------------------------------------------------------------------
n642_call_builtin_icon_α:
                        mov              r11, 268
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2600], rax
                        .section         .rodata
.Lrkfn742:              .string          "detab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn742]
                        lea              rsi, [rsp + 2592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              al, 104;                             je    n640_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n643_lit_string_α
n642_call_builtin_icon_β:
                        mov              r11, 268;                            jmp   n640_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n643_lit_string_α:      mov              r11, 269
                        mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 4
                        mov              rax, qword ptr [rip + .Lx743_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n644_binop_test_α
.Lx743_0:               .quad            .Lx743_0_s
.Lx743_0_s:             .string          "1249"
#-----------------------------------------------------------------------------------------------------------------------
n644_binop_test_α:      mov              r11, 270
                        mov              rdi, qword ptr [rsp + 2576]
                        mov              rsi, qword ptr [rsp + 2584]
                        mov              rdx, qword ptr [rsp + 2640]
                        mov              rcx, qword ptr [rsp + 2648]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n640_disjunction_af
                        mov              rdi, qword ptr [rsp + 2640]
                        mov              rsi, qword ptr [rsp + 2648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n645_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 6
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n646_call_builtin_icon_α
.Lx745_0:               .quad            .Lx745_0_s
.Lx745_0_s:             .string          "oops 2"
#-----------------------------------------------------------------------------------------------------------------------
n646_call_builtin_icon_α:
                        mov              r11, 272
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        .section         .rodata
.Lrkfn747:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn747]
                        lea              rsi, [rsp + 2512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              al, 104;                             je    n647_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n640_disjunction_as
n646_call_builtin_icon_β:
                        mov              r11, 272;                            jmp   n647_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n647_disjunction_α:     mov              r11, 273
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n648_lit_string_α
n647_disjunction_as:    mov              r11, 273
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Lx749_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n655_disjunction_α
.Lx749_0:                                                                     jmp   n655_disjunction_α
n647_disjunction_β:     mov              r11, 273
                        mov              eax, dword ptr [rsp + 2256];         jmp   n655_disjunction_α
n647_disjunction_af:    mov              r11, 273
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256];         jmp   n655_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:      mov              r11, 274
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 4
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n649_lit_string_α
n648_lit_string_β:      mov              r11, 274;                            jmp   n647_disjunction_af
.Lx750_0:               .quad            .Lx750_0_s
.Lx750_0_s:             .string          "    "
#-----------------------------------------------------------------------------------------------------------------------
n649_lit_string_α:      mov              r11, 275
                        mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 1
                        mov              rax, qword ptr [rip + .Lx751_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n650_call_builtin_icon_α
.Lx751_0:               .quad            .Lx751_0_s
.Lx751_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n650_call_builtin_icon_α:
                        mov              r11, 276
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        .section         .rodata
.Lrkfn753:              .string          "entab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn753]
                        lea              rsi, [rsp + 2368]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    n647_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n651_lit_string_α
n650_call_builtin_icon_β:
                        mov              r11, 276;                            jmp   n647_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n651_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 2
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n652_binop_test_α
.Lx754_0:               .quad            .Lx754_0_s
.Lx754_0_s:             .string          "\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n652_binop_test_α:      mov              r11, 278
                        mov              rdi, qword ptr [rsp + 2352]
                        mov              rsi, qword ptr [rsp + 2360]
                        mov              rdx, qword ptr [rsp + 2448]
                        mov              rcx, qword ptr [rsp + 2456]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n647_disjunction_af
                        mov              rdi, qword ptr [rsp + 2448]
                        mov              rsi, qword ptr [rsp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n653_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:      mov              r11, 279
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 6
                        mov              rax, qword ptr [rip + .Lx756_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n654_call_builtin_icon_α
.Lx756_0:               .quad            .Lx756_0_s
.Lx756_0_s:             .string          "oops 3"
#-----------------------------------------------------------------------------------------------------------------------
n654_call_builtin_icon_α:
                        mov              r11, 280
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax
                        .section         .rodata
.Lrkfn758:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn758]
                        lea              rsi, [rsp + 2288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n655_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n647_disjunction_as
n654_call_builtin_icon_β:
                        mov              r11, 280;                            jmp   n655_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n655_disjunction_α:     mov              r11, 281
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              dword ptr [rsp + 2032], 0;           jmp   n656_lit_string_α
n655_disjunction_as:    mov              r11, 281
                        mov              eax, dword ptr [rsp + 2032]
                        cmp              eax, 0;                              jne   .Lx760_0
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n663_lit_integer_α
.Lx760_0:                                                                     jmp   n663_lit_integer_α
n655_disjunction_β:     mov              r11, 281
                        mov              eax, dword ptr [rsp + 2032];         jmp   n663_lit_integer_α
n655_disjunction_af:    mov              r11, 281
                        add              dword ptr [rsp + 2032], 1
                        mov              eax, dword ptr [rsp + 2032];         jmp   n663_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:      mov              r11, 282
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 2
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n657_lit_string_α
n656_lit_string_β:      mov              r11, 282;                            jmp   n655_disjunction_af
.Lx761_0:               .quad            .Lx761_0_s
.Lx761_0_s:             .string          "\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_string_α:      mov              r11, 283
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n658_call_builtin_icon_α
.Lx762_0:               .quad            .Lx762_0_s
.Lx762_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n658_call_builtin_icon_α:
                        mov              r11, 284
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lrkfn764:              .string          "detab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn764]
                        lea              rsi, [rsp + 2144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    n655_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n659_lit_string_α
n658_call_builtin_icon_β:
                        mov              r11, 284;                            jmp   n655_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n659_lit_string_α:      mov              r11, 285
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 4
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n660_binop_test_α
.Lx765_0:               .quad            .Lx765_0_s
.Lx765_0_s:             .string          "    "
#-----------------------------------------------------------------------------------------------------------------------
n660_binop_test_α:      mov              r11, 286
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2224]
                        mov              rcx, qword ptr [rsp + 2232]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n655_disjunction_af
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n661_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_string_α:      mov              r11, 287
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 6
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n662_call_builtin_icon_α
.Lx767_0:               .quad            .Lx767_0_s
.Lx767_0_s:             .string          "oops 4"
#-----------------------------------------------------------------------------------------------------------------------
n662_call_builtin_icon_α:
                        mov              r11, 288
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2072], rax
                        .section         .rodata
.Lrkfn769:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn769]
                        lea              rsi, [rsp + 2064]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n663_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n655_disjunction_as
n662_call_builtin_icon_β:
                        mov              r11, 288;                            jmp   n663_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_integer_α:     mov              r11, 289
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n664_proc_value_α
.Lx770_0:               .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n664_proc_value_α:      mov              r11, 290
                        mov              rdi, qword ptr [rip + .Lx772_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n665_make_list_α
.Lx772_0:               .quad            .Lx772_0_s
.Lx772_0_s:             .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n665_make_list_α:       mov              r11, 291
                        lea              rdi, [rsp + 2016]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n666_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n666_call_proc_staged_α:
                        mov              r11, 292
                        lea              rsi, [rsp + 1968]
                        lea              rdx, [rsp + 1984]
                        lea              rcx, [rsp + 2000]
                        call             ferr_dcα;                            jmp   .Lx776_2
.Lx776_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx776_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1888]
                        mov              rdx, qword ptr [rsp + 1896]
.Lx776_29:              mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n667_lit_integer_α
                                                                              jmp   n667_lit_integer_α
n666_call_proc_staged_β:
                        mov              r11, 292;                            jmp   n667_lit_integer_α
.Lx776_0:               .quad            .Lx776_0_s
.Lx776_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_integer_α:     mov              r11, 293
                        mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n668_proc_value_α
.Lx777_0:               .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n668_proc_value_α:      mov              r11, 294
                        mov              rdi, qword ptr [rip + .Lx779_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n669_make_list_α
.Lx779_0:               .quad            .Lx779_0_s
.Lx779_0_s:             .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n669_make_list_α:       mov              r11, 295
                        lea              rdi, [rsp + 1888]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n670_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n670_call_proc_staged_α:
                        mov              r11, 296
                        lea              rsi, [rsp + 1840]
                        lea              rdx, [rsp + 1856]
                        lea              rcx, [rsp + 1872]
                        call             ferr_dcα;                            jmp   .Lx783_2
.Lx783_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx783_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
.Lx783_29:              mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    n671_lit_integer_α
                                                                              jmp   n671_lit_integer_α
n670_call_proc_staged_β:
                        mov              r11, 296;                            jmp   n671_lit_integer_α
.Lx783_0:               .quad            .Lx783_0_s
.Lx783_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_integer_α:     mov              r11, 297
                        mov              qword ptr [rsp + 1680], 3            # result
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n672_proc_value_α
.Lx784_0:               .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n672_proc_value_α:      mov              r11, 298
                        mov              rdi, qword ptr [rip + .Lx786_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n673_make_list_α
.Lx786_0:               .quad            .Lx786_0_s
.Lx786_0_s:             .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n673_make_list_α:       mov              r11, 299
                        lea              rdi, [rsp + 1760]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n674_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n674_make_list_α:       mov              r11, 300
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1736], rax
                        lea              rdi, [rsp + 1728]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n675_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n675_call_proc_staged_α:
                        mov              r11, 301
                        lea              rsi, [rsp + 1680]
                        lea              rdx, [rsp + 1696]
                        lea              rcx, [rsp + 1712]
                        call             ferr_dcα;                            jmp   .Lx792_2
.Lx792_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx792_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
.Lx792_29:              mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n676_lit_integer_α
                                                                              jmp   n676_lit_integer_α
n675_call_proc_staged_β:
                        mov              r11, 301;                            jmp   n676_lit_integer_α
.Lx792_0:               .quad            .Lx792_0_s
.Lx792_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_integer_α:     mov              r11, 302
                        mov              qword ptr [rsp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n677_proc_value_α
.Lx793_0:               .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n677_proc_value_α:      mov              r11, 303
                        mov              rdi, qword ptr [rip + .Lx795_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n678_make_list_α
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n678_make_list_α:       mov              r11, 304
                        lea              rdi, [rsp + 1600]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n679_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n679_make_list_α:       mov              r11, 305
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1576], rax
                        lea              rdi, [rsp + 1568]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n680_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n680_call_proc_staged_α:
                        mov              r11, 306
                        lea              rsi, [rsp + 1520]
                        lea              rdx, [rsp + 1536]
                        lea              rcx, [rsp + 1552]
                        call             ferr_dcα;                            jmp   .Lx801_2
.Lx801_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx801_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
.Lx801_29:              mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n681_lit_integer_α
                                                                              jmp   n681_lit_integer_α
n680_call_proc_staged_β:
                        mov              r11, 306;                            jmp   n681_lit_integer_α
.Lx801_0:               .quad            .Lx801_0_s
.Lx801_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_integer_α:     mov              r11, 307
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n682_proc_value_α
.Lx802_0:               .quad            101
#-----------------------------------------------------------------------------------------------------------------------
n682_proc_value_α:      mov              r11, 308
                        mov              rdi, qword ptr [rip + .Lx804_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n683_var_α
.Lx804_0:               .quad            .Lx804_0_s
.Lx804_0_s:             .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n683_var_α:             mov              r11, 309
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n684_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n684_lit_integer_α:     mov              r11, 310
                        mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n685_lit_integer_α
.Lx807_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_integer_α:     mov              r11, 311
                        mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n686_lit_charset_α
.Lx808_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_charset_α:     mov              r11, 312
                        mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], -1
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n687_make_list_α
.Lx809_0:               .quad            .Lx809_0_s
.Lx809_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n687_make_list_α:       mov              r11, 313
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1312]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n688_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n688_call_proc_staged_α:
                        mov              r11, 314
                        lea              rsi, [rsp + 1264]
                        lea              rdx, [rsp + 1280]
                        lea              rcx, [rsp + 1296]
                        call             ferr_dcα;                            jmp   .Lx813_2
.Lx813_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx813_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
.Lx813_29:              mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n689_lit_integer_α
                                                                              jmp   n689_lit_integer_α
n688_call_proc_staged_β:
                        mov              r11, 314;                            jmp   n689_lit_integer_α
.Lx813_0:               .quad            .Lx813_0_s
.Lx813_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n689_lit_integer_α:     mov              r11, 315
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n690_proc_value_α
.Lx814_0:               .quad            101
#-----------------------------------------------------------------------------------------------------------------------
n690_proc_value_α:      mov              r11, 316
                        mov              rdi, qword ptr [rip + .Lx816_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n691_var_α
.Lx816_0:               .quad            .Lx816_0_s
.Lx816_0_s:             .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:             mov              r11, 317
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n692_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_integer_α:     mov              r11, 318
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n693_lit_integer_α
.Lx819_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n693_lit_integer_α:     mov              r11, 319
                        mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n694_lit_charset_α
.Lx820_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_charset_α:     mov              r11, 320
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], -1
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n695_make_list_α
.Lx821_0:               .quad            .Lx821_0_s
.Lx821_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n695_make_list_α:       mov              r11, 321
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1056]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n696_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n696_call_proc_staged_α:
                        mov              r11, 322
                        lea              rsi, [rsp + 1008]
                        lea              rdx, [rsp + 1024]
                        lea              rcx, [rsp + 1040]
                        call             ferr_dcα;                            jmp   .Lx825_2
.Lx825_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx825_29
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
.Lx825_29:              mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n697_lit_integer_α
                                                                              jmp   n697_lit_integer_α
n696_call_proc_staged_β:
                        mov              r11, 322;                            jmp   n697_lit_integer_α
.Lx825_0:               .quad            .Lx825_0_s
.Lx825_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_integer_α:     mov              r11, 323
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n698_proc_value_α
.Lx826_0:               .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n698_proc_value_α:      mov              r11, 324
                        mov              rdi, qword ptr [rip + .Lx828_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n699_var_α
.Lx828_0:               .quad            .Lx828_0_s
.Lx828_0_s:             .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n699_var_α:             mov              r11, 325
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 888], rax;          jmp   n700_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_integer_α:     mov              r11, 326
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n701_lit_integer_α
.Lx831_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_integer_α:     mov              r11, 327
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n702_make_list_α
.Lx832_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n702_make_list_α:       mov              r11, 328
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 832]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n703_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n703_call_proc_staged_α:
                        mov              r11, 329
                        lea              rsi, [rsp + 784]
                        lea              rdx, [rsp + 800]
                        lea              rcx, [rsp + 816]
                        call             ferr_dcα;                            jmp   .Lx836_2
.Lx836_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx836_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lx836_29:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n704_lit_integer_α
                                                                              jmp   n704_lit_integer_α
n703_call_proc_staged_β:
                        mov              r11, 329;                            jmp   n704_lit_integer_α
.Lx836_0:               .quad            .Lx836_0_s
.Lx836_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n704_lit_integer_α:     mov              r11, 330
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n705_proc_value_α
.Lx837_0:               .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n705_proc_value_α:      mov              r11, 331
                        mov              rdi, qword ptr [rip + .Lx839_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n706_var_α
.Lx839_0:               .quad            .Lx839_0_s
.Lx839_0_s:             .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n706_var_α:             mov              r11, 332
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 664], rax;          jmp   n707_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_integer_α:     mov              r11, 333
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n708_lit_integer_α
.Lx842_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_integer_α:     mov              r11, 334
                        mov              qword ptr [rsp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n709_make_list_α
.Lx843_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n709_make_list_α:       mov              r11, 335
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n710_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n710_call_proc_staged_α:
                        mov              r11, 336
                        lea              rsi, [rsp + 560]
                        lea              rdx, [rsp + 576]
                        lea              rcx, [rsp + 592]
                        call             ferr_dcα;                            jmp   .Lx847_2
.Lx847_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx847_29
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
.Lx847_29:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n711_lit_integer_α
                                                                              jmp   n711_lit_integer_α
n710_call_proc_staged_β:
                        mov              r11, 336;                            jmp   n711_lit_integer_α
.Lx847_0:               .quad            .Lx847_0_s
.Lx847_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_integer_α:     mov              r11, 337
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx848_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n712_proc_value_α
.Lx848_0:               .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n712_proc_value_α:      mov              r11, 338
                        mov              rdi, qword ptr [rip + .Lx850_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n713_var_α
.Lx850_0:               .quad            .Lx850_0_s
.Lx850_0_s:             .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n713_var_α:             mov              r11, 339
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 440], rax;          jmp   n714_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_integer_α:     mov              r11, 340
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n715_lit_integer_α
.Lx853_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_integer_α:     mov              r11, 341
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n716_make_list_α
.Lx854_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n716_make_list_α:       mov              r11, 342
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 384]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n717_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n717_call_proc_staged_α:
                        mov              r11, 343
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 352]
                        lea              rcx, [rsp + 368]
                        call             ferr_dcα;                            jmp   .Lx858_2
.Lx858_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx858_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx858_29:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n718_lit_integer_α
                                                                              jmp   n718_lit_integer_α
n717_call_proc_staged_β:
                        mov              r11, 343;                            jmp   n718_lit_integer_α
.Lx858_0:               .quad            .Lx858_0_s
.Lx858_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_integer_α:     mov              r11, 344
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n719_proc_value_α
.Lx859_0:               .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n719_proc_value_α:      mov              r11, 345
                        mov              rdi, qword ptr [rip + .Lx861_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n720_var_α
.Lx861_0:               .quad            .Lx861_0_s
.Lx861_0_s:             .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n720_var_α:             mov              r11, 346
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 216], rax;          jmp   n721_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:     mov              r11, 347
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n722_lit_integer_α
.Lx864_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_integer_α:     mov              r11, 348
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n723_make_list_α
.Lx865_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n723_make_list_α:       mov              r11, 349
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n724_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        mov              r11, 350
                        lea              rsi, [rsp + 112]
                        lea              rdx, [rsp + 128]
                        lea              rcx, [rsp + 144]
                        call             ferr_dcα;                            jmp   .Lx869_2
.Lx869_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx869_29
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
.Lx869_29:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n725_call_proc_staged_α
                                                                              jmp   n725_call_proc_staged_α
n724_call_proc_staged_β:
                        mov              r11, 350;                            jmp   n725_call_proc_staged_α
.Lx869_0:               .quad            .Lx869_0_s
.Lx869_0_s:             .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n725_call_proc_staged_α:
                        mov              r11, 351
                        call             endetab1_dcα;                        jmp   .Lx871_2
.Lx871_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx871_29
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
.Lx871_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n725_call_proc_staged_β:
                        mov              r11, 351;                            jmp   main_ω
.Lx871_0:               .quad            .Lx871_0_s
.Lx871_0_s:             .string          "endetab1"
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
.Lstartup_pname0:       .string          "ferr"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__ferr
                        .quad            ferr_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1344
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "endetab1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__endetab1
                        .quad            endetab1_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2304
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "escape"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__escape
                        .quad            escape_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1392
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "interp"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__interp
                        .quad            interp_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            592
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "setup"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__setup
                        .quad            setup_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
