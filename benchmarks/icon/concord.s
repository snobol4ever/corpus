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
.Lcall_icon_α_rkfn72:   .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn72]
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
                        mov              qword ptr [rsp + 1112], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_86_0]
                        mov              rsi, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n12_scan_upto_α
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
                        mov              qword ptr [rsp + 1272], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_93_0]
                        mov              rsi, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n17_scan_many_α
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
.Ldisjunction_γ_25_as:  mov              r11, 26
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
.Ldisjunction_γ_25_af:  mov              r11, 26
.Ldisjunction_ω_25_af:  mov              r11, 26
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
.Ldisjunction_γ_28_as:  mov              r11, 29
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
.Ldisjunction_γ_28_af:  mov              r11, 29
.Ldisjunction_ω_28_af:  mov              r11, 29
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
                        mov              qword ptr [rsp + 456], rax;          jmp   .Ldisjunction_γ_25_as
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
                        mov              qword ptr [rsp + 968], rdx;          jmp   .Ldisjunction_γ_28_as
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
n46_lit_string_β:       mov              r11, 47;                             jmp   .Ldisjunction_ω_28_af
.Llit_string_α_135_0:   .quad            .Llit_string_α_135_0_s
.Llit_string_α_135_0_s: .string          "("
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_scan_match_bx, @function
n47_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_scan_match_α:       mov              r11, 48
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_28_af
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_28_af
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
.Lscan_tab_α_139_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_28_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_28_af
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
                        mov              r14, qword ptr [rsp + 880];          jmp   .Ldisjunction_ω_28_af
                        .size            n48_scan_tab_bx, .-n48_scan_tab_bx
                        .type            n49_lit_charset_bx, @function
n49_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_charset_α:      mov              r11, 50
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_140_0]
                        mov              qword ptr [rsp + 840], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_140_0]
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
                        pop              rax;                                 jmp   n50_scan_upto_α
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
                        mov              qword ptr [rsp + 760], rdx;          jmp   .Ldisjunction_γ_28_as
n52_assign_β:           mov              r11, 53;                             jmp   n29_var_ref_α
                        .size            n52_assign_bx, .-n52_assign_bx
                        .type            n53_disjunction_bx, @function
n53_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:      mov              r11, 54
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n67_var_α
.Ldisjunction_γ_53_as:  mov              r11, 54
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
                        cmp              eax, 0;                              je    .Ldisjunction_ω_53_af
                                                                              jmp   .Ldisjunction_ω_53_af
.Ldisjunction_γ_53_af:  mov              r11, 54
.Ldisjunction_ω_53_af:  mov              r11, 54
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n64_var_α
                                                                              jmp   .Ldisjunction_ω_25_af
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
                        mov              qword ptr [rsp + 232], rdx;          jmp   .Ldisjunction_γ_25_as
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
n64_var_β:              mov              r11, 65;                             jmp   .Ldisjunction_ω_53_af
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_53_af
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_53_as
n66_binop_test_β:       mov              r11, 67;                             jmp   .Ldisjunction_ω_53_af
                        .size            n66_binop_test_bx, .-n66_binop_test_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              r11, 68
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 392], rax;          jmp   n68_unop_test_α
n67_var_β:              mov              r11, 68;                             jmp   .Ldisjunction_ω_53_af
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_unop_test_bx, @function
n68_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_unop_test_α:        mov              r11, 69
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              al, 104;                             je    .Ldisjunction_ω_53_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_53_af
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0;            jmp   .Ldisjunction_γ_53_as
n68_unop_test_β:        mov              r11, 69;                             jmp   .Ldisjunction_ω_53_af
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
                        .type            n171_var_bx, @function
n171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             mov              r11, 70
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n172_unop_α
                        .size            n171_var_bx, .-n171_var_bx
                        .type            n172_unop_bx, @function
n172_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_unop_α:            mov              r11, 71
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
                        mov              qword ptr [rsp + 168], rdx;          jmp   n173_var_α
                        .size            n172_unop_bx, .-n172_unop_bx
                        .type            n173_var_bx, @function
n173_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             mov              r11, 72
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 224], rax           # result
                        mov              qword ptr [rsp + 232], rdx;          jmp   n174_lit_integer_α
                        .size            n173_var_bx, .-n173_var_bx
                        .type            n174_lit_integer_bx, @function
n174_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              r11, 73
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n175_coerce_numeric_α
.Llit_integer_α_220_0:  .quad            2
                        .size            n174_lit_integer_bx, .-n174_lit_integer_bx
                        .type            n175_coerce_numeric_bx, @function
n175_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_coerce_numeric_α:  mov              r11, 74
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_222_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_222_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_222_0
.Lcoerce_numeric_α_222_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n176_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_binop_α
                        .size            n175_coerce_numeric_bx, .-n175_coerce_numeric_bx
                        .type            n176_binop_bx, @function
n176_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_binop_α:           mov              r11, 75
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
.Lbinop_α_223_7:                                                              jmp   n177_binop_test_α
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
                        cmp              al, 104;                             je    n211_var_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n177_binop_test_α
                        .size            n176_binop_bx, .-n176_binop_bx
                        .type            n177_binop_test_bx, @function
n177_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_binop_test_α:      mov              r11, 76
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
                        cmp              rax, rcx;                            jle   n211_var_α
                        mov              rcx, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rcx
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rcx;          jmp   n178_var_α
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
                        cmp              eax, 1;                              je    n211_var_α
                                                                              jmp   n178_var_α
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
                        test             eax, eax;                            jz    n211_var_α
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax;          jmp   n178_var_α
                        .size            n177_binop_test_bx, .-n177_binop_test_bx
                        .type            n178_var_bx, @function
n178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             mov              r11, 77
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 864], rax           # result
                        mov              qword ptr [rsp + 872], rdx;          jmp   n179_lit_integer_α
                        .size            n178_var_bx, .-n178_var_bx
                        .type            n179_lit_integer_bx, @function
n179_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     mov              r11, 78
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_226_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n180_coerce_numeric_α
.Llit_integer_α_226_0:  .quad            2
                        .size            n179_lit_integer_bx, .-n179_lit_integer_bx
                        .type            n180_coerce_numeric_bx, @function
n180_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_coerce_numeric_α:  mov              r11, 79
                        mov              eax, dword ptr [rsp + 864]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_228_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_228_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_228_0
.Lcoerce_numeric_α_228_1:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax;          jmp   n181_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_binop_α
                        .size            n180_coerce_numeric_bx, .-n180_coerce_numeric_bx
                        .type            n181_binop_bx, @function
n181_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_binop_α:           mov              r11, 80
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
.Lbinop_α_229_7:                                                              jmp   n182_assign_α
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
                        cmp              al, 104;                             je    n183_var_ref_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n182_assign_α
                        .size            n181_binop_bx, .-n181_binop_bx
                        .type            n182_assign_bx, @function
n182_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              r11, 81
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n183_var_ref_α
                        .size            n182_assign_bx, .-n182_assign_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n184_var_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_var_bx, @function
n184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             mov              r11, 83
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 728], rax;          jmp   n185_lit_integer_α
                        .size            n184_var_bx, .-n184_var_bx
                        .type            n185_lit_integer_bx, @function
n185_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     mov              r11, 84
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_235_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n186_coerce_numeric_α
.Llit_integer_α_235_0:  .quad            1
                        .size            n185_lit_integer_bx, .-n185_lit_integer_bx
                        .type            n186_coerce_numeric_bx, @function
n186_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_coerce_numeric_α:  mov              r11, 85
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_237_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_237_0
                        mov              eax, dword ptr [rsp + 736]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_237_0
.Lcoerce_numeric_α_237_1:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 712], rax;          jmp   n187_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n187_binop_α
                        .size            n186_coerce_numeric_bx, .-n186_coerce_numeric_bx
                        .type            n187_binop_bx, @function
n187_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_α:           mov              r11, 86
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
.Lbinop_α_238_7:                                                              jmp   n188_assign_α
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
                        cmp              al, 104;                             je    n183_var_ref_α
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n188_assign_α
                        .size            n187_binop_bx, .-n187_binop_bx
                        .type            n188_assign_bx, @function
n188_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              r11, 87
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n189_subscript_α
                        .size            n188_assign_bx, .-n188_assign_bx
                        .type            n189_subscript_bx, @function
n189_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_subscript_α:       mov              r11, 88
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
                        cmp              al, 104;                             je    n183_var_ref_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n190_deref_α
                        .size            n189_subscript_bx, .-n189_subscript_bx
                        .type            n190_deref_bx, @function
n190_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_deref_α:           mov              r11, 89
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
                        cmp              al, 104;                             je    n183_var_ref_α
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n191_lit_string_α
                        .size            n190_deref_bx, .-n190_deref_bx
                        .type            n191_lit_string_bx, @function
n191_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_242_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n192_binop_test_α
.Llit_string_α_242_0:   .quad            .Llit_string_α_242_0_s
.Llit_string_α_242_0_s: .string          " "
                        .size            n191_lit_string_bx, .-n191_lit_string_bx
                        .type            n192_binop_test_bx, @function
n192_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_binop_test_α:      mov              r11, 91
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
                        test             eax, eax;                            jz    n183_var_ref_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n193_var_α
                        .size            n192_binop_test_bx, .-n192_binop_test_bx
                        .type            n193_var_bx, @function
n193_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             mov              r11, 92
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 600], rax;          jmp   n194_lit_integer_α
                        .size            n193_var_bx, .-n193_var_bx
                        .type            n194_lit_integer_bx, @function
n194_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     mov              r11, 93
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n195_var_α
.Llit_integer_α_246_0:  .quad            1
                        .size            n194_lit_integer_bx, .-n194_lit_integer_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             mov              r11, 94
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 632], rax;          jmp   n196_subscript_α
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_subscript_bx, @function
n196_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_subscript_α:       mov              r11, 95
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
                        cmp              al, 104;                             je    n198_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n197_call_icon_α
                        .size            n196_subscript_bx, .-n196_subscript_bx
                        .type            n197_call_icon_bx, @function
n197_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_icon_α:       mov              r11, 96
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lcall_icon_α_rkfn251:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn251]
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
                        cmp              al, 104;                             je    n198_lit_string_α
                                                                              jmp   n198_lit_string_α
n197_call_icon_β:       mov              r11, 96;                             jmp   n198_lit_string_α
                        .size            n197_call_icon_bx, .-n197_call_icon_bx
                        .type            n198_lit_string_bx, @function
n198_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_252_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n199_var_α
.Llit_string_α_252_0:   .quad            .Llit_string_α_252_0_s
.Llit_string_α_252_0_s: .string          " "
                        .size            n198_lit_string_bx, .-n198_lit_string_bx
                        .type            n199_var_bx, @function
n199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             mov              r11, 98
                        mov              rax, qword ptr [r9 + 32]             # namewidth
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 400], rax           # result
                        mov              qword ptr [rsp + 408], rdx;          jmp   n200_call_icon_α
                        .size            n199_var_bx, .-n199_var_bx
                        .type            n200_call_icon_bx, @function
n200_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_call_icon_α:       mov              r11, 99
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lcall_icon_α_rkfn255:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn255]
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
                        cmp              al, 104;                             je    n171_var_α
                                                                              jmp   n201_var_α
n200_call_icon_β:       mov              r11, 99;                             jmp   n171_var_α
                        .size            n200_call_icon_bx, .-n200_call_icon_bx
                        .type            n201_var_bx, @function
n201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             mov              r11, 100
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax;          jmp   n202_var_α
                        .size            n201_var_bx, .-n201_var_bx
                        .type            n202_var_bx, @function
n202_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             mov              r11, 101
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 488], rax;          jmp   n203_lit_integer_α
                        .size            n202_var_bx, .-n202_var_bx
                        .type            n203_lit_integer_bx, @function
n203_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_260_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n204_coerce_numeric_α
.Llit_integer_α_260_0:  .quad            1
                        .size            n203_lit_integer_bx, .-n203_lit_integer_bx
                        .type            n204_coerce_numeric_bx, @function
n204_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_coerce_numeric_α:  mov              r11, 103
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_262_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
                        mov              eax, dword ptr [rsp + 496]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
.Lcoerce_numeric_α_262_1:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 472], rax;          jmp   n205_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n205_binop_α
                        .size            n204_coerce_numeric_bx, .-n204_coerce_numeric_bx
                        .type            n205_binop_bx, @function
n205_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_binop_α:           mov              r11, 104
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
.Lbinop_α_263_7:                                                              jmp   n206_lit_integer_α
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
                        cmp              al, 104;                             je    n171_var_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n206_lit_integer_α
                        .size            n205_binop_bx, .-n205_binop_bx
                        .type            n206_lit_integer_bx, @function
n206_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_264_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n207_subscript_α
.Llit_integer_α_264_0:  .quad            0
                        .size            n206_lit_integer_bx, .-n206_lit_integer_bx
                        .type            n207_subscript_bx, @function
n207_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_subscript_α:       mov              r11, 106
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
                        cmp              al, 104;                             je    n171_var_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n208_binop_α
                        .size            n207_subscript_bx, .-n207_subscript_bx
                        .type            n208_binop_bx, @function
n208_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_binop_α:           mov              r11, 107
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n209_assign_α
                        .size            n208_binop_bx, .-n208_binop_bx
                        .type            n209_assign_bx, @function
n209_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n210_conjunction_α
                        .size            n209_assign_bx, .-n209_assign_bx
                        .type            n210_conjunction_bx, @function
n210_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_conjunction_α:     mov              r11, 109
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax;          jmp   n171_var_α
n210_conjunction_β:     mov              r11, 109;                            jmp   n171_var_α
                        .size            n210_conjunction_bx, .-n210_conjunction_bx
                        .type            n211_var_bx, @function
n211_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n212_lit_integer_α
                        .size            n211_var_bx, .-n211_var_bx
                        .type            n212_lit_integer_bx, @function
n212_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     mov              r11, 111
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_271_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n213_lit_integer_α
.Llit_integer_α_271_0:  .quad            1
                        .size            n212_lit_integer_bx, .-n212_lit_integer_bx
                        .type            n213_lit_integer_bx, @function
n213_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n214_subscript_α
.Llit_integer_α_272_0:  .quad            18446744073709551614
                        .size            n213_lit_integer_bx, .-n213_lit_integer_bx
                        .type            n214_subscript_bx, @function
n214_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_subscript_α:       mov              r11, 113
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n215_call_icon_α
                        .size            n214_subscript_bx, .-n214_subscript_bx
                        .type            n215_call_icon_bx, @function
n215_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_call_icon_α:       mov              r11, 114
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lcall_icon_α_rkfn275:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn275]
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
n215_call_icon_β:       mov              r11, 114;                            jmp   format_ω
                        .size            n215_call_icon_bx, .-n215_call_icon_bx
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
                        lea              rax, [rip + n311_suspend_β]
                        mov              qword ptr [rbp + -160], rax
                        .type            n277_call_icon_bx, @function
n277_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_call_icon_α:       mov              r11, 115
                        .section         .rodata
.Lcall_icon_α_rkfn314:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn314]
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
                                                                              jmp   n278_assign_α
n277_call_icon_β:       mov              r11, 115;                            jmp   item_ω
                        .size            n277_call_icon_bx, .-n277_call_icon_bx
                        .type            n278_assign_bx, @function
n278_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:          mov              r11, 116
                        mov              rax, qword ptr [rbp + -944]
                        mov              rdx, qword ptr [rbp + -936]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n279_var_α
                        .size            n278_assign_bx, .-n278_assign_bx
                        .type            n279_var_bx, @function
n279_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             mov              r11, 117
                        mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + -192], rax          # result
                        mov              qword ptr [rbp + -184], rdx;         jmp   n280_lit_integer_α
                        .size            n279_var_bx, .-n279_var_bx
                        .type            n280_lit_integer_bx, @function
n280_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rbp + -176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_317_0]
                        mov              qword ptr [rbp + -168], rax;         jmp   n281_coerce_numeric_α
.Llit_integer_α_317_0:  .quad            1
                        .size            n280_lit_integer_bx, .-n280_lit_integer_bx
                        .type            n281_coerce_numeric_bx, @function
n281_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_coerce_numeric_α:  mov              r11, 119
                        mov              eax, dword ptr [rbp + -192]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_319_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_319_0
                        mov              eax, dword ptr [rbp + -176]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_319_0
.Lcoerce_numeric_α_319_1:
                        mov              rax, qword ptr [rbp + -192]
                        mov              qword ptr [rbp + -208], rax
                        mov              rax, qword ptr [rbp + -184]
                        mov              qword ptr [rbp + -200], rax;         jmp   n282_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n282_binop_α
                        .size            n281_coerce_numeric_bx, .-n281_coerce_numeric_bx
                        .type            n282_binop_bx, @function
n282_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_binop_α:           mov              r11, 120
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
.Lbinop_α_320_7:                                                              jmp   n283_assign_α
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
                        cmp              al, 104;                             je    n284_var_α
                        mov              qword ptr [rbp + -224], rax
                        mov              qword ptr [rbp + -216], rdx;         jmp   n283_assign_α
                        .size            n282_binop_bx, .-n282_binop_bx
                        .type            n283_assign_bx, @function
n283_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rbp + -224]
                        mov              rdx, qword ptr [rbp + -216]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n284_var_α
                        .size            n283_assign_bx, .-n283_assign_bx
                        .type            n284_var_bx, @function
n284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             mov              r11, 122
                        mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + -304], rax          # result
                        mov              qword ptr [rbp + -296], rdx;         jmp   n285_lit_integer_α
                        .size            n284_var_bx, .-n284_var_bx
                        .type            n285_lit_integer_bx, @function
n285_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_integer_α:     mov              r11, 123
                        mov              qword ptr [rbp + -288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_323_0]
                        mov              qword ptr [rbp + -280], rax;         jmp   n286_call_icon_α
.Llit_integer_α_323_0:  .quad            6
                        .size            n285_lit_integer_bx, .-n285_lit_integer_bx
                        .type            n286_call_icon_bx, @function
n286_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_icon_α:       mov              r11, 124
                        mov              rax, qword ptr [rbp + -288]
                        mov              qword ptr [rbp + -336], rax
                        mov              rax, qword ptr [rbp + -280]
                        mov              qword ptr [rbp + -328], rax
                        mov              rax, qword ptr [rbp + -304]
                        mov              qword ptr [rbp + -352], rax
                        mov              rax, qword ptr [rbp + -296]
                        mov              qword ptr [rbp + -344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn325:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn325]
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
                        cmp              al, 104;                             je    n290_var_α
                                                                              jmp   n287_lit_string_α
n286_call_icon_β:       mov              r11, 124;                            jmp   n290_var_α
                        .size            n286_call_icon_bx, .-n286_call_icon_bx
                        .type            n287_lit_string_bx, @function
n287_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rbp + -272], 2            # result
                        mov              dword ptr [rbp + -268], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_326_0]
                        mov              qword ptr [rbp + -264], rax;         jmp   n288_var_α
.Llit_string_α_326_0:   .quad            .Llit_string_α_326_0_s
.Llit_string_α_326_0_s: .string          "  "
                        .size            n287_lit_string_bx, .-n287_lit_string_bx
                        .type            n288_var_bx, @function
n288_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             mov              r11, 126
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rbp + -240], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rbp + -232], rax;         jmp   n289_call_icon_α
                        .size            n288_var_bx, .-n288_var_bx
                        .type            n289_call_icon_bx, @function
n289_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_icon_α:       mov              r11, 127
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
.Lcall_icon_α_rkfn330:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn330]
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
                        cmp              al, 104;                             je    n290_var_α
                                                                              jmp   n290_var_α
n289_call_icon_β:       mov              r11, 127;                            jmp   n290_var_α
                        .size            n289_call_icon_bx, .-n289_call_icon_bx
                        .type            n290_var_bx, @function
n290_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rbp + -464], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rbp + -456], rax;         jmp   n291_call_icon_α
                        .size            n290_var_bx, .-n290_var_bx
                        .type            n291_call_icon_bx, @function
n291_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_call_icon_α:       mov              r11, 129
                        mov              rax, qword ptr [rbp + -464]
                        mov              qword ptr [rbp + -496], rax
                        mov              rax, qword ptr [rbp + -456]
                        mov              qword ptr [rbp + -488], rax
                        .section         .rodata
.Lcall_icon_α_rkfn334:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn334]
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
                        cmp              al, 104;                             je    n293_lit_integer_α
                                                                              jmp   n292_assign_α
n291_call_icon_β:       mov              r11, 129;                            jmp   n293_lit_integer_α
                        .size            n291_call_icon_bx, .-n291_call_icon_bx
                        .type            n292_assign_bx, @function
n292_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rbp + -512]
                        mov              rdx, qword ptr [rbp + -504]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n293_lit_integer_α
                        .size            n292_assign_bx, .-n292_assign_bx
                        .type            n293_lit_integer_bx, @function
n293_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:     mov              r11, 131
                        mov              qword ptr [rbp + -528], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_336_0]
                        mov              qword ptr [rbp + -520], rax;         jmp   n294_assign_α
.Llit_integer_α_336_0:  .quad            1
                        .size            n293_lit_integer_bx, .-n293_lit_integer_bx
                        .type            n294_assign_bx, @function
n294_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_assign_α:          mov              r11, 132
                        mov              rax, qword ptr [rbp + -528]
                        mov              rdx, qword ptr [rbp + -520]
                        mov              qword ptr [rbp + -112], rax
                        mov              qword ptr [rbp + -104], rdx;         jmp   n295_var_α
                        .size            n294_assign_bx, .-n294_assign_bx
                        .type            n295_var_bx, @function
n295_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             mov              r11, 133
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rbp + -544], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rbp + -536], rax;         jmp   n296_scan_enter_α
                        .size            n295_var_bx, .-n295_var_bx
                        .type            n296_scan_enter_bx, @function
n296_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_scan_enter_α:      mov              r11, 134
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
                        mov              r14, 0;                              jmp   n297_lit_charset_α
                        .size            n296_scan_enter_bx, .-n296_scan_enter_bx
                        .type            n297_lit_charset_bx, @function
n297_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_charset_α:     mov              r11, 135
                        mov              qword ptr [rbp + -784], 2            # result
                        mov              dword ptr [rbp + -780], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_342_0]
                        mov              qword ptr [rbp + -776], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_342_0]
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
                        pop              rax;                                 jmp   n298_scan_upto_α
.Llit_charset_α_342_0:  .quad            .Llit_charset_α_342_0_s
.Llit_charset_α_342_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n297_lit_charset_bx, .-n297_lit_charset_bx
                        .type            n298_scan_upto_bx, @function
n298_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_scan_upto_α:       mov              r11, 136
                        mov              qword ptr [rbp + -800], r14
.Lscan_upto_α_344_0:    mov              rax, qword ptr [rbp + -800]
                        cmp              rax, r15;                            jge   n312_scan_α
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
                        mov              qword ptr [rbp + -808], rax;         jmp   n299_scan_tab_α
.Lscan_upto_α_344_1:    inc              qword ptr [rbp + -800];              jmp   .Lscan_upto_α_344_0
n298_scan_upto_β:       mov              r11, 136
                        inc              qword ptr [rbp + -800];              jmp   .Lscan_upto_α_344_0
.Lscan_upto_α_344_2:    .quad            .Lscan_upto_α_344_2_s
.Lscan_upto_α_344_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n298_scan_upto_bx, .-n298_scan_upto_bx
                        .type            n299_scan_tab_bx, @function
n299_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_scan_tab_α:        mov              r11, 137
                        mov              rax, qword ptr [rbp + -808]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_346_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_346_0:     cmp              rax, 1;                              jl    n298_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n298_scan_upto_β
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
                        mov              qword ptr [rbp + -840], rdx;         jmp   n300_lit_charset_α
n299_scan_tab_β:        mov              r11, 137
                        mov              r14, qword ptr [rbp + -832];         jmp   n298_scan_upto_β
                        .size            n299_scan_tab_bx, .-n299_scan_tab_bx
                        .type            n300_lit_charset_bx, @function
n300_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_charset_α:     mov              r11, 138
                        mov              qword ptr [rbp + -576], 2            # result
                        mov              dword ptr [rbp + -572], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_347_0]
                        mov              qword ptr [rbp + -568], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_347_0]
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
                        pop              rax;                                 jmp   n301_scan_many_α
.Llit_charset_α_347_0:  .quad            .Llit_charset_α_347_0_s
.Llit_charset_α_347_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n300_lit_charset_bx, .-n300_lit_charset_bx
                        .type            n301_scan_many_bx, @function
n301_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_scan_many_α:       mov              r11, 139
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
.Lscan_many_α_349_1:    cmp              eax, r14d;                           je    n304_disjunction_α
                        mov              qword ptr [rbp + -592], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + -584], rcx;         jmp   n302_scan_tab_α
n301_scan_many_β:       mov              r11, 139;                            jmp   n304_disjunction_α
.Lscan_many_α_349_2:    .quad            .Lscan_many_α_349_2_s
.Lscan_many_α_349_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n301_scan_many_bx, .-n301_scan_many_bx
                        .type            n302_scan_tab_bx, @function
n302_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_scan_tab_α:        mov              r11, 140
                        mov              rax, qword ptr [rbp + -584]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_351_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_351_0:     cmp              rax, 1;                              jl    n304_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n304_disjunction_α
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
                        mov              qword ptr [rbp + -616], rdx;         jmp   n303_assign_α
n302_scan_tab_β:        mov              r11, 140
                        mov              r14, qword ptr [rbp + -608];         jmp   n304_disjunction_α
                        .size            n302_scan_tab_bx, .-n302_scan_tab_bx
                        .type            n303_assign_bx, @function
n303_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_assign_α:          mov              r11, 141
                        mov              rax, qword ptr [rbp + -624]
                        mov              rdx, qword ptr [rbp + -616]
                        mov              qword ptr [rbp + -128], rax
                        mov              qword ptr [rbp + -120], rdx;         jmp   n304_disjunction_α
                        .size            n303_assign_bx, .-n303_assign_bx
                        .type            n304_disjunction_bx, @function
n304_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_disjunction_α:     mov              r11, 142
                        mov              qword ptr [rbp + -736], 0
                        mov              qword ptr [rbp + -728], 0
                        mov              dword ptr [rbp + -720], 0;           jmp   n306_var_α
.Ldisjunction_γ_304_as: mov              r11, 142
                        mov              eax, dword ptr [rbp + -720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_354_0
                                                                              jmp   n305_conjunction_α
.Ldisjunction_α_354_0:                                                        jmp   n305_conjunction_α
n304_disjunction_β:     mov              r11, 142
                        mov              eax, dword ptr [rbp + -720];         jmp   n297_lit_charset_α
.Ldisjunction_γ_304_af: mov              r11, 142
.Ldisjunction_ω_304_af: mov              r11, 142
                        add              dword ptr [rbp + -720], 1
                        mov              eax, dword ptr [rbp + -720];         jmp   n297_lit_charset_α
                        .size            n304_disjunction_bx, .-n304_disjunction_bx
                        .type            n305_conjunction_bx, @function
n305_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_conjunction_α:     mov              r11, 143
                        mov              rax, qword ptr [rbp + -736]
                        mov              qword ptr [rbp + -752], rax
                        mov              rax, qword ptr [rbp + -728]
                        mov              qword ptr [rbp + -744], rax;         jmp   n297_lit_charset_α
n305_conjunction_β:     mov              r11, 143;                            jmp   n297_lit_charset_α
                        .size            n305_conjunction_bx, .-n305_conjunction_bx
                        .type            n306_var_bx, @function
n306_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             mov              r11, 144
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rbp + -656], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rbp + -648], rax;         jmp   n307_unop_α
n306_var_β:             mov              r11, 144;                            jmp   .Ldisjunction_ω_304_af
                        .size            n306_var_bx, .-n306_var_bx
                        .type            n307_unop_bx, @function
n307_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_unop_α:            mov              r11, 145
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
                        mov              qword ptr [rbp + -664], rdx;         jmp   n308_lit_integer_α
                        .size            n307_unop_bx, .-n307_unop_bx
                        .type            n308_lit_integer_bx, @function
n308_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     mov              r11, 146
                        mov              qword ptr [rbp + -640], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_359_0]
                        mov              qword ptr [rbp + -632], rax;         jmp   n309_binop_test_α
.Llit_integer_α_359_0:  .quad            3
                        .size            n308_lit_integer_bx, .-n308_lit_integer_bx
                        .type            n309_binop_test_bx, @function
n309_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_binop_test_α:      mov              r11, 147
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
                        cmp              rax, rcx;                            jl    .Ldisjunction_ω_304_af
                        mov              rcx, qword ptr [rbp + -640]
                        mov              qword ptr [rbp + -688], rcx
                        mov              rcx, qword ptr [rbp + -632]
                        mov              qword ptr [rbp + -680], rcx;         jmp   n310_var_α
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
                        cmp              eax, 1;                              je    .Ldisjunction_ω_304_af
                                                                              jmp   n310_var_α
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_304_af
                        mov              rax, qword ptr [rbp + -640]
                        mov              qword ptr [rbp + -688], rax
                        mov              rax, qword ptr [rbp + -632]
                        mov              qword ptr [rbp + -680], rax;         jmp   n310_var_α
                        .size            n309_binop_test_bx, .-n309_binop_test_bx
                        .type            n310_var_bx, @function
n310_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rbp + -704], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rbp + -696], rax;         jmp   n311_suspend_α
                        .size            n310_var_bx, .-n310_var_bx
                        .type            n311_suspend_bx, @function
n311_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_suspend_α:         mov              r11, 149
                        lea              rax, [rip + n311_suspend_β]
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
n311_suspend_β:         mov              r11, 149
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
                        pop              rax;                                 jmp   n304_disjunction_β
                        .size            n311_suspend_bx, .-n311_suspend_bx
                        .type            n312_scan_bx, @function
n312_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_scan_α:            mov              r11, 150
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
                        mov              r15, qword ptr [rbp + -880];         jmp   n277_call_icon_α
n312_scan_β:            mov              r11, 150;                            jmp   n277_call_icon_α
                        .size            n312_scan_bx, .-n312_scan_bx
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
                        .type            n367_var_ref_bx, @function
n367_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n368_nulltest_var_α
                        .size            n367_var_ref_bx, .-n367_var_ref_bx
                        .type            n368_nulltest_var_bx, @function
n368_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_nulltest_var_α:    mov              r11, 152
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              al, 104;                             je    n372_call_icon_α
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
                        cmp              al, 104;                             je    n372_call_icon_α
                        cmp              eax, 0;                              jne   n372_call_icon_α
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n369_lit_charset_α
                        .size            n368_nulltest_var_bx, .-n368_nulltest_var_bx
                        .type            n369_lit_charset_bx, @function
n369_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_charset_α:     mov              r11, 153
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_479_0]
                        mov              qword ptr [rsp + 2856], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_479_0]
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
                        pop              rax;                                 jmp   n370_call_icon_α
.Llit_charset_α_479_0:  .quad            .Llit_charset_α_479_0_s
.Llit_charset_α_479_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n369_lit_charset_bx, .-n369_lit_charset_bx
                        .type            n370_call_icon_bx, @function
n370_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_call_icon_α:       mov              r11, 154
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn481:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn481]
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
                        cmp              al, 104;                             je    n372_call_icon_α
                                                                              jmp   n371_assign_var_α
n370_call_icon_β:       mov              r11, 154;                            jmp   n372_call_icon_α
                        .size            n370_call_icon_bx, .-n370_call_icon_bx
                        .type            n371_assign_var_bx, @function
n371_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_var_α:      mov              r11, 155
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
                        cmp              al, 104;                             je    n372_call_icon_α
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n372_call_icon_α
                        .size            n371_assign_var_bx, .-n371_assign_var_bx
                        .type            n372_call_icon_bx, @function
n372_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_icon_α:       mov              r11, 156
                        .section         .rodata
.Lcall_icon_α_rkfn484:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn484]
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
                        cmp              al, 104;                             je    n374_make_list_α
                                                                              jmp   n373_assign_α
n372_call_icon_β:       mov              r11, 156;                            jmp   n374_make_list_α
                        .size            n372_call_icon_bx, .-n372_call_icon_bx
                        .type            n373_assign_bx, @function
n373_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:          mov              r11, 157
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n374_make_list_α
                        .size            n373_assign_bx, .-n373_assign_bx
                        .type            n374_make_list_bx, @function
n374_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_make_list_α:       mov              r11, 158
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
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n375_assign_α
                        .size            n374_make_list_bx, .-n374_make_list_bx
                        .type            n375_assign_bx, @function
n375_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:          mov              r11, 159
                        mov              rax, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n376_var_α
                        .size            n375_assign_bx, .-n375_assign_bx
                        .type            n376_var_bx, @function
n376_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n377_call_icon_α
                        .size            n376_var_bx, .-n376_var_bx
                        .type            n377_call_icon_bx, @function
n377_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_icon_α:       mov              r11, 161
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn492:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn492]
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
                        cmp              al, 104;                             je    n470_var_α
                                                                              jmp   n378_assign_α
n377_call_icon_β:       mov              r11, 161;                            jmp   n470_var_α
                        .size            n377_call_icon_bx, .-n377_call_icon_bx
                        .type            n378_assign_bx, @function
n378_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_assign_α:          mov              r11, 162
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n379_var_α
                        .size            n378_assign_bx, .-n378_assign_bx
                        .type            n379_var_bx, @function
n379_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n380_scan_enter_α
                        .size            n379_var_bx, .-n379_var_bx
                        .type            n380_scan_enter_bx, @function
n380_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_scan_enter_α:      mov              r11, 164
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
                        mov              r14, 0;                              jmp   n381_disjunction_α
                        .size            n380_scan_enter_bx, .-n380_scan_enter_bx
                        .type            n381_disjunction_bx, @function
n381_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_disjunction_α:     mov              r11, 165
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              dword ptr [rsp + 400], 0;            jmp   n387_lit_string_α
.Ldisjunction_γ_381_as: mov              r11, 165
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_499_0
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 392], rax;          jmp   n382_scan_α
.Ldisjunction_α_499_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_499_1
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 392], rax;          jmp   n382_scan_α
.Ldisjunction_α_499_1:                                                        jmp   n382_scan_α
n381_disjunction_β:     mov              r11, 165
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              je    n398_disjunction_β
                                                                              jmp   n460_scan_α
.Ldisjunction_γ_381_af: mov              r11, 165
.Ldisjunction_ω_381_af: mov              r11, 165
                        add              dword ptr [rsp + 400], 1
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 1;                              je    n384_var_α
                                                                              jmp   n460_scan_α
                        .size            n381_disjunction_bx, .-n381_disjunction_bx
                        .type            n382_scan_bx, @function
n382_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_scan_α:            mov              r11, 166
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
                        mov              r15, qword ptr [rsp + 336];          jmp   n376_var_α
n382_scan_β:            mov              r11, 166
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
                        mov              r14, rax;                            jmp   n381_disjunction_β
                                                                              jmp   n376_var_α
                        .size            n382_scan_bx, .-n382_scan_bx
                        .type            n383_conjunction_bx, @function
n383_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_conjunction_α:     mov              r11, 167;                            jmp   .Ldisjunction_γ_381_as
n383_conjunction_β:     mov              r11, 167;                            jmp   n460_scan_α
                        .size            n383_conjunction_bx, .-n383_conjunction_bx
                        .type            n384_var_bx, @function
n384_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:             mov              r11, 168
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n385_var_α
n384_var_β:             mov              r11, 168;                            jmp   n460_scan_α
                        .size            n384_var_bx, .-n384_var_bx
                        .type            n385_var_bx, @function
n385_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             mov              r11, 169
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n386_call_icon_α
                        .size            n385_var_bx, .-n385_var_bx
                        .type            n386_call_icon_bx, @function
n386_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_icon_α:       mov              r11, 170
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2616], rax
                        .section         .rodata
.Lcall_icon_α_rkfn508:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn508]
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
                        cmp              al, 104;                             je    n460_scan_α
                                                                              jmp   .Ldisjunction_γ_381_as
n386_call_icon_β:       mov              r11, 170;                            jmp   n460_scan_α
                        .size            n386_call_icon_bx, .-n386_call_icon_bx
                        .type            n387_lit_string_bx, @function
n387_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_509_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n388_scan_match_α
n387_lit_string_β:      mov              r11, 171;                            jmp   .Ldisjunction_ω_381_af
.Llit_string_α_509_0:   .quad            .Llit_string_α_509_0_s
.Llit_string_α_509_0_s: .string          "-"
                        .size            n387_lit_string_bx, .-n387_lit_string_bx
                        .type            n388_scan_match_bx, @function
n388_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_scan_match_α:      mov              r11, 172
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_381_af
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_381_af
                        mov              qword ptr [rsp + 2528], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2536], rax;         jmp   n389_scan_tab_α
.Lscan_match_α_511_0:   .quad            .Lscan_match_α_511_0_s
.Lscan_match_α_511_0_s: .string          "-"
                        .size            n388_scan_match_bx, .-n388_scan_match_bx
                        .type            n389_scan_tab_bx, @function
n389_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_scan_tab_α:        mov              r11, 173
                        mov              rax, qword ptr [rsp + 2536]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_513_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_513_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_381_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_381_af
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
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n390_lit_integer_α
n389_scan_tab_β:        mov              r11, 173
                        mov              r14, qword ptr [rsp + 2512];         jmp   .Ldisjunction_ω_381_af
                        .size            n389_scan_tab_bx, .-n389_scan_tab_bx
                        .type            n390_lit_integer_bx, @function
n390_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_514_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n391_scan_pos_α
.Llit_integer_α_514_0:  .quad            0
                        .size            n390_lit_integer_bx, .-n390_lit_integer_bx
                        .type            n391_scan_pos_bx, @function
n391_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_scan_pos_α:        mov              r11, 175
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_516_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_516_0:     cmp              rax, 1;                              jl    n392_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n392_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n392_var_α
                        mov              qword ptr [rsp + 2464], 3
                        mov              qword ptr [rsp + 2472], rax;         jmp   n389_scan_tab_β
                        .size            n391_scan_pos_bx, .-n391_scan_pos_bx
                        .type            n392_var_bx, @function
n392_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             mov              r11, 176
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0;           jmp   n393_conjunction_α
n392_var_β:             mov              r11, 176;                            jmp   n389_scan_tab_β
                        .size            n392_var_bx, .-n392_var_bx
                        .type            n393_conjunction_bx, @function
n393_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_conjunction_α:     mov              r11, 177
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n394_disjunction_α
n393_conjunction_β:     mov              r11, 177;                            jmp   .Ldisjunction_ω_381_af
                        .size            n393_conjunction_bx, .-n393_conjunction_bx
                        .type            n394_disjunction_bx, @function
n394_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_disjunction_α:     mov              r11, 178
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n461_lit_string_α
.Ldisjunction_γ_394_as: mov              r11, 178
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_520_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n395_lit_integer_α
.Ldisjunction_α_520_0:                                                        jmp   n395_lit_integer_α
n394_disjunction_β:     mov              r11, 178
                        mov              eax, dword ptr [rsp + 2256];         jmp   n395_lit_integer_α
.Ldisjunction_γ_394_af: mov              r11, 178
.Ldisjunction_ω_394_af: mov              r11, 178
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256];         jmp   n395_lit_integer_α
                        .size            n394_disjunction_bx, .-n394_disjunction_bx
                        .type            n395_lit_integer_bx, @function
n395_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:     mov              r11, 179
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_521_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n396_scan_move_α
.Llit_integer_α_521_0:  .quad            1
                        .size            n395_lit_integer_bx, .-n395_lit_integer_bx
                        .type            n396_scan_move_bx, @function
n396_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_scan_move_α:       mov              r11, 180
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n460_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n460_scan_α
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
                        mov              qword ptr [rsp + 456], rdx;          jmp   n397_assign_α
n396_scan_move_β:       mov              r11, 180
                        mov              r14, qword ptr [rsp + 464];          jmp   n460_scan_α
                        .size            n396_scan_move_bx, .-n396_scan_move_bx
                        .type            n397_assign_bx, @function
n397_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              r11, 181
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n398_disjunction_α
                        .size            n397_assign_bx, .-n397_assign_bx
                        .type            n398_disjunction_bx, @function
n398_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_disjunction_α:     mov              r11, 182
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n402_var_α
.Ldisjunction_γ_398_as: mov              r11, 182
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_526_0
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 504], rax;          jmp   n395_lit_integer_α
.Ldisjunction_α_526_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_526_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 504], rax;          jmp   n395_lit_integer_α
.Ldisjunction_α_526_1:                                                        jmp   n395_lit_integer_α
n398_disjunction_β:     mov              r11, 182
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n412_disjunction_β
                                                                              jmp   n395_lit_integer_α
.Ldisjunction_γ_398_af: mov              r11, 182
.Ldisjunction_ω_398_af: mov              r11, 182
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n399_lit_string_α
                                                                              jmp   n395_lit_integer_α
                        .size            n398_disjunction_bx, .-n398_disjunction_bx
                        .type            n399_lit_string_bx, @function
n399_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_527_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n400_var_α
n399_lit_string_β:      mov              r11, 183;                            jmp   n395_lit_integer_α
.Llit_string_α_527_0:   .quad            .Llit_string_α_527_0_s
.Llit_string_α_527_0_s: .string          "Unrecognized option: -"
                        .size            n399_lit_string_bx, .-n399_lit_string_bx
                        .type            n400_var_bx, @function
n400_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n401_call_icon_α
                        .size            n400_var_bx, .-n400_var_bx
                        .type            n401_call_icon_bx, @function
n401_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_call_icon_α:       mov              r11, 185
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn531:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn531]
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
                        cmp              al, 104;                             je    n395_lit_integer_α
                                                                              jmp   .Ldisjunction_γ_398_as
n401_call_icon_β:       mov              r11, 185;                            jmp   n395_lit_integer_α
                        .size            n401_call_icon_bx, .-n401_call_icon_bx
                        .type            n402_var_bx, @function
n402_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n403_var_α
n402_var_β:             mov              r11, 186;                            jmp   .Ldisjunction_ω_398_af
                        .size            n402_var_bx, .-n402_var_bx
                        .type            n403_var_bx, @function
n403_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:             mov              r11, 187
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n404_call_builtin_gen_α
                        .size            n403_var_bx, .-n403_var_bx
                        .type            n404_call_builtin_gen_bx, @function
n404_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_gen_α:
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
.Lcall_builtin_gen_α_bynamegenfn188: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn188]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_398_af
                                                                              jmp   n405_lit_integer_α
n404_call_builtin_gen_β:
                        mov              r11, 188;                            jmp   .Lcall_builtin_gen_α_536_60
                        .size            n404_call_builtin_gen_bx, .-n404_call_builtin_gen_bx
                        .type            n405_lit_integer_bx, @function
n405_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:     mov              r11, 189
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n406_coerce_numeric_α
.Llit_integer_α_537_0:  .quad            1
                        .size            n405_lit_integer_bx, .-n405_lit_integer_bx
                        .type            n406_coerce_numeric_bx, @function
n406_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_coerce_numeric_α:  mov              r11, 190
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_539_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_539_0
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_539_0
.Lcoerce_numeric_α_539_1:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n407_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n407_binop_α
                        .size            n406_coerce_numeric_bx, .-n406_coerce_numeric_bx
                        .type            n407_binop_bx, @function
n407_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_binop_α:           mov              r11, 191
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
.Lbinop_α_540_7:                                                              jmp   n408_assign_α
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_398_af
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n408_assign_α
                        .size            n407_binop_bx, .-n407_binop_bx
                        .type            n408_assign_bx, @function
n408_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_assign_α:          mov              r11, 192
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n409_var_ref_α
                        .size            n408_assign_bx, .-n408_assign_bx
                        .type            n409_var_ref_bx, @function
n409_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2880]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n410_var_α
                        .size            n409_var_ref_bx, .-n409_var_ref_bx
                        .type            n410_var_bx, @function
n410_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:             mov              r11, 194
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 552], rax;          jmp   n411_subscript_α
                        .size            n410_var_bx, .-n410_var_bx
                        .type            n411_subscript_bx, @function
n411_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_subscript_α:       mov              r11, 195
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
                        cmp              al, 104;                             je    n395_lit_integer_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n412_disjunction_α
                        .size            n411_subscript_bx, .-n411_subscript_bx
                        .type            n412_disjunction_bx, @function
n412_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_disjunction_α:     mov              r11, 196
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n415_lit_charset_α
.Ldisjunction_γ_412_as: mov              r11, 196
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_548_0
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 600], rax;          jmp   n413_assign_var_α
.Ldisjunction_α_548_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_548_1
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 600], rax;          jmp   n413_assign_var_α
.Ldisjunction_α_548_1:                                                        jmp   n413_assign_var_α
n412_disjunction_β:     mov              r11, 196
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n395_lit_integer_α
                                                                              jmp   n395_lit_integer_α
.Ldisjunction_γ_412_af: mov              r11, 196
.Ldisjunction_ω_412_af: mov              r11, 196
                        add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n414_lit_integer_α
                                                                              jmp   n395_lit_integer_α
                        .size            n412_disjunction_bx, .-n412_disjunction_bx
                        .type            n413_assign_var_bx, @function
n413_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_var_α:      mov              r11, 197
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
                        cmp              al, 104;                             je    n395_lit_integer_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   .Ldisjunction_γ_398_as
n413_assign_var_β:      mov              r11, 197;                            jmp   n395_lit_integer_α
                        .size            n413_assign_var_bx, .-n413_assign_var_bx
                        .type            n414_lit_integer_bx, @function
n414_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:     mov              r11, 198
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_550_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   .Ldisjunction_γ_412_as
n414_lit_integer_β:     mov              r11, 198;                            jmp   n395_lit_integer_α
.Llit_integer_α_550_0:  .quad            1
                        .size            n414_lit_integer_bx, .-n414_lit_integer_bx
                        .type            n415_lit_charset_bx, @function
n415_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_charset_α:     mov              r11, 199
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_551_0]
                        mov              qword ptr [rsp + 1864], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_551_0]
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
                        pop              rax;                                 jmp   n416_var_ref_α
n415_lit_charset_β:     mov              r11, 199;                            jmp   .Ldisjunction_ω_412_af
.Llit_charset_α_551_0:  .quad            .Llit_charset_α_551_0_s
.Llit_charset_α_551_0_s:
                        .string          "+.:"
                        .size            n415_lit_charset_bx, .-n415_lit_charset_bx
                        .type            n416_var_ref_bx, @function
n416_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n417_var_α
                        .size            n416_var_ref_bx, .-n416_var_ref_bx
                        .type            n417_var_bx, @function
n417_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_var_α:             mov              r11, 201
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n418_subscript_α
                        .size            n417_var_bx, .-n417_var_bx
                        .type            n418_subscript_bx, @function
n418_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_subscript_α:       mov              r11, 202
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_412_af
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n419_deref_α
                        .size            n418_subscript_bx, .-n418_subscript_bx
                        .type            n419_deref_bx, @function
n419_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_deref_α:           mov              r11, 203
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_412_af
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n420_assign_α
                        .size            n419_deref_bx, .-n419_deref_bx
                        .type            n420_assign_bx, @function
n420_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n421_call_icon_α
                        .size            n420_assign_bx, .-n420_assign_bx
                        .type            n421_call_icon_bx, @function
n421_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_call_icon_α:       mov              r11, 205
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
.Lcall_icon_α_bynamefn205: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn205]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_412_af
                                                                              jmp   n422_disjunction_α
n421_call_icon_β:       mov              r11, 205;                            jmp   .Ldisjunction_ω_412_af
                        .size            n421_call_icon_bx, .-n421_call_icon_bx
                        .type            n422_disjunction_bx, @function
n422_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_disjunction_α:     mov              r11, 206
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              dword ptr [rsp + 1504], 0;           jmp   n456_lit_string_α
.Ldisjunction_γ_422_as: mov              r11, 206
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_561_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n423_assign_α
.Ldisjunction_α_561_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_561_1
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n423_assign_α
.Ldisjunction_α_561_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_561_2
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n423_assign_α
.Ldisjunction_α_561_2:                                                        jmp   n423_assign_α
n422_disjunction_β:     mov              r11, 206
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              je    n458_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_422_af
                                                                              jmp   .Ldisjunction_ω_422_af
.Ldisjunction_γ_422_af: mov              r11, 206
.Ldisjunction_ω_422_af: mov              r11, 206
                        add              dword ptr [rsp + 1504], 1
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 1;                              je    n454_var_α
                        cmp              eax, 2;                              je    n451_lit_string_α
                                                                              jmp   n424_var_α
                        .size            n422_disjunction_bx, .-n422_disjunction_bx
                        .type            n423_assign_bx, @function
n423_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_assign_α:          mov              r11, 207
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx;         jmp   n424_var_α
                        .size            n423_assign_bx, .-n423_assign_bx
                        .type            n424_var_bx, @function
n424_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             mov              r11, 208
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 664], rax;          jmp   n425_lit_string_α
                        .size            n424_var_bx, .-n424_var_bx
                        .type            n425_lit_string_bx, @function
n425_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_565_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n426_call_builtin_α
.Llit_string_α_565_0:   .quad            .Llit_string_α_565_0_s
.Llit_string_α_565_0_s: .string          ":"
                        .size            n425_lit_string_bx, .-n425_lit_string_bx
                        .type            n426_call_builtin_bx, @function
n426_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_α:    mov              r11, 210
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn567: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn567]
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
                        cmp              al, 104;                             je    n429_lit_string_α
                                                                              jmp   n427_var_α
n426_call_builtin_β:    mov              r11, 210;                            jmp   n429_lit_string_α
                        .size            n426_call_builtin_bx, .-n426_call_builtin_bx
                        .type            n427_var_bx, @function
n427_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n428_assign_α
                        .size            n427_var_bx, .-n427_var_bx
                        .type            n428_assign_bx, @function
n428_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_assign_α:          mov              r11, 212
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n443_var_α
                        .size            n428_assign_bx, .-n428_assign_bx
                        .type            n429_lit_string_bx, @function
n429_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_571_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n430_call_builtin_α
.Llit_string_α_571_0:   .quad            .Llit_string_α_571_0_s
.Llit_string_α_571_0_s: .string          "+"
                        .size            n429_lit_string_bx, .-n429_lit_string_bx
                        .type            n430_call_builtin_bx, @function
n430_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_call_builtin_α:    mov              r11, 214
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn573: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn573]
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
                        cmp              al, 104;                             je    n439_lit_string_α
                                                                              jmp   n431_disjunction_α
n430_call_builtin_β:    mov              r11, 214;                            jmp   n439_lit_string_α
                        .size            n430_call_builtin_bx, .-n430_call_builtin_bx
                        .type            n431_disjunction_bx, @function
n431_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_disjunction_α:     mov              r11, 215
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n437_var_α
.Ldisjunction_γ_431_as: mov              r11, 215
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_575_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n432_assign_α
.Ldisjunction_α_575_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_575_1
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n432_assign_α
.Ldisjunction_α_575_1:                                                        jmp   n432_assign_α
n431_disjunction_β:     mov              r11, 215
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_431_af
                                                                              jmp   .Ldisjunction_ω_431_af
.Ldisjunction_γ_431_af: mov              r11, 215
.Ldisjunction_ω_431_af: mov              r11, 215
                        add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 1;                              je    n433_lit_string_α
                                                                              jmp   n395_lit_integer_α
                        .size            n431_disjunction_bx, .-n431_disjunction_bx
                        .type            n432_assign_bx, @function
n432_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_assign_α:          mov              r11, 216
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n443_var_α
                        .size            n432_assign_bx, .-n432_assign_bx
                        .type            n433_lit_string_bx, @function
n433_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_577_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n434_var_α
n433_lit_string_β:      mov              r11, 217;                            jmp   .Ldisjunction_ω_431_af
.Llit_string_α_577_0:   .quad            .Llit_string_α_577_0_s
.Llit_string_α_577_0_s: .string          "-"
                        .size            n433_lit_string_bx, .-n433_lit_string_bx
                        .type            n434_var_bx, @function
n434_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:             mov              r11, 218
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n435_lit_string_α
                        .size            n434_var_bx, .-n434_var_bx
                        .type            n435_lit_string_bx, @function
n435_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_580_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n436_call_icon_α
.Llit_string_α_580_0:   .quad            .Llit_string_α_580_0_s
.Llit_string_α_580_0_s: .string          " needs numeric parameter"
                        .size            n435_lit_string_bx, .-n435_lit_string_bx
                        .type            n436_call_icon_bx, @function
n436_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_call_icon_α:       mov              r11, 220
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
.Lcall_icon_α_rkfn582:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn582]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_431_af
                                                                              jmp   .Ldisjunction_γ_431_as
n436_call_icon_β:       mov              r11, 220;                            jmp   .Ldisjunction_ω_431_af
                        .size            n436_call_icon_bx, .-n436_call_icon_bx
                        .type            n437_var_bx, @function
n437_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n438_call_icon_α
n437_var_β:             mov              r11, 221;                            jmp   .Ldisjunction_ω_431_af
                        .size            n437_var_bx, .-n437_var_bx
                        .type            n438_call_icon_bx, @function
n438_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_icon_α:       mov              r11, 222
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn586:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn586]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_431_af
                                                                              jmp   .Ldisjunction_γ_431_as
n438_call_icon_β:       mov              r11, 222;                            jmp   .Ldisjunction_ω_431_af
                        .size            n438_call_icon_bx, .-n438_call_icon_bx
                        .type            n439_lit_string_bx, @function
n439_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_587_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n440_call_builtin_α
.Llit_string_α_587_0:   .quad            .Llit_string_α_587_0_s
.Llit_string_α_587_0_s: .string          "."
                        .size            n439_lit_string_bx, .-n439_lit_string_bx
                        .type            n440_call_builtin_bx, @function
n440_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_α:    mov              r11, 224
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn589: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn589]
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
                        cmp              al, 104;                             je    n395_lit_integer_α
                                                                              jmp   n441_disjunction_α
n440_call_builtin_β:    mov              r11, 224;                            jmp   n395_lit_integer_α
                        .size            n440_call_builtin_bx, .-n440_call_builtin_bx
                        .type            n441_disjunction_bx, @function
n441_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_disjunction_α:     mov              r11, 225
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              dword ptr [rsp + 720], 0;            jmp   n449_var_α
.Ldisjunction_γ_441_as: mov              r11, 225
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_591_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax;          jmp   n442_assign_α
.Ldisjunction_α_591_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_591_1
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 712], rax;          jmp   n442_assign_α
.Ldisjunction_α_591_1:                                                        jmp   n442_assign_α
n441_disjunction_β:     mov              r11, 225
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_441_af
                                                                              jmp   .Ldisjunction_ω_441_af
.Ldisjunction_γ_441_af: mov              r11, 225
.Ldisjunction_ω_441_af: mov              r11, 225
                        add              dword ptr [rsp + 720], 1
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 1;                              je    n445_lit_string_α
                                                                              jmp   n395_lit_integer_α
                        .size            n441_disjunction_bx, .-n441_disjunction_bx
                        .type            n442_assign_bx, @function
n442_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_assign_α:          mov              r11, 226
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n443_var_α
                        .size            n442_assign_bx, .-n442_assign_bx
                        .type            n443_var_bx, @function
n443_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 648], rax;          jmp   n444_conjunction_α
                        .size            n443_var_bx, .-n443_var_bx
                        .type            n444_conjunction_bx, @function
n444_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_conjunction_α:     mov              r11, 228
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax;          jmp   .Ldisjunction_γ_412_as
n444_conjunction_β:     mov              r11, 228;                            jmp   n395_lit_integer_α
                        .size            n444_conjunction_bx, .-n444_conjunction_bx
                        .type            n445_lit_string_bx, @function
n445_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_596_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n446_var_α
n445_lit_string_β:      mov              r11, 229;                            jmp   .Ldisjunction_ω_441_af
.Llit_string_α_596_0:   .quad            .Llit_string_α_596_0_s
.Llit_string_α_596_0_s: .string          "-"
                        .size            n445_lit_string_bx, .-n445_lit_string_bx
                        .type            n446_var_bx, @function
n446_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 920], rax;          jmp   n447_lit_string_α
                        .size            n446_var_bx, .-n446_var_bx
                        .type            n447_lit_string_bx, @function
n447_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:      mov              r11, 231
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_599_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n448_call_icon_α
.Llit_string_α_599_0:   .quad            .Llit_string_α_599_0_s
.Llit_string_α_599_0_s: .string          " needs numeric parameter"
                        .size            n447_lit_string_bx, .-n447_lit_string_bx
                        .type            n448_call_icon_bx, @function
n448_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_call_icon_α:       mov              r11, 232
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
.Lcall_icon_α_rkfn601:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn601]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_441_af
                                                                              jmp   .Ldisjunction_γ_441_as
n448_call_icon_β:       mov              r11, 232;                            jmp   .Ldisjunction_ω_441_af
                        .size            n448_call_icon_bx, .-n448_call_icon_bx
                        .type            n449_var_bx, @function
n449_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:             mov              r11, 233
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 792], rax;          jmp   n450_call_icon_α
n449_var_β:             mov              r11, 233;                            jmp   .Ldisjunction_ω_441_af
                        .size            n449_var_bx, .-n449_var_bx
                        .type            n450_call_icon_bx, @function
n450_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_call_icon_α:       mov              r11, 234
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn605:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn605]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_441_af
                                                                              jmp   .Ldisjunction_γ_441_as
n450_call_icon_β:       mov              r11, 234;                            jmp   .Ldisjunction_ω_441_af
                        .size            n450_call_icon_bx, .-n450_call_icon_bx
                        .type            n451_lit_string_bx, @function
n451_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_606_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n452_var_α
n451_lit_string_β:      mov              r11, 235;                            jmp   .Ldisjunction_ω_422_af
.Llit_string_α_606_0:   .quad            .Llit_string_α_606_0_s
.Llit_string_α_606_0_s: .string          "No parameter following -"
                        .size            n451_lit_string_bx, .-n451_lit_string_bx
                        .type            n452_var_bx, @function
n452_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             mov              r11, 236
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n453_call_icon_α
                        .size            n452_var_bx, .-n452_var_bx
                        .type            n453_call_icon_bx, @function
n453_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_call_icon_α:       mov              r11, 237
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lcall_icon_α_rkfn610:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn610]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_422_af
                                                                              jmp   .Ldisjunction_γ_422_as
n453_call_icon_β:       mov              r11, 237;                            jmp   .Ldisjunction_ω_422_af
                        .size            n453_call_icon_bx, .-n453_call_icon_bx
                        .type            n454_var_bx, @function
n454_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n455_call_icon_α
n454_var_β:             mov              r11, 238;                            jmp   .Ldisjunction_ω_422_af
                        .size            n454_var_bx, .-n454_var_bx
                        .type            n455_call_icon_bx, @function
n455_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_call_icon_α:       mov              r11, 239
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn614:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn614]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_422_af
                                                                              jmp   .Ldisjunction_γ_422_as
n455_call_icon_β:       mov              r11, 239;                            jmp   .Ldisjunction_ω_422_af
                        .size            n455_call_icon_bx, .-n455_call_icon_bx
                        .type            n456_lit_string_bx, @function
n456_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n457_lit_integer_α
n456_lit_string_β:      mov              r11, 240;                            jmp   .Ldisjunction_ω_422_af
.Llit_string_α_615_0:   .quad            .Llit_string_α_615_0_s
.Llit_string_α_615_0_s: .string          ""
                        .size            n456_lit_string_bx, .-n456_lit_string_bx
                        .type            n457_lit_integer_bx, @function
n457_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_integer_α:     mov              r11, 241
                        mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_616_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n458_scan_tab_α
.Llit_integer_α_616_0:  .quad            0
                        .size            n457_lit_integer_bx, .-n457_lit_integer_bx
                        .type            n458_scan_tab_bx, @function
n458_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_scan_tab_α:        mov              r11, 242
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_618_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_618_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_422_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_422_af
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
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n459_binop_test_α
n458_scan_tab_β:        mov              r11, 242
                        mov              r14, qword ptr [rsp + 1584];         jmp   .Ldisjunction_ω_422_af
                        .size            n458_scan_tab_bx, .-n458_scan_tab_bx
                        .type            n459_binop_test_bx, @function
n459_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_binop_test_α:      mov              r11, 243
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
                        test             eax, eax;                            jz    n458_scan_tab_β
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_422_as
n459_binop_test_β:      mov              r11, 243;                            jmp   n458_scan_tab_β
                        .size            n459_binop_test_bx, .-n459_binop_test_bx
                        .type            n460_scan_bx, @function
n460_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_scan_α:            mov              r11, 244
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
                        mov              r15, qword ptr [rsp + 336];          jmp   n376_var_α
n460_scan_β:            mov              r11, 244;                            jmp   n376_var_α
                        .size            n460_scan_bx, .-n460_scan_bx
                        .type            n461_lit_string_bx, @function
n461_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_622_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n462_scan_match_α
n461_lit_string_β:      mov              r11, 245;                            jmp   .Ldisjunction_ω_394_af
.Llit_string_α_622_0:   .quad            .Llit_string_α_622_0_s
.Llit_string_α_622_0_s: .string          "-"
                        .size            n461_lit_string_bx, .-n461_lit_string_bx
                        .type            n462_scan_match_bx, @function
n462_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_scan_match_α:      mov              r11, 246
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_394_af
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_394_af
                        mov              qword ptr [rsp + 2368], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2376], rax;         jmp   n463_scan_tab_α
.Lscan_match_α_624_0:   .quad            .Lscan_match_α_624_0_s
.Lscan_match_α_624_0_s: .string          "-"
                        .size            n462_scan_match_bx, .-n462_scan_match_bx
                        .type            n463_scan_tab_bx, @function
n463_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_scan_tab_α:        mov              r11, 247
                        mov              rax, qword ptr [rsp + 2376]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_626_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_626_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_394_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_394_af
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
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n464_lit_integer_α
n463_scan_tab_β:        mov              r11, 247
                        mov              r14, qword ptr [rsp + 2352];         jmp   .Ldisjunction_ω_394_af
                        .size            n463_scan_tab_bx, .-n463_scan_tab_bx
                        .type            n464_lit_integer_bx, @function
n464_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_integer_α:     mov              r11, 248
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_627_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n465_scan_pos_α
.Llit_integer_α_627_0:  .quad            0
                        .size            n464_lit_integer_bx, .-n464_lit_integer_bx
                        .type            n465_scan_pos_bx, @function
n465_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_scan_pos_α:        mov              r11, 249
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_629_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_629_0:     cmp              rax, 1;                              jl    n463_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n463_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n463_scan_tab_β
                        mov              qword ptr [rsp + 2304], 3
                        mov              qword ptr [rsp + 2312], rax;         jmp   n466_conjunction_α
                        .size            n465_scan_pos_bx, .-n465_scan_pos_bx
                        .type            n466_conjunction_bx, @function
n466_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_conjunction_α:     mov              r11, 250
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n467_var_α
n466_conjunction_β:     mov              r11, 250;                            jmp   .Ldisjunction_ω_394_af
                        .size            n466_conjunction_bx, .-n466_conjunction_bx
                        .type            n467_var_bx, @function
n467_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_var_α:             mov              r11, 251
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0;           jmp   n468_assign_α
n467_var_β:             mov              r11, 251;                            jmp   n469_var_α
                        .size            n467_var_bx, .-n467_var_bx
                        .type            n468_assign_bx, @function
n468_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_assign_α:          mov              r11, 252
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n469_var_α
                        .size            n468_assign_bx, .-n468_assign_bx
                        .type            n469_var_bx, @function
n469_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 216], rax;          jmp   n470_var_α
                        .size            n469_var_bx, .-n469_var_bx
                        .type            n470_var_bx, @function
n470_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n471_var_α
                        .size            n470_var_bx, .-n470_var_bx
                        .type            n471_var_bx, @function
n471_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_var_α:             mov              r11, 255
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 200], rax;          jmp   n472_call_icon_α
                        .size            n471_var_bx, .-n471_var_bx
                        .type            n472_call_icon_bx, @function
n472_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_call_icon_α:       mov              r11, 256
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn640:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn640]
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
                        cmp              al, 104;                             je    n474_var_α
                                                                              jmp   n473_call_icon_α
n472_call_icon_β:       mov              r11, 256;                            jmp   n474_var_α
                        .size            n472_call_icon_bx, .-n472_call_icon_bx
                        .type            n473_call_icon_bx, @function
n473_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_call_icon_α:       mov              r11, 257
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn642:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn642]
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
                        cmp              al, 104;                             je    n474_var_α
                                                                              jmp   n470_var_α
n473_call_icon_β:       mov              r11, 257;                            jmp   n474_var_α
                        .size            n473_call_icon_bx, .-n473_call_icon_bx
                        .type            n474_var_bx, @function
n474_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_var_α:             mov              r11, 258
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 56], rax;           jmp   n475_return_α
                        .size            n474_var_bx, .-n474_var_bx
                        .type            n475_return_bx, @function
n475_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_return_α:          mov              r11, 259
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
                        .size            n475_return_bx, .-n475_return_bx
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
                        .type            n647_var_bx, @function
n647_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_var_α:             mov              r11, 260
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n648_assign_α
                        .size            n647_var_bx, .-n647_var_bx
                        .type            n648_assign_bx, @function
n648_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_assign_α:          mov              r11, 261
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [r9 + 96], rax             # Name__
                        mov              qword ptr [r9 + 104], rdx;           jmp   n649_call_proc_staged_α
                        .size            n648_assign_bx, .-n648_assign_bx
                        .type            n649_call_proc_staged_bx, @function
n649_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n650_call_proc_staged_α
                                                                              jmp   n650_call_proc_staged_α
n649_call_proc_staged_β:
                        mov              r11, 262;                            jmp   n650_call_proc_staged_α
.Lcall_proc_staged_β_671_0:
                        .quad            .Lcall_proc_staged_β_671_0_s
.Lcall_proc_staged_β_671_0_s:
                        .string          "Signature__"
                        .size            n649_call_proc_staged_bx, .-n649_call_proc_staged_bx
                        .type            n650_call_proc_staged_bx, @function
n650_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n651_call_proc_staged_α
                                                                              jmp   n651_call_proc_staged_α
n650_call_proc_staged_β:
                        mov              r11, 263;                            jmp   n651_call_proc_staged_α
.Lcall_proc_staged_β_673_0:
                        .quad            .Lcall_proc_staged_β_673_0_s
.Lcall_proc_staged_β_673_0_s:
                        .string          "Regions__"
                        .size            n650_call_proc_staged_bx, .-n650_call_proc_staged_bx
                        .type            n651_call_proc_staged_bx, @function
n651_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n652_disjunction_α
                                                                              jmp   n652_disjunction_α
n651_call_proc_staged_β:
                        mov              r11, 264;                            jmp   n652_disjunction_α
.Lcall_proc_staged_β_675_0:
                        .quad            .Lcall_proc_staged_β_675_0_s
.Lcall_proc_staged_β_675_0_s:
                        .string          "Time__"
                        .size            n651_call_proc_staged_bx, .-n651_call_proc_staged_bx
                        .type            n652_disjunction_bx, @function
n652_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_disjunction_α:     mov              r11, 265
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n662_lit_string_α
.Ldisjunction_γ_652_as: mov              r11, 265
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_677_0
                                                                              jmp   n653_var_α
.Ldisjunction_α_677_0:                                                        jmp   n653_var_α
n652_disjunction_β:     mov              r11, 265
                        mov              eax, dword ptr [rsp + 128];          jmp   n653_var_α
.Ldisjunction_γ_652_af: mov              r11, 265
.Ldisjunction_ω_652_af: mov              r11, 265
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n653_var_α
                        .size            n652_disjunction_bx, .-n652_disjunction_bx
                        .type            n653_var_bx, @function
n653_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_var_α:             mov              r11, 266
                        mov              rdi, qword ptr [rip + .Lvar_α_678_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n655_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n654_assign_α
.Lvar_α_678_0:          .quad            .Lvar_α_678_0_s
.Lvar_α_678_0_s:        .string          "write"
                        .size            n653_var_bx, .-n653_var_bx
                        .type            n654_assign_bx, @function
n654_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_assign_α:          mov              r11, 267
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 64], rax             # Save__
                        mov              qword ptr [r9 + 72], rdx;            jmp   n655_var_α
                        .size            n654_assign_bx, .-n654_assign_bx
                        .type            n655_var_bx, @function
n655_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n655_var_α:             mov              r11, 268
                        mov              rdi, qword ptr [rip + .Lvar_α_680_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n657_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n656_assign_α
.Lvar_α_680_0:          .quad            .Lvar_α_680_0_s
.Lvar_α_680_0_s:        .string          "writes"
                        .size            n655_var_bx, .-n655_var_bx
                        .type            n656_assign_bx, @function
n656_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_assign_α:          mov              r11, 269
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 80], rax             # Saves__
                        mov              qword ptr [r9 + 88], rdx;            jmp   n657_lit_integer_α
                        .size            n656_assign_bx, .-n656_assign_bx
                        .type            n657_lit_integer_bx, @function
n657_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_integer_α:     mov              r11, 270
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_682_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n658_assign_α
.Llit_integer_α_682_0:  .quad            1
                        .size            n657_lit_integer_bx, .-n657_lit_integer_bx
                        .type            n658_assign_bx, @function
n658_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n658_assign_α:          mov              r11, 271
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n659_assign_α
.Lassign_α_683_0:       .quad            .Lassign_α_683_0_s
.Lassign_α_683_0_s:     .string          "writes"
                        .size            n658_assign_bx, .-n658_assign_bx
                        .type            n659_assign_bx, @function
n659_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n659_assign_α:          mov              r11, 272
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n660_return_α
.Lassign_α_684_0:       .quad            .Lassign_α_684_0_s
.Lassign_α_684_0_s:     .string          "write"
                        .size            n659_assign_bx, .-n659_assign_bx
                        .type            n660_return_bx, @function
n660_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n660_return_α:          mov              r11, 273
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n660_return_bx, .-n660_return_bx
                        .type            n661_conjunction_bx, @function
n661_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n661_conjunction_α:     mov              r11, 274;                            jmp   .Ldisjunction_γ_652_as
n661_conjunction_β:     mov              r11, 274;                            jmp   n653_var_α
                        .size            n661_conjunction_bx, .-n661_conjunction_bx
                        .type            n662_lit_string_bx, @function
n662_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:      mov              r11, 275
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_687_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n663_call_icon_α
n662_lit_string_β:      mov              r11, 275;                            jmp   .Ldisjunction_ω_652_af
.Llit_string_α_687_0:   .quad            .Llit_string_α_687_0_s
.Llit_string_α_687_0_s: .string          "OUTPUT"
                        .size            n662_lit_string_bx, .-n662_lit_string_bx
                        .type            n663_call_icon_bx, @function
n663_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n663_call_icon_α:       mov              r11, 276
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn689:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn689]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_652_af
                                                                              jmp   n664_lit_string_α
n663_call_icon_β:       mov              r11, 276;                            jmp   .Ldisjunction_ω_652_af
                        .size            n663_call_icon_bx, .-n663_call_icon_bx
                        .type            n664_lit_string_bx, @function
n664_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_690_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n665_call_icon_α
.Llit_string_α_690_0:   .quad            .Llit_string_α_690_0_s
.Llit_string_α_690_0_s: .string          "*** Benchmarking with output ***"
                        .size            n664_lit_string_bx, .-n664_lit_string_bx
                        .type            n665_call_icon_bx, @function
n665_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n665_call_icon_α:       mov              r11, 278
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn692:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn692]
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
                        cmp              al, 104;                             je    n666_return_α
                                                                              jmp   n666_return_α
n665_call_icon_β:       mov              r11, 278;                            jmp   n666_return_α
                        .size            n665_call_icon_bx, .-n665_call_icon_bx
                        .type            n666_return_bx, @function
n666_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n666_return_α:          mov              r11, 279
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n666_return_bx, .-n666_return_bx
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
                        .type            n695_disjunction_bx, @function
n695_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n695_disjunction_α:     mov              r11, 280
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n696_lit_string_α
.Ldisjunction_γ_695_as: mov              r11, 280
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_713_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n704_var_α
.Ldisjunction_α_713_0:                                                        jmp   n704_var_α
n695_disjunction_β:     mov              r11, 280
                        mov              eax, dword ptr [rsp + 288];          jmp   n704_var_α
.Ldisjunction_γ_695_af: mov              r11, 280
.Ldisjunction_ω_695_af: mov              r11, 280
                        add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288];          jmp   n704_var_α
                        .size            n695_disjunction_bx, .-n695_disjunction_bx
                        .type            n696_lit_string_bx, @function
n696_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n696_lit_string_α:      mov              r11, 281
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_714_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n697_call_icon_α
n696_lit_string_β:      mov              r11, 281;                            jmp   n698_var_α
.Llit_string_α_714_0:   .quad            .Llit_string_α_714_0_s
.Llit_string_α_714_0_s: .string          "OUTPUT"
                        .size            n696_lit_string_bx, .-n696_lit_string_bx
                        .type            n697_call_icon_bx, @function
n697_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n697_call_icon_α:       mov              r11, 282
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn716:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn716]
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
                        cmp              al, 104;                             je    n698_var_α
                                                                              jmp   .Ldisjunction_γ_695_af
n697_call_icon_β:       mov              r11, 282;                            jmp   n698_var_α
                        .size            n697_call_icon_bx, .-n697_call_icon_bx
                        .type            n698_var_bx, @function
n698_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n698_var_α:             mov              r11, 283
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0;            jmp   n699_var_α
n698_var_β:             mov              r11, 283;                            jmp   .Ldisjunction_ω_695_af
                        .size            n698_var_bx, .-n698_var_bx
                        .type            n699_var_bx, @function
n699_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n699_var_α:             mov              r11, 284
                        mov              rax, qword ptr [r9 + 64]             # Save__
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 368], rax           # result
                        mov              qword ptr [rsp + 376], rdx;          jmp   n700_assign_α
                        .size            n699_var_bx, .-n699_var_bx
                        .type            n700_assign_bx, @function
n700_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n700_assign_α:          mov              r11, 285
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n701_var_α
.Lassign_α_719_0:       .quad            .Lassign_α_719_0_s
.Lassign_α_719_0_s:     .string          "write"
                        .size            n700_assign_bx, .-n700_assign_bx
                        .type            n701_var_bx, @function
n701_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n701_var_α:             mov              r11, 286
                        mov              rax, qword ptr [r9 + 80]             # Saves__
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 336], rax           # result
                        mov              qword ptr [rsp + 344], rdx;          jmp   n702_assign_α
                        .size            n701_var_bx, .-n701_var_bx
                        .type            n702_assign_bx, @function
n702_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n702_assign_α:          mov              r11, 287
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n703_conjunction_α
.Lassign_α_721_0:       .quad            .Lassign_α_721_0_s
.Lassign_α_721_0_s:     .string          "writes"
                        .size            n702_assign_bx, .-n702_assign_bx
                        .type            n703_conjunction_bx, @function
n703_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n703_conjunction_α:     mov              r11, 288
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   .Ldisjunction_γ_695_as
n703_conjunction_β:     mov              r11, 288;                            jmp   n704_var_α
                        .size            n703_conjunction_bx, .-n703_conjunction_bx
                        .type            n704_var_bx, @function
n704_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n704_var_α:             mov              r11, 289
                        mov              rax, qword ptr [r9 + 96]             # Name__
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n705_lit_string_α
                        .size            n704_var_bx, .-n704_var_bx
                        .type            n705_lit_string_bx, @function
n705_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:      mov              r11, 290
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_724_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n706_call_proc_staged_α
.Llit_string_α_724_0:   .quad            .Llit_string_α_724_0_s
.Llit_string_α_724_0_s: .string          " elapsed time = "
                        .size            n705_lit_string_bx, .-n705_lit_string_bx
                        .type            n706_call_proc_staged_bx, @function
n706_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n708_call_proc_staged_α
                                                                              jmp   n707_call_icon_α
n706_call_proc_staged_β:
                        mov              r11, 291;                            jmp   n708_call_proc_staged_α
.Lcall_proc_staged_β_726_0:
                        .quad            .Lcall_proc_staged_β_726_0_s
.Lcall_proc_staged_β_726_0_s:
                        .string          "Time__"
                        .size            n706_call_proc_staged_bx, .-n706_call_proc_staged_bx
                        .type            n707_call_icon_bx, @function
n707_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_call_icon_α:       mov              r11, 292
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
.Lcall_icon_α_rkfn728:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn728]
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
                        cmp              al, 104;                             je    n708_call_proc_staged_α
                                                                              jmp   n708_call_proc_staged_α
n707_call_icon_β:       mov              r11, 292;                            jmp   n708_call_proc_staged_α
                        .size            n707_call_icon_bx, .-n707_call_icon_bx
                        .type            n708_call_proc_staged_bx, @function
n708_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n708_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n709_call_proc_staged_α
                                                                              jmp   n709_call_proc_staged_α
n708_call_proc_staged_β:
                        mov              r11, 293;                            jmp   n709_call_proc_staged_α
.Lcall_proc_staged_β_730_0:
                        .quad            .Lcall_proc_staged_β_730_0_s
.Lcall_proc_staged_β_730_0_s:
                        .string          "Regions__"
                        .size            n708_call_proc_staged_bx, .-n708_call_proc_staged_bx
                        .type            n709_call_proc_staged_bx, @function
n709_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n709_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n710_call_proc_staged_α
                                                                              jmp   n710_call_proc_staged_α
n709_call_proc_staged_β:
                        mov              r11, 294;                            jmp   n710_call_proc_staged_α
.Lcall_proc_staged_β_732_0:
                        .quad            .Lcall_proc_staged_β_732_0_s
.Lcall_proc_staged_β_732_0_s:
                        .string          "Storage__"
                        .size            n709_call_proc_staged_bx, .-n709_call_proc_staged_bx
                        .type            n710_call_proc_staged_bx, @function
n710_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n710_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n711_return_α
                                                                              jmp   n711_return_α
n710_call_proc_staged_β:
                        mov              r11, 295;                            jmp   n711_return_α
.Lcall_proc_staged_β_734_0:
                        .quad            .Lcall_proc_staged_β_734_0_s
.Lcall_proc_staged_β_734_0_s:
                        .string          "Collections__"
                        .size            n710_call_proc_staged_bx, .-n710_call_proc_staged_bx
                        .type            n711_return_bx, @function
n711_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n711_return_α:          mov              r11, 296
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Term___γ
                        .size            n711_return_bx, .-n711_return_bx
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
                        .type            n737_disjunction_bx, @function
n737_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_disjunction_α:     mov              r11, 297
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n764_var_ref_α
.Ldisjunction_γ_737_as: mov              r11, 297
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_775_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n738_make_list_α
.Ldisjunction_α_775_0:                                                        jmp   n738_make_list_α
n737_disjunction_β:     mov              r11, 297
                        mov              eax, dword ptr [rsp + 656];          jmp   n738_make_list_α
.Ldisjunction_γ_737_af: mov              r11, 297
.Ldisjunction_ω_737_af: mov              r11, 297
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n738_make_list_α
                        .size            n737_disjunction_bx, .-n737_disjunction_bx
                        .type            n738_make_list_bx, @function
n738_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_make_list_α:       mov              r11, 298
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n739_assign_α
                        .size            n738_make_list_bx, .-n738_make_list_bx
                        .type            n739_assign_bx, @function
n739_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_assign_α:          mov              r11, 299
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n740_var_α
                        .size            n739_assign_bx, .-n739_assign_bx
                        .type            n740_var_bx, @function
n740_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_var_α:             mov              r11, 300
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 584], rax;          jmp   n741_kw_icon_gen_α
                        .size            n740_var_bx, .-n740_var_bx
                        .type            n741_kw_icon_gen_bx, @function
n741_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_kw_icon_gen_α:     mov              r11, 301
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
                        cmp              al, 104;                             je    n743_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n742_call_icon_α
n741_kw_icon_gen_β:     mov              r11, 301;                            jmp   .Lkw_icon_gen_α_781_1
.Lkw_icon_gen_α_781_0:  .quad            .Lkw_icon_gen_α_781_0_s
.Lkw_icon_gen_α_781_0_s:
                        .string          "&collections"
                        .size            n741_kw_icon_gen_bx, .-n741_kw_icon_gen_bx
                        .type            n742_call_icon_bx, @function
n742_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_call_icon_α:       mov              r11, 302
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn783:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn783]
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
                        cmp              al, 104;                             je    n741_kw_icon_gen_β
                                                                              jmp   n741_kw_icon_gen_β
n742_call_icon_β:       mov              r11, 302;                            jmp   n741_kw_icon_gen_β
                        .size            n742_call_icon_bx, .-n742_call_icon_bx
                        .type            n743_lit_string_bx, @function
n743_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_784_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n744_call_icon_α
.Llit_string_α_784_0:   .quad            .Llit_string_α_784_0_s
.Llit_string_α_784_0_s: .string          "collections"
                        .size            n743_lit_string_bx, .-n743_lit_string_bx
                        .type            n744_call_icon_bx, @function
n744_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_call_icon_α:       mov              r11, 304
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn786:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn786]
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
                        cmp              al, 104;                             je    n745_lit_integer_α
                                                                              jmp   n745_lit_integer_α
n744_call_icon_β:       mov              r11, 304;                            jmp   n745_lit_integer_α
                        .size            n744_call_icon_bx, .-n744_call_icon_bx
                        .type            n745_lit_integer_bx, @function
n745_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_integer_α:     mov              r11, 305
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_787_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n746_var_α
.Llit_integer_α_787_0:  .quad            1
                        .size            n745_lit_integer_bx, .-n745_lit_integer_bx
                        .type            n746_var_bx, @function
n746_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n746_var_α:             mov              r11, 306
                        mov              rax, qword ptr [r9 + 112]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n747_unop_α
                        .size            n746_var_bx, .-n746_var_bx
                        .type            n747_unop_bx, @function
n747_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n747_unop_α:            mov              r11, 307
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n748_to_α
                        .size            n747_unop_bx, .-n747_unop_bx
                        .type            n748_to_bx, @function
n748_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n748_to_α:              mov              r11, 308
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
                        cmp              rax, rcx;                            jg    n763_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n749_assign_α
n748_to_β:              mov              r11, 308
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_791_0
                        .size            n748_to_bx, .-n748_to_bx
                        .type            n749_assign_bx, @function
n749_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n749_assign_α:          mov              r11, 309
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n750_bound_α
                        .size            n749_assign_bx, .-n749_assign_bx
                        .type            n750_bound_bx, @function
n750_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n750_bound_α:           mov              r11, 310
                        mov              qword ptr [rsp + 112], rsp;          jmp   n751_var_ref_α
                        .size            n750_bound_bx, .-n750_bound_bx
                        .type            n751_var_ref_bx, @function
n751_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n751_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n752_var_α
                        .size            n751_var_ref_bx, .-n751_var_ref_bx
                        .type            n752_var_bx, @function
n752_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n752_var_α:             mov              r11, 312
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 248], rax;          jmp   n753_subscript_α
                        .size            n752_var_bx, .-n752_var_bx
                        .type            n753_subscript_bx, @function
n753_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n753_subscript_α:       mov              r11, 313
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
                        cmp              al, 104;                             je    n762_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n754_deref_α
                        .size            n753_subscript_bx, .-n753_subscript_bx
                        .type            n754_deref_bx, @function
n754_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n754_deref_α:           mov              r11, 314
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
                        cmp              al, 104;                             je    n762_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n755_var_ref_α
                        .size            n754_deref_bx, .-n754_deref_bx
                        .type            n755_var_ref_bx, @function
n755_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n755_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n756_var_α
                        .size            n755_var_ref_bx, .-n755_var_ref_bx
                        .type            n756_var_bx, @function
n756_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n756_var_α:             mov              r11, 316
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 376], rax;          jmp   n757_subscript_α
                        .size            n756_var_bx, .-n756_var_bx
                        .type            n757_subscript_bx, @function
n757_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n757_subscript_α:       mov              r11, 317
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
                        cmp              al, 104;                             je    n762_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n758_deref_α
                        .size            n757_subscript_bx, .-n757_subscript_bx
                        .type            n758_deref_bx, @function
n758_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n758_deref_α:           mov              r11, 318
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
                        cmp              al, 104;                             je    n762_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n759_lit_integer_α
                        .size            n758_deref_bx, .-n758_deref_bx
                        .type            n759_lit_integer_bx, @function
n759_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_integer_α:     mov              r11, 319
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_807_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n760_call_icon_α
.Llit_integer_α_807_0:  .quad            8
                        .size            n759_lit_integer_bx, .-n759_lit_integer_bx
                        .type            n760_call_icon_bx, @function
n760_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n760_call_icon_α:       mov              r11, 320
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn809:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn809]
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
                        cmp              al, 104;                             je    n762_unmark_α
                                                                              jmp   n761_call_icon_α
n760_call_icon_β:       mov              r11, 320;                            jmp   n762_unmark_α
                        .size            n760_call_icon_bx, .-n760_call_icon_bx
                        .type            n761_call_icon_bx, @function
n761_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n761_call_icon_α:       mov              r11, 321
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn811:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn811]
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
                        cmp              al, 104;                             je    n762_unmark_α
                                                                              jmp   n762_unmark_α
n761_call_icon_β:       mov              r11, 321;                            jmp   n762_unmark_α
                        .size            n761_call_icon_bx, .-n761_call_icon_bx
                        .type            n762_unmark_bx, @function
n762_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n762_unmark_α:          mov              r11, 322
                        mov              rsp, qword ptr [rsp + 112];          jmp   n748_to_β
                        .size            n762_unmark_bx, .-n762_unmark_bx
                        .type            n763_return_bx, @function
n763_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n763_return_α:          mov              r11, 323
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Collections___γ
                        .size            n763_return_bx, .-n763_return_bx
                        .type            n764_var_ref_bx, @function
n764_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n764_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        mov              rdx, 1879052416                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n765_nulltest_var_α
n764_var_ref_β:         mov              r11, 324;                            jmp   .Ldisjunction_ω_737_af
                        .size            n764_var_ref_bx, .-n764_var_ref_bx
                        .type            n765_nulltest_var_bx, @function
n765_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n765_nulltest_var_α:    mov              r11, 325
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 104;                             je    .Ldisjunction_ω_737_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_737_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_737_af
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 920], rax;          jmp   n766_lit_integer_α
                        .size            n765_nulltest_var_bx, .-n765_nulltest_var_bx
                        .type            n766_lit_integer_bx, @function
n766_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_integer_α:     mov              r11, 326
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_818_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n767_assign_var_α
.Llit_integer_α_818_0:  .quad            1
                        .size            n766_lit_integer_bx, .-n766_lit_integer_bx
                        .type            n767_assign_var_bx, @function
n767_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n767_assign_var_α:      mov              r11, 327
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_737_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n768_lit_string_α
                        .size            n767_assign_var_bx, .-n767_assign_var_bx
                        .type            n768_lit_string_bx, @function
n768_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_820_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n769_lit_string_α
.Llit_string_α_820_0:   .quad            .Llit_string_α_820_0_s
.Llit_string_α_820_0_s: .string          "total"
                        .size            n768_lit_string_bx, .-n768_lit_string_bx
                        .type            n769_lit_string_bx, @function
n769_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n769_lit_string_α:      mov              r11, 329
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_821_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n770_lit_string_α
.Llit_string_α_821_0:   .quad            .Llit_string_α_821_0_s
.Llit_string_α_821_0_s: .string          "static"
                        .size            n769_lit_string_bx, .-n769_lit_string_bx
                        .type            n770_lit_string_bx, @function
n770_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_822_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n771_lit_string_α
.Llit_string_α_822_0:   .quad            .Llit_string_α_822_0_s
.Llit_string_α_822_0_s: .string          "string"
                        .size            n770_lit_string_bx, .-n770_lit_string_bx
                        .type            n771_lit_string_bx, @function
n771_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_823_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n772_make_list_α
.Llit_string_α_823_0:   .quad            .Llit_string_α_823_0_s
.Llit_string_α_823_0_s: .string          "block"
                        .size            n771_lit_string_bx, .-n771_lit_string_bx
                        .type            n772_make_list_bx, @function
n772_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n772_make_list_α:       mov              r11, 332
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n773_assign_α
                        .size            n772_make_list_bx, .-n772_make_list_bx
                        .type            n773_assign_bx, @function
n773_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n773_assign_α:          mov              r11, 333
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 112], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 120], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_737_as
n773_assign_β:          mov              r11, 333;                            jmp   n738_make_list_α
                        .size            n773_assign_bx, .-n773_assign_bx
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
                        .type            n828_disjunction_bx, @function
n828_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n828_disjunction_α:     mov              r11, 334
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n855_var_ref_α
.Ldisjunction_γ_828_as: mov              r11, 334
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_865_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n829_make_list_α
.Ldisjunction_α_865_0:                                                        jmp   n829_make_list_α
n828_disjunction_β:     mov              r11, 334
                        mov              eax, dword ptr [rsp + 656];          jmp   n829_make_list_α
.Ldisjunction_γ_828_af: mov              r11, 334
.Ldisjunction_ω_828_af: mov              r11, 334
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n829_make_list_α
                        .size            n828_disjunction_bx, .-n828_disjunction_bx
                        .type            n829_make_list_bx, @function
n829_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n829_make_list_α:       mov              r11, 335
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n830_assign_α
                        .size            n829_make_list_bx, .-n829_make_list_bx
                        .type            n830_assign_bx, @function
n830_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n830_assign_α:          mov              r11, 336
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n831_var_α
                        .size            n830_assign_bx, .-n830_assign_bx
                        .type            n831_var_bx, @function
n831_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n831_var_α:             mov              r11, 337
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n832_kw_icon_gen_α
                        .size            n831_var_bx, .-n831_var_bx
                        .type            n832_kw_icon_gen_bx, @function
n832_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n832_kw_icon_gen_α:     mov              r11, 338
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
                        cmp              al, 104;                             je    n834_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n833_call_icon_α
n832_kw_icon_gen_β:     mov              r11, 338;                            jmp   .Lkw_icon_gen_α_871_1
.Lkw_icon_gen_α_871_0:  .quad            .Lkw_icon_gen_α_871_0_s
.Lkw_icon_gen_α_871_0_s:
                        .string          "&regions"
                        .size            n832_kw_icon_gen_bx, .-n832_kw_icon_gen_bx
                        .type            n833_call_icon_bx, @function
n833_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n833_call_icon_α:       mov              r11, 339
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn873:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn873]
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
                        cmp              al, 104;                             je    n832_kw_icon_gen_β
                                                                              jmp   n832_kw_icon_gen_β
n833_call_icon_β:       mov              r11, 339;                            jmp   n832_kw_icon_gen_β
                        .size            n833_call_icon_bx, .-n833_call_icon_bx
                        .type            n834_lit_string_bx, @function
n834_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_string_α:      mov              r11, 340
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_874_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n835_call_icon_α
.Llit_string_α_874_0:   .quad            .Llit_string_α_874_0_s
.Llit_string_α_874_0_s: .string          "regions"
                        .size            n834_lit_string_bx, .-n834_lit_string_bx
                        .type            n835_call_icon_bx, @function
n835_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n835_call_icon_α:       mov              r11, 341
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn876:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn876]
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
                        cmp              al, 104;                             je    n836_lit_integer_α
                                                                              jmp   n836_lit_integer_α
n835_call_icon_β:       mov              r11, 341;                            jmp   n836_lit_integer_α
                        .size            n835_call_icon_bx, .-n835_call_icon_bx
                        .type            n836_lit_integer_bx, @function
n836_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n836_lit_integer_α:     mov              r11, 342
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_877_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n837_var_α
.Llit_integer_α_877_0:  .quad            1
                        .size            n836_lit_integer_bx, .-n836_lit_integer_bx
                        .type            n837_var_bx, @function
n837_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n837_var_α:             mov              r11, 343
                        mov              rax, qword ptr [r9 + 144]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n838_unop_α
                        .size            n837_var_bx, .-n837_var_bx
                        .type            n838_unop_bx, @function
n838_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n838_unop_α:            mov              r11, 344
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n839_to_α
                        .size            n838_unop_bx, .-n838_unop_bx
                        .type            n839_to_bx, @function
n839_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n839_to_α:              mov              r11, 345
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
                        cmp              rax, rcx;                            jg    n854_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n840_assign_α
n839_to_β:              mov              r11, 345
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_881_0
                        .size            n839_to_bx, .-n839_to_bx
                        .type            n840_assign_bx, @function
n840_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n840_assign_α:          mov              r11, 346
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n841_bound_α
                        .size            n840_assign_bx, .-n840_assign_bx
                        .type            n841_bound_bx, @function
n841_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n841_bound_α:           mov              r11, 347
                        mov              qword ptr [rsp + 112], rsp;          jmp   n842_var_ref_α
                        .size            n841_bound_bx, .-n841_bound_bx
                        .type            n842_var_ref_bx, @function
n842_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n842_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        mov              rdx, 1879052432                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n843_var_α
                        .size            n842_var_ref_bx, .-n842_var_ref_bx
                        .type            n843_var_bx, @function
n843_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n843_var_α:             mov              r11, 349
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n844_subscript_α
                        .size            n843_var_bx, .-n843_var_bx
                        .type            n844_subscript_bx, @function
n844_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n844_subscript_α:       mov              r11, 350
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
                        cmp              al, 104;                             je    n853_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n845_deref_α
                        .size            n844_subscript_bx, .-n844_subscript_bx
                        .type            n845_deref_bx, @function
n845_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n845_deref_α:           mov              r11, 351
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
                        cmp              al, 104;                             je    n853_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n846_var_ref_α
                        .size            n845_deref_bx, .-n845_deref_bx
                        .type            n846_var_ref_bx, @function
n846_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n846_var_ref_α:         mov              r11, 352
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n847_var_α
                        .size            n846_var_ref_bx, .-n846_var_ref_bx
                        .type            n847_var_bx, @function
n847_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:             mov              r11, 353
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n848_subscript_α
                        .size            n847_var_bx, .-n847_var_bx
                        .type            n848_subscript_bx, @function
n848_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n848_subscript_α:       mov              r11, 354
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
                        cmp              al, 104;                             je    n853_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n849_deref_α
                        .size            n848_subscript_bx, .-n848_subscript_bx
                        .type            n849_deref_bx, @function
n849_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n849_deref_α:           mov              r11, 355
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
                        cmp              al, 104;                             je    n853_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n850_lit_integer_α
                        .size            n849_deref_bx, .-n849_deref_bx
                        .type            n850_lit_integer_bx, @function
n850_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n850_lit_integer_α:     mov              r11, 356
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_897_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n851_call_icon_α
.Llit_integer_α_897_0:  .quad            8
                        .size            n850_lit_integer_bx, .-n850_lit_integer_bx
                        .type            n851_call_icon_bx, @function
n851_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n851_call_icon_α:       mov              r11, 357
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn899:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn899]
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
                        cmp              al, 104;                             je    n853_unmark_α
                                                                              jmp   n852_call_icon_α
n851_call_icon_β:       mov              r11, 357;                            jmp   n853_unmark_α
                        .size            n851_call_icon_bx, .-n851_call_icon_bx
                        .type            n852_call_icon_bx, @function
n852_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n852_call_icon_α:       mov              r11, 358
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn901:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn901]
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
                        cmp              al, 104;                             je    n853_unmark_α
                                                                              jmp   n853_unmark_α
n852_call_icon_β:       mov              r11, 358;                            jmp   n853_unmark_α
                        .size            n852_call_icon_bx, .-n852_call_icon_bx
                        .type            n853_unmark_bx, @function
n853_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n853_unmark_α:          mov              r11, 359
                        mov              rsp, qword ptr [rsp + 112];          jmp   n839_to_β
                        .size            n853_unmark_bx, .-n853_unmark_bx
                        .type            n854_return_bx, @function
n854_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n854_return_α:          mov              r11, 360
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Regions___γ
                        .size            n854_return_bx, .-n854_return_bx
                        .type            n855_var_ref_bx, @function
n855_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n855_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n856_nulltest_var_α
n855_var_ref_β:         mov              r11, 361;                            jmp   .Ldisjunction_ω_828_af
                        .size            n855_var_ref_bx, .-n855_var_ref_bx
                        .type            n856_nulltest_var_bx, @function
n856_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n856_nulltest_var_α:    mov              r11, 362
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_828_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_828_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_828_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n857_lit_integer_α
                        .size            n856_nulltest_var_bx, .-n856_nulltest_var_bx
                        .type            n857_lit_integer_bx, @function
n857_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n857_lit_integer_α:     mov              r11, 363
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_908_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n858_assign_var_α
.Llit_integer_α_908_0:  .quad            1
                        .size            n857_lit_integer_bx, .-n857_lit_integer_bx
                        .type            n858_assign_var_bx, @function
n858_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n858_assign_var_α:      mov              r11, 364
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_828_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n859_lit_string_α
                        .size            n858_assign_var_bx, .-n858_assign_var_bx
                        .type            n859_lit_string_bx, @function
n859_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n859_lit_string_α:      mov              r11, 365
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_910_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n860_lit_string_α
.Llit_string_α_910_0:   .quad            .Llit_string_α_910_0_s
.Llit_string_α_910_0_s: .string          "static"
                        .size            n859_lit_string_bx, .-n859_lit_string_bx
                        .type            n860_lit_string_bx, @function
n860_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n860_lit_string_α:      mov              r11, 366
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_911_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n861_lit_string_α
.Llit_string_α_911_0:   .quad            .Llit_string_α_911_0_s
.Llit_string_α_911_0_s: .string          "string"
                        .size            n860_lit_string_bx, .-n860_lit_string_bx
                        .type            n861_lit_string_bx, @function
n861_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n861_lit_string_α:      mov              r11, 367
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_912_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n862_make_list_α
.Llit_string_α_912_0:   .quad            .Llit_string_α_912_0_s
.Llit_string_α_912_0_s: .string          "block"
                        .size            n861_lit_string_bx, .-n861_lit_string_bx
                        .type            n862_make_list_bx, @function
n862_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n862_make_list_α:       mov              r11, 368
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n863_assign_α
                        .size            n862_make_list_bx, .-n862_make_list_bx
                        .type            n863_assign_bx, @function
n863_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n863_assign_α:          mov              r11, 369
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 144], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 152], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_828_as
n863_assign_β:          mov              r11, 369;                            jmp   n829_make_list_α
                        .size            n863_assign_bx, .-n863_assign_bx
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
                        .type            n917_kw_icon_bx, @function
n917_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n917_kw_icon_α:         mov              r11, 370
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_924_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n919_kw_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n918_call_icon_α
n917_kw_icon_β:         mov              r11, 370;                            jmp   n919_kw_icon_α
.Lkw_icon_α_924_0:      .quad            .Lkw_icon_α_924_0_s
.Lkw_icon_α_924_0_s:    .string          "&version"
                        .size            n917_kw_icon_bx, .-n917_kw_icon_bx
                        .type            n918_call_icon_bx, @function
n918_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n918_call_icon_α:       mov              r11, 371
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn926:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn926]
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
                        cmp              al, 104;                             je    n919_kw_icon_α
                                                                              jmp   n919_kw_icon_α
n918_call_icon_β:       mov              r11, 371;                            jmp   n919_kw_icon_α
                        .size            n918_call_icon_bx, .-n918_call_icon_bx
                        .type            n919_kw_icon_bx, @function
n919_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n919_kw_icon_α:         mov              r11, 372
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_927_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n921_kw_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n920_call_icon_α
n919_kw_icon_β:         mov              r11, 372;                            jmp   n921_kw_icon_gen_α
.Lkw_icon_α_927_0:      .quad            .Lkw_icon_α_927_0_s
.Lkw_icon_α_927_0_s:    .string          "&host"
                        .size            n919_kw_icon_bx, .-n919_kw_icon_bx
                        .type            n920_call_icon_bx, @function
n920_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n920_call_icon_α:       mov              r11, 373
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn929:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn929]
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
                        cmp              al, 104;                             je    n921_kw_icon_gen_α
                                                                              jmp   n921_kw_icon_gen_α
n920_call_icon_β:       mov              r11, 373;                            jmp   n921_kw_icon_gen_α
                        .size            n920_call_icon_bx, .-n920_call_icon_bx
                        .type            n921_kw_icon_gen_bx, @function
n921_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n921_kw_icon_gen_α:     mov              r11, 374
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
                        cmp              al, 104;                             je    n923_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n922_call_icon_α
n921_kw_icon_gen_β:     mov              r11, 374;                            jmp   .Lkw_icon_gen_α_930_1
.Lkw_icon_gen_α_930_0:  .quad            .Lkw_icon_gen_α_930_0_s
.Lkw_icon_gen_α_930_0_s:
                        .string          "&features"
                        .size            n921_kw_icon_gen_bx, .-n921_kw_icon_gen_bx
                        .type            n922_call_icon_bx, @function
n922_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n922_call_icon_α:       mov              r11, 375
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn932:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn932]
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
                        cmp              al, 104;                             je    n921_kw_icon_gen_β
                                                                              jmp   n921_kw_icon_gen_β
n922_call_icon_β:       mov              r11, 375;                            jmp   n921_kw_icon_gen_β
                        .size            n922_call_icon_bx, .-n922_call_icon_bx
                        .type            n923_return_bx, @function
n923_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n923_return_α:          mov              r11, 376
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Signature___γ
                        .size            n923_return_bx, .-n923_return_bx
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
                        .type            n935_disjunction_bx, @function
n935_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n935_disjunction_α:     mov              r11, 377
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n962_var_ref_α
.Ldisjunction_γ_935_as: mov              r11, 377
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_972_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n936_make_list_α
.Ldisjunction_α_972_0:                                                        jmp   n936_make_list_α
n935_disjunction_β:     mov              r11, 377
                        mov              eax, dword ptr [rsp + 656];          jmp   n936_make_list_α
.Ldisjunction_γ_935_af: mov              r11, 377
.Ldisjunction_ω_935_af: mov              r11, 377
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n936_make_list_α
                        .size            n935_disjunction_bx, .-n935_disjunction_bx
                        .type            n936_make_list_bx, @function
n936_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n936_make_list_α:       mov              r11, 378
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n937_assign_α
                        .size            n936_make_list_bx, .-n936_make_list_bx
                        .type            n937_assign_bx, @function
n937_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n937_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n938_var_α
                        .size            n937_assign_bx, .-n937_assign_bx
                        .type            n938_var_bx, @function
n938_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n938_var_α:             mov              r11, 380
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n939_kw_icon_gen_α
                        .size            n938_var_bx, .-n938_var_bx
                        .type            n939_kw_icon_gen_bx, @function
n939_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n939_kw_icon_gen_α:     mov              r11, 381
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
                        cmp              al, 104;                             je    n941_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n940_call_icon_α
n939_kw_icon_gen_β:     mov              r11, 381;                            jmp   .Lkw_icon_gen_α_978_1
.Lkw_icon_gen_α_978_0:  .quad            .Lkw_icon_gen_α_978_0_s
.Lkw_icon_gen_α_978_0_s:
                        .string          "&storage"
                        .size            n939_kw_icon_gen_bx, .-n939_kw_icon_gen_bx
                        .type            n940_call_icon_bx, @function
n940_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n940_call_icon_α:       mov              r11, 382
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn980:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn980]
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
                        cmp              al, 104;                             je    n939_kw_icon_gen_β
                                                                              jmp   n939_kw_icon_gen_β
n940_call_icon_β:       mov              r11, 382;                            jmp   n939_kw_icon_gen_β
                        .size            n940_call_icon_bx, .-n940_call_icon_bx
                        .type            n941_lit_string_bx, @function
n941_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n941_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_981_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n942_call_icon_α
.Llit_string_α_981_0:   .quad            .Llit_string_α_981_0_s
.Llit_string_α_981_0_s: .string          "storage"
                        .size            n941_lit_string_bx, .-n941_lit_string_bx
                        .type            n942_call_icon_bx, @function
n942_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n942_call_icon_α:       mov              r11, 384
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn983:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn983]
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
                        cmp              al, 104;                             je    n943_lit_integer_α
                                                                              jmp   n943_lit_integer_α
n942_call_icon_β:       mov              r11, 384;                            jmp   n943_lit_integer_α
                        .size            n942_call_icon_bx, .-n942_call_icon_bx
                        .type            n943_lit_integer_bx, @function
n943_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n943_lit_integer_α:     mov              r11, 385
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_984_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n944_var_α
.Llit_integer_α_984_0:  .quad            1
                        .size            n943_lit_integer_bx, .-n943_lit_integer_bx
                        .type            n944_var_bx, @function
n944_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n944_var_α:             mov              r11, 386
                        mov              rax, qword ptr [r9 + 176]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n945_unop_α
                        .size            n944_var_bx, .-n944_var_bx
                        .type            n945_unop_bx, @function
n945_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n945_unop_α:            mov              r11, 387
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n946_to_α
                        .size            n945_unop_bx, .-n945_unop_bx
                        .type            n946_to_bx, @function
n946_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n946_to_α:              mov              r11, 388
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
                        cmp              rax, rcx;                            jg    n961_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n947_assign_α
n946_to_β:              mov              r11, 388
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_988_0
                        .size            n946_to_bx, .-n946_to_bx
                        .type            n947_assign_bx, @function
n947_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n947_assign_α:          mov              r11, 389
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n948_bound_α
                        .size            n947_assign_bx, .-n947_assign_bx
                        .type            n948_bound_bx, @function
n948_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n948_bound_α:           mov              r11, 390
                        mov              qword ptr [rsp + 112], rsp;          jmp   n949_var_ref_α
                        .size            n948_bound_bx, .-n948_bound_bx
                        .type            n949_var_ref_bx, @function
n949_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n949_var_ref_α:         mov              r11, 391
                        mov              rax, 4294967336
                        mov              rdx, 1879052464                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n950_var_α
                        .size            n949_var_ref_bx, .-n949_var_ref_bx
                        .type            n950_var_bx, @function
n950_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n950_var_α:             mov              r11, 392
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n951_subscript_α
                        .size            n950_var_bx, .-n950_var_bx
                        .type            n951_subscript_bx, @function
n951_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n951_subscript_α:       mov              r11, 393
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
                        cmp              al, 104;                             je    n960_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n952_deref_α
                        .size            n951_subscript_bx, .-n951_subscript_bx
                        .type            n952_deref_bx, @function
n952_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n952_deref_α:           mov              r11, 394
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
                        cmp              al, 104;                             je    n960_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n953_var_ref_α
                        .size            n952_deref_bx, .-n952_deref_bx
                        .type            n953_var_ref_bx, @function
n953_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n953_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n954_var_α
                        .size            n953_var_ref_bx, .-n953_var_ref_bx
                        .type            n954_var_bx, @function
n954_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n954_var_α:             mov              r11, 396
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n955_subscript_α
                        .size            n954_var_bx, .-n954_var_bx
                        .type            n955_subscript_bx, @function
n955_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n955_subscript_α:       mov              r11, 397
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
                        cmp              al, 104;                             je    n960_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n956_deref_α
                        .size            n955_subscript_bx, .-n955_subscript_bx
                        .type            n956_deref_bx, @function
n956_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n956_deref_α:           mov              r11, 398
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
                        cmp              al, 104;                             je    n960_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n957_lit_integer_α
                        .size            n956_deref_bx, .-n956_deref_bx
                        .type            n957_lit_integer_bx, @function
n957_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n957_lit_integer_α:     mov              r11, 399
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1004_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n958_call_icon_α
.Llit_integer_α_1004_0: .quad            8
                        .size            n957_lit_integer_bx, .-n957_lit_integer_bx
                        .type            n958_call_icon_bx, @function
n958_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n958_call_icon_α:       mov              r11, 400
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1006: .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1006]
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
                        cmp              al, 104;                             je    n960_unmark_α
                                                                              jmp   n959_call_icon_α
n958_call_icon_β:       mov              r11, 400;                            jmp   n960_unmark_α
                        .size            n958_call_icon_bx, .-n958_call_icon_bx
                        .type            n959_call_icon_bx, @function
n959_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n959_call_icon_α:       mov              r11, 401
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1008: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1008]
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
                        cmp              al, 104;                             je    n960_unmark_α
                                                                              jmp   n960_unmark_α
n959_call_icon_β:       mov              r11, 401;                            jmp   n960_unmark_α
                        .size            n959_call_icon_bx, .-n959_call_icon_bx
                        .type            n960_unmark_bx, @function
n960_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n960_unmark_α:          mov              r11, 402
                        mov              rsp, qword ptr [rsp + 112];          jmp   n946_to_β
                        .size            n960_unmark_bx, .-n960_unmark_bx
                        .type            n961_return_bx, @function
n961_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n961_return_α:          mov              r11, 403
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Storage___γ
                        .size            n961_return_bx, .-n961_return_bx
                        .type            n962_var_ref_bx, @function
n962_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n962_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n963_nulltest_var_α
n962_var_ref_β:         mov              r11, 404;                            jmp   .Ldisjunction_ω_935_af
                        .size            n962_var_ref_bx, .-n962_var_ref_bx
                        .type            n963_nulltest_var_bx, @function
n963_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n963_nulltest_var_α:    mov              r11, 405
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_935_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_935_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_935_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n964_lit_integer_α
                        .size            n963_nulltest_var_bx, .-n963_nulltest_var_bx
                        .type            n964_lit_integer_bx, @function
n964_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n964_lit_integer_α:     mov              r11, 406
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1015_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n965_assign_var_α
.Llit_integer_α_1015_0: .quad            1
                        .size            n964_lit_integer_bx, .-n964_lit_integer_bx
                        .type            n965_assign_var_bx, @function
n965_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n965_assign_var_α:      mov              r11, 407
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_935_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n966_lit_string_α
                        .size            n965_assign_var_bx, .-n965_assign_var_bx
                        .type            n966_lit_string_bx, @function
n966_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n966_lit_string_α:      mov              r11, 408
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1017_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n967_lit_string_α
.Llit_string_α_1017_0:  .quad            .Llit_string_α_1017_0_s
.Llit_string_α_1017_0_s:
                        .string          "static"
                        .size            n966_lit_string_bx, .-n966_lit_string_bx
                        .type            n967_lit_string_bx, @function
n967_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n967_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1018_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n968_lit_string_α
.Llit_string_α_1018_0:  .quad            .Llit_string_α_1018_0_s
.Llit_string_α_1018_0_s:
                        .string          "string"
                        .size            n967_lit_string_bx, .-n967_lit_string_bx
                        .type            n968_lit_string_bx, @function
n968_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n968_lit_string_α:      mov              r11, 410
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1019_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n969_make_list_α
.Llit_string_α_1019_0:  .quad            .Llit_string_α_1019_0_s
.Llit_string_α_1019_0_s:
                        .string          "block"
                        .size            n968_lit_string_bx, .-n968_lit_string_bx
                        .type            n969_make_list_bx, @function
n969_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n969_make_list_α:       mov              r11, 411
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n970_assign_α
                        .size            n969_make_list_bx, .-n969_make_list_bx
                        .type            n970_assign_bx, @function
n970_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n970_assign_α:          mov              r11, 412
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 176], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_935_as
n970_assign_β:          mov              r11, 412;                            jmp   n936_make_list_α
                        .size            n970_assign_bx, .-n970_assign_bx
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
                        .type            n1024_disjunction_bx, @function
n1024_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1024_disjunction_α:    mov              r11, 413
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n1031_var_ref_α
.Ldisjunction_γ_1024_as:
                        mov              r11, 413
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1038_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1025_kw_icon_α
.Ldisjunction_α_1038_0:                                                       jmp   n1025_kw_icon_α
n1024_disjunction_β:    mov              r11, 413
                        mov              eax, dword ptr [rsp + 128];          jmp   n1025_kw_icon_α
.Ldisjunction_γ_1024_af:
                        mov              r11, 413
.Ldisjunction_ω_1024_af:
                        mov              r11, 413
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n1025_kw_icon_α
                        .size            n1024_disjunction_bx, .-n1024_disjunction_bx
                        .type            n1025_kw_icon_bx, @function
n1025_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1025_kw_icon_α:        mov              r11, 414
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
                        mov              qword ptr [rsp + 72], rdx;           jmp   n1026_var_α
n1025_kw_icon_β:        mov              r11, 414;                            jmp   Time___ω
.Lkw_icon_α_1039_0:     .quad            .Lkw_icon_α_1039_0_s
.Lkw_icon_α_1039_0_s:   .string          "&time"
                        .size            n1025_kw_icon_bx, .-n1025_kw_icon_bx
                        .type            n1026_var_bx, @function
n1026_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1026_var_α:            mov              r11, 415
                        mov              rax, qword ptr [r9 + 208]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n1027_coerce_numeric_α
                        .size            n1026_var_bx, .-n1026_var_bx
                        .type            n1027_coerce_numeric_bx, @function
n1027_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1027_coerce_numeric_α: mov              r11, 416
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1042_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1042_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1042_0
.Lcoerce_numeric_α_1042_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1028_coerce_numeric_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1028_coerce_numeric_α
                        .size            n1027_coerce_numeric_bx, .-n1027_coerce_numeric_bx
                        .type            n1028_coerce_numeric_bx, @function
n1028_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1028_coerce_numeric_α: mov              r11, 417
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1044_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1044_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1044_0
.Lcoerce_numeric_α_1044_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n1029_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1029_binop_α
                        .size            n1028_coerce_numeric_bx, .-n1028_coerce_numeric_bx
                        .type            n1029_binop_bx, @function
n1029_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1029_binop_α:          mov              r11, 418
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
.Lbinop_α_1045_7:                                                             jmp   n1030_return_α
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
                        mov              qword ptr [rsp + 24], rdx;           jmp   n1030_return_α
                        .size            n1029_binop_bx, .-n1029_binop_bx
                        .type            n1030_return_bx, @function
n1030_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1030_return_α:         mov              r11, 419
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
                        .size            n1030_return_bx, .-n1030_return_bx
                        .type            n1031_var_ref_bx, @function
n1031_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1031_var_ref_α:        mov              r11, 420
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n1032_nulltest_var_α
n1031_var_ref_β:        mov              r11, 420;                            jmp   .Ldisjunction_ω_1024_af
                        .size            n1031_var_ref_bx, .-n1031_var_ref_bx
                        .type            n1032_nulltest_var_bx, @function
n1032_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1032_nulltest_var_α:   mov              r11, 421
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1024_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1024_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1024_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1033_lit_integer_α
                        .size            n1032_nulltest_var_bx, .-n1032_nulltest_var_bx
                        .type            n1033_lit_integer_bx, @function
n1033_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1033_lit_integer_α:    mov              r11, 422
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1050_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1034_assign_var_α
.Llit_integer_α_1050_0: .quad            1
                        .size            n1033_lit_integer_bx, .-n1033_lit_integer_bx
                        .type            n1034_assign_var_bx, @function
n1034_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1034_assign_var_α:     mov              r11, 423
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1024_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n1035_kw_icon_α
                        .size            n1034_assign_var_bx, .-n1034_assign_var_bx
                        .type            n1035_kw_icon_bx, @function
n1035_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1035_kw_icon_α:        mov              r11, 424
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1052_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1025_kw_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n1036_assign_α
n1035_kw_icon_β:        mov              r11, 424;                            jmp   n1025_kw_icon_α
.Lkw_icon_α_1052_0:     .quad            .Lkw_icon_α_1052_0_s
.Lkw_icon_α_1052_0_s:   .string          "&time"
                        .size            n1035_kw_icon_bx, .-n1035_kw_icon_bx
                        .type            n1036_assign_bx, @function
n1036_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1036_assign_α:         mov              r11, 425
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 208], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   .Ldisjunction_γ_1024_as
n1036_assign_β:         mov              r11, 425;                            jmp   n1025_kw_icon_α
                        .size            n1036_assign_bx, .-n1036_assign_bx
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
                        xor              r14d, r14d
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
                        .type            n1055_lit_string_bx, @function
n1055_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1055_lit_string_α:     mov              r11, 426
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_1100_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n1056_call_proc_staged_α
.Llit_string_α_1100_0:  .quad            .Llit_string_α_1100_0_s
.Llit_string_α_1100_0_s:
                        .string          "concord"
                        .size            n1055_lit_string_bx, .-n1055_lit_string_bx
                        .type            n1056_call_proc_staged_bx, @function
n1056_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1056_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n1057_var_α
                                                                              jmp   n1057_var_α
n1056_call_proc_staged_β:
                        mov              r11, 427;                            jmp   n1057_var_α
.Lcall_proc_staged_β_1102_0:
                        .quad            .Lcall_proc_staged_β_1102_0_s
.Lcall_proc_staged_β_1102_0_s:
                        .string          "Init__"
                        .size            n1056_call_proc_staged_bx, .-n1056_call_proc_staged_bx
                        .type            n1057_var_bx, @function
n1057_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1057_var_α:            mov              r11, 428
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n1058_lit_string_α
                        .size            n1057_var_bx, .-n1057_var_bx
                        .type            n1058_lit_string_bx, @function
n1058_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1058_lit_string_α:     mov              r11, 429
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1105_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n1059_call_proc_staged_α
.Llit_string_α_1105_0:  .quad            .Llit_string_α_1105_0_s
.Llit_string_α_1105_0_s:
                        .string          "l+w+"
                        .size            n1058_lit_string_bx, .-n1058_lit_string_bx
                        .type            n1059_call_proc_staged_bx, @function
n1059_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1059_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n1061_disjunction_α
                                                                              jmp   n1060_assign_α
n1059_call_proc_staged_β:
                        mov              r11, 430;                            jmp   n1061_disjunction_α
.Lcall_proc_staged_β_1107_0:
                        .quad            .Lcall_proc_staged_β_1107_0_s
.Lcall_proc_staged_β_1107_0_s:
                        .string          "options"
                        .size            n1059_call_proc_staged_bx, .-n1059_call_proc_staged_bx
                        .type            n1060_assign_bx, @function
n1060_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1060_assign_α:         mov              r11, 431
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n1061_disjunction_α
                        .size            n1060_assign_bx, .-n1060_assign_bx
                        .type            n1061_disjunction_bx, @function
n1061_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1061_disjunction_α:    mov              r11, 432
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              dword ptr [rsp + 848], 0;            jmp   n1095_var_ref_α
.Ldisjunction_γ_1061_as:
                        mov              r11, 432
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1110_0
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax;          jmp   n1062_assign_α
.Ldisjunction_α_1110_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1110_1
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 840], rax;          jmp   n1062_assign_α
.Ldisjunction_α_1110_1:                                                       jmp   n1062_assign_α
n1061_disjunction_β:    mov              r11, 432
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1061_af
                                                                              jmp   .Ldisjunction_ω_1061_af
.Ldisjunction_γ_1061_af:
                        mov              r11, 432
.Ldisjunction_ω_1061_af:
                        mov              r11, 432
                        add              dword ptr [rsp + 848], 1
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 1;                              je    n1094_lit_integer_α
                                                                              jmp   n1063_disjunction_α
                        .size            n1061_disjunction_bx, .-n1061_disjunction_bx
                        .type            n1062_assign_bx, @function
n1062_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1062_assign_α:         mov              r11, 433
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [r9 + 16], rax             # colmax
                        mov              qword ptr [r9 + 24], rdx;            jmp   n1063_disjunction_α
                        .size            n1062_assign_bx, .-n1062_assign_bx
                        .type            n1063_disjunction_bx, @function
n1063_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1063_disjunction_α:    mov              r11, 434
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n1089_var_ref_α
.Ldisjunction_γ_1063_as:
                        mov              r11, 434
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1113_0
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax;          jmp   n1064_assign_α
.Ldisjunction_α_1113_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1113_1
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 696], rax;          jmp   n1064_assign_α
.Ldisjunction_α_1113_1:                                                       jmp   n1064_assign_α
n1063_disjunction_β:    mov              r11, 434
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1063_af
                                                                              jmp   .Ldisjunction_ω_1063_af
.Ldisjunction_γ_1063_af:
                        mov              r11, 434
.Ldisjunction_ω_1063_af:
                        mov              r11, 434
                        add              dword ptr [rsp + 704], 1
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 1;                              je    n1088_lit_integer_α
                                                                              jmp   n1065_lit_string_α
                        .size            n1063_disjunction_bx, .-n1063_disjunction_bx
                        .type            n1064_assign_bx, @function
n1064_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1064_assign_α:         mov              r11, 435
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 32], rax             # namewidth
                        mov              qword ptr [r9 + 40], rdx;            jmp   n1065_lit_string_α
                        .size            n1064_assign_bx, .-n1064_assign_bx
                        .type            n1065_lit_string_bx, @function
n1065_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1065_lit_string_α:     mov              r11, 436
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1115_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n1066_call_icon_α
.Llit_string_α_1115_0:  .quad            .Llit_string_α_1115_0_s
.Llit_string_α_1115_0_s:
                        .string          ""
                        .size            n1065_lit_string_bx, .-n1065_lit_string_bx
                        .type            n1066_call_icon_bx, @function
n1066_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1066_call_icon_α:      mov              r11, 437
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1117: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1117]
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
                        cmp              al, 104;                             je    n1068_lit_integer_α
                                                                              jmp   n1067_assign_α
n1066_call_icon_β:      mov              r11, 437;                            jmp   n1068_lit_integer_α
                        .size            n1066_call_icon_bx, .-n1066_call_icon_bx
                        .type            n1067_assign_bx, @function
n1067_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1067_assign_α:         mov              r11, 438
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [r9 + 0], rax              # uses
                        mov              qword ptr [r9 + 8], rdx;             jmp   n1068_lit_integer_α
                        .size            n1067_assign_bx, .-n1067_assign_bx
                        .type            n1068_lit_integer_bx, @function
n1068_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1068_lit_integer_α:    mov              r11, 439
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1119_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1069_assign_α
.Llit_integer_α_1119_0: .quad            0
                        .size            n1068_lit_integer_bx, .-n1068_lit_integer_bx
                        .type            n1069_assign_bx, @function
n1069_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1069_assign_α:         mov              r11, 440
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n1070_proc_gen_α
                        .size            n1069_assign_bx, .-n1069_assign_bx
                        .type            n1070_proc_gen_bx, @function
n1070_proc_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1070_proc_gen_α:       mov              r11, 441
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
                        cmp              al, 104;                             je    n1073_var_α
                                                                              jmp   n1071_var_α
n1070_proc_gen_β:       mov              r11, 441
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rax, qword ptr [rsp + 552]
                        mov              rsp, qword ptr [rax + 24]
                        sub              rsp, 40;                             jmp   qword ptr [rax + 32]
.Lproc_gen_α_1122_7:    add              rsp, 8
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n1073_var_α
                                                                              jmp   n1071_var_α
.Lproc_gen_β_1122_0:    .quad            .Lproc_gen_β_1122_0_s
.Lproc_gen_β_1122_0_s:  .string          "item"
                        .size            n1070_proc_gen_bx, .-n1070_proc_gen_bx
                        .type            n1071_var_bx, @function
n1071_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1071_var_α:            mov              r11, 442
                        mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 576], rax           # result
                        mov              qword ptr [rsp + 584], rdx;          jmp   n1072_call_proc_staged_α
                        .size            n1071_var_bx, .-n1071_var_bx
                        .type            n1072_call_proc_staged_bx, @function
n1072_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1072_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n1070_proc_gen_β
                                                                              jmp   n1070_proc_gen_β
n1072_call_proc_staged_β:
                        mov              r11, 443;                            jmp   n1070_proc_gen_β
.Lcall_proc_staged_β_1125_0:
                        .quad            .Lcall_proc_staged_β_1125_0_s
.Lcall_proc_staged_β_1125_0_s:
                        .string          "tabulate"
                        .size            n1072_call_proc_staged_bx, .-n1072_call_proc_staged_bx
                        .type            n1073_var_bx, @function
n1073_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1073_var_α:            mov              r11, 444
                        mov              rax, qword ptr [r9 + 0]              # uses
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 432], rax           # result
                        mov              qword ptr [rsp + 440], rdx;          jmp   n1074_lit_integer_α
                        .size            n1073_var_bx, .-n1073_var_bx
                        .type            n1074_lit_integer_bx, @function
n1074_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1074_lit_integer_α:    mov              r11, 445
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1127_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n1075_call_icon_α
.Llit_integer_α_1127_0: .quad            3
                        .size            n1074_lit_integer_bx, .-n1074_lit_integer_bx
                        .type            n1075_call_icon_bx, @function
n1075_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1075_call_icon_α:      mov              r11, 446
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1129: .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1129]
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
                        cmp              al, 104;                             je    n1077_var_α
                                                                              jmp   n1076_assign_α
n1075_call_icon_β:      mov              r11, 446;                            jmp   n1077_var_α
                        .size            n1075_call_icon_bx, .-n1075_call_icon_bx
                        .type            n1076_assign_bx, @function
n1076_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1076_assign_α:         mov              r11, 447
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n1077_var_α
                        .size            n1076_assign_bx, .-n1076_assign_bx
                        .type            n1077_var_bx, @function
n1077_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1077_var_α:            mov              r11, 448
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1078_call_icon_α
                        .size            n1077_var_bx, .-n1077_var_bx
                        .type            n1078_call_icon_bx, @function
n1078_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1078_call_icon_α:      mov              r11, 449
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1134: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1134]
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
                        cmp              al, 104;                             je    n1087_call_proc_staged_α
                                                                              jmp   n1079_assign_α
n1078_call_icon_β:      mov              r11, 449;                            jmp   n1087_call_proc_staged_α
                        .size            n1078_call_icon_bx, .-n1078_call_icon_bx
                        .type            n1079_assign_bx, @function
n1079_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1079_assign_α:         mov              r11, 450
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n1080_var_α
                        .size            n1079_assign_bx, .-n1079_assign_bx
                        .type            n1080_var_bx, @function
n1080_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1080_var_α:            mov              r11, 451
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 280], rax;          jmp   n1081_var_α
                        .size            n1080_var_bx, .-n1080_var_bx
                        .type            n1081_var_bx, @function
n1081_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1081_var_α:            mov              r11, 452
                        mov              rax, qword ptr [r9 + 32]             # namewidth
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 288], rax           # result
                        mov              qword ptr [rsp + 296], rdx;          jmp   n1082_call_icon_α
                        .size            n1081_var_bx, .-n1081_var_bx
                        .type            n1082_call_icon_bx, @function
n1082_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1082_call_icon_α:      mov              r11, 453
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1140: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1140]
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
                        cmp              al, 104;                             je    n1077_var_α
                                                                              jmp   n1083_var_α
n1082_call_icon_β:      mov              r11, 453;                            jmp   n1077_var_α
                        .size            n1082_call_icon_bx, .-n1082_call_icon_bx
                        .type            n1083_var_bx, @function
n1083_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1083_var_α:            mov              r11, 454
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1084_call_icon_α
                        .size            n1083_var_bx, .-n1083_var_bx
                        .type            n1084_call_icon_bx, @function
n1084_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1084_call_icon_α:      mov              r11, 455
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1144: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1144]
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
                        cmp              al, 104;                             je    n1077_var_α
                                                                              jmp   n1085_binop_α
n1084_call_icon_β:      mov              r11, 455;                            jmp   n1077_var_α
                        .size            n1084_call_icon_bx, .-n1084_call_icon_bx
                        .type            n1085_binop_bx, @function
n1085_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1085_binop_α:          mov              r11, 456
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1086_call_proc_staged_α
                        .size            n1085_binop_bx, .-n1085_binop_bx
                        .type            n1086_call_proc_staged_bx, @function
n1086_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1086_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n1077_var_α
                                                                              jmp   n1077_var_α
n1086_call_proc_staged_β:
                        mov              r11, 457;                            jmp   n1077_var_α
.Lcall_proc_staged_β_1147_0:
                        .quad            .Lcall_proc_staged_β_1147_0_s
.Lcall_proc_staged_β_1147_0_s:
                        .string          "format"
                        .size            n1086_call_proc_staged_bx, .-n1086_call_proc_staged_bx
                        .type            n1087_call_proc_staged_bx, @function
n1087_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1087_call_proc_staged_α:
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
n1087_call_proc_staged_β:
                        mov              r11, 458;                            jmp   main_ω
.Lcall_proc_staged_β_1149_0:
                        .quad            .Lcall_proc_staged_β_1149_0_s
.Lcall_proc_staged_β_1149_0_s:
                        .string          "Term__"
                        .size            n1087_call_proc_staged_bx, .-n1087_call_proc_staged_bx
                        .type            n1088_lit_integer_bx, @function
n1088_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1088_lit_integer_α:    mov              r11, 459
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1150_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   .Ldisjunction_γ_1063_as
n1088_lit_integer_β:    mov              r11, 459;                            jmp   .Ldisjunction_ω_1063_af
.Llit_integer_α_1150_0: .quad            15
                        .size            n1088_lit_integer_bx, .-n1088_lit_integer_bx
                        .type            n1089_var_ref_bx, @function
n1089_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1089_var_ref_α:        mov              r11, 460
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n1090_lit_string_α
n1089_var_ref_β:        mov              r11, 460;                            jmp   .Ldisjunction_ω_1063_af
                        .size            n1089_var_ref_bx, .-n1089_var_ref_bx
                        .type            n1090_lit_string_bx, @function
n1090_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1090_lit_string_α:     mov              r11, 461
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1153_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1091_subscript_α
.Llit_string_α_1153_0:  .quad            .Llit_string_α_1153_0_s
.Llit_string_α_1153_0_s:
                        .string          "w"
                        .size            n1090_lit_string_bx, .-n1090_lit_string_bx
                        .type            n1091_subscript_bx, @function
n1091_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1091_subscript_α:      mov              r11, 462
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1063_af
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n1092_deref_α
                        .size            n1091_subscript_bx, .-n1091_subscript_bx
                        .type            n1092_deref_bx, @function
n1092_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1092_deref_α:          mov              r11, 463
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1063_af
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n1093_unop_test_α
                        .size            n1092_deref_bx, .-n1092_deref_bx
                        .type            n1093_unop_test_bx, @function
n1093_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1093_unop_test_α:      mov              r11, 464
                        mov              eax, dword ptr [rsp + 800]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1063_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1063_af
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 728], rax;          jmp   .Ldisjunction_γ_1063_as
n1093_unop_test_β:      mov              r11, 464;                            jmp   .Ldisjunction_ω_1063_af
                        .size            n1093_unop_test_bx, .-n1093_unop_test_bx
                        .type            n1094_lit_integer_bx, @function
n1094_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1094_lit_integer_α:    mov              r11, 465
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1157_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   .Ldisjunction_γ_1061_as
n1094_lit_integer_β:    mov              r11, 465;                            jmp   .Ldisjunction_ω_1061_af
.Llit_integer_α_1157_0: .quad            72
                        .size            n1094_lit_integer_bx, .-n1094_lit_integer_bx
                        .type            n1095_var_ref_bx, @function
n1095_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1095_var_ref_α:        mov              r11, 466
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n1096_lit_string_α
n1095_var_ref_β:        mov              r11, 466;                            jmp   .Ldisjunction_ω_1061_af
                        .size            n1095_var_ref_bx, .-n1095_var_ref_bx
                        .type            n1096_lit_string_bx, @function
n1096_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1096_lit_string_α:     mov              r11, 467
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1160_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n1097_subscript_α
.Llit_string_α_1160_0:  .quad            .Llit_string_α_1160_0_s
.Llit_string_α_1160_0_s:
                        .string          "l"
                        .size            n1096_lit_string_bx, .-n1096_lit_string_bx
                        .type            n1097_subscript_bx, @function
n1097_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1097_subscript_α:      mov              r11, 468
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1061_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n1098_deref_α
                        .size            n1097_subscript_bx, .-n1097_subscript_bx
                        .type            n1098_deref_bx, @function
n1098_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1098_deref_α:          mov              r11, 469
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1061_af
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n1099_unop_test_α
                        .size            n1098_deref_bx, .-n1098_deref_bx
                        .type            n1099_unop_test_bx, @function
n1099_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1099_unop_test_α:      mov              r11, 470
                        mov              eax, dword ptr [rsp + 944]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1061_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1061_af
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 872], rax;          jmp   .Ldisjunction_γ_1061_as
n1099_unop_test_β:      mov              r11, 470;                            jmp   .Ldisjunction_ω_1061_af
                        .size            n1099_unop_test_bx, .-n1099_unop_test_bx
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
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 976
                        call             rt_proc_set_gen_region_ft@PLT
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
