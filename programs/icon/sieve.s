                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1408
                        mov              qword ptr [rsp + 1384], rcx
                        mov              qword ptr [rsp + 1392], rdx
                        mov              rdi, rsp
                        add              rdi, 1280
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n1_assign_α
.Lx71_0:                .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n4_call_builtin_icon_α
.Lx75_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              r11, 5
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn77:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n6_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_assign_α
n4_call_builtin_icon_β: mov              r11, 5;                              jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n8_subscript_α
.Lx81_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n8_subscript_α:         mov              r11, 9
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n11_lit_integer_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n10_assign_var_α
.Lx83_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_var_α:       mov              r11, 11
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n11_lit_integer_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n12_var_α
.Lx85_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 632], rax;          jmp   n13_to_α
#-----------------------------------------------------------------------------------------------------------------------
n13_to_α:               mov              r11, 14
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], 3
                        mov              qword ptr [rsp + 616], rax
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], 3
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 592], rax
.Lx89_0:                mov              rax, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 632]
                        cmp              rax, rcx;                            jg    n40_lit_string_α
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax;          jmp   n14_assign_α
n13_to_β:               mov              r11, 14
                        inc              qword ptr [rsp + 592];               jmp   .Lx89_0
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n15_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n15_bound_α:            mov              r11, 16
                        mov              qword ptr [rsp + 640], rsp;          jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:      mov              r11, 17
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n17_var_ref_α
n16_disjunction_as:     mov              r11, 17
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Lx94_0
                                                                              jmp   n39_unmark_α
.Lx94_0:                                                                      jmp   n39_unmark_α
n16_disjunction_β:      mov              r11, 17
                        mov              eax, dword ptr [rsp + 704];          jmp   n39_unmark_α
n16_disjunction_af:     mov              r11, 17
                        add              dword ptr [rsp + 704], 1
                        mov              eax, dword ptr [rsp + 704];          jmp   n39_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n18_var_α
n17_var_ref_β:          mov              r11, 18;                             jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n19_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n19_subscript_α:        mov              r11, 20
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n16_disjunction_af
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n20_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_deref_α:            mov              r11, 21
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n16_disjunction_af
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n22_binop_test_α
.Lx101_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_test_α:       mov              r11, 23
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              al, 112;                             je    .Lx102_0
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              al, 112;                             je    .Lx102_0
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              al, 3;                               jne   .Lx102_2
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              al, 3;                               jne   .Lx102_2
.Lx102_1:               mov              rax, qword ptr [rsp + 1064]
                        mov              rcx, qword ptr [rsp + 1080]
                        cmp              rax, rcx;                            jne   n16_disjunction_af
                        mov              rcx, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 992], rcx
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1000], rcx;         jmp   n23_var_α
.Lx102_0:               mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              r8d, 9
                        lea              r9, [rsp + 992]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx102_1
                        cmp              eax, 1;                              je    n16_disjunction_af
                                                                              jmp   n23_var_α
.Lx102_2:               mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n16_disjunction_af
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 808], rax;          jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 824], rax;          jmp   n25_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n25_coerce_numeric_α:   mov              r11, 26
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              al, 5;                               je    .Lx108_1
                        cmp              al, 3;                               jne   .Lx108_0
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              al, 3;                               jne   .Lx108_0
.Lx108_1:               mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 792], rax;          jmp   n26_coerce_numeric_α
.Lx108_0:               lea              rdi, [rsp + 1296]
                        lea              rsi, [rsp + 1296]
                        lea              rdx, [rsp + 784]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:   mov              r11, 27
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              al, 5;                               je    .Lx110_1
                        cmp              al, 3;                               jne   .Lx110_0
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              al, 3;                               jne   .Lx110_0
.Lx110_1:               mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 776], rax;          jmp   n27_binop_α
.Lx110_0:               lea              rdi, [rsp + 1296]
                        lea              rsi, [rsp + 1296]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:            mov              r11, 28
                        mov              eax, dword ptr [rsp + 784]
                        mov              ecx, dword ptr [rsp + 768]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx111_2
                        mov              rax, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 776]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lx111_7
.Lx111_2:               and              edx, 1;                              jz    .Lx111_0
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdi, qword ptr [rsp + 776]
                        cmp              al, 5;                               je    .Lx111_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx111_4
.Lx111_3:               movq             xmm0, rsi
.Lx111_4:               cmp              cl, 5;                               je    .Lx111_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx111_6
.Lx111_5:               movq             xmm1, rdi
.Lx111_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lx111_7:                                                                     jmp   n28_var_α
.Lx111_0:               mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n39_unmark_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 840], rax;          jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 856], rax;          jmp   n30_to_by_α
#-----------------------------------------------------------------------------------------------------------------------
n30_to_by_α:            mov              r11, 31
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], 3
                        mov              qword ptr [rsp + 840], rax
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 848], 3
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 736], rax
.Lx117_0:               mov              rax, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 856]
                        cmp              rdx, 0;                              jl    .Lx117_1
                        cmp              rax, rcx;                            jg    n39_unmark_α
                                                                              jmp   .Lx117_2
.Lx117_1:               cmp              rax, rcx;                            jl    n39_unmark_α
.Lx117_2:               mov              qword ptr [rsp + 720], 3
                        mov              qword ptr [rsp + 728], rax;          jmp   n31_assign_α
n30_to_by_β:            mov              r11, 31
                        mov              rdx, qword ptr [rsp + 856]
                        mov              rax, qword ptr [rsp + 736]
                        add              rax, rdx
                        mov              qword ptr [rsp + 736], rax;          jmp   .Lx117_0
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n32_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n32_bound_α:            mov              r11, 33
                        mov              qword ptr [rsp + 864], rsp;          jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 936], rax;          jmp   n35_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:        mov              r11, 36
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 928]
                        mov              rcx, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n38_unmark_α
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n37_assign_var_α
.Lx126_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_var_α:       mov              r11, 38
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n38_unmark_α
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n38_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n38_unmark_α:           mov              r11, 39
                        mov              rsp, qword ptr [rsp + 864];          jmp   n30_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n39_unmark_α:           mov              r11, 40
                        mov              rsp, qword ptr [rsp + 640];          jmp   n13_to_β
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 0
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n41_assign_α
.Lx132_0:               .quad            .Lx132_0_s
.Lx132_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 42
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              r11, 43
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n43_var_α
.Lx134_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              mov              r11, 44
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 136], rax;          jmp   n44_to_α
#-----------------------------------------------------------------------------------------------------------------------
n44_to_α:               mov              r11, 45
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 96], rax
.Lx138_0:               mov              rax, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              rax, rcx;                            jg    n69_var_α
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   n45_assign_α
n44_to_β:               mov              r11, 45
                        inc              qword ptr [rsp + 96];                jmp   .Lx138_0
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n46_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n46_bound_α:            mov              r11, 47
                        mov              qword ptr [rsp + 144], rsp;          jmp   n47_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n47_disjunction_α:      mov              r11, 48
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              dword ptr [rsp + 208], 0;            jmp   n48_var_ref_α
n47_disjunction_as:     mov              r11, 48
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 0;                              jne   .Lx143_0
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax;          jmp   n68_unmark_α
.Lx143_0:                                                                     jmp   n68_unmark_α
n47_disjunction_β:      mov              r11, 48
                        mov              eax, dword ptr [rsp + 208];          jmp   n68_unmark_α
n47_disjunction_af:     mov              r11, 48
                        add              dword ptr [rsp + 208], 1
                        mov              eax, dword ptr [rsp + 208];          jmp   n68_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n49_var_α
n48_var_ref_β:          mov              r11, 49;                             jmp   n47_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              r11, 50
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 504], rax;          jmp   n50_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              r11, 51
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n47_disjunction_af
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n51_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            mov              r11, 52
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n47_disjunction_af
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 53
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n53_binop_test_α
.Lx150_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_test_α:       mov              r11, 54
                        mov              eax, dword ptr [rsp + 528]
                        cmp              al, 112;                             je    .Lx151_0
                        mov              eax, dword ptr [rsp + 544]
                        cmp              al, 112;                             je    .Lx151_0
                        mov              eax, dword ptr [rsp + 528]
                        cmp              al, 3;                               jne   .Lx151_2
                        mov              eax, dword ptr [rsp + 544]
                        cmp              al, 3;                               jne   .Lx151_2
.Lx151_1:               mov              rax, qword ptr [rsp + 536]
                        mov              rcx, qword ptr [rsp + 552]
                        cmp              rax, rcx;                            jne   n47_disjunction_af
                        mov              rcx, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rcx
                        mov              rcx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rcx;          jmp   n54_disjunction_α
.Lx151_0:               mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              r8d, 9
                        lea              r9, [rsp + 464]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx151_1
                        cmp              eax, 1;                              je    n47_disjunction_af
                                                                              jmp   n54_disjunction_α
.Lx151_2:               mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n47_disjunction_af
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax;          jmp   n54_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n54_disjunction_α:      mov              r11, 55
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              dword ptr [rsp + 320], 0;            jmp   n55_var_α
n54_disjunction_as:     mov              r11, 55
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lx153_0
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax;          jmp   n63_var_α
.Lx153_0:                                                                     jmp   n63_var_α
n54_disjunction_β:      mov              r11, 55
                        mov              eax, dword ptr [rsp + 320];          jmp   n63_var_α
n54_disjunction_af:     mov              r11, 55
                        add              dword ptr [rsp + 320], 1
                        mov              eax, dword ptr [rsp + 320];          jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              r11, 56
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 440], rax;          jmp   n56_unop_α
n55_var_β:              mov              r11, 56;                             jmp   n54_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n56_unop_α:             mov              r11, 57
                        mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n57_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              r11, 58
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n58_binop_test_α
.Lx157_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_test_α:       mov              r11, 59
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 112;                             je    .Lx158_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 112;                             je    .Lx158_0
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 3;                               jne   .Lx158_2
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 3;                               jne   .Lx158_2
.Lx158_1:               mov              rax, qword ptr [rsp + 424]
                        mov              rcx, qword ptr [rsp + 456]
                        cmp              rax, rcx;                            jle   n54_disjunction_af
                        mov              rcx, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rcx
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rcx;          jmp   n59_var_α
.Lx158_0:               mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 7
                        lea              r9, [rsp + 400]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx158_1
                        cmp              eax, 1;                              je    n54_disjunction_af
                                                                              jmp   n59_var_α
.Lx158_2:               mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n54_disjunction_af
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax;          jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              r11, 60
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 376], rax;          jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n61_binop_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            mov              r11, 62
                        mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 63
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n54_disjunction_as
n62_assign_β:           mov              r11, 63;                             jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              r11, 64
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 280], rax;          jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              r11, 65
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 296], rax;          jmp   n65_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_α:            mov              r11, 66
                        mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n67_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n67_conjunction_α:      mov              r11, 68
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n47_disjunction_as
n67_conjunction_β:      mov              r11, 68;                             jmp   n68_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n68_unmark_α:           mov              r11, 69
                        mov              rsp, qword ptr [rsp + 144];          jmp   n44_to_β
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 70
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 56], rax;           jmp   n70_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn176:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n70_call_builtin_icon_β:
                        mov              r11, 71;                             jmp   main_ω
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
                        .section         .note.GNU-stack,"",@progbits
