                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__tabulate:
                        sub              rsp, 1632
                        mov              rdi, rsp
                        add              rdi, 1456
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
tabulate_α_body:
                        .type            n0_var_bx, @function
n0_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n1_call_icon_α
                        .size            n0_var_bx, .-n0_var_bx
                        .type            n1_call_icon_bx, @function
n1_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_icon_α:         mov              r11, 2
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax
                        .section         .rodata
.Lcall_icon_rkfn72:     .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn72]
                        lea              rsi, [rsp + 1408]
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
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n3_lit_string_α
                                                                              jmp   n2_assign_α
n1_call_icon_β:         mov              r11, 2;                              jmp   n3_lit_string_α
                        .size            n1_call_icon_bx, .-n1_call_icon_bx
                        .type            n2_assign_bx, @function
n2_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n3_lit_string_α
                        .size            n2_assign_bx, .-n2_assign_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_74_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n4_assign_α
.Llit_string_α_74_0:    .quad            .Llit_string_α_74_0_s
.Llit_string_α_74_0_s:  .string          ""
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n5_var_ref_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n6_var_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_var_bx, @function
n6_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n7_subscript_α
                        .size            n6_var_bx, .-n6_var_bx
                        .type            n7_subscript_bx, @function
n7_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:         mov              r11, 8
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n8_deref_α
                        .size            n7_subscript_bx, .-n7_subscript_bx
                        .type            n8_deref_bx, @function
n8_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_deref_α:             mov              r11, 9
                        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n9_scan_enter_α
                        .size            n8_deref_bx, .-n8_deref_bx
                        .type            n9_scan_enter_bx, @function
n9_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_enter_α:        mov              r11, 10
                        mov              qword ptr [rsp + 64], r13
                        mov              qword ptr [rsp + 72], r14
                        mov              qword ptr [rsp + 80], r15
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
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
                        mov              r14, 0;                              jmp   n10_var_α
                        .size            n9_scan_enter_bx, .-n9_scan_enter_bx
                        .type            n10_var_bx, @function
n10_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n11_lit_charset_α
                        .size            n10_var_bx, .-n10_var_bx
                        .type            n11_lit_charset_bx, @function
n11_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_charset_α:      mov              r11, 12
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_86_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n12_scan_upto_α
.Llit_charset_α_86_0:   .quad            .Llit_charset_α_86_0_s
.Llit_charset_α_86_0_s: .string          "0123456789"
                        .size            n11_lit_charset_bx, .-n11_lit_charset_bx
                        .type            n12_scan_upto_bx, @function
n12_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_upto_α:        mov              r11, 13
                        mov              qword ptr [rsp + 1088], r14
.Lscan_upto_α_88_0:     mov              rax, qword ptr [rsp + 1088]
                        cmp              rax, r15;                            jge   n25_disjunction_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_upto_α_88_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_upto_α_88_1
                        mov              qword ptr [rsp + 1072], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1080], rax;         jmp   n13_scan_tab_α
.Lscan_upto_α_88_1:     inc              qword ptr [rsp + 1088];              jmp   .Lscan_upto_α_88_0
n12_scan_upto_β:        mov              r11, 13
                        inc              qword ptr [rsp + 1088];              jmp   .Lscan_upto_α_88_0
.Lscan_upto_α_88_2:     .quad            .Lscan_upto_α_88_2_s
.Lscan_upto_α_88_2_s:   .string          "0123456789"
                        .size            n12_scan_upto_bx, .-n12_scan_upto_bx
                        .type            n13_scan_tab_bx, @function
n13_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_tab_α:         mov              r11, 14
                        mov              rax, qword ptr [rsp + 1080]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_90_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_90_0:      cmp              rax, 1;                              jl    n12_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n12_scan_upto_β
                        mov              qword ptr [rsp + 1056], r14
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
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n14_binop_α
n13_scan_tab_β:         mov              r11, 14
                        mov              r14, qword ptr [rsp + 1056];         jmp   n12_scan_upto_β
                        .size            n13_scan_tab_bx, .-n13_scan_tab_bx
                        .type            n14_binop_bx, @function
n14_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            mov              r11, 15
                        mov              rdi, qword ptr [rsp + 1472]
                        mov              rsi, qword ptr [rsp + 1480]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_assign_α
                        .size            n14_binop_bx, .-n14_binop_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n16_lit_charset_α
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_lit_charset_bx, @function
n16_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_charset_α:      mov              r11, 17
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_93_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n17_scan_many_α
.Llit_charset_α_93_0:   .quad            .Llit_charset_α_93_0_s
.Llit_charset_α_93_0_s: .string          "0123456789"
                        .size            n16_lit_charset_bx, .-n16_lit_charset_bx
                        .type            n17_scan_many_bx, @function
n17_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_many_α:        mov              r11, 18
                        mov              eax, r14d
.Lscan_many_α_95_0:     cmp              eax, r15d;                           jge   .Lscan_many_α_95_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_95_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_many_α_95_1
                        add              eax, 1;                              jmp   .Lscan_many_α_95_0
.Lscan_many_α_95_1:     cmp              eax, r14d;                           je    n20_var_α
                        mov              qword ptr [rsp + 1248], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 1256], rcx;         jmp   n18_scan_tab_α
n17_scan_many_β:        mov              r11, 18;                             jmp   n20_var_α
.Lscan_many_α_95_2:     .quad            .Lscan_many_α_95_2_s
.Lscan_many_α_95_2_s:   .string          "0123456789"
                        .size            n17_scan_many_bx, .-n17_scan_many_bx
                        .type            n18_scan_tab_bx, @function
n18_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_tab_α:         mov              r11, 19
                        mov              rax, qword ptr [rsp + 1256]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_97_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_97_0:      cmp              rax, 1;                              jl    n20_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n20_var_α
                        mov              qword ptr [rsp + 1232], r14
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
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n19_assign_α
n18_scan_tab_β:         mov              r11, 19
                        mov              r14, qword ptr [rsp + 1232];         jmp   n20_var_α
                        .size            n18_scan_tab_bx, .-n18_scan_tab_bx
                        .type            n19_assign_bx, @function
n19_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n20_var_α
                        .size            n19_assign_bx, .-n19_assign_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n21_var_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_var_bx, @function
n21_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n22_binop_α
                        .size            n21_var_bx, .-n21_var_bx
                        .type            n22_binop_bx, @function
n22_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              r11, 23
                        mov              rdi, qword ptr [rsp + 1472]
                        mov              rsi, qword ptr [rsp + 1480]
                        mov              rdx, qword ptr [rsp + 1456]
                        mov              rcx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_assign_α
                        .size            n22_binop_bx, .-n22_binop_bx
                        .type            n23_assign_bx, @function
n23_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n24_conjunction_α
                        .size            n23_assign_bx, .-n23_assign_bx
                        .type            n24_conjunction_bx, @function
n24_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:      mov              r11, 25
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n10_var_α
n24_conjunction_β:      mov              r11, 25;                             jmp   n10_var_α
                        .size            n24_conjunction_bx, .-n24_conjunction_bx
                        .type            n25_disjunction_bx, @function
n25_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_disjunction_α:      mov              r11, 26
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n53_disjunction_α
n25_disjunction_as:     mov              r11, 26
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_107_0
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 152], rax;          jmp   n26_conjunction_α
.Ldisjunction_α_107_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_107_1
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 152], rax;          jmp   n26_conjunction_α
.Ldisjunction_α_107_1:                                                        jmp   n26_conjunction_α
n25_disjunction_β:      mov              r11, 26
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              je    n63_scan_α
                                                                              jmp   n63_scan_α
n25_disjunction_af:     mov              r11, 26
                        add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 1;                              je    n28_disjunction_α
                                                                              jmp   n63_scan_α
                        .size            n25_disjunction_bx, .-n25_disjunction_bx
                        .type            n26_conjunction_bx, @function
n26_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:      mov              r11, 27
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax;          jmp   n27_scan_α
n26_conjunction_β:      mov              r11, 27;                             jmp   n63_scan_α
                        .size            n26_conjunction_bx, .-n26_conjunction_bx
                        .type            n27_scan_bx, @function
n27_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_α:             mov              r11, 28
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
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
                        mov              r15, qword ptr [rsp + 80];           jmp   tabulate_ω
n27_scan_β:             mov              r11, 28;                             jmp   tabulate_ω
                        .size            n27_scan_bx, .-n27_scan_bx
                        .type            n28_disjunction_bx, @function
n28_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              r11, 29
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              dword ptr [rsp + 736], 0;            jmp   n46_lit_string_α
n28_disjunction_as:     mov              r11, 29
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_112_0
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax;          jmp   n29_var_ref_α
.Ldisjunction_α_112_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_112_1
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 728], rax;          jmp   n29_var_ref_α
.Ldisjunction_α_112_1:                                                        jmp   n29_var_ref_α
n28_disjunction_β:      mov              r11, 29
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 0;                              je    n51_scan_tab_β
                                                                              jmp   n29_var_ref_α
n28_disjunction_af:     mov              r11, 29
                        add              dword ptr [rsp + 736], 1
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 1;                              je    n44_lit_integer_α
                                                                              jmp   n29_var_ref_α
                        .size            n28_disjunction_bx, .-n28_disjunction_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n30_var_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 488], rax;          jmp   n31_subscript_α
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_subscript_bx, @function
n31_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_subscript_α:        mov              r11, 32
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n63_scan_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n32_var_α
                        .size            n31_subscript_bx, .-n31_subscript_bx
                        .type            n32_var_bx, @function
n32_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              r11, 33
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 584], rax;          jmp   n33_lit_string_α
                        .size            n32_var_bx, .-n32_var_bx
                        .type            n33_lit_string_bx, @function
n33_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_120_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n34_binop_α
.Llit_string_α_120_0:   .quad            .Llit_string_α_120_0_s
.Llit_string_α_120_0_s: .string          "("
                        .size            n33_lit_string_bx, .-n33_lit_string_bx
                        .type            n34_binop_bx, @function
n34_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            mov              r11, 35
                        mov              rdi, qword ptr [rsp + 1472]
                        mov              rsi, qword ptr [rsp + 1480]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_var_α
                        .size            n34_binop_bx, .-n34_binop_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 664], rax;          jmp   n36_lit_integer_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_124_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n37_coerce_numeric_α
.Llit_integer_α_124_0:  .quad            1
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_coerce_numeric_bx, @function
n37_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_coerce_numeric_α:   mov              r11, 38
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_126_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_126_0
                        mov              eax, dword ptr [rsp + 672]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_126_0
.Lcoerce_numeric_α_126_1:
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 648], rax;          jmp   n38_binop_α
.Lcoerce_numeric_α_126_0:
                        lea              rdi, [rsp + 1488]
                        lea              rsi, [rsp + 672]
                        lea              rdx, [rsp + 640]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_binop_α
                        .size            n37_coerce_numeric_bx, .-n37_coerce_numeric_bx
                        .type            n38_binop_bx, @function
n38_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:            mov              r11, 39
                        mov              eax, dword ptr [rsp + 640]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_127_2
                        mov              rax, qword ptr [rsp + 648]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 624], 3
                        mov              qword ptr [rsp + 632], rax;          jmp   .Lbinop_α_127_7
.Lbinop_α_127_2:        and              edx, 1;                              jz    .Lbinop_α_127_0
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_127_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_127_4
.Lbinop_α_127_3:        movq             xmm0, rsi
.Lbinop_α_127_4:        cmp              cl, 5;                               je    .Lbinop_α_127_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_127_6
.Lbinop_α_127_5:        movq             xmm1, rdi
.Lbinop_α_127_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 624], 5
                        mov              qword ptr [rsp + 632], rax
.Lbinop_α_127_7:                                                              jmp   n39_binop_α
.Lbinop_α_127_0:        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n63_scan_α
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n39_binop_α
                        .size            n38_binop_bx, .-n38_binop_bx
                        .type            n39_binop_bx, @function
n39_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:            mov              r11, 40
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_lit_string_α
                        .size            n39_binop_bx, .-n39_binop_bx
                        .type            n40_lit_string_bx, @function
n40_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_129_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n41_binop_α
.Llit_string_α_129_0:   .quad            .Llit_string_α_129_0_s
.Llit_string_α_129_0_s: .string          "), "
                        .size            n40_lit_string_bx, .-n40_lit_string_bx
                        .type            n41_binop_bx, @function
n41_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:            mov              r11, 42
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_assign_var_α
                        .size            n41_binop_bx, .-n41_binop_bx
                        .type            n42_assign_var_bx, @function
n42_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_var_α:       mov              r11, 43
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n63_scan_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n43_conjunction_α
                        .size            n42_assign_var_bx, .-n42_assign_var_bx
                        .type            n43_conjunction_bx, @function
n43_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_conjunction_α:      mov              r11, 44
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax;          jmp   n25_disjunction_as
n43_conjunction_β:      mov              r11, 44;                             jmp   n63_scan_α
                        .size            n43_conjunction_bx, .-n43_conjunction_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              r11, 45
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_133_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n45_assign_α
n44_lit_integer_β:      mov              r11, 45;                             jmp   n29_var_ref_α
.Llit_integer_α_133_0:  .quad            1
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_assign_bx, @function
n45_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n28_disjunction_as
n45_assign_β:           mov              r11, 46;                             jmp   n29_var_ref_α
                        .size            n45_assign_bx, .-n45_assign_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_135_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n47_scan_match_α
n46_lit_string_β:       mov              r11, 47;                             jmp   n28_disjunction_af
.Llit_string_α_135_0:   .quad            .Llit_string_α_135_0_s
.Llit_string_α_135_0_s: .string          "("
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_scan_match_bx, @function
n47_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_scan_match_α:       mov              r11, 48
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n28_disjunction_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_137_0]
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
                        test             eax, eax;                            jne   n28_disjunction_af
                        mov              qword ptr [rsp + 896], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 904], rax;          jmp   n48_scan_tab_α
.Lscan_match_α_137_0:   .quad            .Lscan_match_α_137_0_s
.Lscan_match_α_137_0_s: .string          "("
                        .size            n47_scan_match_bx, .-n47_scan_match_bx
                        .type            n48_scan_tab_bx, @function
n48_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_scan_tab_α:         mov              r11, 49
                        mov              rax, qword ptr [rsp + 904]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_139_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_139_0:     cmp              rax, 1;                              jl    n28_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n28_disjunction_af
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
                        mov              qword ptr [rsp + 872], rdx;          jmp   n49_lit_charset_α
n48_scan_tab_β:         mov              r11, 49
                        mov              r14, qword ptr [rsp + 880];          jmp   n28_disjunction_af
                        .size            n48_scan_tab_bx, .-n48_scan_tab_bx
                        .type            n49_lit_charset_bx, @function
n49_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_charset_α:      mov              r11, 50
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_140_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n50_scan_upto_α
.Llit_charset_α_140_0:  .quad            .Llit_charset_α_140_0_s
.Llit_charset_α_140_0_s:
                        .string          ")"
                        .size            n49_lit_charset_bx, .-n49_lit_charset_bx
                        .type            n50_scan_upto_bx, @function
n50_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_scan_upto_α:        mov              r11, 51
                        mov              qword ptr [rsp + 816], r14
.Lscan_upto_α_142_0:    mov              rax, qword ptr [rsp + 816]
                        cmp              rax, r15;                            jge   n29_var_ref_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_upto_α_142_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_upto_α_142_1
                        mov              qword ptr [rsp + 800], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 808], rax;          jmp   n51_scan_tab_α
.Lscan_upto_α_142_1:    inc              qword ptr [rsp + 816];               jmp   .Lscan_upto_α_142_0
n50_scan_upto_β:        mov              r11, 51
                        inc              qword ptr [rsp + 816];               jmp   .Lscan_upto_α_142_0
.Lscan_upto_α_142_2:    .quad            .Lscan_upto_α_142_2_s
.Lscan_upto_α_142_2_s:  .string          ")"
                        .size            n50_scan_upto_bx, .-n50_scan_upto_bx
                        .type            n51_scan_tab_bx, @function
n51_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_scan_tab_α:         mov              r11, 52
                        mov              rax, qword ptr [rsp + 808]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_144_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_144_0:     cmp              rax, 1;                              jl    n50_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n50_scan_upto_β
                        mov              qword ptr [rsp + 784], r14
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
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n52_assign_α
n51_scan_tab_β:         mov              r11, 52
                        mov              r14, qword ptr [rsp + 784];          jmp   n50_scan_upto_β
                        .size            n51_scan_tab_bx, .-n51_scan_tab_bx
                        .type            n52_assign_bx, @function
n52_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n28_disjunction_as
n52_assign_β:           mov              r11, 53;                             jmp   n29_var_ref_α
                        .size            n52_assign_bx, .-n52_assign_bx
                        .type            n53_disjunction_bx, @function
n53_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:      mov              r11, 54
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n67_var_α
n53_disjunction_as:     mov              r11, 54
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_147_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n54_var_ref_α
.Ldisjunction_α_147_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_147_1
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax;          jmp   n54_var_ref_α
.Ldisjunction_α_147_1:                                                        jmp   n54_var_ref_α
n53_disjunction_β:      mov              r11, 54
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n53_disjunction_af
                                                                              jmp   n53_disjunction_af
n53_disjunction_af:     mov              r11, 54
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n64_var_α
                                                                              jmp   n25_disjunction_af
                        .size            n53_disjunction_bx, .-n53_disjunction_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n55_var_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              r11, 56
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n56_subscript_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_subscript_bx, @function
n56_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:        mov              r11, 57
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
                        cmp              al, 104;                             je    n63_scan_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n57_deref_α
                        .size            n56_subscript_bx, .-n56_subscript_bx
                        .type            n57_deref_bx, @function
n57_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_deref_α:            mov              r11, 58
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
                        cmp              al, 104;                             je    n63_scan_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n58_var_α
                        .size            n57_deref_bx, .-n57_deref_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 59
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax;          jmp   n59_lit_string_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_156_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n60_binop_α
.Llit_string_α_156_0:   .quad            .Llit_string_α_156_0_s
.Llit_string_α_156_0_s: .string          ", "
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_binop_bx, @function
n60_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            mov              r11, 61
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_binop_α
                        .size            n60_binop_bx, .-n60_binop_bx
                        .type            n61_binop_bx, @function
n61_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            mov              r11, 62
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_assign_var_α
                        .size            n61_binop_bx, .-n61_binop_bx
                        .type            n62_assign_var_bx, @function
n62_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_var_α:       mov              r11, 63
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
                        cmp              al, 104;                             je    n63_scan_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n25_disjunction_as
n62_assign_var_β:       mov              r11, 63;                             jmp   n63_scan_α
                        .size            n62_assign_var_bx, .-n62_assign_var_bx
                        .type            n63_scan_bx, @function
n63_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_scan_α:             mov              r11, 64
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
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
                        mov              r15, qword ptr [rsp + 80];           jmp   tabulate_ω
n63_scan_β:             mov              r11, 64;                             jmp   tabulate_ω
                        .size            n63_scan_bx, .-n63_scan_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              r11, 65
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 424], rax;          jmp   n65_var_α
n64_var_β:              mov              r11, 65;                             jmp   n53_disjunction_af
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              r11, 66
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 440], rax;          jmp   n66_binop_test_α
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_binop_test_bx, @function
n66_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_test_α:       mov              r11, 67
                        mov              rdi, qword ptr [rsp + 1456]
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n53_disjunction_af
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_disjunction_as
n66_binop_test_β:       mov              r11, 67;                             jmp   n53_disjunction_af
                        .size            n66_binop_test_bx, .-n66_binop_test_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              r11, 68
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 392], rax;          jmp   n68_unop_test_α
n67_var_β:              mov              r11, 68;                             jmp   n53_disjunction_af
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_unop_test_bx, @function
n68_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_unop_test_α:        mov              r11, 69
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              al, 104;                             je    n53_disjunction_af
                        cmp              eax, 0;                              jne   n53_disjunction_af
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0;            jmp   n53_disjunction_as
n68_unop_test_β:        mov              r11, 69;                             jmp   n53_disjunction_af
                        .size            n68_unop_test_bx, .-n68_unop_test_bx
#-----------------------------------------------------------------------------------------------------------------------
tabulate_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tabulate_β:
                                                                              jmp   tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
tabulate_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1632;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
tabulate_ω:
                        add              rsp, 1632;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
tabulate_dcα:
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
                        lea              rcx, [rip + .Ltabulate_α_170_3]
                        push             rcx
                        lea              rcx, [rip + .Ltabulate_α_170_2]
                        push             rcx;                                 jmp   FN__tabulate
.Ltabulate_α_170_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ltabulate_α_170_3:     add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__format:
                        sub              rsp, 992
                        mov              rdi, rsp
                        add              rdi, 896
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
format_α_body:
                        .type            n00001_var_bx, @function
n00001_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_var_α:             mov              r11, 70
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00002_unop_α
                        .size            n00001_var_bx, .-n00001_var_bx
                        .type            n00002_unop_bx, @function
n00002_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_unop_α:            mov              r11, 71
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
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00003_var_α
                        .size            n00002_unop_bx, .-n00002_unop_bx
                        .type            n00003_var_bx, @function
n00003_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_var_α:             mov              r11, 72
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 224], rax           # result
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00004_lit_integer_α
                        .size            n00003_var_bx, .-n00003_var_bx
                        .type            n00004_lit_integer_bx, @function
n00004_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_lit_integer_α:     mov              r11, 73
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00005_coerce_numeric_α
.Llit_integer_α_220_0:  .quad            2
                        .size            n00004_lit_integer_bx, .-n00004_lit_integer_bx
                        .type            n00005_coerce_numeric_bx, @function
n00005_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_coerce_numeric_α:  mov              r11, 74
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_222_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_222_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_222_0
.Lcoerce_numeric_α_222_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00006_binop_α
.Lcoerce_numeric_α_222_0:
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00006_binop_α
                        .size            n00005_coerce_numeric_bx, .-n00005_coerce_numeric_bx
                        .type            n00006_binop_bx, @function
n00006_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_binop_α:           mov              r11, 75
                        mov              eax, dword ptr [rsp + 208]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_223_2
                        mov              rax, qword ptr [rsp + 216]
                        mov              rdx, 2
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lbinop_α_223_7
.Lbinop_α_223_2:        and              edx, 1;                              jz    .Lbinop_α_223_0
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_223_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_223_4
.Lbinop_α_223_3:        movq             xmm0, rsi
.Lbinop_α_223_4:        cmp              cl, 5;                               je    .Lbinop_α_223_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_223_6
.Lbinop_α_223_5:        movq             xmm1, rdi
.Lbinop_α_223_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lbinop_α_223_7:                                                              jmp   n00007_binop_test_α
.Lbinop_α_223_0:        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00008_var_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00007_binop_test_α
                        .size            n00006_binop_bx, .-n00006_binop_bx
                        .type            n00007_binop_test_bx, @function
n00007_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_binop_test_α:      mov              r11, 76
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 112;                             je    .Lbinop_test_α_224_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 112;                             je    .Lbinop_test_α_224_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 3;                               jne   .Lbinop_test_α_224_2
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 3;                               jne   .Lbinop_test_α_224_2
.Lbinop_test_α_224_1:   mov              rax, qword ptr [rsp + 168]
                        mov              rcx, qword ptr [rsp + 200]
                        cmp              rax, rcx;                            jle   n00008_var_α
                        mov              rcx, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rcx
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rcx;          jmp   n00009_var_α
.Lbinop_test_α_224_0:   mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8d, 7
                        lea              r9, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_224_1
                        cmp              eax, 1;                              je    n00008_var_α
                                                                              jmp   n00009_var_α
.Lbinop_test_α_224_2:   mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00008_var_α
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00009_var_α
                        .size            n00007_binop_test_bx, .-n00007_binop_test_bx
                        .type            n00009_var_bx, @function
n00009_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_α:             mov              r11, 77
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 864], rax           # result
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00010_lit_integer_α
                        .size            n00009_var_bx, .-n00009_var_bx
                        .type            n00010_lit_integer_bx, @function
n00010_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_lit_integer_α:     mov              r11, 78
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_226_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00011_coerce_numeric_α
.Llit_integer_α_226_0:  .quad            2
                        .size            n00010_lit_integer_bx, .-n00010_lit_integer_bx
                        .type            n00011_coerce_numeric_bx, @function
n00011_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_coerce_numeric_α:  mov              r11, 79
                        mov              eax, dword ptr [rsp + 864]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_228_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_228_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_228_0
.Lcoerce_numeric_α_228_1:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00012_binop_α
.Lcoerce_numeric_α_228_0:
                        lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 848]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00012_binop_α
                        .size            n00011_coerce_numeric_bx, .-n00011_coerce_numeric_bx
                        .type            n00012_binop_bx, @function
n00012_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_binop_α:           mov              r11, 80
                        mov              eax, dword ptr [rsp + 848]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_229_2
                        mov              rax, qword ptr [rsp + 856]
                        mov              rdx, 2
                        add              rax, rdx
                        mov              qword ptr [rsp + 832], 3
                        mov              qword ptr [rsp + 840], rax;          jmp   .Lbinop_α_229_7
.Lbinop_α_229_2:        and              edx, 1;                              jz    .Lbinop_α_229_0
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_229_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_229_4
.Lbinop_α_229_3:        movq             xmm0, rsi
.Lbinop_α_229_4:        cmp              cl, 5;                               je    .Lbinop_α_229_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_229_6
.Lbinop_α_229_5:        movq             xmm1, rdi
.Lbinop_α_229_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 832], 5
                        mov              qword ptr [rsp + 840], rax
.Lbinop_α_229_7:                                                              jmp   n00013_assign_α
.Lbinop_α_229_0:        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 880]
                        mov              rcx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_var_ref_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n00013_assign_α
                        .size            n00012_binop_bx, .-n00012_binop_bx
                        .type            n00013_assign_bx, @function
n00013_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_assign_α:          mov              r11, 81
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00014_var_ref_α
                        .size            n00013_assign_bx, .-n00013_assign_bx
                        .type            n00014_var_ref_bx, @function
n00014_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00015_var_α
                        .size            n00014_var_ref_bx, .-n00014_var_ref_bx
                        .type            n00015_var_bx, @function
n00015_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_var_α:             mov              r11, 83
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00016_lit_integer_α
                        .size            n00015_var_bx, .-n00015_var_bx
                        .type            n00016_lit_integer_bx, @function
n00016_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_lit_integer_α:     mov              r11, 84
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_235_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00017_coerce_numeric_α
.Llit_integer_α_235_0:  .quad            1
                        .size            n00016_lit_integer_bx, .-n00016_lit_integer_bx
                        .type            n00017_coerce_numeric_bx, @function
n00017_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_coerce_numeric_α:  mov              r11, 85
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_237_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_237_0
                        mov              eax, dword ptr [rsp + 736]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_237_0
.Lcoerce_numeric_α_237_1:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00018_binop_α
.Lcoerce_numeric_α_237_0:
                        lea              rdi, [rsp + 896]
                        lea              rsi, [rsp + 736]
                        lea              rdx, [rsp + 704]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00018_binop_α
                        .size            n00017_coerce_numeric_bx, .-n00017_coerce_numeric_bx
                        .type            n00018_binop_bx, @function
n00018_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_binop_α:           mov              r11, 86
                        mov              eax, dword ptr [rsp + 704]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_238_2
                        mov              rax, qword ptr [rsp + 712]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 688], 3
                        mov              qword ptr [rsp + 696], rax;          jmp   .Lbinop_α_238_7
.Lbinop_α_238_2:        and              edx, 1;                              jz    .Lbinop_α_238_0
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_238_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_238_4
.Lbinop_α_238_3:        movq             xmm0, rsi
.Lbinop_α_238_4:        cmp              cl, 5;                               je    .Lbinop_α_238_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_238_6
.Lbinop_α_238_5:        movq             xmm1, rdi
.Lbinop_α_238_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 688], 5
                        mov              qword ptr [rsp + 696], rax
.Lbinop_α_238_7:                                                              jmp   n00019_assign_α
.Lbinop_α_238_0:        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_var_ref_α
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00019_assign_α
                        .size            n00018_binop_bx, .-n00018_binop_bx
                        .type            n00019_assign_bx, @function
n00019_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              r11, 87
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00020_subscript_α
                        .size            n00019_assign_bx, .-n00019_assign_bx
                        .type            n00020_subscript_bx, @function
n00020_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_subscript_α:       mov              r11, 88
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_var_ref_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n00021_deref_α
                        .size            n00020_subscript_bx, .-n00020_subscript_bx
                        .type            n00021_deref_bx, @function
n00021_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_deref_α:           mov              r11, 89
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_var_ref_α
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n00022_lit_string_α
                        .size            n00021_deref_bx, .-n00021_deref_bx
                        .type            n00022_lit_string_bx, @function
n00022_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_242_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00023_binop_test_α
.Llit_string_α_242_0:   .quad            .Llit_string_α_242_0_s
.Llit_string_α_242_0_s: .string          " "
                        .size            n00022_lit_string_bx, .-n00022_lit_string_bx
                        .type            n00023_binop_test_bx, @function
n00023_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_binop_test_α:      mov              r11, 91
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 784]
                        mov              rcx, qword ptr [rsp + 792]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00014_var_ref_α
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00024_var_α
                        .size            n00023_binop_test_bx, .-n00023_binop_test_bx
                        .type            n00024_var_bx, @function
n00024_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_var_α:             mov              r11, 92
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00025_lit_integer_α
                        .size            n00024_var_bx, .-n00024_var_bx
                        .type            n00025_lit_integer_bx, @function
n00025_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_lit_integer_α:     mov              r11, 93
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00026_var_α
.Llit_integer_α_246_0:  .quad            1
                        .size            n00025_lit_integer_bx, .-n00025_lit_integer_bx
                        .type            n00026_var_bx, @function
n00026_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_α:             mov              r11, 94
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00027_subscript_α
                        .size            n00026_var_bx, .-n00026_var_bx
                        .type            n00027_subscript_bx, @function
n00027_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_subscript_α:       mov              r11, 95
                        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              r8, qword ptr [rsp + 624]
                        mov              r9, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00028_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00029_call_icon_α
                        .size            n00027_subscript_bx, .-n00027_subscript_bx
                        .type            n00029_call_icon_bx, @function
n00029_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_call_icon_α:       mov              r11, 96
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lcall_icon_rkfn251:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn251]
                        lea              rsi, [rsp + 544]
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
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n00028_lit_string_α
                                                                              jmp   n00028_lit_string_α
n00029_call_icon_β:       mov              r11, 96;                             jmp   n00028_lit_string_α
                        .size            n00029_call_icon_bx, .-n00029_call_icon_bx
                        .type            n00028_lit_string_bx, @function
n00028_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_252_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00030_var_α
.Llit_string_α_252_0:   .quad            .Llit_string_α_252_0_s
.Llit_string_α_252_0_s: .string          " "
                        .size            n00028_lit_string_bx, .-n00028_lit_string_bx
                        .type            n00030_var_bx, @function
n00030_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_var_α:             mov              r11, 98
                        mov              rax, qword ptr [r9 + 32]             # namewidth
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 400], rax           # result
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00031_call_icon_α
                        .size            n00030_var_bx, .-n00030_var_bx
                        .type            n00031_call_icon_bx, @function
n00031_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_call_icon_α:       mov              r11, 99
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lcall_icon_rkfn255:    .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn255]
                        lea              rsi, [rsp + 320]
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
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n00001_var_α
                                                                              jmp   n00032_var_α
n00031_call_icon_β:       mov              r11, 99;                             jmp   n00001_var_α
                        .size            n00031_call_icon_bx, .-n00031_call_icon_bx
                        .type            n00032_var_bx, @function
n00032_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_α:             mov              r11, 100
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00033_var_α
                        .size            n00032_var_bx, .-n00032_var_bx
                        .type            n00033_var_bx, @function
n00033_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_α:             mov              r11, 101
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00034_lit_integer_α
                        .size            n00033_var_bx, .-n00033_var_bx
                        .type            n00034_lit_integer_bx, @function
n00034_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_260_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00035_coerce_numeric_α
.Llit_integer_α_260_0:  .quad            1
                        .size            n00034_lit_integer_bx, .-n00034_lit_integer_bx
                        .type            n00035_coerce_numeric_bx, @function
n00035_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_coerce_numeric_α:  mov              r11, 103
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_262_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
                        mov              eax, dword ptr [rsp + 496]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
.Lcoerce_numeric_α_262_1:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00036_binop_α
.Lcoerce_numeric_α_262_0:
                        lea              rdi, [rsp + 896]
                        lea              rsi, [rsp + 496]
                        lea              rdx, [rsp + 464]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00036_binop_α
                        .size            n00035_coerce_numeric_bx, .-n00035_coerce_numeric_bx
                        .type            n00036_binop_bx, @function
n00036_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_binop_α:           mov              r11, 104
                        mov              eax, dword ptr [rsp + 464]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_263_2
                        mov              rax, qword ptr [rsp + 472]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 448], 3
                        mov              qword ptr [rsp + 456], rax;          jmp   .Lbinop_α_263_7
.Lbinop_α_263_2:        and              edx, 1;                              jz    .Lbinop_α_263_0
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_263_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_263_4
.Lbinop_α_263_3:        movq             xmm0, rsi
.Lbinop_α_263_4:        cmp              cl, 5;                               je    .Lbinop_α_263_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_263_6
.Lbinop_α_263_5:        movq             xmm1, rdi
.Lbinop_α_263_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 448], 5
                        mov              qword ptr [rsp + 456], rax
.Lbinop_α_263_7:                                                              jmp   n00037_lit_integer_α
.Lbinop_α_263_0:        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_var_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00037_lit_integer_α
                        .size            n00036_binop_bx, .-n00036_binop_bx
                        .type            n00037_lit_integer_bx, @function
n00037_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_264_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00038_subscript_α
.Llit_integer_α_264_0:  .quad            0
                        .size            n00037_lit_integer_bx, .-n00037_lit_integer_bx
                        .type            n00038_subscript_bx, @function
n00038_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_subscript_α:       mov              r11, 106
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8, qword ptr [rsp + 512]
                        mov              r9, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_var_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00039_binop_α
                        .size            n00038_subscript_bx, .-n00038_subscript_bx
                        .type            n00039_binop_bx, @function
n00039_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_binop_α:           mov              r11, 107
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00040_assign_α
                        .size            n00039_binop_bx, .-n00039_binop_bx
                        .type            n00040_assign_bx, @function
n00040_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00041_conjunction_α
                        .size            n00040_assign_bx, .-n00040_assign_bx
                        .type            n00041_conjunction_bx, @function
n00041_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_conjunction_α:     mov              r11, 109
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00001_var_α
n00041_conjunction_β:     mov              r11, 109;                            jmp   n00001_var_α
                        .size            n00041_conjunction_bx, .-n00041_conjunction_bx
                        .type            n00008_var_bx, @function
n00008_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00042_lit_integer_α
                        .size            n00008_var_bx, .-n00008_var_bx
                        .type            n00042_lit_integer_bx, @function
n00042_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_lit_integer_α:     mov              r11, 111
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_271_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00043_lit_integer_α
.Llit_integer_α_271_0:  .quad            1
                        .size            n00042_lit_integer_bx, .-n00042_lit_integer_bx
                        .type            n00043_lit_integer_bx, @function
n00043_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00044_subscript_α
.Llit_integer_α_272_0:  .quad            18446744073709551614
                        .size            n00043_lit_integer_bx, .-n00043_lit_integer_bx
                        .type            n00044_subscript_bx, @function
n00044_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_subscript_α:       mov              r11, 113
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              r8, qword ptr [rsp + 128]
                        mov              r9, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    format_ω
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00045_call_icon_α
                        .size            n00044_subscript_bx, .-n00044_subscript_bx
                        .type            n00045_call_icon_bx, @function
n00045_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_call_icon_α:       mov              r11, 114
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lcall_icon_rkfn275:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn275]
                        lea              rsi, [rsp + 48]
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
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    format_ω
                                                                              jmp   format_ω
n00045_call_icon_β:       mov              r11, 114;                            jmp   format_ω
                        .size            n00045_call_icon_bx, .-n00045_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
format_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
format_β:
                                                                              jmp   format_ω
#-----------------------------------------------------------------------------------------------------------------------
format_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 992;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
format_ω:
                        add              rsp, 992;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
format_dcα:
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
                        lea              rcx, [rip + .Lformat_α_276_3]
                        push             rcx
                        lea              rcx, [rip + .Lformat_α_276_2]
                        push             rcx;                                 jmp   FN__format
.Lformat_α_276_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lformat_α_276_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__item:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rax + 976], rbp
                        mov              rcx, qword ptr [rsp + 0]
                        mov              qword ptr [rax + 984], rcx
                        mov              rcx, qword ptr [rsp + 8]
                        mov              qword ptr [rax + 992], rcx
                        lea              rcx, [rsp + 40]
                        mov              qword ptr [rax + 1000], rcx
                        lea              rbp, [rax + 976]
                        mov              rdi, rax
                        mov              esi, 0
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
item_α_body:
                        lea              rax, [rip + n00046_suspend_β]
                        mov              qword ptr [rbp + -160], rax
                        .type            n00047_call_icon_bx, @function
n00047_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_call_icon_α:       mov              r11, 115
                        .section         .rodata
.Lcall_icon_rkfn314:    .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn314]
                        lea              rsi, [rbp + -928]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -944], rax
                        mov              qword ptr [rbp + -936], rdx
                        cmp              al, 104;                             je    item_ω
                                                                              jmp   n00048_assign_α
n00047_call_icon_β:       mov              r11, 115;                            jmp   item_ω
                        .size            n00047_call_icon_bx, .-n00047_call_icon_bx
                        .type            n00048_assign_bx, @function
n00048_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_assign_α:          mov              r11, 116
                        mov              rax, qword ptr [rbp + -944]
                        mov              rdx, qword ptr [rbp + -936]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n00049_var_α
                        .size            n00048_assign_bx, .-n00048_assign_bx
                        .type            n00049_var_bx, @function
n00049_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:             mov              r11, 117
                        mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + -192], rax          # result
                        mov              qword ptr [rbp + -184], rdx;         jmp   n00050_lit_integer_α
                        .size            n00049_var_bx, .-n00049_var_bx
                        .type            n00050_lit_integer_bx, @function
n00050_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rbp + -176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_317_0]
                        mov              qword ptr [rbp + -168], rax;         jmp   n00051_coerce_numeric_α
.Llit_integer_α_317_0:  .quad            1
                        .size            n00050_lit_integer_bx, .-n00050_lit_integer_bx
                        .type            n00051_coerce_numeric_bx, @function
n00051_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_coerce_numeric_α:  mov              r11, 119
                        mov              eax, dword ptr [rbp + -192]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_319_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_319_0
                        mov              eax, dword ptr [rbp + -176]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_319_0
.Lcoerce_numeric_α_319_1:
                        mov              rax, qword ptr [rbp + -192]
                        mov              qword ptr [rbp + -208], rax
                        mov              rax, qword ptr [rbp + -184]
                        mov              qword ptr [rbp + -200], rax;         jmp   n00052_binop_α
.Lcoerce_numeric_α_319_0:
                        lea              rdi, [rbp + -192]
                        lea              rsi, [rbp + -176]
                        lea              rdx, [rbp + -208]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00052_binop_α
                        .size            n00051_coerce_numeric_bx, .-n00051_coerce_numeric_bx
                        .type            n00052_binop_bx, @function
n00052_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_binop_α:           mov              r11, 120
                        mov              eax, dword ptr [rbp + -208]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_320_2
                        mov              rax, qword ptr [rbp + -200]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rbp + -224], 3
                        mov              qword ptr [rbp + -216], rax;         jmp   .Lbinop_α_320_7
.Lbinop_α_320_2:        and              edx, 1;                              jz    .Lbinop_α_320_0
                        mov              rsi, qword ptr [rbp + -200]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_320_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_320_4
.Lbinop_α_320_3:        movq             xmm0, rsi
.Lbinop_α_320_4:        cmp              cl, 5;                               je    .Lbinop_α_320_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_320_6
.Lbinop_α_320_5:        movq             xmm1, rdi
.Lbinop_α_320_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rbp + -224], 5
                        mov              qword ptr [rbp + -216], rax
.Lbinop_α_320_7:                                                              jmp   n00053_assign_α
.Lbinop_α_320_0:        mov              rdi, qword ptr [rbp + -208]
                        mov              rsi, qword ptr [rbp + -200]
                        mov              rdx, qword ptr [rbp + -176]
                        mov              rcx, qword ptr [rbp + -168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00054_var_α
                        mov              qword ptr [rbp + -224], rax
                        mov              qword ptr [rbp + -216], rdx;         jmp   n00053_assign_α
                        .size            n00052_binop_bx, .-n00052_binop_bx
                        .type            n00053_assign_bx, @function
n00053_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rbp + -224]
                        mov              rdx, qword ptr [rbp + -216]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00054_var_α
                        .size            n00053_assign_bx, .-n00053_assign_bx
                        .type            n00054_var_bx, @function
n00054_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_var_α:             mov              r11, 122
                        mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + -304], rax          # result
                        mov              qword ptr [rbp + -296], rdx;         jmp   n00055_lit_integer_α
                        .size            n00054_var_bx, .-n00054_var_bx
                        .type            n00055_lit_integer_bx, @function
n00055_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_lit_integer_α:     mov              r11, 123
                        mov              qword ptr [rbp + -288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_323_0]
                        mov              qword ptr [rbp + -280], rax;         jmp   n00056_call_icon_α
.Llit_integer_α_323_0:  .quad            6
                        .size            n00055_lit_integer_bx, .-n00055_lit_integer_bx
                        .type            n00056_call_icon_bx, @function
n00056_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_call_icon_α:       mov              r11, 124
                        mov              rax, qword ptr [rbp + -288]
                        mov              qword ptr [rbp + -336], rax
                        mov              rax, qword ptr [rbp + -280]
                        mov              qword ptr [rbp + -328], rax
                        mov              rax, qword ptr [rbp + -304]
                        mov              qword ptr [rbp + -352], rax
                        mov              rax, qword ptr [rbp + -296]
                        mov              qword ptr [rbp + -344], rax
                        .section         .rodata
.Lcall_icon_rkfn325:    .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn325]
                        lea              rsi, [rbp + -352]
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
                        mov              qword ptr [rbp + -368], rax
                        mov              qword ptr [rbp + -360], rdx
                        cmp              al, 104;                             je    n00057_var_α
                                                                              jmp   n00058_lit_string_α
n00056_call_icon_β:       mov              r11, 124;                            jmp   n00057_var_α
                        .size            n00056_call_icon_bx, .-n00056_call_icon_bx
                        .type            n00058_lit_string_bx, @function
n00058_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rbp + -272], 2            # result
                        mov              dword ptr [rbp + -268], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_326_0]
                        mov              qword ptr [rbp + -264], rax;         jmp   n00059_var_α
.Llit_string_α_326_0:   .quad            .Llit_string_α_326_0_s
.Llit_string_α_326_0_s: .string          "  "
                        .size            n00058_lit_string_bx, .-n00058_lit_string_bx
                        .type            n00059_var_bx, @function
n00059_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_var_α:             mov              r11, 126
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rbp + -240], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rbp + -232], rax;         jmp   n00060_call_icon_α
                        .size            n00059_var_bx, .-n00059_var_bx
                        .type            n00060_call_icon_bx, @function
n00060_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_call_icon_α:       mov              r11, 127
                        mov              rax, qword ptr [rbp + -240]
                        mov              qword ptr [rbp + -400], rax
                        mov              rax, qword ptr [rbp + -232]
                        mov              qword ptr [rbp + -392], rax
                        mov              rax, qword ptr [rbp + -272]
                        mov              qword ptr [rbp + -416], rax
                        mov              rax, qword ptr [rbp + -264]
                        mov              qword ptr [rbp + -408], rax
                        mov              rax, qword ptr [rbp + -368]
                        mov              qword ptr [rbp + -432], rax
                        mov              rax, qword ptr [rbp + -360]
                        mov              qword ptr [rbp + -424], rax
                        .section         .rodata
.Lcall_icon_rkfn330:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn330]
                        lea              rsi, [rbp + -432]
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
                        mov              qword ptr [rbp + -448], rax
                        mov              qword ptr [rbp + -440], rdx
                        cmp              al, 104;                             je    n00057_var_α
                                                                              jmp   n00057_var_α
n00060_call_icon_β:       mov              r11, 127;                            jmp   n00057_var_α
                        .size            n00060_call_icon_bx, .-n00060_call_icon_bx
                        .type            n00057_var_bx, @function
n00057_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rbp + -464], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rbp + -456], rax;         jmp   n00061_call_icon_α
                        .size            n00057_var_bx, .-n00057_var_bx
                        .type            n00061_call_icon_bx, @function
n00061_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_icon_α:       mov              r11, 129
                        mov              rax, qword ptr [rbp + -464]
                        mov              qword ptr [rbp + -496], rax
                        mov              rax, qword ptr [rbp + -456]
                        mov              qword ptr [rbp + -488], rax
                        .section         .rodata
.Lcall_icon_rkfn334:    .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn334]
                        lea              rsi, [rbp + -496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -512], rax
                        mov              qword ptr [rbp + -504], rdx
                        cmp              al, 104;                             je    n00062_lit_integer_α
                                                                              jmp   n00063_assign_α
n00061_call_icon_β:       mov              r11, 129;                            jmp   n00062_lit_integer_α
                        .size            n00061_call_icon_bx, .-n00061_call_icon_bx
                        .type            n00063_assign_bx, @function
n00063_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rbp + -512]
                        mov              rdx, qword ptr [rbp + -504]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n00062_lit_integer_α
                        .size            n00063_assign_bx, .-n00063_assign_bx
                        .type            n00062_lit_integer_bx, @function
n00062_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_lit_integer_α:     mov              r11, 131
                        mov              qword ptr [rbp + -528], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_336_0]
                        mov              qword ptr [rbp + -520], rax;         jmp   n00064_assign_α
.Llit_integer_α_336_0:  .quad            1
                        .size            n00062_lit_integer_bx, .-n00062_lit_integer_bx
                        .type            n00064_assign_bx, @function
n00064_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_assign_α:          mov              r11, 132
                        mov              rax, qword ptr [rbp + -528]
                        mov              rdx, qword ptr [rbp + -520]
                        mov              qword ptr [rbp + -112], rax
                        mov              qword ptr [rbp + -104], rdx;         jmp   n00065_var_α
                        .size            n00064_assign_bx, .-n00064_assign_bx
                        .type            n00065_var_bx, @function
n00065_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_var_α:             mov              r11, 133
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rbp + -544], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rbp + -536], rax;         jmp   n00066_scan_enter_α
                        .size            n00065_var_bx, .-n00065_var_bx
                        .type            n00066_scan_enter_bx, @function
n00066_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_scan_enter_α:      mov              r11, 134
                        mov              qword ptr [rbp + -896], r13
                        mov              qword ptr [rbp + -888], r14
                        mov              qword ptr [rbp + -880], r15
                        mov              rdi, qword ptr [rbp + -544]
                        mov              rsi, qword ptr [rbp + -536]
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
                        mov              r14, 0;                              jmp   n00067_lit_charset_α
                        .size            n00066_scan_enter_bx, .-n00066_scan_enter_bx
                        .type            n00067_lit_charset_bx, @function
n00067_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_lit_charset_α:     mov              r11, 135
                        mov              qword ptr [rbp + -784], 2            # result
                        mov              dword ptr [rbp + -780], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_342_0]
                        mov              qword ptr [rbp + -776], rax;         jmp   n00068_scan_upto_α
.Llit_charset_α_342_0:  .quad            .Llit_charset_α_342_0_s
.Llit_charset_α_342_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00067_lit_charset_bx, .-n00067_lit_charset_bx
                        .type            n00068_scan_upto_bx, @function
n00068_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_scan_upto_α:       mov              r11, 136
                        mov              qword ptr [rbp + -800], r14
.Lscan_upto_α_344_0:    mov              rax, qword ptr [rbp + -800]
                        cmp              rax, r15;                            jge   n00069_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_upto_α_344_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_upto_α_344_1
                        mov              qword ptr [rbp + -816], 3
                        add              rax, 1
                        mov              qword ptr [rbp + -808], rax;         jmp   n00070_scan_tab_α
.Lscan_upto_α_344_1:    inc              qword ptr [rbp + -800];              jmp   .Lscan_upto_α_344_0
n00068_scan_upto_β:       mov              r11, 136
                        inc              qword ptr [rbp + -800];              jmp   .Lscan_upto_α_344_0
.Lscan_upto_α_344_2:    .quad            .Lscan_upto_α_344_2_s
.Lscan_upto_α_344_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00068_scan_upto_bx, .-n00068_scan_upto_bx
                        .type            n00070_scan_tab_bx, @function
n00070_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_scan_tab_α:        mov              r11, 137
                        mov              rax, qword ptr [rbp + -808]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_346_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_346_0:     cmp              rax, 1;                              jl    n00068_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00068_scan_upto_β
                        mov              qword ptr [rbp + -832], r14
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
                        mov              qword ptr [rbp + -848], rax
                        mov              qword ptr [rbp + -840], rdx;         jmp   n00071_lit_charset_α
n00070_scan_tab_β:        mov              r11, 137
                        mov              r14, qword ptr [rbp + -832];         jmp   n00068_scan_upto_β
                        .size            n00070_scan_tab_bx, .-n00070_scan_tab_bx
                        .type            n00071_lit_charset_bx, @function
n00071_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_lit_charset_α:     mov              r11, 138
                        mov              qword ptr [rbp + -576], 2            # result
                        mov              dword ptr [rbp + -572], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_347_0]
                        mov              qword ptr [rbp + -568], rax;         jmp   n00072_scan_many_α
.Llit_charset_α_347_0:  .quad            .Llit_charset_α_347_0_s
.Llit_charset_α_347_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00071_lit_charset_bx, .-n00071_lit_charset_bx
                        .type            n00072_scan_many_bx, @function
n00072_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_scan_many_α:       mov              r11, 139
                        mov              eax, r14d
.Lscan_many_α_349_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_349_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_349_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_many_α_349_1
                        add              eax, 1;                              jmp   .Lscan_many_α_349_0
.Lscan_many_α_349_1:    cmp              eax, r14d;                           je    n00073_disjunction_α
                        mov              qword ptr [rbp + -592], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + -584], rcx;         jmp   n00074_scan_tab_α
n00072_scan_many_β:       mov              r11, 139;                            jmp   n00073_disjunction_α
.Lscan_many_α_349_2:    .quad            .Lscan_many_α_349_2_s
.Lscan_many_α_349_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00072_scan_many_bx, .-n00072_scan_many_bx
                        .type            n00074_scan_tab_bx, @function
n00074_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_scan_tab_α:        mov              r11, 140
                        mov              rax, qword ptr [rbp + -584]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_351_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_351_0:     cmp              rax, 1;                              jl    n00073_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00073_disjunction_α
                        mov              qword ptr [rbp + -608], r14
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
                        mov              qword ptr [rbp + -624], rax
                        mov              qword ptr [rbp + -616], rdx;         jmp   n00075_assign_α
n00074_scan_tab_β:        mov              r11, 140
                        mov              r14, qword ptr [rbp + -608];         jmp   n00073_disjunction_α
                        .size            n00074_scan_tab_bx, .-n00074_scan_tab_bx
                        .type            n00075_assign_bx, @function
n00075_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_assign_α:          mov              r11, 141
                        mov              rax, qword ptr [rbp + -624]
                        mov              rdx, qword ptr [rbp + -616]
                        mov              qword ptr [rbp + -128], rax
                        mov              qword ptr [rbp + -120], rdx;         jmp   n00073_disjunction_α
                        .size            n00075_assign_bx, .-n00075_assign_bx
                        .type            n00073_disjunction_bx, @function
n00073_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_disjunction_α:     mov              r11, 142
                        mov              qword ptr [rbp + -736], 0
                        mov              qword ptr [rbp + -728], 0
                        mov              dword ptr [rbp + -720], 0;           jmp   n00076_var_α
n00073_disjunction_as:    mov              r11, 142
                        mov              eax, dword ptr [rbp + -720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_354_0
                                                                              jmp   n00077_conjunction_α
.Ldisjunction_α_354_0:                                                        jmp   n00077_conjunction_α
n00073_disjunction_β:     mov              r11, 142
                        mov              eax, dword ptr [rbp + -720];         jmp   n00067_lit_charset_α
n00073_disjunction_af:    mov              r11, 142
                        add              dword ptr [rbp + -720], 1
                        mov              eax, dword ptr [rbp + -720];         jmp   n00067_lit_charset_α
                        .size            n00073_disjunction_bx, .-n00073_disjunction_bx
                        .type            n00077_conjunction_bx, @function
n00077_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_conjunction_α:     mov              r11, 143
                        mov              rax, qword ptr [rbp + -736]
                        mov              qword ptr [rbp + -752], rax
                        mov              rax, qword ptr [rbp + -728]
                        mov              qword ptr [rbp + -744], rax;         jmp   n00067_lit_charset_α
n00077_conjunction_β:     mov              r11, 143;                            jmp   n00067_lit_charset_α
                        .size            n00077_conjunction_bx, .-n00077_conjunction_bx
                        .type            n00076_var_bx, @function
n00076_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_var_α:             mov              r11, 144
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rbp + -656], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rbp + -648], rax;         jmp   n00078_unop_α
n00076_var_β:             mov              r11, 144;                            jmp   n00073_disjunction_af
                        .size            n00076_var_bx, .-n00076_var_bx
                        .type            n00078_unop_bx, @function
n00078_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_unop_α:            mov              r11, 145
                        mov              rdi, qword ptr [rbp + -128]
                        mov              rsi, qword ptr [rbp + -120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -672], rax
                        mov              qword ptr [rbp + -664], rdx;         jmp   n00079_lit_integer_α
                        .size            n00078_unop_bx, .-n00078_unop_bx
                        .type            n00079_lit_integer_bx, @function
n00079_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_lit_integer_α:     mov              r11, 146
                        mov              qword ptr [rbp + -640], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_359_0]
                        mov              qword ptr [rbp + -632], rax;         jmp   n00080_binop_test_α
.Llit_integer_α_359_0:  .quad            3
                        .size            n00079_lit_integer_bx, .-n00079_lit_integer_bx
                        .type            n00080_binop_test_bx, @function
n00080_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_binop_test_α:      mov              r11, 147
                        mov              eax, dword ptr [rbp + -672]
                        cmp              al, 112;                             je    .Lbinop_test_α_360_0
                        mov              eax, dword ptr [rbp + -640]
                        cmp              al, 112;                             je    .Lbinop_test_α_360_0
                        mov              eax, dword ptr [rbp + -672]
                        cmp              al, 3;                               jne   .Lbinop_test_α_360_2
                        mov              eax, dword ptr [rbp + -640]
                        cmp              al, 3;                               jne   .Lbinop_test_α_360_2
.Lbinop_test_α_360_1:   mov              rax, qword ptr [rbp + -664]
                        mov              rcx, qword ptr [rbp + -632]
                        cmp              rax, rcx;                            jl    n00073_disjunction_af
                        mov              rcx, qword ptr [rbp + -640]
                        mov              qword ptr [rbp + -688], rcx
                        mov              rcx, qword ptr [rbp + -632]
                        mov              qword ptr [rbp + -680], rcx;         jmp   n00081_var_α
.Lbinop_test_α_360_0:   mov              rdi, qword ptr [rbp + -672]
                        mov              rsi, qword ptr [rbp + -664]
                        mov              rdx, qword ptr [rbp + -640]
                        mov              rcx, qword ptr [rbp + -632]
                        mov              r8d, 8
                        lea              r9, [rbp + -688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_360_1
                        cmp              eax, 1;                              je    n00073_disjunction_af
                                                                              jmp   n00081_var_α
.Lbinop_test_α_360_2:   mov              rdi, qword ptr [rbp + -672]
                        mov              rsi, qword ptr [rbp + -664]
                        mov              rdx, qword ptr [rbp + -640]
                        mov              rcx, qword ptr [rbp + -632]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00073_disjunction_af
                        mov              rax, qword ptr [rbp + -640]
                        mov              qword ptr [rbp + -688], rax
                        mov              rax, qword ptr [rbp + -632]
                        mov              qword ptr [rbp + -680], rax;         jmp   n00081_var_α
                        .size            n00080_binop_test_bx, .-n00080_binop_test_bx
                        .type            n00081_var_bx, @function
n00081_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rbp + -704], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rbp + -696], rax;         jmp   n00046_suspend_α
                        .size            n00081_var_bx, .-n00081_var_bx
                        .type            n00046_suspend_bx, @function
n00046_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_suspend_α:         mov              r11, 149
                        lea              rax, [rip + n00046_suspend_β]
                        mov              qword ptr [rbp + -160], rax
                        mov              rax, qword ptr [rbp + -704]
                        mov              qword ptr [rbp + -976], rax
                        mov              rax, qword ptr [rbp + -696]
                        mov              qword ptr [rbp + -968], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   item_γ
n00046_suspend_β:         mov              r11, 149
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
                        pop              rax;                                 jmp   n00073_disjunction_β
                        .size            n00046_suspend_bx, .-n00046_suspend_bx
                        .type            n00069_scan_bx, @function
n00069_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_scan_α:            mov              r11, 150
                        mov              rdi, qword ptr [rbp + -896]
                        mov              rsi, qword ptr [rbp + -888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -896]
                        mov              r14, qword ptr [rbp + -888]
                        mov              r15, qword ptr [rbp + -880];         jmp   n00047_call_icon_α
n00069_scan_β:            mov              r11, 150;                            jmp   n00047_call_icon_α
                        .size            n00069_scan_bx, .-n00069_scan_bx
#-----------------------------------------------------------------------------------------------------------------------
item_res:
                        mov              rbp, rax
#-----------------------------------------------------------------------------------------------------------------------
item_β:
                        mov              rax, qword ptr [rbp + -160];         jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
item_γ:
                        mov              rdx, rbp
                        lea              rax, [rip + item_res]
                        mov              qword ptr [rdx + 32], rax
                        mov              rcx, qword ptr [rdx + 8]
                        mov              rbp, qword ptr [rdx + 0]
                        mov              eax, 2;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
item_ω:
                        mov              rcx, qword ptr [rbp + 8]
                        mov              rsp, qword ptr [rbp + 24]
                        mov              rbp, qword ptr [rbp + 0]
                        mov              eax, 104;                            jmp   rcx
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
                        .type            n00082_var_ref_bx, @function
n00082_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n00083_nulltest_var_α
                        .size            n00082_var_ref_bx, .-n00082_var_ref_bx
                        .type            n00083_nulltest_var_bx, @function
n00083_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_nulltest_var_α:    mov              r11, 152
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              al, 104;                             je    n00084_call_icon_α
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
                        cmp              al, 104;                             je    n00084_call_icon_α
                        cmp              eax, 0;                              jne   n00084_call_icon_α
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n00085_lit_charset_α
                        .size            n00083_nulltest_var_bx, .-n00083_nulltest_var_bx
                        .type            n00085_lit_charset_bx, @function
n00085_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_lit_charset_α:     mov              r11, 153
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_479_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n00086_call_icon_α
.Llit_charset_α_479_0:  .quad            .Llit_charset_α_479_0_s
.Llit_charset_α_479_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00085_lit_charset_bx, .-n00085_lit_charset_bx
                        .type            n00086_call_icon_bx, @function
n00086_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_call_icon_α:       mov              r11, 154
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        .section         .rodata
.Lcall_icon_rkfn481:    .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn481]
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
                        cmp              al, 104;                             je    n00084_call_icon_α
                                                                              jmp   n00087_assign_var_α
n00086_call_icon_β:       mov              r11, 154;                            jmp   n00084_call_icon_α
                        .size            n00086_call_icon_bx, .-n00086_call_icon_bx
                        .type            n00087_assign_var_bx, @function
n00087_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_assign_var_α:      mov              r11, 155
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
                        cmp              al, 104;                             je    n00084_call_icon_α
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n00084_call_icon_α
                        .size            n00087_assign_var_bx, .-n00087_assign_var_bx
                        .type            n00084_call_icon_bx, @function
n00084_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_call_icon_α:       mov              r11, 156
                        .section         .rodata
.Lcall_icon_rkfn484:    .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn484]
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
                        cmp              al, 104;                             je    n00088_make_list_α
                                                                              jmp   n00089_assign_α
n00084_call_icon_β:       mov              r11, 156;                            jmp   n00088_make_list_α
                        .size            n00084_call_icon_bx, .-n00084_call_icon_bx
                        .type            n00089_assign_bx, @function
n00089_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_assign_α:          mov              r11, 157
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n00088_make_list_α
                        .size            n00089_assign_bx, .-n00089_assign_bx
                        .type            n00088_make_list_bx, @function
n00088_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_make_list_α:       mov              r11, 158
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
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n00090_assign_α
                        .size            n00088_make_list_bx, .-n00088_make_list_bx
                        .type            n00090_assign_bx, @function
n00090_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_assign_α:          mov              r11, 159
                        mov              rax, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n00091_var_α
                        .size            n00090_assign_bx, .-n00090_assign_bx
                        .type            n00091_var_bx, @function
n00091_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00092_call_icon_α
                        .size            n00091_var_bx, .-n00091_var_bx
                        .type            n00092_call_icon_bx, @function
n00092_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_call_icon_α:       mov              r11, 161
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_rkfn492:    .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn492]
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
                        cmp              al, 104;                             je    n00093_var_α
                                                                              jmp   n00094_assign_α
n00092_call_icon_β:       mov              r11, 161;                            jmp   n00093_var_α
                        .size            n00092_call_icon_bx, .-n00092_call_icon_bx
                        .type            n00094_assign_bx, @function
n00094_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_assign_α:          mov              r11, 162
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n00095_var_α
                        .size            n00094_assign_bx, .-n00094_assign_bx
                        .type            n00095_var_bx, @function
n00095_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n00096_scan_enter_α
                        .size            n00095_var_bx, .-n00095_var_bx
                        .type            n00096_scan_enter_bx, @function
n00096_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_scan_enter_α:      mov              r11, 164
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
                        mov              r14, 0;                              jmp   n00097_disjunction_α
                        .size            n00096_scan_enter_bx, .-n00096_scan_enter_bx
                        .type            n00097_disjunction_bx, @function
n00097_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_disjunction_α:     mov              r11, 165
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              dword ptr [rsp + 400], 0;            jmp   n00098_lit_string_α
n00097_disjunction_as:    mov              r11, 165
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_499_0
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00099_scan_α
.Ldisjunction_α_499_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_499_1
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00099_scan_α
.Ldisjunction_α_499_1:                                                        jmp   n00099_scan_α
n00097_disjunction_β:     mov              r11, 165
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              je    n00100_disjunction_β
                                                                              jmp   n00101_scan_α
n00097_disjunction_af:    mov              r11, 165
                        add              dword ptr [rsp + 400], 1
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 1;                              je    n00102_var_α
                                                                              jmp   n00101_scan_α
                        .size            n00097_disjunction_bx, .-n00097_disjunction_bx
                        .type            n00099_scan_bx, @function
n00099_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_scan_α:            mov              r11, 166
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
                        mov              r15, qword ptr [rsp + 336];          jmp   n00091_var_α
n00099_scan_β:            mov              r11, 166
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
                        mov              r14, rax;                            jmp   n00097_disjunction_β
                                                                              jmp   n00091_var_α
                        .size            n00099_scan_bx, .-n00099_scan_bx
                        .type            n00103_conjunction_bx, @function
n00103_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_conjunction_α:     mov              r11, 167;                            jmp   n00097_disjunction_as
n00103_conjunction_β:     mov              r11, 167;                            jmp   n00101_scan_α
                        .size            n00103_conjunction_bx, .-n00103_conjunction_bx
                        .type            n00102_var_bx, @function
n00102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:             mov              r11, 168
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n00104_var_α
n00102_var_β:             mov              r11, 168;                            jmp   n00101_scan_α
                        .size            n00102_var_bx, .-n00102_var_bx
                        .type            n00104_var_bx, @function
n00104_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_var_α:             mov              r11, 169
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n00105_call_icon_α
                        .size            n00104_var_bx, .-n00104_var_bx
                        .type            n00105_call_icon_bx, @function
n00105_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_call_icon_α:       mov              r11, 170
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2616], rax
                        .section         .rodata
.Lcall_icon_rkfn508:    .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn508]
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
                        cmp              al, 104;                             je    n00101_scan_α
                                                                              jmp   n00097_disjunction_as
n00105_call_icon_β:       mov              r11, 170;                            jmp   n00101_scan_α
                        .size            n00105_call_icon_bx, .-n00105_call_icon_bx
                        .type            n00098_lit_string_bx, @function
n00098_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_509_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n00106_scan_match_α
n00098_lit_string_β:      mov              r11, 171;                            jmp   n00097_disjunction_af
.Llit_string_α_509_0:   .quad            .Llit_string_α_509_0_s
.Llit_string_α_509_0_s: .string          "-"
                        .size            n00098_lit_string_bx, .-n00098_lit_string_bx
                        .type            n00106_scan_match_bx, @function
n00106_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_scan_match_α:      mov              r11, 172
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00097_disjunction_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_511_0]
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
                        mov              qword ptr [rsp + 2528], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2536], rax;         jmp   n00107_scan_tab_α
.Lscan_match_α_511_0:   .quad            .Lscan_match_α_511_0_s
.Lscan_match_α_511_0_s: .string          "-"
                        .size            n00106_scan_match_bx, .-n00106_scan_match_bx
                        .type            n00107_scan_tab_bx, @function
n00107_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_scan_tab_α:        mov              r11, 173
                        mov              rax, qword ptr [rsp + 2536]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_513_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_513_0:     cmp              rax, 1;                              jl    n00097_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00097_disjunction_af
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
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n00108_lit_integer_α
n00107_scan_tab_β:        mov              r11, 173
                        mov              r14, qword ptr [rsp + 2512];         jmp   n00097_disjunction_af
                        .size            n00107_scan_tab_bx, .-n00107_scan_tab_bx
                        .type            n00108_lit_integer_bx, @function
n00108_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_514_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00109_scan_pos_α
.Llit_integer_α_514_0:  .quad            0
                        .size            n00108_lit_integer_bx, .-n00108_lit_integer_bx
                        .type            n00109_scan_pos_bx, @function
n00109_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_scan_pos_α:        mov              r11, 175
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_516_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_516_0:     cmp              rax, 1;                              jl    n00110_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00110_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00110_var_α
                        mov              qword ptr [rsp + 2464], 3
                        mov              qword ptr [rsp + 2472], rax;         jmp   n00107_scan_tab_β
                        .size            n00109_scan_pos_bx, .-n00109_scan_pos_bx
                        .type            n00110_var_bx, @function
n00110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_var_α:             mov              r11, 176
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0;           jmp   n00111_conjunction_α
n00110_var_β:             mov              r11, 176;                            jmp   n00107_scan_tab_β
                        .size            n00110_var_bx, .-n00110_var_bx
                        .type            n00111_conjunction_bx, @function
n00111_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_conjunction_α:     mov              r11, 177
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n00112_disjunction_α
n00111_conjunction_β:     mov              r11, 177;                            jmp   n00097_disjunction_af
                        .size            n00111_conjunction_bx, .-n00111_conjunction_bx
                        .type            n00112_disjunction_bx, @function
n00112_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_disjunction_α:     mov              r11, 178
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n00113_lit_string_α
n00112_disjunction_as:    mov              r11, 178
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_520_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00114_lit_integer_α
.Ldisjunction_α_520_0:                                                        jmp   n00114_lit_integer_α
n00112_disjunction_β:     mov              r11, 178
                        mov              eax, dword ptr [rsp + 2256];         jmp   n00114_lit_integer_α
n00112_disjunction_af:    mov              r11, 178
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256];         jmp   n00114_lit_integer_α
                        .size            n00112_disjunction_bx, .-n00112_disjunction_bx
                        .type            n00114_lit_integer_bx, @function
n00114_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_lit_integer_α:     mov              r11, 179
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_521_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00115_scan_move_α
.Llit_integer_α_521_0:  .quad            1
                        .size            n00114_lit_integer_bx, .-n00114_lit_integer_bx
                        .type            n00115_scan_move_bx, @function
n00115_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_scan_move_α:       mov              r11, 180
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00101_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00101_scan_α
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
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00116_assign_α
n00115_scan_move_β:       mov              r11, 180
                        mov              r14, qword ptr [rsp + 464];          jmp   n00101_scan_α
                        .size            n00115_scan_move_bx, .-n00115_scan_move_bx
                        .type            n00116_assign_bx, @function
n00116_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_assign_α:          mov              r11, 181
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n00100_disjunction_α
                        .size            n00116_assign_bx, .-n00116_assign_bx
                        .type            n00100_disjunction_bx, @function
n00100_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_disjunction_α:     mov              r11, 182
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n00117_var_α
n00100_disjunction_as:    mov              r11, 182
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_526_0
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00114_lit_integer_α
.Ldisjunction_α_526_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_526_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00114_lit_integer_α
.Ldisjunction_α_526_1:                                                        jmp   n00114_lit_integer_α
n00100_disjunction_β:     mov              r11, 182
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n00118_disjunction_β
                                                                              jmp   n00114_lit_integer_α
n00100_disjunction_af:    mov              r11, 182
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n00119_lit_string_α
                                                                              jmp   n00114_lit_integer_α
                        .size            n00100_disjunction_bx, .-n00100_disjunction_bx
                        .type            n00119_lit_string_bx, @function
n00119_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_527_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00120_var_α
n00119_lit_string_β:      mov              r11, 183;                            jmp   n00114_lit_integer_α
.Llit_string_α_527_0:   .quad            .Llit_string_α_527_0_s
.Llit_string_α_527_0_s: .string          "Unrecognized option: -"
                        .size            n00119_lit_string_bx, .-n00119_lit_string_bx
                        .type            n00120_var_bx, @function
n00120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n00121_call_icon_α
                        .size            n00120_var_bx, .-n00120_var_bx
                        .type            n00121_call_icon_bx, @function
n00121_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_call_icon_α:       mov              r11, 185
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lcall_icon_rkfn531:    .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn531]
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
                        cmp              al, 104;                             je    n00114_lit_integer_α
                                                                              jmp   n00100_disjunction_as
n00121_call_icon_β:       mov              r11, 185;                            jmp   n00114_lit_integer_α
                        .size            n00121_call_icon_bx, .-n00121_call_icon_bx
                        .type            n00117_var_bx, @function
n00117_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00122_var_α
n00117_var_β:             mov              r11, 186;                            jmp   n00100_disjunction_af
                        .size            n00117_var_bx, .-n00117_var_bx
                        .type            n00122_var_bx, @function
n00122_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_var_α:             mov              r11, 187
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n00123_call_builtin_gen_α
                        .size            n00122_var_bx, .-n00122_var_bx
                        .type            n00123_call_builtin_gen_bx, @function
n00123_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_call_builtin_gen_α:
                        mov              r11, 188
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
.Lcall_builtin_gen_α_536_60:
                        .section         .rodata
.Lcall_builtin_gen_bynamegenfn188: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_bynamegenfn188]
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
                        cmp              al, 104;                             je    n00100_disjunction_af
                                                                              jmp   n00124_lit_integer_α
n00123_call_builtin_gen_β:
                        mov              r11, 188;                            jmp   .Lcall_builtin_gen_α_536_60
                        .size            n00123_call_builtin_gen_bx, .-n00123_call_builtin_gen_bx
                        .type            n00124_lit_integer_bx, @function
n00124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_integer_α:     mov              r11, 189
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n00125_coerce_numeric_α
.Llit_integer_α_537_0:  .quad            1
                        .size            n00124_lit_integer_bx, .-n00124_lit_integer_bx
                        .type            n00125_coerce_numeric_bx, @function
n00125_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_coerce_numeric_α:  mov              r11, 190
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_539_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_539_0
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_539_0
.Lcoerce_numeric_α_539_1:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n00126_binop_α
.Lcoerce_numeric_α_539_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00126_binop_α
                        .size            n00125_coerce_numeric_bx, .-n00125_coerce_numeric_bx
                        .type            n00126_binop_bx, @function
n00126_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_binop_α:           mov              r11, 191
                        mov              eax, dword ptr [rsp + 2000]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_540_2
                        mov              rax, qword ptr [rsp + 2008]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1984], 3
                        mov              qword ptr [rsp + 1992], rax;         jmp   .Lbinop_α_540_7
.Lbinop_α_540_2:        and              edx, 1;                              jz    .Lbinop_α_540_0
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_540_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_540_4
.Lbinop_α_540_3:        movq             xmm0, rsi
.Lbinop_α_540_4:        cmp              cl, 5;                               je    .Lbinop_α_540_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_540_6
.Lbinop_α_540_5:        movq             xmm1, rdi
.Lbinop_α_540_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1984], 5
                        mov              qword ptr [rsp + 1992], rax
.Lbinop_α_540_7:                                                              jmp   n00127_assign_α
.Lbinop_α_540_0:        mov              rdi, qword ptr [rsp + 2000]
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
                        cmp              al, 104;                             je    n00100_disjunction_af
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n00127_assign_α
                        .size            n00126_binop_bx, .-n00126_binop_bx
                        .type            n00127_assign_bx, @function
n00127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_α:          mov              r11, 192
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n00128_var_ref_α
                        .size            n00127_assign_bx, .-n00127_assign_bx
                        .type            n00128_var_ref_bx, @function
n00128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2880]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00129_var_α
                        .size            n00128_var_ref_bx, .-n00128_var_ref_bx
                        .type            n00129_var_bx, @function
n00129_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_α:             mov              r11, 194
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00130_subscript_α
                        .size            n00129_var_bx, .-n00129_var_bx
                        .type            n00130_subscript_bx, @function
n00130_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_subscript_α:       mov              r11, 195
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
                        cmp              al, 104;                             je    n00114_lit_integer_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n00118_disjunction_α
                        .size            n00130_subscript_bx, .-n00130_subscript_bx
                        .type            n00118_disjunction_bx, @function
n00118_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_disjunction_α:     mov              r11, 196
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n00131_lit_charset_α
n00118_disjunction_as:    mov              r11, 196
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_548_0
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00132_assign_var_α
.Ldisjunction_α_548_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_548_1
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00132_assign_var_α
.Ldisjunction_α_548_1:                                                        jmp   n00132_assign_var_α
n00118_disjunction_β:     mov              r11, 196
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n00114_lit_integer_α
                                                                              jmp   n00114_lit_integer_α
n00118_disjunction_af:    mov              r11, 196
                        add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n00133_lit_integer_α
                                                                              jmp   n00114_lit_integer_α
                        .size            n00118_disjunction_bx, .-n00118_disjunction_bx
                        .type            n00132_assign_var_bx, @function
n00132_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_assign_var_α:      mov              r11, 197
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
                        cmp              al, 104;                             je    n00114_lit_integer_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00100_disjunction_as
n00132_assign_var_β:      mov              r11, 197;                            jmp   n00114_lit_integer_α
                        .size            n00132_assign_var_bx, .-n00132_assign_var_bx
                        .type            n00133_lit_integer_bx, @function
n00133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_lit_integer_α:     mov              r11, 198
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_550_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n00118_disjunction_as
n00133_lit_integer_β:     mov              r11, 198;                            jmp   n00114_lit_integer_α
.Llit_integer_α_550_0:  .quad            1
                        .size            n00133_lit_integer_bx, .-n00133_lit_integer_bx
                        .type            n00131_lit_charset_bx, @function
n00131_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_lit_charset_α:     mov              r11, 199
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_551_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n00134_var_ref_α
n00131_lit_charset_β:     mov              r11, 199;                            jmp   n00118_disjunction_af
.Llit_charset_α_551_0:  .quad            .Llit_charset_α_551_0_s
.Llit_charset_α_551_0_s:
                        .string          "+.:"
                        .size            n00131_lit_charset_bx, .-n00131_lit_charset_bx
                        .type            n00134_var_ref_bx, @function
n00134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n00135_var_α
                        .size            n00134_var_ref_bx, .-n00134_var_ref_bx
                        .type            n00135_var_bx, @function
n00135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_var_α:             mov              r11, 201
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n00136_subscript_α
                        .size            n00135_var_bx, .-n00135_var_bx
                        .type            n00136_subscript_bx, @function
n00136_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_subscript_α:       mov              r11, 202
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
                        cmp              al, 104;                             je    n00118_disjunction_af
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n00137_deref_α
                        .size            n00136_subscript_bx, .-n00136_subscript_bx
                        .type            n00137_deref_bx, @function
n00137_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_deref_α:           mov              r11, 203
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
                        cmp              al, 104;                             je    n00118_disjunction_af
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n00138_assign_α
                        .size            n00137_deref_bx, .-n00137_deref_bx
                        .type            n00138_assign_bx, @function
n00138_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n00139_call_icon_α
                        .size            n00138_assign_bx, .-n00138_assign_bx
                        .type            n00139_call_icon_bx, @function
n00139_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_call_icon_α:       mov              r11, 205
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
.Lcall_icon_bynamefn205: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_bynamefn205]
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
                        cmp              al, 104;                             je    n00118_disjunction_af
                                                                              jmp   n00140_disjunction_α
n00139_call_icon_β:       mov              r11, 205;                            jmp   n00118_disjunction_af
                        .size            n00139_call_icon_bx, .-n00139_call_icon_bx
                        .type            n00140_disjunction_bx, @function
n00140_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_disjunction_α:     mov              r11, 206
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              dword ptr [rsp + 1504], 0;           jmp   n00141_lit_string_α
n00140_disjunction_as:    mov              r11, 206
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_561_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n00142_assign_α
.Ldisjunction_α_561_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_561_1
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n00142_assign_α
.Ldisjunction_α_561_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_561_2
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n00142_assign_α
.Ldisjunction_α_561_2:                                                        jmp   n00142_assign_α
n00140_disjunction_β:     mov              r11, 206
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              je    n00143_scan_tab_β
                        cmp              eax, 1;                              je    n00140_disjunction_af
                                                                              jmp   n00140_disjunction_af
n00140_disjunction_af:    mov              r11, 206
                        add              dword ptr [rsp + 1504], 1
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 1;                              je    n00144_var_α
                        cmp              eax, 2;                              je    n00145_lit_string_α
                                                                              jmp   n00146_var_α
                        .size            n00140_disjunction_bx, .-n00140_disjunction_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              r11, 207
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx;         jmp   n00146_var_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00146_var_bx, @function
n00146_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_α:             mov              r11, 208
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00147_lit_string_α
                        .size            n00146_var_bx, .-n00146_var_bx
                        .type            n00147_lit_string_bx, @function
n00147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_565_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00148_call_builtin_α
.Llit_string_α_565_0:   .quad            .Llit_string_α_565_0_s
.Llit_string_α_565_0_s: .string          ":"
                        .size            n00147_lit_string_bx, .-n00147_lit_string_bx
                        .type            n00148_call_builtin_bx, @function
n00148_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_call_builtin_α:    mov              r11, 210
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lcall_builtin_rkfn567: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_rkfn567]
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
                        cmp              al, 104;                             je    n00149_lit_string_α
                                                                              jmp   n00150_var_α
n00148_call_builtin_β:    mov              r11, 210;                            jmp   n00149_lit_string_α
                        .size            n00148_call_builtin_bx, .-n00148_call_builtin_bx
                        .type            n00150_var_bx, @function
n00150_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n00151_assign_α
                        .size            n00150_var_bx, .-n00150_var_bx
                        .type            n00151_assign_bx, @function
n00151_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_assign_α:          mov              r11, 212
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n00152_var_α
                        .size            n00151_assign_bx, .-n00151_assign_bx
                        .type            n00149_lit_string_bx, @function
n00149_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_571_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n00153_call_builtin_α
.Llit_string_α_571_0:   .quad            .Llit_string_α_571_0_s
.Llit_string_α_571_0_s: .string          "+"
                        .size            n00149_lit_string_bx, .-n00149_lit_string_bx
                        .type            n00153_call_builtin_bx, @function
n00153_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_call_builtin_α:    mov              r11, 214
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lcall_builtin_rkfn573: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_rkfn573]
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
                        cmp              al, 104;                             je    n00154_lit_string_α
                                                                              jmp   n00155_disjunction_α
n00153_call_builtin_β:    mov              r11, 214;                            jmp   n00154_lit_string_α
                        .size            n00153_call_builtin_bx, .-n00153_call_builtin_bx
                        .type            n00155_disjunction_bx, @function
n00155_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_disjunction_α:     mov              r11, 215
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n00156_var_α
n00155_disjunction_as:    mov              r11, 215
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_575_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00157_assign_α
.Ldisjunction_α_575_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_575_1
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00157_assign_α
.Ldisjunction_α_575_1:                                                        jmp   n00157_assign_α
n00155_disjunction_β:     mov              r11, 215
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              je    n00155_disjunction_af
                                                                              jmp   n00155_disjunction_af
n00155_disjunction_af:    mov              r11, 215
                        add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 1;                              je    n00158_lit_string_α
                                                                              jmp   n00114_lit_integer_α
                        .size            n00155_disjunction_bx, .-n00155_disjunction_bx
                        .type            n00157_assign_bx, @function
n00157_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_assign_α:          mov              r11, 216
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n00152_var_α
                        .size            n00157_assign_bx, .-n00157_assign_bx
                        .type            n00158_lit_string_bx, @function
n00158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_577_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00159_var_α
n00158_lit_string_β:      mov              r11, 217;                            jmp   n00155_disjunction_af
.Llit_string_α_577_0:   .quad            .Llit_string_α_577_0_s
.Llit_string_α_577_0_s: .string          "-"
                        .size            n00158_lit_string_bx, .-n00158_lit_string_bx
                        .type            n00159_var_bx, @function
n00159_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_var_α:             mov              r11, 218
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n00160_lit_string_α
                        .size            n00159_var_bx, .-n00159_var_bx
                        .type            n00160_lit_string_bx, @function
n00160_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_580_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n00161_call_icon_α
.Llit_string_α_580_0:   .quad            .Llit_string_α_580_0_s
.Llit_string_α_580_0_s: .string          " needs numeric parameter"
                        .size            n00160_lit_string_bx, .-n00160_lit_string_bx
                        .type            n00161_call_icon_bx, @function
n00161_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_call_icon_α:       mov              r11, 220
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
.Lcall_icon_rkfn582:    .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn582]
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
                        cmp              al, 104;                             je    n00155_disjunction_af
                                                                              jmp   n00155_disjunction_as
n00161_call_icon_β:       mov              r11, 220;                            jmp   n00155_disjunction_af
                        .size            n00161_call_icon_bx, .-n00161_call_icon_bx
                        .type            n00156_var_bx, @function
n00156_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00162_call_icon_α
n00156_var_β:             mov              r11, 221;                            jmp   n00155_disjunction_af
                        .size            n00156_var_bx, .-n00156_var_bx
                        .type            n00162_call_icon_bx, @function
n00162_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_call_icon_α:       mov              r11, 222
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lcall_icon_rkfn586:    .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn586]
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
                        cmp              al, 104;                             je    n00155_disjunction_af
                                                                              jmp   n00155_disjunction_as
n00162_call_icon_β:       mov              r11, 222;                            jmp   n00155_disjunction_af
                        .size            n00162_call_icon_bx, .-n00162_call_icon_bx
                        .type            n00154_lit_string_bx, @function
n00154_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_587_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00163_call_builtin_α
.Llit_string_α_587_0:   .quad            .Llit_string_α_587_0_s
.Llit_string_α_587_0_s: .string          "."
                        .size            n00154_lit_string_bx, .-n00154_lit_string_bx
                        .type            n00163_call_builtin_bx, @function
n00163_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_call_builtin_α:    mov              r11, 224
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lcall_builtin_rkfn589: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_rkfn589]
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
                        cmp              al, 104;                             je    n00114_lit_integer_α
                                                                              jmp   n00164_disjunction_α
n00163_call_builtin_β:    mov              r11, 224;                            jmp   n00114_lit_integer_α
                        .size            n00163_call_builtin_bx, .-n00163_call_builtin_bx
                        .type            n00164_disjunction_bx, @function
n00164_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_disjunction_α:     mov              r11, 225
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              dword ptr [rsp + 720], 0;            jmp   n00165_var_α
n00164_disjunction_as:    mov              r11, 225
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_591_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00166_assign_α
.Ldisjunction_α_591_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_591_1
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00166_assign_α
.Ldisjunction_α_591_1:                                                        jmp   n00166_assign_α
n00164_disjunction_β:     mov              r11, 225
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              je    n00164_disjunction_af
                                                                              jmp   n00164_disjunction_af
n00164_disjunction_af:    mov              r11, 225
                        add              dword ptr [rsp + 720], 1
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 1;                              je    n00167_lit_string_α
                                                                              jmp   n00114_lit_integer_α
                        .size            n00164_disjunction_bx, .-n00164_disjunction_bx
                        .type            n00166_assign_bx, @function
n00166_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_assign_α:          mov              r11, 226
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n00152_var_α
                        .size            n00166_assign_bx, .-n00166_assign_bx
                        .type            n00152_var_bx, @function
n00152_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00168_conjunction_α
                        .size            n00152_var_bx, .-n00152_var_bx
                        .type            n00168_conjunction_bx, @function
n00168_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_conjunction_α:     mov              r11, 228
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00118_disjunction_as
n00168_conjunction_β:     mov              r11, 228;                            jmp   n00114_lit_integer_α
                        .size            n00168_conjunction_bx, .-n00168_conjunction_bx
                        .type            n00167_lit_string_bx, @function
n00167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_596_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00169_var_α
n00167_lit_string_β:      mov              r11, 229;                            jmp   n00164_disjunction_af
.Llit_string_α_596_0:   .quad            .Llit_string_α_596_0_s
.Llit_string_α_596_0_s: .string          "-"
                        .size            n00167_lit_string_bx, .-n00167_lit_string_bx
                        .type            n00169_var_bx, @function
n00169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00170_lit_string_α
                        .size            n00169_var_bx, .-n00169_var_bx
                        .type            n00170_lit_string_bx, @function
n00170_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_lit_string_α:      mov              r11, 231
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_599_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n00171_call_icon_α
.Llit_string_α_599_0:   .quad            .Llit_string_α_599_0_s
.Llit_string_α_599_0_s: .string          " needs numeric parameter"
                        .size            n00170_lit_string_bx, .-n00170_lit_string_bx
                        .type            n00171_call_icon_bx, @function
n00171_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_call_icon_α:       mov              r11, 232
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
.Lcall_icon_rkfn601:    .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn601]
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
                        cmp              al, 104;                             je    n00164_disjunction_af
                                                                              jmp   n00164_disjunction_as
n00171_call_icon_β:       mov              r11, 232;                            jmp   n00164_disjunction_af
                        .size            n00171_call_icon_bx, .-n00171_call_icon_bx
                        .type            n00165_var_bx, @function
n00165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_α:             mov              r11, 233
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00172_call_icon_α
n00165_var_β:             mov              r11, 233;                            jmp   n00164_disjunction_af
                        .size            n00165_var_bx, .-n00165_var_bx
                        .type            n00172_call_icon_bx, @function
n00172_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_call_icon_α:       mov              r11, 234
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lcall_icon_rkfn605:    .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn605]
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
                        cmp              al, 104;                             je    n00164_disjunction_af
                                                                              jmp   n00164_disjunction_as
n00172_call_icon_β:       mov              r11, 234;                            jmp   n00164_disjunction_af
                        .size            n00172_call_icon_bx, .-n00172_call_icon_bx
                        .type            n00145_lit_string_bx, @function
n00145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_606_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n00173_var_α
n00145_lit_string_β:      mov              r11, 235;                            jmp   n00140_disjunction_af
.Llit_string_α_606_0:   .quad            .Llit_string_α_606_0_s
.Llit_string_α_606_0_s: .string          "No parameter following -"
                        .size            n00145_lit_string_bx, .-n00145_lit_string_bx
                        .type            n00173_var_bx, @function
n00173_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_var_α:             mov              r11, 236
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00174_call_icon_α
                        .size            n00173_var_bx, .-n00173_var_bx
                        .type            n00174_call_icon_bx, @function
n00174_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_call_icon_α:       mov              r11, 237
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lcall_icon_rkfn610:    .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn610]
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
                        cmp              al, 104;                             je    n00140_disjunction_af
                                                                              jmp   n00140_disjunction_as
n00174_call_icon_β:       mov              r11, 237;                            jmp   n00140_disjunction_af
                        .size            n00174_call_icon_bx, .-n00174_call_icon_bx
                        .type            n00144_var_bx, @function
n00144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n00175_call_icon_α
n00144_var_β:             mov              r11, 238;                            jmp   n00140_disjunction_af
                        .size            n00144_var_bx, .-n00144_var_bx
                        .type            n00175_call_icon_bx, @function
n00175_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_call_icon_α:       mov              r11, 239
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lcall_icon_rkfn614:    .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn614]
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
                        cmp              al, 104;                             je    n00140_disjunction_af
                                                                              jmp   n00140_disjunction_as
n00175_call_icon_β:       mov              r11, 239;                            jmp   n00140_disjunction_af
                        .size            n00175_call_icon_bx, .-n00175_call_icon_bx
                        .type            n00141_lit_string_bx, @function
n00141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n00176_lit_integer_α
n00141_lit_string_β:      mov              r11, 240;                            jmp   n00140_disjunction_af
.Llit_string_α_615_0:   .quad            .Llit_string_α_615_0_s
.Llit_string_α_615_0_s: .string          ""
                        .size            n00141_lit_string_bx, .-n00141_lit_string_bx
                        .type            n00176_lit_integer_bx, @function
n00176_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_lit_integer_α:     mov              r11, 241
                        mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_616_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n00143_scan_tab_α
.Llit_integer_α_616_0:  .quad            0
                        .size            n00176_lit_integer_bx, .-n00176_lit_integer_bx
                        .type            n00143_scan_tab_bx, @function
n00143_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_scan_tab_α:        mov              r11, 242
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_618_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_618_0:     cmp              rax, 1;                              jl    n00140_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00140_disjunction_af
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
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n00177_binop_test_α
n00143_scan_tab_β:        mov              r11, 242
                        mov              r14, qword ptr [rsp + 1584];         jmp   n00140_disjunction_af
                        .size            n00143_scan_tab_bx, .-n00143_scan_tab_bx
                        .type            n00177_binop_test_bx, @function
n00177_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_binop_test_α:      mov              r11, 243
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
                        test             eax, eax;                            jz    n00143_scan_tab_β
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00140_disjunction_as
n00177_binop_test_β:      mov              r11, 243;                            jmp   n00143_scan_tab_β
                        .size            n00177_binop_test_bx, .-n00177_binop_test_bx
                        .type            n00101_scan_bx, @function
n00101_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_scan_α:            mov              r11, 244
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
                        mov              r15, qword ptr [rsp + 336];          jmp   n00091_var_α
n00101_scan_β:            mov              r11, 244;                            jmp   n00091_var_α
                        .size            n00101_scan_bx, .-n00101_scan_bx
                        .type            n00113_lit_string_bx, @function
n00113_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_622_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n00178_scan_match_α
n00113_lit_string_β:      mov              r11, 245;                            jmp   n00112_disjunction_af
.Llit_string_α_622_0:   .quad            .Llit_string_α_622_0_s
.Llit_string_α_622_0_s: .string          "-"
                        .size            n00113_lit_string_bx, .-n00113_lit_string_bx
                        .type            n00178_scan_match_bx, @function
n00178_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_scan_match_α:      mov              r11, 246
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00112_disjunction_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_624_0]
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
                        test             eax, eax;                            jne   n00112_disjunction_af
                        mov              qword ptr [rsp + 2368], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2376], rax;         jmp   n00179_scan_tab_α
.Lscan_match_α_624_0:   .quad            .Lscan_match_α_624_0_s
.Lscan_match_α_624_0_s: .string          "-"
                        .size            n00178_scan_match_bx, .-n00178_scan_match_bx
                        .type            n00179_scan_tab_bx, @function
n00179_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_scan_tab_α:        mov              r11, 247
                        mov              rax, qword ptr [rsp + 2376]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_626_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_626_0:     cmp              rax, 1;                              jl    n00112_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00112_disjunction_af
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
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n00180_lit_integer_α
n00179_scan_tab_β:        mov              r11, 247
                        mov              r14, qword ptr [rsp + 2352];         jmp   n00112_disjunction_af
                        .size            n00179_scan_tab_bx, .-n00179_scan_tab_bx
                        .type            n00180_lit_integer_bx, @function
n00180_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_integer_α:     mov              r11, 248
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_627_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00181_scan_pos_α
.Llit_integer_α_627_0:  .quad            0
                        .size            n00180_lit_integer_bx, .-n00180_lit_integer_bx
                        .type            n00181_scan_pos_bx, @function
n00181_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_scan_pos_α:        mov              r11, 249
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_629_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_629_0:     cmp              rax, 1;                              jl    n00179_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00179_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00179_scan_tab_β
                        mov              qword ptr [rsp + 2304], 3
                        mov              qword ptr [rsp + 2312], rax;         jmp   n00182_conjunction_α
                        .size            n00181_scan_pos_bx, .-n00181_scan_pos_bx
                        .type            n00182_conjunction_bx, @function
n00182_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_conjunction_α:     mov              r11, 250
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n00183_var_α
n00182_conjunction_β:     mov              r11, 250;                            jmp   n00112_disjunction_af
                        .size            n00182_conjunction_bx, .-n00182_conjunction_bx
                        .type            n00183_var_bx, @function
n00183_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_var_α:             mov              r11, 251
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0;           jmp   n00184_assign_α
n00183_var_β:             mov              r11, 251;                            jmp   n00185_var_α
                        .size            n00183_var_bx, .-n00183_var_bx
                        .type            n00184_assign_bx, @function
n00184_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_assign_α:          mov              r11, 252
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n00185_var_α
                        .size            n00184_assign_bx, .-n00184_assign_bx
                        .type            n00185_var_bx, @function
n00185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00093_var_α
                        .size            n00185_var_bx, .-n00185_var_bx
                        .type            n00093_var_bx, @function
n00093_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00186_var_α
                        .size            n00093_var_bx, .-n00093_var_bx
                        .type            n00186_var_bx, @function
n00186_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_var_α:             mov              r11, 255
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00187_call_icon_α
                        .size            n00186_var_bx, .-n00186_var_bx
                        .type            n00187_call_icon_bx, @function
n00187_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_call_icon_α:       mov              r11, 256
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lcall_icon_rkfn640:    .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn640]
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
                        cmp              al, 104;                             je    n00188_var_α
                                                                              jmp   n00189_call_icon_α
n00187_call_icon_β:       mov              r11, 256;                            jmp   n00188_var_α
                        .size            n00187_call_icon_bx, .-n00187_call_icon_bx
                        .type            n00189_call_icon_bx, @function
n00189_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_call_icon_α:       mov              r11, 257
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lcall_icon_rkfn642:    .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn642]
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
                        cmp              al, 104;                             je    n00188_var_α
                                                                              jmp   n00093_var_α
n00189_call_icon_β:       mov              r11, 257;                            jmp   n00188_var_α
                        .size            n00189_call_icon_bx, .-n00189_call_icon_bx
                        .type            n00188_var_bx, @function
n00188_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_α:             mov              r11, 258
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00190_return_α
                        .size            n00188_var_bx, .-n00188_var_bx
                        .type            n00190_return_bx, @function
n00190_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_return_α:          mov              r11, 259
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
                        .size            n00190_return_bx, .-n00190_return_bx
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
                        lea              rcx, [rip + .Loptions_α_646_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_646_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_646_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_646_3:      add              rsp, 24
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
                        .type            n00191_var_bx, @function
n00191_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_var_α:             mov              r11, 260
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00192_assign_α
                        .size            n00191_var_bx, .-n00191_var_bx
                        .type            n00192_assign_bx, @function
n00192_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_assign_α:          mov              r11, 261
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [r9 + 96], rax             # Name__
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00193_call_proc_staged_α
                        .size            n00192_assign_bx, .-n00192_assign_bx
                        .type            n00193_call_proc_staged_bx, @function
n00193_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_call_proc_staged_α:
                        mov              r11, 262
                        call             Signature___dcα;                     jmp   .Lcall_proc_staged_α_671_2
.Lcall_proc_staged_α_671_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_671_29
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
.Lcall_proc_staged_α_671_29:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n00194_call_proc_staged_α
                                                                              jmp   n00194_call_proc_staged_α
n00193_call_proc_staged_β:
                        mov              r11, 262;                            jmp   n00194_call_proc_staged_α
.Lcall_proc_staged_β_671_0:
                        .quad            .Lcall_proc_staged_β_671_0_s
.Lcall_proc_staged_β_671_0_s:
                        .string          "Signature__"
                        .size            n00193_call_proc_staged_bx, .-n00193_call_proc_staged_bx
                        .type            n00194_call_proc_staged_bx, @function
n00194_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_call_proc_staged_α:
                        mov              r11, 263
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_673_2
.Lcall_proc_staged_α_673_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_673_29
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
.Lcall_proc_staged_α_673_29:
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n00195_call_proc_staged_α
                                                                              jmp   n00195_call_proc_staged_α
n00194_call_proc_staged_β:
                        mov              r11, 263;                            jmp   n00195_call_proc_staged_α
.Lcall_proc_staged_β_673_0:
                        .quad            .Lcall_proc_staged_β_673_0_s
.Lcall_proc_staged_β_673_0_s:
                        .string          "Regions__"
                        .size            n00194_call_proc_staged_bx, .-n00194_call_proc_staged_bx
                        .type            n00195_call_proc_staged_bx, @function
n00195_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_call_proc_staged_α:
                        mov              r11, 264
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_675_2
.Lcall_proc_staged_α_675_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_675_29
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
.Lcall_proc_staged_α_675_29:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n00196_disjunction_α
                                                                              jmp   n00196_disjunction_α
n00195_call_proc_staged_β:
                        mov              r11, 264;                            jmp   n00196_disjunction_α
.Lcall_proc_staged_β_675_0:
                        .quad            .Lcall_proc_staged_β_675_0_s
.Lcall_proc_staged_β_675_0_s:
                        .string          "Time__"
                        .size            n00195_call_proc_staged_bx, .-n00195_call_proc_staged_bx
                        .type            n00196_disjunction_bx, @function
n00196_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_disjunction_α:     mov              r11, 265
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00197_lit_string_α
n00196_disjunction_as:    mov              r11, 265
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_677_0
                                                                              jmp   n00198_var_α
.Ldisjunction_α_677_0:                                                        jmp   n00198_var_α
n00196_disjunction_β:     mov              r11, 265
                        mov              eax, dword ptr [rsp + 128];          jmp   n00198_var_α
n00196_disjunction_af:    mov              r11, 265
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00198_var_α
                        .size            n00196_disjunction_bx, .-n00196_disjunction_bx
                        .type            n00198_var_bx, @function
n00198_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_α:             mov              r11, 266
                        mov              rdi, qword ptr [rip + .Lvar_α_678_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00199_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00200_assign_α
.Lvar_α_678_0:          .quad            .Lvar_α_678_0_s
.Lvar_α_678_0_s:        .string          "write"
                        .size            n00198_var_bx, .-n00198_var_bx
                        .type            n00200_assign_bx, @function
n00200_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_assign_α:          mov              r11, 267
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 64], rax             # Save__
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00199_var_α
                        .size            n00200_assign_bx, .-n00200_assign_bx
                        .type            n00199_var_bx, @function
n00199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:             mov              r11, 268
                        mov              rdi, qword ptr [rip + .Lvar_α_680_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00201_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00202_assign_α
.Lvar_α_680_0:          .quad            .Lvar_α_680_0_s
.Lvar_α_680_0_s:        .string          "writes"
                        .size            n00199_var_bx, .-n00199_var_bx
                        .type            n00202_assign_bx, @function
n00202_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_assign_α:          mov              r11, 269
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 80], rax             # Saves__
                        mov              qword ptr [r9 + 88], rdx;            jmp   n00201_lit_integer_α
                        .size            n00202_assign_bx, .-n00202_assign_bx
                        .type            n00201_lit_integer_bx, @function
n00201_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_lit_integer_α:     mov              r11, 270
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_682_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00203_assign_α
.Llit_integer_α_682_0:  .quad            1
                        .size            n00201_lit_integer_bx, .-n00201_lit_integer_bx
                        .type            n00203_assign_bx, @function
n00203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_assign_α:          mov              r11, 271
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lassign_α_683_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00204_assign_α
.Lassign_α_683_0:       .quad            .Lassign_α_683_0_s
.Lassign_α_683_0_s:     .string          "writes"
                        .size            n00203_assign_bx, .-n00203_assign_bx
                        .type            n00204_assign_bx, @function
n00204_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_assign_α:          mov              r11, 272
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lassign_α_684_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00205_return_α
.Lassign_α_684_0:       .quad            .Lassign_α_684_0_s
.Lassign_α_684_0_s:     .string          "write"
                        .size            n00204_assign_bx, .-n00204_assign_bx
                        .type            n00205_return_bx, @function
n00205_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_return_α:          mov              r11, 273
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n00205_return_bx, .-n00205_return_bx
                        .type            n00206_conjunction_bx, @function
n00206_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_conjunction_α:     mov              r11, 274;                            jmp   n00196_disjunction_as
n00206_conjunction_β:     mov              r11, 274;                            jmp   n00198_var_α
                        .size            n00206_conjunction_bx, .-n00206_conjunction_bx
                        .type            n00197_lit_string_bx, @function
n00197_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_lit_string_α:      mov              r11, 275
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_687_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00207_call_icon_α
n00197_lit_string_β:      mov              r11, 275;                            jmp   n00196_disjunction_af
.Llit_string_α_687_0:   .quad            .Llit_string_α_687_0_s
.Llit_string_α_687_0_s: .string          "OUTPUT"
                        .size            n00197_lit_string_bx, .-n00197_lit_string_bx
                        .type            n00207_call_icon_bx, @function
n00207_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_call_icon_α:       mov              r11, 276
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_rkfn689:    .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn689]
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
                        cmp              al, 104;                             je    n00196_disjunction_af
                                                                              jmp   n00208_lit_string_α
n00207_call_icon_β:       mov              r11, 276;                            jmp   n00196_disjunction_af
                        .size            n00207_call_icon_bx, .-n00207_call_icon_bx
                        .type            n00208_lit_string_bx, @function
n00208_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_690_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00209_call_icon_α
.Llit_string_α_690_0:   .quad            .Llit_string_α_690_0_s
.Llit_string_α_690_0_s: .string          "*** Benchmarking with output ***"
                        .size            n00208_lit_string_bx, .-n00208_lit_string_bx
                        .type            n00209_call_icon_bx, @function
n00209_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_call_icon_α:       mov              r11, 278
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_rkfn692:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn692]
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
                        cmp              al, 104;                             je    n00210_return_α
                                                                              jmp   n00210_return_α
n00209_call_icon_β:       mov              r11, 278;                            jmp   n00210_return_α
                        .size            n00209_call_icon_bx, .-n00209_call_icon_bx
                        .type            n00210_return_bx, @function
n00210_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_return_α:          mov              r11, 279
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n00210_return_bx, .-n00210_return_bx
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
                        lea              rcx, [rip + .LInit___α_694_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_694_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_694_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_694_3:       add              rsp, 24
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
                        .type            n00211_disjunction_bx, @function
n00211_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_disjunction_α:     mov              r11, 280
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n00212_lit_string_α
n00211_disjunction_as:    mov              r11, 280
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_713_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00213_var_α
.Ldisjunction_α_713_0:                                                        jmp   n00213_var_α
n00211_disjunction_β:     mov              r11, 280
                        mov              eax, dword ptr [rsp + 288];          jmp   n00213_var_α
n00211_disjunction_af:    mov              r11, 280
                        add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288];          jmp   n00213_var_α
                        .size            n00211_disjunction_bx, .-n00211_disjunction_bx
                        .type            n00212_lit_string_bx, @function
n00212_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_lit_string_α:      mov              r11, 281
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_714_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00214_call_icon_α
n00212_lit_string_β:      mov              r11, 281;                            jmp   n00215_var_α
.Llit_string_α_714_0:   .quad            .Llit_string_α_714_0_s
.Llit_string_α_714_0_s: .string          "OUTPUT"
                        .size            n00212_lit_string_bx, .-n00212_lit_string_bx
                        .type            n00214_call_icon_bx, @function
n00214_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_call_icon_α:       mov              r11, 282
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lcall_icon_rkfn716:    .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn716]
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
                        cmp              al, 104;                             je    n00215_var_α
                                                                              jmp   n00211_disjunction_af
n00214_call_icon_β:       mov              r11, 282;                            jmp   n00215_var_α
                        .size            n00214_call_icon_bx, .-n00214_call_icon_bx
                        .type            n00215_var_bx, @function
n00215_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_α:             mov              r11, 283
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0;            jmp   n00216_var_α
n00215_var_β:             mov              r11, 283;                            jmp   n00211_disjunction_af
                        .size            n00215_var_bx, .-n00215_var_bx
                        .type            n00216_var_bx, @function
n00216_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_var_α:             mov              r11, 284
                        mov              rax, qword ptr [r9 + 64]             # Save__
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 368], rax           # result
                        mov              qword ptr [rsp + 376], rdx;          jmp   n00217_assign_α
                        .size            n00216_var_bx, .-n00216_var_bx
                        .type            n00217_assign_bx, @function
n00217_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_assign_α:          mov              r11, 285
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              rdi, qword ptr [rip + .Lassign_α_719_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00218_var_α
.Lassign_α_719_0:       .quad            .Lassign_α_719_0_s
.Lassign_α_719_0_s:     .string          "write"
                        .size            n00217_assign_bx, .-n00217_assign_bx
                        .type            n00218_var_bx, @function
n00218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_α:             mov              r11, 286
                        mov              rax, qword ptr [r9 + 80]             # Saves__
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 336], rax           # result
                        mov              qword ptr [rsp + 344], rdx;          jmp   n00219_assign_α
                        .size            n00218_var_bx, .-n00218_var_bx
                        .type            n00219_assign_bx, @function
n00219_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_assign_α:          mov              r11, 287
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              rdi, qword ptr [rip + .Lassign_α_721_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00220_conjunction_α
.Lassign_α_721_0:       .quad            .Lassign_α_721_0_s
.Lassign_α_721_0_s:     .string          "writes"
                        .size            n00219_assign_bx, .-n00219_assign_bx
                        .type            n00220_conjunction_bx, @function
n00220_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_conjunction_α:     mov              r11, 288
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00211_disjunction_as
n00220_conjunction_β:     mov              r11, 288;                            jmp   n00213_var_α
                        .size            n00220_conjunction_bx, .-n00220_conjunction_bx
                        .type            n00213_var_bx, @function
n00213_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_var_α:             mov              r11, 289
                        mov              rax, qword ptr [r9 + 96]             # Name__
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00221_lit_string_α
                        .size            n00213_var_bx, .-n00213_var_bx
                        .type            n00221_lit_string_bx, @function
n00221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_string_α:      mov              r11, 290
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_724_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00222_call_proc_staged_α
.Llit_string_α_724_0:   .quad            .Llit_string_α_724_0_s
.Llit_string_α_724_0_s: .string          " elapsed time = "
                        .size            n00221_lit_string_bx, .-n00221_lit_string_bx
                        .type            n00222_call_proc_staged_bx, @function
n00222_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_proc_staged_α:
                        mov              r11, 291
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_726_2
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
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lcall_proc_staged_α_726_29:
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00223_call_proc_staged_α
                                                                              jmp   n00224_call_icon_α
n00222_call_proc_staged_β:
                        mov              r11, 291;                            jmp   n00223_call_proc_staged_α
.Lcall_proc_staged_β_726_0:
                        .quad            .Lcall_proc_staged_β_726_0_s
.Lcall_proc_staged_β_726_0_s:
                        .string          "Time__"
                        .size            n00222_call_proc_staged_bx, .-n00222_call_proc_staged_bx
                        .type            n00224_call_icon_bx, @function
n00224_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_call_icon_α:       mov              r11, 292
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
.Lcall_icon_rkfn728:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn728]
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
                        cmp              al, 104;                             je    n00223_call_proc_staged_α
                                                                              jmp   n00223_call_proc_staged_α
n00224_call_icon_β:       mov              r11, 292;                            jmp   n00223_call_proc_staged_α
                        .size            n00224_call_icon_bx, .-n00224_call_icon_bx
                        .type            n00223_call_proc_staged_bx, @function
n00223_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_call_proc_staged_α:
                        mov              r11, 293
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
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lcall_proc_staged_α_730_29:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00225_call_proc_staged_α
                                                                              jmp   n00225_call_proc_staged_α
n00223_call_proc_staged_β:
                        mov              r11, 293;                            jmp   n00225_call_proc_staged_α
.Lcall_proc_staged_β_730_0:
                        .quad            .Lcall_proc_staged_β_730_0_s
.Lcall_proc_staged_β_730_0_s:
                        .string          "Regions__"
                        .size            n00223_call_proc_staged_bx, .-n00223_call_proc_staged_bx
                        .type            n00225_call_proc_staged_bx, @function
n00225_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_call_proc_staged_α:
                        mov              r11, 294
                        call             Storage___dcα;                       jmp   .Lcall_proc_staged_α_732_2
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
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lcall_proc_staged_α_732_29:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n00226_call_proc_staged_α
                                                                              jmp   n00226_call_proc_staged_α
n00225_call_proc_staged_β:
                        mov              r11, 294;                            jmp   n00226_call_proc_staged_α
.Lcall_proc_staged_β_732_0:
                        .quad            .Lcall_proc_staged_β_732_0_s
.Lcall_proc_staged_β_732_0_s:
                        .string          "Storage__"
                        .size            n00225_call_proc_staged_bx, .-n00225_call_proc_staged_bx
                        .type            n00226_call_proc_staged_bx, @function
n00226_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_call_proc_staged_α:
                        mov              r11, 295
                        call             Collections___dcα;                   jmp   .Lcall_proc_staged_α_734_2
.Lcall_proc_staged_α_734_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_734_29
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
.Lcall_proc_staged_α_734_29:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n00227_return_α
                                                                              jmp   n00227_return_α
n00226_call_proc_staged_β:
                        mov              r11, 295;                            jmp   n00227_return_α
.Lcall_proc_staged_β_734_0:
                        .quad            .Lcall_proc_staged_β_734_0_s
.Lcall_proc_staged_β_734_0_s:
                        .string          "Collections__"
                        .size            n00226_call_proc_staged_bx, .-n00226_call_proc_staged_bx
                        .type            n00227_return_bx, @function
n00227_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_return_α:          mov              r11, 296
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Term___γ
                        .size            n00227_return_bx, .-n00227_return_bx
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
                        lea              rcx, [rip + .LTerm___α_736_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_736_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_736_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_736_3:       add              rsp, 24
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
                        .type            n00228_disjunction_bx, @function
n00228_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_disjunction_α:     mov              r11, 297
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00229_var_ref_α
n00228_disjunction_as:    mov              r11, 297
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_775_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00230_make_list_α
.Ldisjunction_α_775_0:                                                        jmp   n00230_make_list_α
n00228_disjunction_β:     mov              r11, 297
                        mov              eax, dword ptr [rsp + 656];          jmp   n00230_make_list_α
n00228_disjunction_af:    mov              r11, 297
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00230_make_list_α
                        .size            n00228_disjunction_bx, .-n00228_disjunction_bx
                        .type            n00230_make_list_bx, @function
n00230_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_make_list_α:       mov              r11, 298
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00231_assign_α
                        .size            n00230_make_list_bx, .-n00230_make_list_bx
                        .type            n00231_assign_bx, @function
n00231_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_assign_α:          mov              r11, 299
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00232_var_α
                        .size            n00231_assign_bx, .-n00231_assign_bx
                        .type            n00232_var_bx, @function
n00232_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_var_α:             mov              r11, 300
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00233_kw_icon_gen_α
                        .size            n00232_var_bx, .-n00232_var_bx
                        .type            n00233_kw_icon_gen_bx, @function
n00233_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_kw_icon_gen_α:     mov              r11, 301
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_781_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_781_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00234_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00235_call_icon_α
n00233_kw_icon_gen_β:     mov              r11, 301;                            jmp   .Lkw_icon_gen_α_781_1
.Lkw_icon_gen_α_781_0:  .quad            .Lkw_icon_gen_α_781_0_s
.Lkw_icon_gen_α_781_0_s:
                        .string          "&collections"
                        .size            n00233_kw_icon_gen_bx, .-n00233_kw_icon_gen_bx
                        .type            n00235_call_icon_bx, @function
n00235_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_call_icon_α:       mov              r11, 302
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_rkfn783:    .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn783]
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
                        cmp              al, 104;                             je    n00233_kw_icon_gen_β
                                                                              jmp   n00233_kw_icon_gen_β
n00235_call_icon_β:       mov              r11, 302;                            jmp   n00233_kw_icon_gen_β
                        .size            n00235_call_icon_bx, .-n00235_call_icon_bx
                        .type            n00234_lit_string_bx, @function
n00234_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_784_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00236_call_icon_α
.Llit_string_α_784_0:   .quad            .Llit_string_α_784_0_s
.Llit_string_α_784_0_s: .string          "collections"
                        .size            n00234_lit_string_bx, .-n00234_lit_string_bx
                        .type            n00236_call_icon_bx, @function
n00236_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_icon_α:       mov              r11, 304
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_rkfn786:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn786]
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
                        cmp              al, 104;                             je    n00237_lit_integer_α
                                                                              jmp   n00237_lit_integer_α
n00236_call_icon_β:       mov              r11, 304;                            jmp   n00237_lit_integer_α
                        .size            n00236_call_icon_bx, .-n00236_call_icon_bx
                        .type            n00237_lit_integer_bx, @function
n00237_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_lit_integer_α:     mov              r11, 305
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_787_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00238_var_α
.Llit_integer_α_787_0:  .quad            1
                        .size            n00237_lit_integer_bx, .-n00237_lit_integer_bx
                        .type            n00238_var_bx, @function
n00238_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_var_α:             mov              r11, 306
                        mov              rax, qword ptr [r9 + 112]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00239_unop_α
                        .size            n00238_var_bx, .-n00238_var_bx
                        .type            n00239_unop_bx, @function
n00239_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_unop_α:            mov              r11, 307
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00240_to_α
                        .size            n00239_unop_bx, .-n00239_unop_bx
                        .type            n00240_to_bx, @function
n00240_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_to_α:              mov              r11, 308
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
.Lto_α_791_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00241_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00242_assign_α
n00240_to_β:              mov              r11, 308
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_791_0
                        .size            n00240_to_bx, .-n00240_to_bx
                        .type            n00242_assign_bx, @function
n00242_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_assign_α:          mov              r11, 309
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n00243_bound_α
                        .size            n00242_assign_bx, .-n00242_assign_bx
                        .type            n00243_bound_bx, @function
n00243_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_bound_α:           mov              r11, 310
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00244_var_ref_α
                        .size            n00243_bound_bx, .-n00243_bound_bx
                        .type            n00244_var_ref_bx, @function
n00244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00245_var_α
                        .size            n00244_var_ref_bx, .-n00244_var_ref_bx
                        .type            n00245_var_bx, @function
n00245_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_var_α:             mov              r11, 312
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00246_subscript_α
                        .size            n00245_var_bx, .-n00245_var_bx
                        .type            n00246_subscript_bx, @function
n00246_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_subscript_α:       mov              r11, 313
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
                        cmp              al, 104;                             je    n00247_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00248_deref_α
                        .size            n00246_subscript_bx, .-n00246_subscript_bx
                        .type            n00248_deref_bx, @function
n00248_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_deref_α:           mov              r11, 314
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
                        cmp              al, 104;                             je    n00247_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00249_var_ref_α
                        .size            n00248_deref_bx, .-n00248_deref_bx
                        .type            n00249_var_ref_bx, @function
n00249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00250_var_α
                        .size            n00249_var_ref_bx, .-n00249_var_ref_bx
                        .type            n00250_var_bx, @function
n00250_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_var_α:             mov              r11, 316
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00251_subscript_α
                        .size            n00250_var_bx, .-n00250_var_bx
                        .type            n00251_subscript_bx, @function
n00251_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_subscript_α:       mov              r11, 317
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
                        cmp              al, 104;                             je    n00247_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00252_deref_α
                        .size            n00251_subscript_bx, .-n00251_subscript_bx
                        .type            n00252_deref_bx, @function
n00252_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_deref_α:           mov              r11, 318
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
                        cmp              al, 104;                             je    n00247_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00253_lit_integer_α
                        .size            n00252_deref_bx, .-n00252_deref_bx
                        .type            n00253_lit_integer_bx, @function
n00253_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_lit_integer_α:     mov              r11, 319
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_807_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00254_call_icon_α
.Llit_integer_α_807_0:  .quad            8
                        .size            n00253_lit_integer_bx, .-n00253_lit_integer_bx
                        .type            n00254_call_icon_bx, @function
n00254_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_icon_α:       mov              r11, 320
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_rkfn809:    .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn809]
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
                        cmp              al, 104;                             je    n00247_unmark_α
                                                                              jmp   n00255_call_icon_α
n00254_call_icon_β:       mov              r11, 320;                            jmp   n00247_unmark_α
                        .size            n00254_call_icon_bx, .-n00254_call_icon_bx
                        .type            n00255_call_icon_bx, @function
n00255_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_call_icon_α:       mov              r11, 321
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_rkfn811:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn811]
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
                        cmp              al, 104;                             je    n00247_unmark_α
                                                                              jmp   n00247_unmark_α
n00255_call_icon_β:       mov              r11, 321;                            jmp   n00247_unmark_α
                        .size            n00255_call_icon_bx, .-n00255_call_icon_bx
                        .type            n00247_unmark_bx, @function
n00247_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_unmark_α:          mov              r11, 322
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00240_to_β
                        .size            n00247_unmark_bx, .-n00247_unmark_bx
                        .type            n00241_return_bx, @function
n00241_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_return_α:          mov              r11, 323
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Collections___γ
                        .size            n00241_return_bx, .-n00241_return_bx
                        .type            n00229_var_ref_bx, @function
n00229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        mov              rdx, 1879052416                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00256_nulltest_var_α
n00229_var_ref_β:         mov              r11, 324;                            jmp   n00228_disjunction_af
                        .size            n00229_var_ref_bx, .-n00229_var_ref_bx
                        .type            n00256_nulltest_var_bx, @function
n00256_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_nulltest_var_α:    mov              r11, 325
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 104;                             je    n00228_disjunction_af
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
                        cmp              al, 104;                             je    n00228_disjunction_af
                        cmp              eax, 0;                              jne   n00228_disjunction_af
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00257_lit_integer_α
                        .size            n00256_nulltest_var_bx, .-n00256_nulltest_var_bx
                        .type            n00257_lit_integer_bx, @function
n00257_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_lit_integer_α:     mov              r11, 326
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_818_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00258_assign_var_α
.Llit_integer_α_818_0:  .quad            1
                        .size            n00257_lit_integer_bx, .-n00257_lit_integer_bx
                        .type            n00258_assign_var_bx, @function
n00258_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_assign_var_α:      mov              r11, 327
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
                        cmp              al, 104;                             je    n00228_disjunction_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00259_lit_string_α
                        .size            n00258_assign_var_bx, .-n00258_assign_var_bx
                        .type            n00259_lit_string_bx, @function
n00259_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_820_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00260_lit_string_α
.Llit_string_α_820_0:   .quad            .Llit_string_α_820_0_s
.Llit_string_α_820_0_s: .string          "total"
                        .size            n00259_lit_string_bx, .-n00259_lit_string_bx
                        .type            n00260_lit_string_bx, @function
n00260_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_lit_string_α:      mov              r11, 329
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_821_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00261_lit_string_α
.Llit_string_α_821_0:   .quad            .Llit_string_α_821_0_s
.Llit_string_α_821_0_s: .string          "static"
                        .size            n00260_lit_string_bx, .-n00260_lit_string_bx
                        .type            n00261_lit_string_bx, @function
n00261_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_822_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00262_lit_string_α
.Llit_string_α_822_0:   .quad            .Llit_string_α_822_0_s
.Llit_string_α_822_0_s: .string          "string"
                        .size            n00261_lit_string_bx, .-n00261_lit_string_bx
                        .type            n00262_lit_string_bx, @function
n00262_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_823_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00263_make_list_α
.Llit_string_α_823_0:   .quad            .Llit_string_α_823_0_s
.Llit_string_α_823_0_s: .string          "block"
                        .size            n00262_lit_string_bx, .-n00262_lit_string_bx
                        .type            n00263_make_list_bx, @function
n00263_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_make_list_α:       mov              r11, 332
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00264_assign_α
                        .size            n00263_make_list_bx, .-n00263_make_list_bx
                        .type            n00264_assign_bx, @function
n00264_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_assign_α:          mov              r11, 333
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 112], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 120], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00228_disjunction_as
n00264_assign_β:          mov              r11, 333;                            jmp   n00230_make_list_α
                        .size            n00264_assign_bx, .-n00264_assign_bx
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
                        lea              rcx, [rip + .LCollections___α_827_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_827_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_827_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_827_3:
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
                        .type            n00265_disjunction_bx, @function
n00265_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_disjunction_α:     mov              r11, 334
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00266_var_ref_α
n00265_disjunction_as:    mov              r11, 334
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_865_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00267_make_list_α
.Ldisjunction_α_865_0:                                                        jmp   n00267_make_list_α
n00265_disjunction_β:     mov              r11, 334
                        mov              eax, dword ptr [rsp + 656];          jmp   n00267_make_list_α
n00265_disjunction_af:    mov              r11, 334
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00267_make_list_α
                        .size            n00265_disjunction_bx, .-n00265_disjunction_bx
                        .type            n00267_make_list_bx, @function
n00267_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_make_list_α:       mov              r11, 335
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00268_assign_α
                        .size            n00267_make_list_bx, .-n00267_make_list_bx
                        .type            n00268_assign_bx, @function
n00268_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_assign_α:          mov              r11, 336
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00269_var_α
                        .size            n00268_assign_bx, .-n00268_assign_bx
                        .type            n00269_var_bx, @function
n00269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_var_α:             mov              r11, 337
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00270_kw_icon_gen_α
                        .size            n00269_var_bx, .-n00269_var_bx
                        .type            n00270_kw_icon_gen_bx, @function
n00270_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_kw_icon_gen_α:     mov              r11, 338
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_871_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_871_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00271_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00272_call_icon_α
n00270_kw_icon_gen_β:     mov              r11, 338;                            jmp   .Lkw_icon_gen_α_871_1
.Lkw_icon_gen_α_871_0:  .quad            .Lkw_icon_gen_α_871_0_s
.Lkw_icon_gen_α_871_0_s:
                        .string          "&regions"
                        .size            n00270_kw_icon_gen_bx, .-n00270_kw_icon_gen_bx
                        .type            n00272_call_icon_bx, @function
n00272_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_call_icon_α:       mov              r11, 339
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_rkfn873:    .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn873]
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
                        cmp              al, 104;                             je    n00270_kw_icon_gen_β
                                                                              jmp   n00270_kw_icon_gen_β
n00272_call_icon_β:       mov              r11, 339;                            jmp   n00270_kw_icon_gen_β
                        .size            n00272_call_icon_bx, .-n00272_call_icon_bx
                        .type            n00271_lit_string_bx, @function
n00271_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_lit_string_α:      mov              r11, 340
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_874_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00273_call_icon_α
.Llit_string_α_874_0:   .quad            .Llit_string_α_874_0_s
.Llit_string_α_874_0_s: .string          "regions"
                        .size            n00271_lit_string_bx, .-n00271_lit_string_bx
                        .type            n00273_call_icon_bx, @function
n00273_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_call_icon_α:       mov              r11, 341
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_rkfn876:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn876]
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
                        cmp              al, 104;                             je    n00274_lit_integer_α
                                                                              jmp   n00274_lit_integer_α
n00273_call_icon_β:       mov              r11, 341;                            jmp   n00274_lit_integer_α
                        .size            n00273_call_icon_bx, .-n00273_call_icon_bx
                        .type            n00274_lit_integer_bx, @function
n00274_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_lit_integer_α:     mov              r11, 342
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_877_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00275_var_α
.Llit_integer_α_877_0:  .quad            1
                        .size            n00274_lit_integer_bx, .-n00274_lit_integer_bx
                        .type            n00275_var_bx, @function
n00275_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_var_α:             mov              r11, 343
                        mov              rax, qword ptr [r9 + 144]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00276_unop_α
                        .size            n00275_var_bx, .-n00275_var_bx
                        .type            n00276_unop_bx, @function
n00276_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_unop_α:            mov              r11, 344
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00277_to_α
                        .size            n00276_unop_bx, .-n00276_unop_bx
                        .type            n00277_to_bx, @function
n00277_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_to_α:              mov              r11, 345
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
.Lto_α_881_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00278_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00279_assign_α
n00277_to_β:              mov              r11, 345
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_881_0
                        .size            n00277_to_bx, .-n00277_to_bx
                        .type            n00279_assign_bx, @function
n00279_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_assign_α:          mov              r11, 346
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00280_bound_α
                        .size            n00279_assign_bx, .-n00279_assign_bx
                        .type            n00280_bound_bx, @function
n00280_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_bound_α:           mov              r11, 347
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00281_var_ref_α
                        .size            n00280_bound_bx, .-n00280_bound_bx
                        .type            n00281_var_ref_bx, @function
n00281_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        mov              rdx, 1879052432                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00282_var_α
                        .size            n00281_var_ref_bx, .-n00281_var_ref_bx
                        .type            n00282_var_bx, @function
n00282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_var_α:             mov              r11, 349
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00283_subscript_α
                        .size            n00282_var_bx, .-n00282_var_bx
                        .type            n00283_subscript_bx, @function
n00283_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_subscript_α:       mov              r11, 350
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
                        cmp              al, 104;                             je    n00284_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00285_deref_α
                        .size            n00283_subscript_bx, .-n00283_subscript_bx
                        .type            n00285_deref_bx, @function
n00285_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_deref_α:           mov              r11, 351
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
                        cmp              al, 104;                             je    n00284_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00286_var_ref_α
                        .size            n00285_deref_bx, .-n00285_deref_bx
                        .type            n00286_var_ref_bx, @function
n00286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_ref_α:         mov              r11, 352
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00287_var_α
                        .size            n00286_var_ref_bx, .-n00286_var_ref_bx
                        .type            n00287_var_bx, @function
n00287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_α:             mov              r11, 353
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00288_subscript_α
                        .size            n00287_var_bx, .-n00287_var_bx
                        .type            n00288_subscript_bx, @function
n00288_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_subscript_α:       mov              r11, 354
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
                        cmp              al, 104;                             je    n00284_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00289_deref_α
                        .size            n00288_subscript_bx, .-n00288_subscript_bx
                        .type            n00289_deref_bx, @function
n00289_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_deref_α:           mov              r11, 355
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
                        cmp              al, 104;                             je    n00284_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00290_lit_integer_α
                        .size            n00289_deref_bx, .-n00289_deref_bx
                        .type            n00290_lit_integer_bx, @function
n00290_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_lit_integer_α:     mov              r11, 356
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_897_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00291_call_icon_α
.Llit_integer_α_897_0:  .quad            8
                        .size            n00290_lit_integer_bx, .-n00290_lit_integer_bx
                        .type            n00291_call_icon_bx, @function
n00291_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_call_icon_α:       mov              r11, 357
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_rkfn899:    .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn899]
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
                        cmp              al, 104;                             je    n00284_unmark_α
                                                                              jmp   n00292_call_icon_α
n00291_call_icon_β:       mov              r11, 357;                            jmp   n00284_unmark_α
                        .size            n00291_call_icon_bx, .-n00291_call_icon_bx
                        .type            n00292_call_icon_bx, @function
n00292_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_call_icon_α:       mov              r11, 358
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_rkfn901:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn901]
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
                        cmp              al, 104;                             je    n00284_unmark_α
                                                                              jmp   n00284_unmark_α
n00292_call_icon_β:       mov              r11, 358;                            jmp   n00284_unmark_α
                        .size            n00292_call_icon_bx, .-n00292_call_icon_bx
                        .type            n00284_unmark_bx, @function
n00284_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_unmark_α:          mov              r11, 359
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00277_to_β
                        .size            n00284_unmark_bx, .-n00284_unmark_bx
                        .type            n00278_return_bx, @function
n00278_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_return_α:          mov              r11, 360
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Regions___γ
                        .size            n00278_return_bx, .-n00278_return_bx
                        .type            n00266_var_ref_bx, @function
n00266_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00293_nulltest_var_α
n00266_var_ref_β:         mov              r11, 361;                            jmp   n00265_disjunction_af
                        .size            n00266_var_ref_bx, .-n00266_var_ref_bx
                        .type            n00293_nulltest_var_bx, @function
n00293_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_nulltest_var_α:    mov              r11, 362
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    n00265_disjunction_af
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
                        cmp              al, 104;                             je    n00265_disjunction_af
                        cmp              eax, 0;                              jne   n00265_disjunction_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00294_lit_integer_α
                        .size            n00293_nulltest_var_bx, .-n00293_nulltest_var_bx
                        .type            n00294_lit_integer_bx, @function
n00294_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_lit_integer_α:     mov              r11, 363
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_908_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00295_assign_var_α
.Llit_integer_α_908_0:  .quad            1
                        .size            n00294_lit_integer_bx, .-n00294_lit_integer_bx
                        .type            n00295_assign_var_bx, @function
n00295_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_assign_var_α:      mov              r11, 364
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
                        cmp              al, 104;                             je    n00265_disjunction_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00296_lit_string_α
                        .size            n00295_assign_var_bx, .-n00295_assign_var_bx
                        .type            n00296_lit_string_bx, @function
n00296_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_lit_string_α:      mov              r11, 365
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_910_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00297_lit_string_α
.Llit_string_α_910_0:   .quad            .Llit_string_α_910_0_s
.Llit_string_α_910_0_s: .string          "static"
                        .size            n00296_lit_string_bx, .-n00296_lit_string_bx
                        .type            n00297_lit_string_bx, @function
n00297_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_lit_string_α:      mov              r11, 366
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_911_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00298_lit_string_α
.Llit_string_α_911_0:   .quad            .Llit_string_α_911_0_s
.Llit_string_α_911_0_s: .string          "string"
                        .size            n00297_lit_string_bx, .-n00297_lit_string_bx
                        .type            n00298_lit_string_bx, @function
n00298_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_lit_string_α:      mov              r11, 367
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_912_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00299_make_list_α
.Llit_string_α_912_0:   .quad            .Llit_string_α_912_0_s
.Llit_string_α_912_0_s: .string          "block"
                        .size            n00298_lit_string_bx, .-n00298_lit_string_bx
                        .type            n00299_make_list_bx, @function
n00299_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_make_list_α:       mov              r11, 368
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00300_assign_α
                        .size            n00299_make_list_bx, .-n00299_make_list_bx
                        .type            n00300_assign_bx, @function
n00300_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_assign_α:          mov              r11, 369
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 144], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 152], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00265_disjunction_as
n00300_assign_β:          mov              r11, 369;                            jmp   n00267_make_list_α
                        .size            n00300_assign_bx, .-n00300_assign_bx
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
                        lea              rcx, [rip + .LRegions___α_916_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_916_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_916_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_916_3:    add              rsp, 24
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
                        .type            n00301_kw_icon_bx, @function
n00301_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_kw_icon_α:         mov              r11, 370
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_924_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00302_kw_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00303_call_icon_α
n00301_kw_icon_β:         mov              r11, 370;                            jmp   n00302_kw_icon_α
.Lkw_icon_α_924_0:      .quad            .Lkw_icon_α_924_0_s
.Lkw_icon_α_924_0_s:    .string          "&version"
                        .size            n00301_kw_icon_bx, .-n00301_kw_icon_bx
                        .type            n00303_call_icon_bx, @function
n00303_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_call_icon_α:       mov              r11, 371
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lcall_icon_rkfn926:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn926]
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
                        cmp              al, 104;                             je    n00302_kw_icon_α
                                                                              jmp   n00302_kw_icon_α
n00303_call_icon_β:       mov              r11, 371;                            jmp   n00302_kw_icon_α
                        .size            n00303_call_icon_bx, .-n00303_call_icon_bx
                        .type            n00302_kw_icon_bx, @function
n00302_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_kw_icon_α:         mov              r11, 372
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_927_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00304_kw_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00305_call_icon_α
n00302_kw_icon_β:         mov              r11, 372;                            jmp   n00304_kw_icon_gen_α
.Lkw_icon_α_927_0:      .quad            .Lkw_icon_α_927_0_s
.Lkw_icon_α_927_0_s:    .string          "&host"
                        .size            n00302_kw_icon_bx, .-n00302_kw_icon_bx
                        .type            n00305_call_icon_bx, @function
n00305_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_call_icon_α:       mov              r11, 373
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lcall_icon_rkfn929:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn929]
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
                        cmp              al, 104;                             je    n00304_kw_icon_gen_α
                                                                              jmp   n00304_kw_icon_gen_α
n00305_call_icon_β:       mov              r11, 373;                            jmp   n00304_kw_icon_gen_α
                        .size            n00305_call_icon_bx, .-n00305_call_icon_bx
                        .type            n00304_kw_icon_gen_bx, @function
n00304_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_kw_icon_gen_α:     mov              r11, 374
                        mov              qword ptr [rsp + 80], 0
.Lkw_icon_gen_α_930_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_930_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00306_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n00307_call_icon_α
n00304_kw_icon_gen_β:     mov              r11, 374;                            jmp   .Lkw_icon_gen_α_930_1
.Lkw_icon_gen_α_930_0:  .quad            .Lkw_icon_gen_α_930_0_s
.Lkw_icon_gen_α_930_0_s:
                        .string          "&features"
                        .size            n00304_kw_icon_gen_bx, .-n00304_kw_icon_gen_bx
                        .type            n00307_call_icon_bx, @function
n00307_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_call_icon_α:       mov              r11, 375
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_icon_rkfn932:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn932]
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
                        cmp              al, 104;                             je    n00304_kw_icon_gen_β
                                                                              jmp   n00304_kw_icon_gen_β
n00307_call_icon_β:       mov              r11, 375;                            jmp   n00304_kw_icon_gen_β
                        .size            n00307_call_icon_bx, .-n00307_call_icon_bx
                        .type            n00306_return_bx, @function
n00306_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_return_α:          mov              r11, 376
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Signature___γ
                        .size            n00306_return_bx, .-n00306_return_bx
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
                        lea              rcx, [rip + .LSignature___α_934_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_934_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_934_2:  add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_934_3:  add              rsp, 24
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
                        .type            n00308_disjunction_bx, @function
n00308_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_disjunction_α:     mov              r11, 377
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00309_var_ref_α
n00308_disjunction_as:    mov              r11, 377
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_972_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00310_make_list_α
.Ldisjunction_α_972_0:                                                        jmp   n00310_make_list_α
n00308_disjunction_β:     mov              r11, 377
                        mov              eax, dword ptr [rsp + 656];          jmp   n00310_make_list_α
n00308_disjunction_af:    mov              r11, 377
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00310_make_list_α
                        .size            n00308_disjunction_bx, .-n00308_disjunction_bx
                        .type            n00310_make_list_bx, @function
n00310_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_make_list_α:       mov              r11, 378
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00311_assign_α
                        .size            n00310_make_list_bx, .-n00310_make_list_bx
                        .type            n00311_assign_bx, @function
n00311_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00312_var_α
                        .size            n00311_assign_bx, .-n00311_assign_bx
                        .type            n00312_var_bx, @function
n00312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_var_α:             mov              r11, 380
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00313_kw_icon_gen_α
                        .size            n00312_var_bx, .-n00312_var_bx
                        .type            n00313_kw_icon_gen_bx, @function
n00313_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_kw_icon_gen_α:     mov              r11, 381
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_978_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_978_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00314_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00315_call_icon_α
n00313_kw_icon_gen_β:     mov              r11, 381;                            jmp   .Lkw_icon_gen_α_978_1
.Lkw_icon_gen_α_978_0:  .quad            .Lkw_icon_gen_α_978_0_s
.Lkw_icon_gen_α_978_0_s:
                        .string          "&storage"
                        .size            n00313_kw_icon_gen_bx, .-n00313_kw_icon_gen_bx
                        .type            n00315_call_icon_bx, @function
n00315_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_call_icon_α:       mov              r11, 382
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_rkfn980:    .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn980]
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
                        cmp              al, 104;                             je    n00313_kw_icon_gen_β
                                                                              jmp   n00313_kw_icon_gen_β
n00315_call_icon_β:       mov              r11, 382;                            jmp   n00313_kw_icon_gen_β
                        .size            n00315_call_icon_bx, .-n00315_call_icon_bx
                        .type            n00314_lit_string_bx, @function
n00314_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_981_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00316_call_icon_α
.Llit_string_α_981_0:   .quad            .Llit_string_α_981_0_s
.Llit_string_α_981_0_s: .string          "storage"
                        .size            n00314_lit_string_bx, .-n00314_lit_string_bx
                        .type            n00316_call_icon_bx, @function
n00316_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_call_icon_α:       mov              r11, 384
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_rkfn983:    .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn983]
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
                        cmp              al, 104;                             je    n00317_lit_integer_α
                                                                              jmp   n00317_lit_integer_α
n00316_call_icon_β:       mov              r11, 384;                            jmp   n00317_lit_integer_α
                        .size            n00316_call_icon_bx, .-n00316_call_icon_bx
                        .type            n00317_lit_integer_bx, @function
n00317_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_lit_integer_α:     mov              r11, 385
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_984_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00318_var_α
.Llit_integer_α_984_0:  .quad            1
                        .size            n00317_lit_integer_bx, .-n00317_lit_integer_bx
                        .type            n00318_var_bx, @function
n00318_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_var_α:             mov              r11, 386
                        mov              rax, qword ptr [r9 + 176]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00319_unop_α
                        .size            n00318_var_bx, .-n00318_var_bx
                        .type            n00319_unop_bx, @function
n00319_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_unop_α:            mov              r11, 387
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00320_to_α
                        .size            n00319_unop_bx, .-n00319_unop_bx
                        .type            n00320_to_bx, @function
n00320_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_to_α:              mov              r11, 388
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
.Lto_α_988_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00321_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00322_assign_α
n00320_to_β:              mov              r11, 388
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_988_0
                        .size            n00320_to_bx, .-n00320_to_bx
                        .type            n00322_assign_bx, @function
n00322_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_assign_α:          mov              r11, 389
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00323_bound_α
                        .size            n00322_assign_bx, .-n00322_assign_bx
                        .type            n00323_bound_bx, @function
n00323_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_bound_α:           mov              r11, 390
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00324_var_ref_α
                        .size            n00323_bound_bx, .-n00323_bound_bx
                        .type            n00324_var_ref_bx, @function
n00324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_var_ref_α:         mov              r11, 391
                        mov              rax, 4294967336
                        mov              rdx, 1879052464                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00325_var_α
                        .size            n00324_var_ref_bx, .-n00324_var_ref_bx
                        .type            n00325_var_bx, @function
n00325_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_var_α:             mov              r11, 392
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00326_subscript_α
                        .size            n00325_var_bx, .-n00325_var_bx
                        .type            n00326_subscript_bx, @function
n00326_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_subscript_α:       mov              r11, 393
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
                        cmp              al, 104;                             je    n00327_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00328_deref_α
                        .size            n00326_subscript_bx, .-n00326_subscript_bx
                        .type            n00328_deref_bx, @function
n00328_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_deref_α:           mov              r11, 394
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
                        cmp              al, 104;                             je    n00327_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00329_var_ref_α
                        .size            n00328_deref_bx, .-n00328_deref_bx
                        .type            n00329_var_ref_bx, @function
n00329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00330_var_α
                        .size            n00329_var_ref_bx, .-n00329_var_ref_bx
                        .type            n00330_var_bx, @function
n00330_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_var_α:             mov              r11, 396
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00331_subscript_α
                        .size            n00330_var_bx, .-n00330_var_bx
                        .type            n00331_subscript_bx, @function
n00331_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_subscript_α:       mov              r11, 397
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
                        cmp              al, 104;                             je    n00327_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00332_deref_α
                        .size            n00331_subscript_bx, .-n00331_subscript_bx
                        .type            n00332_deref_bx, @function
n00332_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_deref_α:           mov              r11, 398
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
                        cmp              al, 104;                             je    n00327_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00333_lit_integer_α
                        .size            n00332_deref_bx, .-n00332_deref_bx
                        .type            n00333_lit_integer_bx, @function
n00333_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_lit_integer_α:     mov              r11, 399
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1004_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00334_call_icon_α
.Llit_integer_α_1004_0: .quad            8
                        .size            n00333_lit_integer_bx, .-n00333_lit_integer_bx
                        .type            n00334_call_icon_bx, @function
n00334_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_call_icon_α:       mov              r11, 400
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_rkfn1006:   .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn1006]
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
                        cmp              al, 104;                             je    n00327_unmark_α
                                                                              jmp   n00335_call_icon_α
n00334_call_icon_β:       mov              r11, 400;                            jmp   n00327_unmark_α
                        .size            n00334_call_icon_bx, .-n00334_call_icon_bx
                        .type            n00335_call_icon_bx, @function
n00335_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_call_icon_α:       mov              r11, 401
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_rkfn1008:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn1008]
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
                        cmp              al, 104;                             je    n00327_unmark_α
                                                                              jmp   n00327_unmark_α
n00335_call_icon_β:       mov              r11, 401;                            jmp   n00327_unmark_α
                        .size            n00335_call_icon_bx, .-n00335_call_icon_bx
                        .type            n00327_unmark_bx, @function
n00327_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_unmark_α:          mov              r11, 402
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00320_to_β
                        .size            n00327_unmark_bx, .-n00327_unmark_bx
                        .type            n00321_return_bx, @function
n00321_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_return_α:          mov              r11, 403
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Storage___γ
                        .size            n00321_return_bx, .-n00321_return_bx
                        .type            n00309_var_ref_bx, @function
n00309_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00336_nulltest_var_α
n00309_var_ref_β:         mov              r11, 404;                            jmp   n00308_disjunction_af
                        .size            n00309_var_ref_bx, .-n00309_var_ref_bx
                        .type            n00336_nulltest_var_bx, @function
n00336_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_nulltest_var_α:    mov              r11, 405
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    n00308_disjunction_af
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
                        cmp              al, 104;                             je    n00308_disjunction_af
                        cmp              eax, 0;                              jne   n00308_disjunction_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00337_lit_integer_α
                        .size            n00336_nulltest_var_bx, .-n00336_nulltest_var_bx
                        .type            n00337_lit_integer_bx, @function
n00337_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_lit_integer_α:     mov              r11, 406
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1015_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00338_assign_var_α
.Llit_integer_α_1015_0: .quad            1
                        .size            n00337_lit_integer_bx, .-n00337_lit_integer_bx
                        .type            n00338_assign_var_bx, @function
n00338_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_assign_var_α:      mov              r11, 407
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
                        cmp              al, 104;                             je    n00308_disjunction_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00339_lit_string_α
                        .size            n00338_assign_var_bx, .-n00338_assign_var_bx
                        .type            n00339_lit_string_bx, @function
n00339_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_string_α:      mov              r11, 408
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1017_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00340_lit_string_α
.Llit_string_α_1017_0:  .quad            .Llit_string_α_1017_0_s
.Llit_string_α_1017_0_s:
                        .string          "static"
                        .size            n00339_lit_string_bx, .-n00339_lit_string_bx
                        .type            n00340_lit_string_bx, @function
n00340_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1018_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00341_lit_string_α
.Llit_string_α_1018_0:  .quad            .Llit_string_α_1018_0_s
.Llit_string_α_1018_0_s:
                        .string          "string"
                        .size            n00340_lit_string_bx, .-n00340_lit_string_bx
                        .type            n00341_lit_string_bx, @function
n00341_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_lit_string_α:      mov              r11, 410
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1019_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00342_make_list_α
.Llit_string_α_1019_0:  .quad            .Llit_string_α_1019_0_s
.Llit_string_α_1019_0_s:
                        .string          "block"
                        .size            n00341_lit_string_bx, .-n00341_lit_string_bx
                        .type            n00342_make_list_bx, @function
n00342_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_make_list_α:       mov              r11, 411
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00343_assign_α
                        .size            n00342_make_list_bx, .-n00342_make_list_bx
                        .type            n00343_assign_bx, @function
n00343_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_assign_α:          mov              r11, 412
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 176], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00308_disjunction_as
n00343_assign_β:          mov              r11, 412;                            jmp   n00310_make_list_α
                        .size            n00343_assign_bx, .-n00343_assign_bx
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
                        lea              rcx, [rip + .LStorage___α_1023_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_1023_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_1023_2:   add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_1023_3:   add              rsp, 24
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
                        .type            n00344_disjunction_bx, @function
n00344_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_disjunction_α:    mov              r11, 413
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00345_var_ref_α
n00344_disjunction_as:   mov              r11, 413
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1038_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00346_kw_icon_α
.Ldisjunction_α_1038_0:                                                       jmp   n00346_kw_icon_α
n00344_disjunction_β:    mov              r11, 413
                        mov              eax, dword ptr [rsp + 128];          jmp   n00346_kw_icon_α
n00344_disjunction_af:   mov              r11, 413
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00346_kw_icon_α
                        .size            n00344_disjunction_bx, .-n00344_disjunction_bx
                        .type            n00346_kw_icon_bx, @function
n00346_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_kw_icon_α:        mov              r11, 414
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1039_0]
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
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00347_var_α
n00346_kw_icon_β:        mov              r11, 414;                            jmp   Time___ω
.Lkw_icon_α_1039_0:     .quad            .Lkw_icon_α_1039_0_s
.Lkw_icon_α_1039_0_s:   .string          "&time"
                        .size            n00346_kw_icon_bx, .-n00346_kw_icon_bx
                        .type            n00347_var_bx, @function
n00347_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_var_α:            mov              r11, 415
                        mov              rax, qword ptr [r9 + 208]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00348_coerce_numeric_α
                        .size            n00347_var_bx, .-n00347_var_bx
                        .type            n00348_coerce_numeric_bx, @function
n00348_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_coerce_numeric_α: mov              r11, 416
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1042_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1042_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1042_0
.Lcoerce_numeric_α_1042_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00349_coerce_numeric_α
.Lcoerce_numeric_α_1042_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00349_coerce_numeric_α
                        .size            n00348_coerce_numeric_bx, .-n00348_coerce_numeric_bx
                        .type            n00349_coerce_numeric_bx, @function
n00349_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_coerce_numeric_α: mov              r11, 417
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1044_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1044_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1044_0
.Lcoerce_numeric_α_1044_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00350_binop_α
.Lcoerce_numeric_α_1044_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00350_binop_α
                        .size            n00349_coerce_numeric_bx, .-n00349_coerce_numeric_bx
                        .type            n00350_binop_bx, @function
n00350_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_binop_α:          mov              r11, 418
                        mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1045_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lbinop_α_1045_7
.Lbinop_α_1045_2:       and              edx, 1;                              jz    .Lbinop_α_1045_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1045_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1045_4
.Lbinop_α_1045_3:       movq             xmm0, rsi
.Lbinop_α_1045_4:       cmp              cl, 5;                               je    .Lbinop_α_1045_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1045_6
.Lbinop_α_1045_5:       movq             xmm1, rdi
.Lbinop_α_1045_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lbinop_α_1045_7:                                                             jmp   n00351_return_α
.Lbinop_α_1045_0:       mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 24], rdx;           jmp   n00351_return_α
                        .size            n00350_binop_bx, .-n00350_binop_bx
                        .type            n00351_return_bx, @function
n00351_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_return_α:         mov              r11, 419
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
                        .size            n00351_return_bx, .-n00351_return_bx
                        .type            n00345_var_ref_bx, @function
n00345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_ref_α:        mov              r11, 420
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00352_nulltest_var_α
n00345_var_ref_β:        mov              r11, 420;                            jmp   n00344_disjunction_af
                        .size            n00345_var_ref_bx, .-n00345_var_ref_bx
                        .type            n00352_nulltest_var_bx, @function
n00352_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_nulltest_var_α:   mov              r11, 421
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    n00344_disjunction_af
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
                        cmp              al, 104;                             je    n00344_disjunction_af
                        cmp              eax, 0;                              jne   n00344_disjunction_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00353_lit_integer_α
                        .size            n00352_nulltest_var_bx, .-n00352_nulltest_var_bx
                        .type            n00353_lit_integer_bx, @function
n00353_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_lit_integer_α:    mov              r11, 422
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1050_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00354_assign_var_α
.Llit_integer_α_1050_0: .quad            1
                        .size            n00353_lit_integer_bx, .-n00353_lit_integer_bx
                        .type            n00354_assign_var_bx, @function
n00354_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_assign_var_α:     mov              r11, 423
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
                        cmp              al, 104;                             je    n00344_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00355_kw_icon_α
                        .size            n00354_assign_var_bx, .-n00354_assign_var_bx
                        .type            n00355_kw_icon_bx, @function
n00355_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_kw_icon_α:        mov              r11, 424
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1052_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00346_kw_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00356_assign_α
n00355_kw_icon_β:        mov              r11, 424;                            jmp   n00346_kw_icon_α
.Lkw_icon_α_1052_0:     .quad            .Lkw_icon_α_1052_0_s
.Lkw_icon_α_1052_0_s:   .string          "&time"
                        .size            n00355_kw_icon_bx, .-n00355_kw_icon_bx
                        .type            n00356_assign_bx, @function
n00356_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_assign_α:         mov              r11, 425
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 208], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00344_disjunction_as
n00356_assign_β:         mov              r11, 425;                            jmp   n00346_kw_icon_α
                        .size            n00356_assign_bx, .-n00356_assign_bx
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
                        lea              rcx, [rip + .LTime___α_1054_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1054_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1054_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1054_3:      add              rsp, 24
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
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
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
.Lgvan0:                .string          "uses"
.Lgvan1:                .string          "colmax"
.Lgvan2:                .string          "namewidth"
.Lgvan3:                .string          "lineno"
.Lgvan4:                .string          "Save__"
.Lgvan5:                .string          "Saves__"
.Lgvan6:                .string          "Name__"
.Lgvan7:                .string          "Collections____STATIC__labels"
.Lgvan8:                .string          "Collections____INITFLAG__0"
.Lgvan9:                .string          "Regions____STATIC__labels"
.Lgvan10:               .string          "Regions____INITFLAG__0"
.Lgvan11:               .string          "Storage____STATIC__labels"
.Lgvan12:               .string          "Storage____INITFLAG__0"
.Lgvan13:               .string          "Time____STATIC__lasttime"
.Lgvan14:               .string          "Time____INITFLAG__0"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2368
                        mov              rdi, rsp
                        add              rdi, 1168
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n00357_lit_string_bx, @function
n00357_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_lit_string_α:     mov              r11, 426
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_1100_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00358_call_proc_staged_α
.Llit_string_α_1100_0:  .quad            .Llit_string_α_1100_0_s
.Llit_string_α_1100_0_s:
                        .string          "concord"
                        .size            n00357_lit_string_bx, .-n00357_lit_string_bx
                        .type            n00358_call_proc_staged_bx, @function
n00358_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_call_proc_staged_α:
                        mov              r11, 427
                        lea              rsi, [rsp + 1136]
                        call             Init___dcα;                          jmp   .Lcall_proc_staged_α_1102_2
.Lcall_proc_staged_α_1102_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1102_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
.Lcall_proc_staged_α_1102_29:
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n00359_var_α
                                                                              jmp   n00359_var_α
n00358_call_proc_staged_β:
                        mov              r11, 427;                            jmp   n00359_var_α
.Lcall_proc_staged_β_1102_0:
                        .quad            .Lcall_proc_staged_β_1102_0_s
.Lcall_proc_staged_β_1102_0_s:
                        .string          "Init__"
                        .size            n00358_call_proc_staged_bx, .-n00358_call_proc_staged_bx
                        .type            n00359_var_bx, @function
n00359_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_var_α:            mov              r11, 428
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00360_lit_string_α
                        .size            n00359_var_bx, .-n00359_var_bx
                        .type            n00360_lit_string_bx, @function
n00360_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_lit_string_α:     mov              r11, 429
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1105_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00361_call_proc_staged_α
.Llit_string_α_1105_0:  .quad            .Llit_string_α_1105_0_s
.Llit_string_α_1105_0_s:
                        .string          "l+w+"
                        .size            n00360_lit_string_bx, .-n00360_lit_string_bx
                        .type            n00361_call_proc_staged_bx, @function
n00361_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_call_proc_staged_α:
                        mov              r11, 430
                        lea              rsi, [rsp + 1040]
                        lea              rdx, [rsp + 1056]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1107_2
.Lcall_proc_staged_α_1107_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1107_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
.Lcall_proc_staged_α_1107_29:
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n00362_disjunction_α
                                                                              jmp   n00363_assign_α
n00361_call_proc_staged_β:
                        mov              r11, 430;                            jmp   n00362_disjunction_α
.Lcall_proc_staged_β_1107_0:
                        .quad            .Lcall_proc_staged_β_1107_0_s
.Lcall_proc_staged_β_1107_0_s:
                        .string          "options"
                        .size            n00361_call_proc_staged_bx, .-n00361_call_proc_staged_bx
                        .type            n00363_assign_bx, @function
n00363_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_assign_α:         mov              r11, 431
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n00362_disjunction_α
                        .size            n00363_assign_bx, .-n00363_assign_bx
                        .type            n00362_disjunction_bx, @function
n00362_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_disjunction_α:    mov              r11, 432
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              dword ptr [rsp + 848], 0;            jmp   n00364_var_ref_α
n00362_disjunction_as:   mov              r11, 432
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1110_0
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00365_assign_α
.Ldisjunction_α_1110_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1110_1
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00365_assign_α
.Ldisjunction_α_1110_1:                                                       jmp   n00365_assign_α
n00362_disjunction_β:    mov              r11, 432
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 0;                              je    n00362_disjunction_af
                                                                              jmp   n00362_disjunction_af
n00362_disjunction_af:   mov              r11, 432
                        add              dword ptr [rsp + 848], 1
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 1;                              je    n00366_lit_integer_α
                                                                              jmp   n00367_disjunction_α
                        .size            n00362_disjunction_bx, .-n00362_disjunction_bx
                        .type            n00365_assign_bx, @function
n00365_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_assign_α:         mov              r11, 433
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [r9 + 16], rax             # colmax
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00367_disjunction_α
                        .size            n00365_assign_bx, .-n00365_assign_bx
                        .type            n00367_disjunction_bx, @function
n00367_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_disjunction_α:    mov              r11, 434
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n00368_var_ref_α
n00367_disjunction_as:   mov              r11, 434
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1113_0
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00369_assign_α
.Ldisjunction_α_1113_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1113_1
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00369_assign_α
.Ldisjunction_α_1113_1:                                                       jmp   n00369_assign_α
n00367_disjunction_β:    mov              r11, 434
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              je    n00367_disjunction_af
                                                                              jmp   n00367_disjunction_af
n00367_disjunction_af:   mov              r11, 434
                        add              dword ptr [rsp + 704], 1
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 1;                              je    n00370_lit_integer_α
                                                                              jmp   n00371_lit_string_α
                        .size            n00367_disjunction_bx, .-n00367_disjunction_bx
                        .type            n00369_assign_bx, @function
n00369_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_assign_α:         mov              r11, 435
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 32], rax             # namewidth
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00371_lit_string_α
                        .size            n00369_assign_bx, .-n00369_assign_bx
                        .type            n00371_lit_string_bx, @function
n00371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_lit_string_α:     mov              r11, 436
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1115_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00372_call_icon_α
.Llit_string_α_1115_0:  .quad            .Llit_string_α_1115_0_s
.Llit_string_α_1115_0_s:
                        .string          ""
                        .size            n00371_lit_string_bx, .-n00371_lit_string_bx
                        .type            n00372_call_icon_bx, @function
n00372_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_call_icon_α:      mov              r11, 437
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lcall_icon_rkfn1117:   .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn1117]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n00373_lit_integer_α
                                                                              jmp   n00374_assign_α
n00372_call_icon_β:      mov              r11, 437;                            jmp   n00373_lit_integer_α
                        .size            n00372_call_icon_bx, .-n00372_call_icon_bx
                        .type            n00374_assign_bx, @function
n00374_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00374_assign_α:         mov              r11, 438
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [r9 + 0], rax              # uses
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00373_lit_integer_α
                        .size            n00374_assign_bx, .-n00374_assign_bx
                        .type            n00373_lit_integer_bx, @function
n00373_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_lit_integer_α:    mov              r11, 439
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1119_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00375_assign_α
.Llit_integer_α_1119_0: .quad            0
                        .size            n00373_lit_integer_bx, .-n00373_lit_integer_bx
                        .type            n00375_assign_bx, @function
n00375_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00375_assign_α:         mov              r11, 440
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00376_proc_gen_α
                        .size            n00375_assign_bx, .-n00375_assign_bx
                        .type            n00376_proc_gen_bx, @function
n00376_proc_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00376_proc_gen_α:       mov              r11, 441
                        mov              qword ptr [rsp + 544], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lproc_gen_α_1122_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lproc_gen_α_1122_1
                        lea              rcx, [rsp + 1360]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1122_4]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1122_3]
                        push             rcx
                        lea              rdx, [rip + .Lproc_gen_α_1122_4];    jmp   rax
.Lproc_gen_α_1122_3:    cmp              al, 104;                             je    .Lproc_gen_α_1122_8
                        mov              rsp, qword ptr [rdx + 24]
                        mov              rdi, qword ptr [rdx + -976]
                        mov              rsi, qword ptr [rdx + -968]
                        mov              qword ptr [rsp + 552], rdx;          jmp   .Lproc_gen_α_1122_9
.Lproc_gen_α_1122_8:    mov              edi, 104
                        mov              esi, 0
                        mov              qword ptr [rsp + 552], rsp
.Lproc_gen_α_1122_9:    mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lproc_gen_α_1122_5
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1122_2
.Lproc_gen_α_1122_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lproc_gen_α_1122_2
.Lproc_gen_α_1122_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lproc_gen_α_1122_6
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1122_2
.Lproc_gen_α_1122_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lproc_gen_α_1122_2
.Lproc_gen_α_1122_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lproc_gen_α_1122_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lproc_gen_α_1122_29
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
.Lproc_gen_α_1122_29:   mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n00377_var_α
                                                                              jmp   n00378_var_α
n00376_proc_gen_β:       mov              r11, 441
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rax, qword ptr [rsp + 552]
                        mov              rsp, qword ptr [rax + 24]
                        sub              rsp, 40;                             jmp   qword ptr [rax + 32]
.Lproc_gen_α_1122_7:    add              rsp, 8
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n00377_var_α
                                                                              jmp   n00378_var_α
.Lproc_gen_β_1122_0:    .quad            .Lproc_gen_β_1122_0_s
.Lproc_gen_β_1122_0_s:  .string          "item"
                        .size            n00376_proc_gen_bx, .-n00376_proc_gen_bx
                        .type            n00378_var_bx, @function
n00378_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00378_var_α:            mov              r11, 442
                        mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 576], rax           # result
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00379_call_proc_staged_α
                        .size            n00378_var_bx, .-n00378_var_bx
                        .type            n00379_call_proc_staged_bx, @function
n00379_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00379_call_proc_staged_α:
                        mov              r11, 443
                        lea              rsi, [rsp + 528]
                        lea              rdx, [rsp + 576]
                        call             tabulate_dcα;                        jmp   .Lcall_proc_staged_α_1125_2
.Lcall_proc_staged_α_1125_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1125_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
.Lcall_proc_staged_α_1125_29:
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n00376_proc_gen_β
                                                                              jmp   n00376_proc_gen_β
n00379_call_proc_staged_β:
                        mov              r11, 443;                            jmp   n00376_proc_gen_β
.Lcall_proc_staged_β_1125_0:
                        .quad            .Lcall_proc_staged_β_1125_0_s
.Lcall_proc_staged_β_1125_0_s:
                        .string          "tabulate"
                        .size            n00379_call_proc_staged_bx, .-n00379_call_proc_staged_bx
                        .type            n00377_var_bx, @function
n00377_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00377_var_α:            mov              r11, 444
                        mov              rax, qword ptr [r9 + 0]              # uses
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 432], rax           # result
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00380_lit_integer_α
                        .size            n00377_var_bx, .-n00377_var_bx
                        .type            n00380_lit_integer_bx, @function
n00380_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00380_lit_integer_α:    mov              r11, 445
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1127_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00381_call_icon_α
.Llit_integer_α_1127_0: .quad            3
                        .size            n00380_lit_integer_bx, .-n00380_lit_integer_bx
                        .type            n00381_call_icon_bx, @function
n00381_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00381_call_icon_α:      mov              r11, 446
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lcall_icon_rkfn1129:   .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn1129]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n00382_var_α
                                                                              jmp   n00383_assign_α
n00381_call_icon_β:      mov              r11, 446;                            jmp   n00382_var_α
                        .size            n00381_call_icon_bx, .-n00381_call_icon_bx
                        .type            n00383_assign_bx, @function
n00383_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00383_assign_α:         mov              r11, 447
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n00382_var_α
                        .size            n00383_assign_bx, .-n00383_assign_bx
                        .type            n00382_var_bx, @function
n00382_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00382_var_α:            mov              r11, 448
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00384_call_icon_α
                        .size            n00382_var_bx, .-n00382_var_bx
                        .type            n00384_call_icon_bx, @function
n00384_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00384_call_icon_α:      mov              r11, 449
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lcall_icon_rkfn1134:   .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn1134]
                        lea              rsi, [rsp + 96]
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
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00385_call_proc_staged_α
                                                                              jmp   n00386_assign_α
n00384_call_icon_β:      mov              r11, 449;                            jmp   n00385_call_proc_staged_α
                        .size            n00384_call_icon_bx, .-n00384_call_icon_bx
                        .type            n00386_assign_bx, @function
n00386_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00386_assign_α:         mov              r11, 450
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n00387_var_α
                        .size            n00386_assign_bx, .-n00386_assign_bx
                        .type            n00387_var_bx, @function
n00387_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00387_var_α:            mov              r11, 451
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00388_var_α
                        .size            n00387_var_bx, .-n00387_var_bx
                        .type            n00388_var_bx, @function
n00388_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00388_var_α:            mov              r11, 452
                        mov              rax, qword ptr [r9 + 32]             # namewidth
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 288], rax           # result
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00389_call_icon_α
                        .size            n00388_var_bx, .-n00388_var_bx
                        .type            n00389_call_icon_bx, @function
n00389_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00389_call_icon_α:      mov              r11, 453
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lcall_icon_rkfn1140:   .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn1140]
                        lea              rsi, [rsp + 224]
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
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n00382_var_α
                                                                              jmp   n00390_var_α
n00389_call_icon_β:      mov              r11, 453;                            jmp   n00382_var_α
                        .size            n00389_call_icon_bx, .-n00389_call_icon_bx
                        .type            n00390_var_bx, @function
n00390_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00390_var_α:            mov              r11, 454
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00391_call_icon_α
                        .size            n00390_var_bx, .-n00390_var_bx
                        .type            n00391_call_icon_bx, @function
n00391_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00391_call_icon_α:      mov              r11, 455
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lcall_icon_rkfn1144:   .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn1144]
                        lea              rsi, [rsp + 320]
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
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n00382_var_α
                                                                              jmp   n00392_binop_α
n00391_call_icon_β:      mov              r11, 455;                            jmp   n00382_var_α
                        .size            n00391_call_icon_bx, .-n00391_call_icon_bx
                        .type            n00392_binop_bx, @function
n00392_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00392_binop_α:          mov              r11, 456
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00393_call_proc_staged_α
                        .size            n00392_binop_bx, .-n00392_binop_bx
                        .type            n00393_call_proc_staged_bx, @function
n00393_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00393_call_proc_staged_α:
                        mov              r11, 457
                        lea              rsi, [rsp + 192]
                        call             format_dcα;                          jmp   .Lcall_proc_staged_α_1147_2
.Lcall_proc_staged_α_1147_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1147_29
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
.Lcall_proc_staged_α_1147_29:
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n00382_var_α
                                                                              jmp   n00382_var_α
n00393_call_proc_staged_β:
                        mov              r11, 457;                            jmp   n00382_var_α
.Lcall_proc_staged_β_1147_0:
                        .quad            .Lcall_proc_staged_β_1147_0_s
.Lcall_proc_staged_β_1147_0_s:
                        .string          "format"
                        .size            n00393_call_proc_staged_bx, .-n00393_call_proc_staged_bx
                        .type            n00385_call_proc_staged_bx, @function
n00385_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00385_call_proc_staged_α:
                        mov              r11, 458
                        call             Term___dcα;                          jmp   .Lcall_proc_staged_α_1149_2
.Lcall_proc_staged_α_1149_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1149_29
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
.Lcall_proc_staged_α_1149_29:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00385_call_proc_staged_β:
                        mov              r11, 458;                            jmp   main_ω
.Lcall_proc_staged_β_1149_0:
                        .quad            .Lcall_proc_staged_β_1149_0_s
.Lcall_proc_staged_β_1149_0_s:
                        .string          "Term__"
                        .size            n00385_call_proc_staged_bx, .-n00385_call_proc_staged_bx
                        .type            n00370_lit_integer_bx, @function
n00370_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_lit_integer_α:    mov              r11, 459
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1150_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00367_disjunction_as
n00370_lit_integer_β:    mov              r11, 459;                            jmp   n00367_disjunction_af
.Llit_integer_α_1150_0: .quad            15
                        .size            n00370_lit_integer_bx, .-n00370_lit_integer_bx
                        .type            n00368_var_ref_bx, @function
n00368_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_var_ref_α:        mov              r11, 460
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n00394_lit_string_α
n00368_var_ref_β:        mov              r11, 460;                            jmp   n00367_disjunction_af
                        .size            n00368_var_ref_bx, .-n00368_var_ref_bx
                        .type            n00394_lit_string_bx, @function
n00394_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00394_lit_string_α:     mov              r11, 461
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1153_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00395_subscript_α
.Llit_string_α_1153_0:  .quad            .Llit_string_α_1153_0_s
.Llit_string_α_1153_0_s:
                        .string          "w"
                        .size            n00394_lit_string_bx, .-n00394_lit_string_bx
                        .type            n00395_subscript_bx, @function
n00395_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00395_subscript_α:      mov              r11, 462
                        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00367_disjunction_af
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00396_deref_α
                        .size            n00395_subscript_bx, .-n00395_subscript_bx
                        .type            n00396_deref_bx, @function
n00396_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00396_deref_α:          mov              r11, 463
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
                        cmp              al, 104;                             je    n00367_disjunction_af
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n00397_unop_test_α
                        .size            n00396_deref_bx, .-n00396_deref_bx
                        .type            n00397_unop_test_bx, @function
n00397_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00397_unop_test_α:      mov              r11, 464
                        mov              eax, dword ptr [rsp + 800]
                        cmp              al, 104;                             je    n00367_disjunction_af
                        cmp              eax, 0;                              je    n00367_disjunction_af
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00367_disjunction_as
n00397_unop_test_β:      mov              r11, 464;                            jmp   n00367_disjunction_af
                        .size            n00397_unop_test_bx, .-n00397_unop_test_bx
                        .type            n00366_lit_integer_bx, @function
n00366_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_lit_integer_α:    mov              r11, 465
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1157_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00362_disjunction_as
n00366_lit_integer_β:    mov              r11, 465;                            jmp   n00362_disjunction_af
.Llit_integer_α_1157_0: .quad            72
                        .size            n00366_lit_integer_bx, .-n00366_lit_integer_bx
                        .type            n00364_var_ref_bx, @function
n00364_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_var_ref_α:        mov              r11, 466
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00398_lit_string_α
n00364_var_ref_β:        mov              r11, 466;                            jmp   n00362_disjunction_af
                        .size            n00364_var_ref_bx, .-n00364_var_ref_bx
                        .type            n00398_lit_string_bx, @function
n00398_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00398_lit_string_α:     mov              r11, 467
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1160_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00399_subscript_α
.Llit_string_α_1160_0:  .quad            .Llit_string_α_1160_0_s
.Llit_string_α_1160_0_s:
                        .string          "l"
                        .size            n00398_lit_string_bx, .-n00398_lit_string_bx
                        .type            n00399_subscript_bx, @function
n00399_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00399_subscript_α:      mov              r11, 468
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
                        cmp              al, 104;                             je    n00362_disjunction_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00400_deref_α
                        .size            n00399_subscript_bx, .-n00399_subscript_bx
                        .type            n00400_deref_bx, @function
n00400_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00400_deref_α:          mov              r11, 469
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00362_disjunction_af
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n00401_unop_test_α
                        .size            n00400_deref_bx, .-n00400_deref_bx
                        .type            n00401_unop_test_bx, @function
n00401_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00401_unop_test_α:      mov              r11, 470
                        mov              eax, dword ptr [rsp + 944]
                        cmp              al, 104;                             je    n00362_disjunction_af
                        cmp              eax, 0;                              je    n00362_disjunction_af
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00362_disjunction_as
n00401_unop_test_β:      mov              r11, 470;                            jmp   n00362_disjunction_af
                        .size            n00401_unop_test_bx, .-n00401_unop_test_bx
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
.Lstartup_pname0:       .string          "tabulate"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tabulate
                        .quad            tabulate_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1504
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "format"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__format
                        .quad            format_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            912
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "item"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__item
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            880
                        .long            24
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
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
