                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__tabulate:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1656], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 1472
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ltabulate_α_0_247
                        .section         .rodata
.Licn_trace_nm0:        .string          "tabulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm0]
                        mov              esi, 2
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ltabulate_α_0_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
tabulate_α_body:
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n2_deref_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_deref_bx, @function
n2_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_deref_α:             mov              r11, 2
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n5_lit_string_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n3_call_icon_α
                        .size            n2_deref_bx, .-n2_deref_bx
                        .type            n3_call_icon_bx, @function
n3_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_icon_α:         mov              r11, 3
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lcall_icon_α_rkfn75:   .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn75]
                        lea              rsi, [rbp + 1408]
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
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    n5_lit_string_α
                                                                              jmp   n4_assign_α
n3_call_icon_β:         mov              r11, 3;                              jmp   n5_lit_string_α
                        .size            n3_call_icon_bx, .-n3_call_icon_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx;           jmp   n5_lit_string_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_77_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n6_assign_α
.Llit_string_α_77_0:    .quad            .Llit_string_α_77_0_s
.Llit_string_α_77_0_s:  .string          ""
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n7_var_ref_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n8_var_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_var_bx, @function
n8_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n9_subscript_α
                        .size            n8_var_bx, .-n8_var_bx
                        .type            n9_subscript_bx, @function
n9_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_subscript_α:         mov              r11, 9
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n10_deref_α
                        .size            n9_subscript_bx, .-n9_subscript_bx
                        .type            n10_deref_bx, @function
n10_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_deref_α:            mov              r11, 10
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    tabulate_ω
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n11_scan_enter_α
                        .size            n10_deref_bx, .-n10_deref_bx
                        .type            n11_scan_enter_bx, @function
n11_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_enter_α:       mov              r11, 11
                        mov              qword ptr [rbp + 64], r13
                        mov              qword ptr [rbp + 72], r14
                        mov              qword ptr [rbp + 80], r15
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
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
                        mov              r14, 0;                              jmp   n12_var_α
                        .size            n11_scan_enter_bx, .-n11_scan_enter_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n13_lit_charset_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_lit_charset_bx, @function
n13_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_charset_α:      mov              r11, 13
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_89_0]
                        mov              qword ptr [rbp + 1112], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_89_0]
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
                        pop              rax;                                 jmp   n14_scan_upto_α
.Llit_charset_α_89_0:   .quad            .Llit_charset_α_89_0_s
.Llit_charset_α_89_0_s: .string          "0123456789"
                        .size            n13_lit_charset_bx, .-n13_lit_charset_bx
                        .type            n14_scan_upto_bx, @function
n14_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_upto_α:        mov              r11, 14
                        mov              qword ptr [rbp + 1088], r14
.Lscan_upto_α_91_0:     mov              rax, qword ptr [rbp + 1088]
                        cmp              rax, r15;                            jge   n27_disjunction_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_upto_α_91_2]
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
                        pop              rax;                                 je    .Lscan_upto_α_91_1
                        mov              qword ptr [rbp + 1072], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 1080], rax;         jmp   n15_scan_tab_α
.Lscan_upto_α_91_1:     inc              qword ptr [rbp + 1088];              jmp   .Lscan_upto_α_91_0
n14_scan_upto_β:        mov              r11, 14
                        inc              qword ptr [rbp + 1088];              jmp   .Lscan_upto_α_91_0
.Lscan_upto_α_91_2:     .quad            .Lscan_upto_α_91_2_s
.Lscan_upto_α_91_2_s:   .string          "0123456789"
                        .size            n14_scan_upto_bx, .-n14_scan_upto_bx
                        .type            n15_scan_tab_bx, @function
n15_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_tab_α:         mov              r11, 15
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_93_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_93_0:      cmp              rax, 1;                              jl    n14_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n14_scan_upto_β
                        mov              qword ptr [rbp + 1056], r14
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
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n16_binop_α
n15_scan_tab_β:         mov              r11, 15
                        mov              r14, qword ptr [rbp + 1056];         jmp   n14_scan_upto_β
                        .size            n15_scan_tab_bx, .-n15_scan_tab_bx
                        .type            n16_binop_bx, @function
n16_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            mov              r11, 16
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_assign_α
                        .size            n16_binop_bx, .-n16_binop_bx
                        .type            n17_assign_bx, @function
n17_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 17
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n18_lit_charset_α
                        .size            n17_assign_bx, .-n17_assign_bx
                        .type            n18_lit_charset_bx, @function
n18_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_charset_α:      mov              r11, 18
                        mov              qword ptr [rbp + 1264], 2            # result
                        mov              dword ptr [rbp + 1268], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_96_0]
                        mov              qword ptr [rbp + 1272], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_96_0]
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
                        pop              rax;                                 jmp   n19_scan_many_α
.Llit_charset_α_96_0:   .quad            .Llit_charset_α_96_0_s
.Llit_charset_α_96_0_s: .string          "0123456789"
                        .size            n18_lit_charset_bx, .-n18_lit_charset_bx
                        .type            n19_scan_many_bx, @function
n19_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_many_α:        mov              r11, 19
                        mov              eax, r14d
.Lscan_many_α_98_0:     cmp              eax, r15d;                           jge   .Lscan_many_α_98_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_98_2]
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
                        pop              rax;                                 je    .Lscan_many_α_98_1
                        add              eax, 1;                              jmp   .Lscan_many_α_98_0
.Lscan_many_α_98_1:     cmp              eax, r14d;                           je    n22_var_α
                        mov              qword ptr [rbp + 1248], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1256], rcx;         jmp   n20_scan_tab_α
n19_scan_many_β:        mov              r11, 19;                             jmp   n22_var_α
.Lscan_many_α_98_2:     .quad            .Lscan_many_α_98_2_s
.Lscan_many_α_98_2_s:   .string          "0123456789"
                        .size            n19_scan_many_bx, .-n19_scan_many_bx
                        .type            n20_scan_tab_bx, @function
n20_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_tab_α:         mov              r11, 20
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_100_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_100_0:     cmp              rax, 1;                              jl    n22_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n22_var_α
                        mov              qword ptr [rbp + 1232], r14
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
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n21_assign_α
n20_scan_tab_β:         mov              r11, 20
                        mov              r14, qword ptr [rbp + 1232];         jmp   n22_var_α
                        .size            n20_scan_tab_bx, .-n20_scan_tab_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n22_var_α
                        .size            n21_assign_bx, .-n21_assign_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n23_var_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 23
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n24_binop_α
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              r11, 24
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_assign_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n26_conjunction_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_conjunction_bx, @function
n26_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:      mov              r11, 26
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n12_var_α
n26_conjunction_β:      mov              r11, 26;                             jmp   n12_var_α
                        .size            n26_conjunction_bx, .-n26_conjunction_bx
                        .type            n27_disjunction_bx, @function
n27_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_disjunction_α:      mov              r11, 27
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0;            jmp   n55_disjunction_α
.Ldisjunction_γ_27_as:  mov              r11, 27
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_110_0
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax;          jmp   n28_conjunction_α
.Ldisjunction_α_110_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_110_1
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 152], rax;          jmp   n28_conjunction_α
.Ldisjunction_α_110_1:                                                        jmp   n28_conjunction_α
n27_disjunction_β:      mov              r11, 27
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0;                              je    n65_scan_α
                                                                              jmp   n65_scan_α
.Ldisjunction_γ_27_af:  mov              r11, 27
.Ldisjunction_ω_27_af:  mov              r11, 27
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1;                              je    n30_disjunction_α
                                                                              jmp   n65_scan_α
                        .size            n27_disjunction_bx, .-n27_disjunction_bx
                        .type            n28_conjunction_bx, @function
n28_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_conjunction_α:      mov              r11, 28
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax;          jmp   n29_scan_α
n28_conjunction_β:      mov              r11, 28;                             jmp   n65_scan_α
                        .size            n28_conjunction_bx, .-n28_conjunction_bx
                        .type            n29_scan_bx, @function
n29_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_scan_α:             mov              r11, 29
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80];           jmp   tabulate_ω
n29_scan_β:             mov              r11, 29
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
                        mov              r14, rax;                            jmp   n27_disjunction_β
                                                                              jmp   tabulate_ω
                        .size            n29_scan_bx, .-n29_scan_bx
                        .type            n30_disjunction_bx, @function
n30_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_disjunction_α:      mov              r11, 30
                        mov              qword ptr [rbp + 720], 0
                        mov              qword ptr [rbp + 728], 0
                        mov              dword ptr [rbp + 736], 0;            jmp   n48_lit_string_α
.Ldisjunction_γ_30_as:  mov              r11, 30
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_115_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax;          jmp   n31_var_ref_α
.Ldisjunction_α_115_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_115_1
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 728], rax;          jmp   n31_var_ref_α
.Ldisjunction_α_115_1:                                                        jmp   n31_var_ref_α
n30_disjunction_β:      mov              r11, 30
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0;                              je    n53_scan_tab_β
                                                                              jmp   n31_var_ref_α
.Ldisjunction_γ_30_af:  mov              r11, 30
.Ldisjunction_ω_30_af:  mov              r11, 30
                        add              dword ptr [rbp + 736], 1
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 1;                              je    n46_lit_integer_α
                                                                              jmp   n31_var_ref_α
                        .size            n30_disjunction_bx, .-n30_disjunction_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n32_var_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_var_bx, @function
n32_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 488], rax;          jmp   n33_subscript_α
                        .size            n32_var_bx, .-n32_var_bx
                        .type            n33_subscript_bx, @function
n33_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_subscript_α:        mov              r11, 33
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n65_scan_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n34_var_α
                        .size            n33_subscript_bx, .-n33_subscript_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 584], rax;          jmp   n35_lit_string_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_lit_string_bx, @function
n35_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_123_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n36_binop_α
.Llit_string_α_123_0:   .quad            .Llit_string_α_123_0_s
.Llit_string_α_123_0_s: .string          "("
                        .size            n35_lit_string_bx, .-n35_lit_string_bx
                        .type            n36_binop_bx, @function
n36_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_α:            mov              r11, 36
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_var_α
                        .size            n36_binop_bx, .-n36_binop_bx
                        .type            n37_var_bx, @function
n37_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 664], rax;          jmp   n38_lit_integer_α
                        .size            n37_var_bx, .-n37_var_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_127_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n39_coerce_numeric_α
.Llit_integer_α_127_0:  .quad            1
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_coerce_numeric_bx, @function
n39_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_coerce_numeric_α:   mov              r11, 39
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_129_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_129_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_129_0
.Lcoerce_numeric_α_129_1:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 648], rax;          jmp   n40_binop_α
.Lcoerce_numeric_α_129_0:
                        lea              rdi, [rbp + 1504]
                        lea              rsi, [rbp + 672]
                        lea              rdx, [rbp + 640]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 640]
                        cmp              al, 104;                             je    n65_scan_α
                                                                              jmp   n40_binop_α
                        .size            n39_coerce_numeric_bx, .-n39_coerce_numeric_bx
                        .type            n40_binop_bx, @function
n40_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:            mov              r11, 40
                        mov              eax, dword ptr [rbp + 640]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_130_2
                        mov              rax, qword ptr [rbp + 648]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_130_0
                        mov              qword ptr [rbp + 624], 3
                        mov              qword ptr [rbp + 632], rax;          jmp   .Lbinop_α_130_7
.Lbinop_α_130_2:        and              edx, 1;                              jz    .Lbinop_α_130_0
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_130_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_130_4
.Lbinop_α_130_3:        movq             xmm0, rsi
.Lbinop_α_130_4:        cmp              cl, 5;                               je    .Lbinop_α_130_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_130_6
.Lbinop_α_130_5:        movq             xmm1, rdi
.Lbinop_α_130_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_130_0
                        mov              qword ptr [rbp + 624], 5
                        mov              qword ptr [rbp + 632], rax
.Lbinop_α_130_7:                                                              jmp   n41_binop_α
.Lbinop_α_130_0:        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n65_scan_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n41_binop_α
                        .size            n40_binop_bx, .-n40_binop_bx
                        .type            n41_binop_bx, @function
n41_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:            mov              r11, 41
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_lit_string_α
                        .size            n41_binop_bx, .-n41_binop_bx
                        .type            n42_lit_string_bx, @function
n42_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rbp + 688], 2             # result
                        mov              dword ptr [rbp + 692], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_132_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n43_binop_α
.Llit_string_α_132_0:   .quad            .Llit_string_α_132_0_s
.Llit_string_α_132_0_s: .string          "), "
                        .size            n42_lit_string_bx, .-n42_lit_string_bx
                        .type            n43_binop_bx, @function
n43_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:            mov              r11, 43
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_assign_var_α
                        .size            n43_binop_bx, .-n43_binop_bx
                        .type            n44_assign_var_bx, @function
n44_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_var_α:       mov              r11, 44
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n65_scan_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n45_conjunction_α
                        .size            n44_assign_var_bx, .-n44_assign_var_bx
                        .type            n45_conjunction_bx, @function
n45_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_conjunction_α:      mov              r11, 45
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax;          jmp   .Ldisjunction_γ_27_as
n45_conjunction_β:      mov              r11, 45;                             jmp   n65_scan_α
                        .size            n45_conjunction_bx, .-n45_conjunction_bx
                        .type            n46_lit_integer_bx, @function
n46_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_136_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n47_assign_α
n46_lit_integer_β:      mov              r11, 46;                             jmp   n31_var_ref_α
.Llit_integer_α_136_0:  .quad            1
                        .size            n46_lit_integer_bx, .-n46_lit_integer_bx
                        .type            n47_assign_bx, @function
n47_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   .Ldisjunction_γ_30_as
n47_assign_β:           mov              r11, 47;                             jmp   n31_var_ref_α
                        .size            n47_assign_bx, .-n47_assign_bx
                        .type            n48_lit_string_bx, @function
n48_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_138_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n49_scan_match_α
n48_lit_string_β:       mov              r11, 48;                             jmp   .Ldisjunction_ω_30_af
.Llit_string_α_138_0:   .quad            .Llit_string_α_138_0_s
.Llit_string_α_138_0_s: .string          "("
                        .size            n48_lit_string_bx, .-n48_lit_string_bx
                        .type            n49_scan_match_bx, @function
n49_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_scan_match_α:       mov              r11, 49
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_30_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_140_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_30_af
                        mov              qword ptr [rbp + 896], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 904], rax;          jmp   n50_scan_tab_α
.Lscan_match_α_140_0:   .quad            .Lscan_match_α_140_0_s
.Lscan_match_α_140_0_s: .string          "("
                        .size            n49_scan_match_bx, .-n49_scan_match_bx
                        .type            n50_scan_tab_bx, @function
n50_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_scan_tab_α:         mov              r11, 50
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_142_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_142_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_30_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_30_af
                        mov              qword ptr [rbp + 880], r14
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
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n51_lit_charset_α
n50_scan_tab_β:         mov              r11, 50
                        mov              r14, qword ptr [rbp + 880];          jmp   .Ldisjunction_ω_30_af
                        .size            n50_scan_tab_bx, .-n50_scan_tab_bx
                        .type            n51_lit_charset_bx, @function
n51_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_charset_α:      mov              r11, 51
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_143_0]
                        mov              qword ptr [rbp + 840], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_143_0]
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
                        pop              rax;                                 jmp   n52_scan_upto_α
.Llit_charset_α_143_0:  .quad            .Llit_charset_α_143_0_s
.Llit_charset_α_143_0_s:
                        .string          ")"
                        .size            n51_lit_charset_bx, .-n51_lit_charset_bx
                        .type            n52_scan_upto_bx, @function
n52_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_scan_upto_α:        mov              r11, 52
                        mov              qword ptr [rbp + 816], r14
.Lscan_upto_α_145_0:    mov              rax, qword ptr [rbp + 816]
                        cmp              rax, r15;                            jge   n31_var_ref_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_upto_α_145_2]
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
                        pop              rax;                                 je    .Lscan_upto_α_145_1
                        mov              qword ptr [rbp + 800], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 808], rax;          jmp   n53_scan_tab_α
.Lscan_upto_α_145_1:    inc              qword ptr [rbp + 816];               jmp   .Lscan_upto_α_145_0
n52_scan_upto_β:        mov              r11, 52
                        inc              qword ptr [rbp + 816];               jmp   .Lscan_upto_α_145_0
.Lscan_upto_α_145_2:    .quad            .Lscan_upto_α_145_2_s
.Lscan_upto_α_145_2_s:  .string          ")"
                        .size            n52_scan_upto_bx, .-n52_scan_upto_bx
                        .type            n53_scan_tab_bx, @function
n53_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_scan_tab_α:         mov              r11, 53
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_147_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_147_0:     cmp              rax, 1;                              jl    n52_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n52_scan_upto_β
                        mov              qword ptr [rbp + 784], r14
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
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n54_assign_α
n53_scan_tab_β:         mov              r11, 53
                        mov              r14, qword ptr [rbp + 784];          jmp   n52_scan_upto_β
                        .size            n53_scan_tab_bx, .-n53_scan_tab_bx
                        .type            n54_assign_bx, @function
n54_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 54
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   .Ldisjunction_γ_30_as
n54_assign_β:           mov              r11, 54;                             jmp   n31_var_ref_α
                        .size            n54_assign_bx, .-n54_assign_bx
                        .type            n55_disjunction_bx, @function
n55_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_disjunction_α:      mov              r11, 55
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0;            jmp   n69_var_α
.Ldisjunction_γ_55_as:  mov              r11, 55
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_150_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax;          jmp   n56_var_ref_α
.Ldisjunction_α_150_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_150_1
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax;          jmp   n56_var_ref_α
.Ldisjunction_α_150_1:                                                        jmp   n56_var_ref_α
n55_disjunction_β:      mov              r11, 55
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_55_af
                                                                              jmp   .Ldisjunction_ω_55_af
.Ldisjunction_γ_55_af:  mov              r11, 55
.Ldisjunction_ω_55_af:  mov              r11, 55
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1;                              je    n66_var_α
                                                                              jmp   .Ldisjunction_ω_27_af
                        .size            n55_disjunction_bx, .-n55_disjunction_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n57_var_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 57
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax;          jmp   n58_subscript_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_subscript_bx, @function
n58_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_subscript_α:        mov              r11, 58
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n65_scan_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n59_deref_α
                        .size            n58_subscript_bx, .-n58_subscript_bx
                        .type            n59_deref_bx, @function
n59_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_deref_α:            mov              r11, 59
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n65_scan_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n60_var_α
                        .size            n59_deref_bx, .-n59_deref_bx
                        .type            n60_var_bx, @function
n60_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              mov              r11, 60
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax;          jmp   n61_lit_string_α
                        .size            n60_var_bx, .-n60_var_bx
                        .type            n61_lit_string_bx, @function
n61_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_159_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n62_binop_α
.Llit_string_α_159_0:   .quad            .Llit_string_α_159_0_s
.Llit_string_α_159_0_s: .string          ", "
                        .size            n61_lit_string_bx, .-n61_lit_string_bx
                        .type            n62_binop_bx, @function
n62_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            mov              r11, 62
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_binop_α
                        .size            n62_binop_bx, .-n62_binop_bx
                        .type            n63_binop_bx, @function
n63_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:            mov              r11, 63
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_assign_var_α
                        .size            n63_binop_bx, .-n63_binop_bx
                        .type            n64_assign_var_bx, @function
n64_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_var_α:       mov              r11, 64
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n65_scan_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   .Ldisjunction_γ_27_as
n64_assign_var_β:       mov              r11, 64;                             jmp   n65_scan_α
                        .size            n64_assign_var_bx, .-n64_assign_var_bx
                        .type            n65_scan_bx, @function
n65_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_scan_α:             mov              r11, 65
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80];           jmp   tabulate_ω
n65_scan_β:             mov              r11, 65;                             jmp   tabulate_ω
                        .size            n65_scan_bx, .-n65_scan_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              mov              r11, 66
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 424], rax;          jmp   n67_var_α
n66_var_β:              mov              r11, 66;                             jmp   .Ldisjunction_ω_55_af
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              r11, 67
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 440], rax;          jmp   n68_binop_test_α
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_binop_test_bx, @function
n68_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_test_α:       mov              r11, 68
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_55_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_55_as
n68_binop_test_β:       mov              r11, 68;                             jmp   .Ldisjunction_ω_55_af
                        .size            n68_binop_test_bx, .-n68_binop_test_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 69
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 392], rax;          jmp   n70_unop_test_α
n69_var_β:              mov              r11, 69;                             jmp   .Ldisjunction_ω_55_af
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_unop_test_bx, @function
n70_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_unop_test_α:        mov              r11, 70
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              al, 104;                             je    .Ldisjunction_ω_55_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_55_af
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0;            jmp   .Ldisjunction_γ_55_as
n70_unop_test_β:        mov              r11, 70;                             jmp   .Ldisjunction_ω_55_af
                        .size            n70_unop_test_bx, .-n70_unop_test_bx
#-----------------------------------------------------------------------------------------------------------------------
tabulate_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tabulate_β:
                                                                              jmp   tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
tabulate_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ltabulate_α_172_248
                        .section         .rodata
.Licn_trace_nm173:      .string          "tabulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm173]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ltabulate_α_172_248:   mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1664]
                        mov              rbp, qword ptr [rbp + 1656];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
tabulate_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Ltabulate_α_172_249
                        .section         .rodata
.Licn_trace_nm174:      .string          "tabulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm174]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ltabulate_α_172_249:   mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1664]
                        mov              rbp, qword ptr [rbp + 1656];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Ltabulate_α_175_3]
                        push             rcx
                        lea              rcx, [rip + .Ltabulate_α_175_2]
                        push             rcx;                                 jmp   FN__tabulate
.Ltabulate_α_175_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ltabulate_α_175_3:     add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__format:
                        sub              rsp, 1008
                        mov              qword ptr [rsp + 1000], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
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
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lformat_α_175_247
                        .section         .rodata
.Licn_trace_nm176:      .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm176]
                        mov              esi, 1
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lformat_α_175_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
format_α_body:
                        .type            n00001_var_bx, @function
n00001_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_var_α:             mov              r11, 71
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax;          jmp   n00002_unop_α
                        .size            n00001_var_bx, .-n00001_var_bx
                        .type            n00002_unop_bx, @function
n00002_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_unop_α:            mov              r11, 72
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00003_var_α
                        .size            n00002_unop_bx, .-n00002_unop_bx
                        .type            n00003_var_bx, @function
n00003_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_var_α:             mov              r11, 73
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 224], rax           # result
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00004_lit_integer_α
                        .size            n00003_var_bx, .-n00003_var_bx
                        .type            n00004_lit_integer_bx, @function
n00004_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_lit_integer_α:     mov              r11, 74
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_227_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00005_coerce_numeric_α
.Llit_integer_α_227_0:  .quad            2
                        .size            n00004_lit_integer_bx, .-n00004_lit_integer_bx
                        .type            n00005_coerce_numeric_bx, @function
n00005_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_coerce_numeric_α:  mov              r11, 75
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_229_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_229_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_229_0
.Lcoerce_numeric_α_229_1:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00006_binop_α
.Lcoerce_numeric_α_229_0:
                        lea              rdi, [rbp + 224]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 208]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 104;                             je    n00007_var_α
                                                                              jmp   n00006_binop_α
                        .size            n00005_coerce_numeric_bx, .-n00005_coerce_numeric_bx
                        .type            n00006_binop_bx, @function
n00006_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_binop_α:           mov              r11, 76
                        mov              eax, dword ptr [rbp + 208]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_230_2
                        mov              rax, qword ptr [rbp + 216]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_230_0
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax;          jmp   .Lbinop_α_230_7
.Lbinop_α_230_2:        and              edx, 1;                              jz    .Lbinop_α_230_0
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_230_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_230_4
.Lbinop_α_230_3:        movq             xmm0, rsi
.Lbinop_α_230_4:        cmp              cl, 5;                               je    .Lbinop_α_230_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_230_6
.Lbinop_α_230_5:        movq             xmm1, rdi
.Lbinop_α_230_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_230_0
                        mov              qword ptr [rbp + 192], 5
                        mov              qword ptr [rbp + 200], rax
.Lbinop_α_230_7:                                                              jmp   n00008_binop_test_α
.Lbinop_α_230_0:        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00007_var_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00008_binop_test_α
                        .size            n00006_binop_bx, .-n00006_binop_bx
                        .type            n00008_binop_test_bx, @function
n00008_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_binop_test_α:      mov              r11, 77
                        mov              eax, dword ptr [rbp + 160]
                        cmp              al, 112;                             je    .Lbinop_test_α_231_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 112;                             je    .Lbinop_test_α_231_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              al, 3;                               jne   .Lbinop_test_α_231_2
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 3;                               jne   .Lbinop_test_α_231_2
.Lbinop_test_α_231_1:   mov              rax, qword ptr [rbp + 168]
                        mov              rcx, qword ptr [rbp + 200]
                        cmp              rax, rcx;                            jle   n00007_var_α
                        mov              rcx, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rcx
                        mov              rcx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rcx;          jmp   n00009_var_α
.Lbinop_test_α_231_0:   mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              r8d, 7
                        lea              r9, [rbp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_231_1
                        cmp              eax, 1;                              je    n00007_var_α
                                                                              jmp   n00009_var_α
.Lbinop_test_α_231_2:   mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00007_var_α
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        lea              r8, [rbp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00009_var_α
                        .size            n00008_binop_test_bx, .-n00008_binop_test_bx
                        .type            n00009_var_bx, @function
n00009_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_α:             mov              r11, 78
                        mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 880], rax           # result
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00010_lit_integer_α
                        .size            n00009_var_bx, .-n00009_var_bx
                        .type            n00010_lit_integer_bx, @function
n00010_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_lit_integer_α:     mov              r11, 79
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_233_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00011_coerce_numeric_α
.Llit_integer_α_233_0:  .quad            2
                        .size            n00010_lit_integer_bx, .-n00010_lit_integer_bx
                        .type            n00011_coerce_numeric_bx, @function
n00011_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_coerce_numeric_α:  mov              r11, 80
                        mov              eax, dword ptr [rbp + 880]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_235_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_235_0
                        mov              eax, dword ptr [rbp + 896]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_235_0
.Lcoerce_numeric_α_235_1:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00012_binop_α
.Lcoerce_numeric_α_235_0:
                        lea              rdi, [rbp + 880]
                        lea              rsi, [rbp + 896]
                        lea              rdx, [rbp + 864]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 104;                             je    n00013_var_ref_α
                                                                              jmp   n00012_binop_α
                        .size            n00011_coerce_numeric_bx, .-n00011_coerce_numeric_bx
                        .type            n00012_binop_bx, @function
n00012_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_binop_α:           mov              r11, 81
                        mov              eax, dword ptr [rbp + 864]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_236_2
                        mov              rax, qword ptr [rbp + 872]
                        mov              rdx, 2
                        add              rax, rdx;                            jo    .Lbinop_α_236_0
                        mov              qword ptr [rbp + 848], 3
                        mov              qword ptr [rbp + 856], rax;          jmp   .Lbinop_α_236_7
.Lbinop_α_236_2:        and              edx, 1;                              jz    .Lbinop_α_236_0
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_236_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_236_4
.Lbinop_α_236_3:        movq             xmm0, rsi
.Lbinop_α_236_4:        cmp              cl, 5;                               je    .Lbinop_α_236_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_236_6
.Lbinop_α_236_5:        movq             xmm1, rdi
.Lbinop_α_236_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_236_0
                        mov              qword ptr [rbp + 848], 5
                        mov              qword ptr [rbp + 856], rax
.Lbinop_α_236_7:                                                              jmp   n00014_assign_α
.Lbinop_α_236_0:        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_var_ref_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00014_assign_α
                        .size            n00012_binop_bx, .-n00012_binop_bx
                        .type            n00014_assign_bx, @function
n00014_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_assign_α:          mov              r11, 82
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n00013_var_ref_α
                        .size            n00014_assign_bx, .-n00014_assign_bx
                        .type            n00013_var_ref_bx, @function
n00013_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n00015_var_α
                        .size            n00013_var_ref_bx, .-n00013_var_ref_bx
                        .type            n00015_var_bx, @function
n00015_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_var_α:             mov              r11, 84
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00016_lit_integer_α
                        .size            n00015_var_bx, .-n00015_var_bx
                        .type            n00016_lit_integer_bx, @function
n00016_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_lit_integer_α:     mov              r11, 85
                        mov              qword ptr [rbp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_242_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00017_coerce_numeric_α
.Llit_integer_α_242_0:  .quad            1
                        .size            n00016_lit_integer_bx, .-n00016_lit_integer_bx
                        .type            n00017_coerce_numeric_bx, @function
n00017_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_coerce_numeric_α:  mov              r11, 86
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_244_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_244_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_244_0
.Lcoerce_numeric_α_244_1:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00018_binop_α
.Lcoerce_numeric_α_244_0:
                        lea              rdi, [rbp + 912]
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 720]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 720]
                        cmp              al, 104;                             je    n00013_var_ref_α
                                                                              jmp   n00018_binop_α
                        .size            n00017_coerce_numeric_bx, .-n00017_coerce_numeric_bx
                        .type            n00018_binop_bx, @function
n00018_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_binop_α:           mov              r11, 87
                        mov              eax, dword ptr [rbp + 720]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_245_2
                        mov              rax, qword ptr [rbp + 728]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_245_0
                        mov              qword ptr [rbp + 704], 3
                        mov              qword ptr [rbp + 712], rax;          jmp   .Lbinop_α_245_7
.Lbinop_α_245_2:        and              edx, 1;                              jz    .Lbinop_α_245_0
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_245_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_245_4
.Lbinop_α_245_3:        movq             xmm0, rsi
.Lbinop_α_245_4:        cmp              cl, 5;                               je    .Lbinop_α_245_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_245_6
.Lbinop_α_245_5:        movq             xmm1, rdi
.Lbinop_α_245_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_245_0
                        mov              qword ptr [rbp + 704], 5
                        mov              qword ptr [rbp + 712], rax
.Lbinop_α_245_7:                                                              jmp   n00019_assign_α
.Lbinop_α_245_0:        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_var_ref_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00019_assign_α
                        .size            n00018_binop_bx, .-n00018_binop_bx
                        .type            n00019_assign_bx, @function
n00019_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              r11, 88
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00020_subscript_α
                        .size            n00019_assign_bx, .-n00019_assign_bx
                        .type            n00020_subscript_bx, @function
n00020_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_subscript_α:       mov              r11, 89
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_var_ref_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00021_deref_α
                        .size            n00020_subscript_bx, .-n00020_subscript_bx
                        .type            n00021_deref_bx, @function
n00021_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_deref_α:           mov              r11, 90
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_var_ref_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n00022_lit_string_α
                        .size            n00021_deref_bx, .-n00021_deref_bx
                        .type            n00022_lit_string_bx, @function
n00022_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_249_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00023_binop_test_α
.Llit_string_α_249_0:   .quad            .Llit_string_α_249_0_s
.Llit_string_α_249_0_s: .string          " "
                        .size            n00022_lit_string_bx, .-n00022_lit_string_bx
                        .type            n00023_binop_test_bx, @function
n00023_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_binop_test_α:      mov              r11, 92
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00013_var_ref_α
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00024_var_α
                        .size            n00023_binop_test_bx, .-n00023_binop_test_bx
                        .type            n00024_var_bx, @function
n00024_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_var_α:             mov              r11, 93
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00025_lit_integer_α
                        .size            n00024_var_bx, .-n00024_var_bx
                        .type            n00025_lit_integer_bx, @function
n00025_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rbp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_253_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n00026_var_α
.Llit_integer_α_253_0:  .quad            1
                        .size            n00025_lit_integer_bx, .-n00025_lit_integer_bx
                        .type            n00026_var_bx, @function
n00026_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_α:             mov              r11, 95
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00027_subscript_α
                        .size            n00026_var_bx, .-n00026_var_bx
                        .type            n00027_subscript_bx, @function
n00027_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_subscript_α:       mov              r11, 96
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              r8, qword ptr [rbp + 640]
                        mov              r9, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00028_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00029_call_icon_α
                        .size            n00027_subscript_bx, .-n00027_subscript_bx
                        .type            n00029_call_icon_bx, @function
n00029_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_call_icon_α:       mov              r11, 97
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn258:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn258]
                        lea              rsi, [rbp + 560]
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
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    n00028_lit_string_α
                                                                              jmp   n00028_lit_string_α
n00029_call_icon_β:       mov              r11, 97;                             jmp   n00028_lit_string_α
                        .size            n00029_call_icon_bx, .-n00029_call_icon_bx
                        .type            n00028_lit_string_bx, @function
n00028_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_lit_string_α:      mov              r11, 98
                        mov              qword ptr [rbp + 368], 2             # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_259_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00030_var_ref_α
.Llit_string_α_259_0:   .quad            .Llit_string_α_259_0_s
.Llit_string_α_259_0_s: .string          " "
                        .size            n00028_lit_string_bx, .-n00028_lit_string_bx
                        .type            n00030_var_ref_bx, @function
n00030_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00031_deref_α
                        .size            n00030_var_ref_bx, .-n00030_var_ref_bx
                        .type            n00031_deref_bx, @function
n00031_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_deref_α:           mov              r11, 100
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_var_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00032_call_icon_α
                        .size            n00031_deref_bx, .-n00031_deref_bx
                        .type            n00032_call_icon_bx, @function
n00032_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_call_icon_α:       mov              r11, 101
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lcall_icon_α_rkfn264:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn264]
                        lea              rsi, [rbp + 320]
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
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    n00001_var_α
                                                                              jmp   n00033_var_α
n00032_call_icon_β:       mov              r11, 101;                            jmp   n00001_var_α
                        .size            n00032_call_icon_bx, .-n00032_call_icon_bx
                        .type            n00033_var_bx, @function
n00033_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00034_var_α
                        .size            n00033_var_bx, .-n00033_var_bx
                        .type            n00034_var_bx, @function
n00034_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00035_lit_integer_α
                        .size            n00034_var_bx, .-n00034_var_bx
                        .type            n00035_lit_integer_bx, @function
n00035_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_269_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00036_coerce_numeric_α
.Llit_integer_α_269_0:  .quad            1
                        .size            n00035_lit_integer_bx, .-n00035_lit_integer_bx
                        .type            n00036_coerce_numeric_bx, @function
n00036_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_coerce_numeric_α:  mov              r11, 105
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_271_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_271_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_271_0
.Lcoerce_numeric_α_271_1:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00037_binop_α
.Lcoerce_numeric_α_271_0:
                        lea              rdi, [rbp + 912]
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 480]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 480]
                        cmp              al, 104;                             je    n00001_var_α
                                                                              jmp   n00037_binop_α
                        .size            n00036_coerce_numeric_bx, .-n00036_coerce_numeric_bx
                        .type            n00037_binop_bx, @function
n00037_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_binop_α:           mov              r11, 106
                        mov              eax, dword ptr [rbp + 480]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_272_2
                        mov              rax, qword ptr [rbp + 488]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_272_0
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax;          jmp   .Lbinop_α_272_7
.Lbinop_α_272_2:        and              edx, 1;                              jz    .Lbinop_α_272_0
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_272_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_272_4
.Lbinop_α_272_3:        movq             xmm0, rsi
.Lbinop_α_272_4:        cmp              cl, 5;                               je    .Lbinop_α_272_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_272_6
.Lbinop_α_272_5:        movq             xmm1, rdi
.Lbinop_α_272_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_272_0
                        mov              qword ptr [rbp + 464], 5
                        mov              qword ptr [rbp + 472], rax
.Lbinop_α_272_7:                                                              jmp   n00038_lit_integer_α
.Lbinop_α_272_0:        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_var_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n00038_lit_integer_α
                        .size            n00037_binop_bx, .-n00037_binop_bx
                        .type            n00038_lit_integer_bx, @function
n00038_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_273_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00039_subscript_α
.Llit_integer_α_273_0:  .quad            0
                        .size            n00038_lit_integer_bx, .-n00038_lit_integer_bx
                        .type            n00039_subscript_bx, @function
n00039_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_subscript_α:       mov              r11, 108
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              r8, qword ptr [rbp + 528]
                        mov              r9, qword ptr [rbp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n00040_binop_α
                        .size            n00039_subscript_bx, .-n00039_subscript_bx
                        .type            n00040_binop_bx, @function
n00040_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_binop_α:           mov              r11, 109
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00041_assign_α
                        .size            n00040_binop_bx, .-n00040_binop_bx
                        .type            n00041_assign_bx, @function
n00041_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_assign_α:          mov              r11, 110
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00042_conjunction_α
                        .size            n00041_assign_bx, .-n00041_assign_bx
                        .type            n00042_conjunction_bx, @function
n00042_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_conjunction_α:     mov              r11, 111
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00001_var_α
n00042_conjunction_β:     mov              r11, 111;                            jmp   n00001_var_α
                        .size            n00042_conjunction_bx, .-n00042_conjunction_bx
                        .type            n00007_var_bx, @function
n00007_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_α:             mov              r11, 112
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax;          jmp   n00043_lit_integer_α
                        .size            n00007_var_bx, .-n00007_var_bx
                        .type            n00043_lit_integer_bx, @function
n00043_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_280_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00044_lit_integer_α
.Llit_integer_α_280_0:  .quad            1
                        .size            n00043_lit_integer_bx, .-n00043_lit_integer_bx
                        .type            n00044_lit_integer_bx, @function
n00044_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00045_subscript_α
.Llit_integer_α_281_0:  .quad            18446744073709551614
                        .size            n00044_lit_integer_bx, .-n00044_lit_integer_bx
                        .type            n00045_subscript_bx, @function
n00045_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_subscript_α:       mov              r11, 115
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        mov              r8, qword ptr [rbp + 128]
                        mov              r9, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    format_ω
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00046_call_icon_α
                        .size            n00045_subscript_bx, .-n00045_subscript_bx
                        .type            n00046_call_icon_bx, @function
n00046_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_icon_α:       mov              r11, 116
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lcall_icon_α_rkfn284:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn284]
                        lea              rsi, [rbp + 48]
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
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    format_ω
                                                                              jmp   format_ω
n00046_call_icon_β:       mov              r11, 116;                            jmp   format_ω
                        .size            n00046_call_icon_bx, .-n00046_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
format_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
format_β:
                                                                              jmp   format_ω
#-----------------------------------------------------------------------------------------------------------------------
format_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lformat_α_283_248
                        .section         .rodata
.Licn_trace_nm285:      .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm285]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lformat_α_283_248:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1008]
                        mov              rbp, qword ptr [rbp + 1000];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
format_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lformat_α_283_249
                        .section         .rodata
.Licn_trace_nm286:      .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm286]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lformat_α_283_249:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1008]
                        mov              rbp, qword ptr [rbp + 1000];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lformat_α_287_3]
                        push             rcx
                        lea              rcx, [rip + .Lformat_α_287_2]
                        push             rcx;                                 jmp   FN__format
.Lformat_α_287_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lformat_α_287_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__item:
                        lea              rax, [rsp + -1120]
                        mov              qword ptr [rax + 1072], rbp
                        mov              rcx, qword ptr [rsp + 0]
                        mov              qword ptr [rax + 1080], rcx
                        mov              rcx, qword ptr [rsp + 8]
                        mov              qword ptr [rax + 1088], rcx
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rax + 1096], rcx
                        lea              rbp, [rax + 1072]
                        mov              rsp, rax
                        mov              rdi, rax
                        mov              esi, 0
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
item_α_body:
                        lea              rax, [rip + n00047_suspend_β]
                        mov              qword ptr [rbp + -176], rax
                        .type            n00048_call_icon_bx, @function
n00048_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_call_icon_α:       mov              r11, 117
                        .section         .rodata
.Lcall_icon_α_rkfn329:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn329]
                        lea              rsi, [rbp + -1024]
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
                        mov              qword ptr [rbp + -1040], rax
                        mov              qword ptr [rbp + -1032], rdx
                        cmp              al, 104;                             je    item_ω
                                                                              jmp   n00049_assign_α
n00048_call_icon_β:       mov              r11, 117;                            jmp   item_ω
                        .size            n00048_call_icon_bx, .-n00048_call_icon_bx
                        .type            n00049_assign_bx, @function
n00049_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_assign_α:          mov              r11, 118
                        mov              rax, qword ptr [rbp + -1040]
                        mov              rdx, qword ptr [rbp + -1032]
                        mov              qword ptr [rbp + -160], rax
                        mov              qword ptr [rbp + -152], rdx;         jmp   n00050_var_α
                        .size            n00049_assign_bx, .-n00049_assign_bx
                        .type            n00050_var_bx, @function
n00050_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_var_α:             mov              r11, 119
                        mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + -208], rax          # result
                        mov              qword ptr [rbp + -200], rdx;         jmp   n00051_lit_integer_α
                        .size            n00050_var_bx, .-n00050_var_bx
                        .type            n00051_lit_integer_bx, @function
n00051_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_lit_integer_α:     mov              r11, 120
                        mov              qword ptr [rbp + -192], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_332_0]
                        mov              qword ptr [rbp + -184], rax;         jmp   n00052_coerce_numeric_α
.Llit_integer_α_332_0:  .quad            1
                        .size            n00051_lit_integer_bx, .-n00051_lit_integer_bx
                        .type            n00052_coerce_numeric_bx, @function
n00052_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_coerce_numeric_α:  mov              r11, 121
                        mov              eax, dword ptr [rbp + -208]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_334_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_334_0
                        mov              eax, dword ptr [rbp + -192]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_334_0
.Lcoerce_numeric_α_334_1:
                        mov              rax, qword ptr [rbp + -208]
                        mov              qword ptr [rbp + -224], rax
                        mov              rax, qword ptr [rbp + -200]
                        mov              qword ptr [rbp + -216], rax;         jmp   n00053_binop_α
.Lcoerce_numeric_α_334_0:
                        lea              rdi, [rbp + -208]
                        lea              rsi, [rbp + -192]
                        lea              rdx, [rbp + -224]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + -224]
                        cmp              al, 104;                             je    n00054_var_ref_α
                                                                              jmp   n00053_binop_α
                        .size            n00052_coerce_numeric_bx, .-n00052_coerce_numeric_bx
                        .type            n00053_binop_bx, @function
n00053_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_binop_α:           mov              r11, 122
                        mov              eax, dword ptr [rbp + -224]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_335_2
                        mov              rax, qword ptr [rbp + -216]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_335_0
                        mov              qword ptr [rbp + -240], 3
                        mov              qword ptr [rbp + -232], rax;         jmp   .Lbinop_α_335_7
.Lbinop_α_335_2:        and              edx, 1;                              jz    .Lbinop_α_335_0
                        mov              rsi, qword ptr [rbp + -216]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_335_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_335_4
.Lbinop_α_335_3:        movq             xmm0, rsi
.Lbinop_α_335_4:        cmp              cl, 5;                               je    .Lbinop_α_335_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_335_6
.Lbinop_α_335_5:        movq             xmm1, rdi
.Lbinop_α_335_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_335_0
                        mov              qword ptr [rbp + -240], 5
                        mov              qword ptr [rbp + -232], rax
.Lbinop_α_335_7:                                                              jmp   n00055_assign_α
.Lbinop_α_335_0:        mov              rdi, qword ptr [rbp + -224]
                        mov              rsi, qword ptr [rbp + -216]
                        mov              rdx, qword ptr [rbp + -192]
                        mov              rcx, qword ptr [rbp + -184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00054_var_ref_α
                        mov              qword ptr [rbp + -240], rax
                        mov              qword ptr [rbp + -232], rdx;         jmp   n00055_assign_α
                        .size            n00053_binop_bx, .-n00053_binop_bx
                        .type            n00055_assign_bx, @function
n00055_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_assign_α:          mov              r11, 123
                        mov              rax, qword ptr [rbp + -240]
                        mov              rdx, qword ptr [rbp + -232]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_336_0]
                        .section         .rodata
.Lassign_α_336_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_336_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00054_var_ref_α
.Lassign_α_336_0:       .quad            .Lassign_α_336_0_s
.Lassign_α_336_0_s:     .string          "lineno"
                        .size            n00055_assign_bx, .-n00055_assign_bx
                        .type            n00054_var_ref_bx, @function
n00054_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + -352], rax
                        mov              qword ptr [rbp + -344], rdx;         jmp   n00056_lit_integer_α
                        .size            n00054_var_ref_bx, .-n00054_var_ref_bx
                        .type            n00056_lit_integer_bx, @function
n00056_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_lit_integer_α:     mov              r11, 125
                        mov              qword ptr [rbp + -336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_339_0]
                        mov              qword ptr [rbp + -328], rax;         jmp   n00057_deref_α
.Llit_integer_α_339_0:  .quad            6
                        .size            n00056_lit_integer_bx, .-n00056_lit_integer_bx
                        .type            n00057_deref_bx, @function
n00057_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_deref_α:           mov              r11, 126
                        mov              rdi, qword ptr [rbp + -352]
                        mov              rsi, qword ptr [rbp + -344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00058_var_ref_α
                        mov              qword ptr [rbp + -320], rax
                        mov              qword ptr [rbp + -312], rdx;         jmp   n00059_call_icon_α
                        .size            n00057_deref_bx, .-n00057_deref_bx
                        .type            n00059_call_icon_bx, @function
n00059_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_call_icon_α:       mov              r11, 127
                        mov              rax, qword ptr [rbp + -336]
                        mov              qword ptr [rbp + -384], rax
                        mov              rax, qword ptr [rbp + -328]
                        mov              qword ptr [rbp + -376], rax
                        mov              rax, qword ptr [rbp + -320]
                        mov              qword ptr [rbp + -400], rax
                        mov              rax, qword ptr [rbp + -312]
                        mov              qword ptr [rbp + -392], rax
                        .section         .rodata
.Lcall_icon_α_rkfn342:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn342]
                        lea              rsi, [rbp + -400]
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
                        mov              qword ptr [rbp + -416], rax
                        mov              qword ptr [rbp + -408], rdx
                        cmp              al, 104;                             je    n00058_var_ref_α
                                                                              jmp   n00060_lit_string_α
n00059_call_icon_β:       mov              r11, 127;                            jmp   n00058_var_ref_α
                        .size            n00059_call_icon_bx, .-n00059_call_icon_bx
                        .type            n00060_lit_string_bx, @function
n00060_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + -304], 2            # result
                        mov              dword ptr [rbp + -300], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_343_0]
                        mov              qword ptr [rbp + -296], rax;         jmp   n00061_var_ref_α
.Llit_string_α_343_0:   .quad            .Llit_string_α_343_0_s
.Llit_string_α_343_0_s: .string          "  "
                        .size            n00060_lit_string_bx, .-n00060_lit_string_bx
                        .type            n00061_var_ref_bx, @function
n00061_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + -160]
                        mov              qword ptr [rbp + -272], rax
                        mov              qword ptr [rbp + -264], rdx;         jmp   n00062_deref_α
                        .size            n00061_var_ref_bx, .-n00061_var_ref_bx
                        .type            n00062_deref_bx, @function
n00062_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_deref_α:           mov              r11, 130
                        mov              rdi, qword ptr [rbp + -272]
                        mov              rsi, qword ptr [rbp + -264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00058_var_ref_α
                        mov              qword ptr [rbp + -256], rax
                        mov              qword ptr [rbp + -248], rdx;         jmp   n00063_call_icon_α
                        .size            n00062_deref_bx, .-n00062_deref_bx
                        .type            n00063_call_icon_bx, @function
n00063_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_call_icon_α:       mov              r11, 131
                        mov              rax, qword ptr [rbp + -256]
                        mov              qword ptr [rbp + -448], rax
                        mov              rax, qword ptr [rbp + -248]
                        mov              qword ptr [rbp + -440], rax
                        mov              rax, qword ptr [rbp + -304]
                        mov              qword ptr [rbp + -464], rax
                        mov              rax, qword ptr [rbp + -296]
                        mov              qword ptr [rbp + -456], rax
                        mov              rax, qword ptr [rbp + -416]
                        mov              qword ptr [rbp + -480], rax
                        mov              rax, qword ptr [rbp + -408]
                        mov              qword ptr [rbp + -472], rax
                        .section         .rodata
.Lcall_icon_α_rkfn348:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn348]
                        lea              rsi, [rbp + -480]
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
                        mov              qword ptr [rbp + -496], rax
                        mov              qword ptr [rbp + -488], rdx
                        cmp              al, 104;                             je    n00058_var_ref_α
                                                                              jmp   n00058_var_ref_α
n00063_call_icon_β:       mov              r11, 131;                            jmp   n00058_var_ref_α
                        .size            n00063_call_icon_bx, .-n00063_call_icon_bx
                        .type            n00058_var_ref_bx, @function
n00058_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + -160]
                        mov              qword ptr [rbp + -528], rax
                        mov              qword ptr [rbp + -520], rdx;         jmp   n00064_deref_α
                        .size            n00058_var_ref_bx, .-n00058_var_ref_bx
                        .type            n00064_deref_bx, @function
n00064_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_deref_α:           mov              r11, 133
                        mov              rdi, qword ptr [rbp + -528]
                        mov              rsi, qword ptr [rbp + -520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00065_lit_integer_α
                        mov              qword ptr [rbp + -512], rax
                        mov              qword ptr [rbp + -504], rdx;         jmp   n00066_call_icon_α
                        .size            n00064_deref_bx, .-n00064_deref_bx
                        .type            n00066_call_icon_bx, @function
n00066_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_call_icon_α:       mov              r11, 134
                        mov              rax, qword ptr [rbp + -512]
                        mov              qword ptr [rbp + -560], rax
                        mov              rax, qword ptr [rbp + -504]
                        mov              qword ptr [rbp + -552], rax
                        .section         .rodata
.Lcall_icon_α_rkfn353:  .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn353]
                        lea              rsi, [rbp + -560]
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
                        mov              qword ptr [rbp + -576], rax
                        mov              qword ptr [rbp + -568], rdx
                        cmp              al, 104;                             je    n00065_lit_integer_α
                                                                              jmp   n00067_assign_α
n00066_call_icon_β:       mov              r11, 134;                            jmp   n00065_lit_integer_α
                        .size            n00066_call_icon_bx, .-n00066_call_icon_bx
                        .type            n00067_assign_bx, @function
n00067_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_assign_α:          mov              r11, 135
                        mov              rax, qword ptr [rbp + -576]
                        mov              rdx, qword ptr [rbp + -568]
                        mov              qword ptr [rbp + -160], rax
                        mov              qword ptr [rbp + -152], rdx;         jmp   n00065_lit_integer_α
                        .size            n00067_assign_bx, .-n00067_assign_bx
                        .type            n00065_lit_integer_bx, @function
n00065_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_lit_integer_α:     mov              r11, 136
                        mov              qword ptr [rbp + -592], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_355_0]
                        mov              qword ptr [rbp + -584], rax;         jmp   n00068_assign_α
.Llit_integer_α_355_0:  .quad            1
                        .size            n00065_lit_integer_bx, .-n00065_lit_integer_bx
                        .type            n00068_assign_bx, @function
n00068_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rbp + -592]
                        mov              rdx, qword ptr [rbp + -584]
                        mov              qword ptr [rbp + -128], rax
                        mov              qword ptr [rbp + -120], rdx;         jmp   n00069_var_α
                        .size            n00068_assign_bx, .-n00068_assign_bx
                        .type            n00069_var_bx, @function
n00069_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_α:             mov              r11, 138
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rbp + -608], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rbp + -600], rax;         jmp   n00070_scan_enter_α
                        .size            n00069_var_bx, .-n00069_var_bx
                        .type            n00070_scan_enter_bx, @function
n00070_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_scan_enter_α:      mov              r11, 139
                        mov              qword ptr [rbp + -992], r13
                        mov              qword ptr [rbp + -984], r14
                        mov              qword ptr [rbp + -976], r15
                        mov              rdi, qword ptr [rbp + -608]
                        mov              rsi, qword ptr [rbp + -600]
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
                        mov              r14, 0;                              jmp   n00071_lit_charset_α
                        .size            n00070_scan_enter_bx, .-n00070_scan_enter_bx
                        .type            n00071_lit_charset_bx, @function
n00071_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_lit_charset_α:     mov              r11, 140
                        mov              qword ptr [rbp + -880], 2            # result
                        mov              dword ptr [rbp + -876], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_361_0]
                        mov              qword ptr [rbp + -872], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_361_0]
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
                        pop              rax;                                 jmp   n00072_scan_upto_α
.Llit_charset_α_361_0:  .quad            .Llit_charset_α_361_0_s
.Llit_charset_α_361_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00071_lit_charset_bx, .-n00071_lit_charset_bx
                        .type            n00072_scan_upto_bx, @function
n00072_scan_upto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_scan_upto_α:       mov              r11, 141
                        mov              qword ptr [rbp + -896], r14
.Lscan_upto_α_363_0:    mov              rax, qword ptr [rbp + -896]
                        cmp              rax, r15;                            jge   n00073_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_upto_α_363_2]
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
                        pop              rax;                                 je    .Lscan_upto_α_363_1
                        mov              qword ptr [rbp + -912], 3
                        add              rax, 1
                        mov              qword ptr [rbp + -904], rax;         jmp   n00074_scan_tab_α
.Lscan_upto_α_363_1:    inc              qword ptr [rbp + -896];              jmp   .Lscan_upto_α_363_0
n00072_scan_upto_β:       mov              r11, 141
                        inc              qword ptr [rbp + -896];              jmp   .Lscan_upto_α_363_0
.Lscan_upto_α_363_2:    .quad            .Lscan_upto_α_363_2_s
.Lscan_upto_α_363_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00072_scan_upto_bx, .-n00072_scan_upto_bx
                        .type            n00074_scan_tab_bx, @function
n00074_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_scan_tab_α:        mov              r11, 142
                        mov              rdi, qword ptr [rbp + -912]
                        mov              rsi, qword ptr [rbp + -904]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_365_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_365_0:     cmp              rax, 1;                              jl    n00072_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00072_scan_upto_β
                        mov              qword ptr [rbp + -928], r14
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
                        mov              qword ptr [rbp + -944], rax
                        mov              qword ptr [rbp + -936], rdx;         jmp   n00075_lit_charset_α
n00074_scan_tab_β:        mov              r11, 142
                        mov              r14, qword ptr [rbp + -928];         jmp   n00072_scan_upto_β
                        .size            n00074_scan_tab_bx, .-n00074_scan_tab_bx
                        .type            n00075_lit_charset_bx, @function
n00075_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_lit_charset_α:     mov              r11, 143
                        mov              qword ptr [rbp + -640], 2            # result
                        mov              dword ptr [rbp + -636], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_366_0]
                        mov              qword ptr [rbp + -632], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_366_0]
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
                        pop              rax;                                 jmp   n00076_scan_many_α
.Llit_charset_α_366_0:  .quad            .Llit_charset_α_366_0_s
.Llit_charset_α_366_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00075_lit_charset_bx, .-n00075_lit_charset_bx
                        .type            n00076_scan_many_bx, @function
n00076_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_scan_many_α:       mov              r11, 144
                        mov              eax, r14d
.Lscan_many_α_368_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_368_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_368_2]
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
                        pop              rax;                                 je    .Lscan_many_α_368_1
                        add              eax, 1;                              jmp   .Lscan_many_α_368_0
.Lscan_many_α_368_1:    cmp              eax, r14d;                           je    n00077_disjunction_α
                        mov              qword ptr [rbp + -656], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + -648], rcx;         jmp   n00078_scan_tab_α
n00076_scan_many_β:       mov              r11, 144;                            jmp   n00077_disjunction_α
.Lscan_many_α_368_2:    .quad            .Lscan_many_α_368_2_s
.Lscan_many_α_368_2_s:  .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00076_scan_many_bx, .-n00076_scan_many_bx
                        .type            n00078_scan_tab_bx, @function
n00078_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_scan_tab_α:        mov              r11, 145
                        mov              rdi, qword ptr [rbp + -656]
                        mov              rsi, qword ptr [rbp + -648]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_370_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_370_0:     cmp              rax, 1;                              jl    n00077_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00077_disjunction_α
                        mov              qword ptr [rbp + -672], r14
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
                        mov              qword ptr [rbp + -688], rax
                        mov              qword ptr [rbp + -680], rdx;         jmp   n00079_assign_α
n00078_scan_tab_β:        mov              r11, 145
                        mov              r14, qword ptr [rbp + -672];         jmp   n00077_disjunction_α
                        .size            n00078_scan_tab_bx, .-n00078_scan_tab_bx
                        .type            n00079_assign_bx, @function
n00079_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_assign_α:          mov              r11, 146
                        mov              rax, qword ptr [rbp + -688]
                        mov              rdx, qword ptr [rbp + -680]
                        mov              qword ptr [rbp + -144], rax
                        mov              qword ptr [rbp + -136], rdx;         jmp   n00077_disjunction_α
                        .size            n00079_assign_bx, .-n00079_assign_bx
                        .type            n00077_disjunction_bx, @function
n00077_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_disjunction_α:     mov              r11, 147
                        mov              qword ptr [rbp + -832], 0
                        mov              qword ptr [rbp + -824], 0
                        mov              dword ptr [rbp + -816], 0;           jmp   n00080_var_α
.Ldisjunction_γ_318_as: mov              r11, 147
                        mov              eax, dword ptr [rbp + -816]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_373_0
                                                                              jmp   n00081_conjunction_α
.Ldisjunction_α_373_0:                                                        jmp   n00081_conjunction_α
n00077_disjunction_β:     mov              r11, 147
                        mov              eax, dword ptr [rbp + -816];         jmp   n00071_lit_charset_α
.Ldisjunction_γ_318_af: mov              r11, 147
.Ldisjunction_ω_318_af: mov              r11, 147
                        add              dword ptr [rbp + -816], 1
                        mov              eax, dword ptr [rbp + -816];         jmp   n00071_lit_charset_α
                        .size            n00077_disjunction_bx, .-n00077_disjunction_bx
                        .type            n00081_conjunction_bx, @function
n00081_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_conjunction_α:     mov              r11, 148
                        mov              rax, qword ptr [rbp + -832]
                        mov              qword ptr [rbp + -848], rax
                        mov              rax, qword ptr [rbp + -824]
                        mov              qword ptr [rbp + -840], rax;         jmp   n00071_lit_charset_α
n00081_conjunction_β:     mov              r11, 148;                            jmp   n00071_lit_charset_α
                        .size            n00081_conjunction_bx, .-n00081_conjunction_bx
                        .type            n00080_var_bx, @function
n00080_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rbp + -720], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rbp + -712], rax;         jmp   n00082_unop_α
n00080_var_β:             mov              r11, 149;                            jmp   .Ldisjunction_ω_318_af
                        .size            n00080_var_bx, .-n00080_var_bx
                        .type            n00082_unop_bx, @function
n00082_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_unop_α:            mov              r11, 150
                        mov              rdi, qword ptr [rbp + -144]
                        mov              rsi, qword ptr [rbp + -136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -736], rax
                        mov              qword ptr [rbp + -728], rdx;         jmp   n00083_lit_integer_α
                        .size            n00082_unop_bx, .-n00082_unop_bx
                        .type            n00083_lit_integer_bx, @function
n00083_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rbp + -704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rbp + -696], rax;         jmp   n00084_binop_test_α
.Llit_integer_α_378_0:  .quad            3
                        .size            n00083_lit_integer_bx, .-n00083_lit_integer_bx
                        .type            n00084_binop_test_bx, @function
n00084_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_binop_test_α:      mov              r11, 152
                        mov              eax, dword ptr [rbp + -736]
                        cmp              al, 112;                             je    .Lbinop_test_α_379_0
                        mov              eax, dword ptr [rbp + -704]
                        cmp              al, 112;                             je    .Lbinop_test_α_379_0
                        mov              eax, dword ptr [rbp + -736]
                        cmp              al, 3;                               jne   .Lbinop_test_α_379_2
                        mov              eax, dword ptr [rbp + -704]
                        cmp              al, 3;                               jne   .Lbinop_test_α_379_2
.Lbinop_test_α_379_1:   mov              rax, qword ptr [rbp + -728]
                        mov              rcx, qword ptr [rbp + -696]
                        cmp              rax, rcx;                            jl    .Ldisjunction_ω_318_af
                        mov              rcx, qword ptr [rbp + -704]
                        mov              qword ptr [rbp + -752], rcx
                        mov              rcx, qword ptr [rbp + -696]
                        mov              qword ptr [rbp + -744], rcx;         jmp   n00085_var_α
.Lbinop_test_α_379_0:   mov              rdi, qword ptr [rbp + -736]
                        mov              rsi, qword ptr [rbp + -728]
                        mov              rdx, qword ptr [rbp + -704]
                        mov              rcx, qword ptr [rbp + -696]
                        mov              r8d, 8
                        lea              r9, [rbp + -752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_379_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_318_af
                                                                              jmp   n00085_var_α
.Lbinop_test_α_379_2:   mov              rdi, qword ptr [rbp + -736]
                        mov              rsi, qword ptr [rbp + -728]
                        mov              rdx, qword ptr [rbp + -704]
                        mov              rcx, qword ptr [rbp + -696]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_318_af
                        mov              rdi, qword ptr [rbp + -736]
                        mov              rsi, qword ptr [rbp + -728]
                        mov              rdx, qword ptr [rbp + -704]
                        mov              rcx, qword ptr [rbp + -696]
                        lea              r8, [rbp + -752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00085_var_α
                        .size            n00084_binop_test_bx, .-n00084_binop_test_bx
                        .type            n00085_var_bx, @function
n00085_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_var_α:             mov              r11, 153
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rbp + -800], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rbp + -792], rax;         jmp   n00047_suspend_α
                        .size            n00085_var_bx, .-n00085_var_bx
                        .type            n00047_suspend_bx, @function
n00047_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_suspend_α:         mov              r11, 154
                        lea              rax, [rip + n00047_suspend_β]
                        mov              qword ptr [rbp + -176], rax
                        mov              rax, qword ptr [rbp + -800]
                        mov              qword ptr [rbp + -1072], rax
                        mov              rax, qword ptr [rbp + -792]
                        mov              qword ptr [rbp + -1064], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00086_scan_α
n00047_suspend_β:         mov              r11, 154
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
                        pop              rax;                                 jmp   n00086_scan_β
                        .size            n00047_suspend_bx, .-n00047_suspend_bx
                        .type            n00086_scan_bx, @function
n00086_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_scan_α:            mov              r11, 155
                        mov              qword ptr [rbp + -784], r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -776], rax
                        mov              rdi, qword ptr [rbp + -992]
                        mov              rsi, qword ptr [rbp + -984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -992]
                        mov              r14, qword ptr [rbp + -984]
                        mov              r15, qword ptr [rbp + -976];         jmp   item_γ
n00086_scan_β:            mov              r11, 155
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + -984], rax
                        mov              rdi, qword ptr [rbp + -776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter_live@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, qword ptr [rbp + -784]
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00077_disjunction_β
                                                                              jmp   .Ldisjunction_ω_318_af
                        .size            n00086_scan_bx, .-n00086_scan_bx
                        .type            n00073_scan_bx, @function
n00073_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_scan_α:            mov              r11, 156
                        mov              rdi, qword ptr [rbp + -992]
                        mov              rsi, qword ptr [rbp + -984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + -992]
                        mov              r14, qword ptr [rbp + -984]
                        mov              r15, qword ptr [rbp + -976];         jmp   n00048_call_icon_α
n00073_scan_β:            mov              r11, 156;                            jmp   n00048_call_icon_α
                        .size            n00073_scan_bx, .-n00073_scan_bx
#-----------------------------------------------------------------------------------------------------------------------
item_res:
                        mov              rbp, rax
#-----------------------------------------------------------------------------------------------------------------------
item_β:
                        mov              rax, qword ptr [rbp + -176];         jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
item_γ:
                        mov              rdx, rbp
                        lea              rax, [rip + item_res]
                        mov              qword ptr [rdx + 32], rax
                        mov              qword ptr [rdx + 40], rsp
                        mov              rcx, qword ptr [rdx + 8]
                        mov              rbp, qword ptr [rdx + 0]
                        mov              eax, 2;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
item_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Litem_α_387_249
                        .section         .rodata
.Licn_trace_nm388:      .string          "item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm388]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Litem_α_387_249:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rbp + 8]
                        mov              rsp, qword ptr [rbp + 24]
                        mov              rbp, qword ptr [rbp + 0]
                        mov              eax, 104;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3472
                        mov              qword ptr [rsp + 3464], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 3120
                        xor              eax, eax
                        mov              ecx, 144
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 8
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_387_247
                        .section         .rodata
.Licn_trace_nm389:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm389]
                        mov              esi, 2
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_387_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
options_α_body:
                        .type            n00087_var_ref_bx, @function
n00087_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx;         jmp   n00088_nulltest_var_α
                        .size            n00087_var_ref_bx, .-n00087_var_ref_bx
                        .type            n00088_nulltest_var_bx, @function
n00088_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_nulltest_var_α:    mov              r11, 158
                        mov              eax, dword ptr [rbp + 2992]
                        cmp              al, 104;                             je    n00089_call_icon_α
                        mov              rdi, qword ptr [rbp + 2992]
                        mov              rsi, qword ptr [rbp + 3000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00089_call_icon_α
                        cmp              eax, 0;                              jne   n00089_call_icon_α
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 3016], rax;         jmp   n00090_lit_charset_α
                        .size            n00088_nulltest_var_bx, .-n00088_nulltest_var_bx
                        .type            n00090_lit_charset_bx, @function
n00090_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_lit_charset_α:     mov              r11, 159
                        mov              qword ptr [rbp + 3088], 2            # result
                        mov              dword ptr [rbp + 3092], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_517_0]
                        mov              qword ptr [rbp + 3096], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_517_0]
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
                        pop              rax;                                 jmp   n00091_call_icon_α
.Llit_charset_α_517_0:  .quad            .Llit_charset_α_517_0_s
.Llit_charset_α_517_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00090_lit_charset_bx, .-n00090_lit_charset_bx
                        .type            n00091_call_icon_bx, @function
n00091_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_call_icon_α:       mov              r11, 160
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lcall_icon_α_rkfn519:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn519]
                        lea              rsi, [rbp + 3056]
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
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              al, 104;                             je    n00089_call_icon_α
                                                                              jmp   n00092_assign_var_α
n00091_call_icon_β:       mov              r11, 160;                            jmp   n00089_call_icon_α
                        .size            n00091_call_icon_bx, .-n00091_call_icon_bx
                        .type            n00092_assign_var_bx, @function
n00092_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_assign_var_α:      mov              r11, 161
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        mov              rdx, qword ptr [rbp + 3040]
                        mov              rcx, qword ptr [rbp + 3048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00089_call_icon_α
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00089_call_icon_α
                        .size            n00092_assign_var_bx, .-n00092_assign_var_bx
                        .type            n00089_call_icon_bx, @function
n00089_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_call_icon_α:       mov              r11, 162
                        .section         .rodata
.Lcall_icon_α_rkfn522:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn522]
                        lea              rsi, [rbp + 2976]
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
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              al, 104;                             je    n00093_make_list_α
                                                                              jmp   n00094_assign_α
n00089_call_icon_β:       mov              r11, 162;                            jmp   n00093_make_list_α
                        .size            n00089_call_icon_bx, .-n00089_call_icon_bx
                        .type            n00094_assign_bx, @function
n00094_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_assign_α:          mov              r11, 163
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx;         jmp   n00093_make_list_α
                        .size            n00094_assign_bx, .-n00094_assign_bx
                        .type            n00093_make_list_bx, @function
n00093_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_make_list_α:       mov              r11, 164
                        lea              rdi, [rbp + 2960]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n00095_assign_α
                        .size            n00093_make_list_bx, .-n00093_make_list_bx
                        .type            n00095_assign_bx, @function
n00095_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_assign_α:          mov              r11, 165
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx;         jmp   n00096_var_ref_α
                        .size            n00095_assign_bx, .-n00095_assign_bx
                        .type            n00096_var_ref_bx, @function
n00096_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00097_deref_α
                        .size            n00096_var_ref_bx, .-n00096_var_ref_bx
                        .type            n00097_deref_bx, @function
n00097_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_deref_α:           mov              r11, 167
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00098_var_ref_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00099_call_icon_α
                        .size            n00097_deref_bx, .-n00097_deref_bx
                        .type            n00099_call_icon_bx, @function
n00099_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_call_icon_α:       mov              r11, 168
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn531:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn531]
                        lea              rsi, [rbp + 288]
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n00098_var_ref_α
                                                                              jmp   n00100_assign_α
n00099_call_icon_β:       mov              r11, 168;                            jmp   n00098_var_ref_α
                        .size            n00099_call_icon_bx, .-n00099_call_icon_bx
                        .type            n00100_assign_bx, @function
n00100_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_assign_α:          mov              r11, 169
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx;         jmp   n00101_var_α
                        .size            n00100_assign_bx, .-n00100_assign_bx
                        .type            n00101_var_bx, @function
n00101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_var_α:             mov              r11, 170
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00102_scan_enter_α
                        .size            n00101_var_bx, .-n00101_var_bx
                        .type            n00102_scan_enter_bx, @function
n00102_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_scan_enter_α:      mov              r11, 171
                        mov              qword ptr [rbp + 368], r13
                        mov              qword ptr [rbp + 376], r14
                        mov              qword ptr [rbp + 384], r15
                        mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
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
                        mov              r14, 0;                              jmp   n00103_disjunction_α
                        .size            n00102_scan_enter_bx, .-n00102_scan_enter_bx
                        .type            n00103_disjunction_bx, @function
n00103_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_disjunction_α:     mov              r11, 172
                        mov              qword ptr [rbp + 432], 0
                        mov              qword ptr [rbp + 440], 0
                        mov              dword ptr [rbp + 448], 0;            jmp   n00104_lit_string_α
.Ldisjunction_γ_405_as: mov              r11, 172
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_538_0
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 440], rax;          jmp   n00105_scan_α
.Ldisjunction_α_538_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_538_1
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 440], rax;          jmp   n00105_scan_α
.Ldisjunction_α_538_1:                                                        jmp   n00105_scan_α
n00103_disjunction_β:     mov              r11, 172
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0;                              je    n00106_disjunction_β
                                                                              jmp   n00107_scan_α
.Ldisjunction_γ_405_af: mov              r11, 172
.Ldisjunction_ω_405_af: mov              r11, 172
                        add              dword ptr [rbp + 448], 1
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 1;                              je    n00108_var_ref_α
                                                                              jmp   n00107_scan_α
                        .size            n00103_disjunction_bx, .-n00103_disjunction_bx
                        .type            n00105_scan_bx, @function
n00105_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_scan_α:            mov              r11, 173
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 368]
                        mov              r14, qword ptr [rbp + 376]
                        mov              r15, qword ptr [rbp + 384];          jmp   n00096_var_ref_α
n00105_scan_β:            mov              r11, 173
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
                        mov              r14, rax;                            jmp   n00103_disjunction_β
                                                                              jmp   n00096_var_ref_α
                        .size            n00105_scan_bx, .-n00105_scan_bx
                        .type            n00109_conjunction_bx, @function
n00109_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_conjunction_α:     mov              r11, 174;                            jmp   .Ldisjunction_γ_405_as
n00109_conjunction_β:     mov              r11, 174;                            jmp   n00107_scan_α
                        .size            n00109_conjunction_bx, .-n00109_conjunction_bx
                        .type            n00108_var_ref_bx, @function
n00108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n00110_var_ref_α
n00108_var_ref_β:         mov              r11, 175;                            jmp   n00107_scan_α
                        .size            n00108_var_ref_bx, .-n00108_var_ref_bx
                        .type            n00110_var_ref_bx, @function
n00110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx;         jmp   n00111_deref_α
                        .size            n00110_var_ref_bx, .-n00110_var_ref_bx
                        .type            n00111_deref_bx, @function
n00111_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_deref_α:           mov              r11, 177
                        mov              rdi, qword ptr [rbp + 2864]
                        mov              rsi, qword ptr [rbp + 2872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00107_scan_α
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n00112_deref_α
                        .size            n00111_deref_bx, .-n00111_deref_bx
                        .type            n00112_deref_bx, @function
n00112_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_deref_α:           mov              r11, 178
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00107_scan_α
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx;         jmp   n00113_call_icon_α
                        .size            n00112_deref_bx, .-n00112_deref_bx
                        .type            n00113_call_icon_bx, @function
n00113_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_call_icon_α:       mov              r11, 179
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn549:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn549]
                        lea              rsi, [rbp + 2816]
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
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              al, 104;                             je    n00107_scan_α
                                                                              jmp   .Ldisjunction_γ_405_as
n00113_call_icon_β:       mov              r11, 179;                            jmp   n00107_scan_α
                        .size            n00113_call_icon_bx, .-n00113_call_icon_bx
                        .type            n00104_lit_string_bx, @function
n00104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rbp + 2768], 2            # result
                        mov              dword ptr [rbp + 2772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_550_0]
                        mov              qword ptr [rbp + 2776], rax;         jmp   n00114_scan_match_α
n00104_lit_string_β:      mov              r11, 180;                            jmp   .Ldisjunction_ω_405_af
.Llit_string_α_550_0:   .quad            .Llit_string_α_550_0_s
.Llit_string_α_550_0_s: .string          "-"
                        .size            n00104_lit_string_bx, .-n00104_lit_string_bx
                        .type            n00114_scan_match_bx, @function
n00114_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_scan_match_α:      mov              r11, 181
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_405_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_552_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_405_af
                        mov              qword ptr [rbp + 2736], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2744], rax;         jmp   n00115_scan_tab_α
.Lscan_match_α_552_0:   .quad            .Lscan_match_α_552_0_s
.Lscan_match_α_552_0_s: .string          "-"
                        .size            n00114_scan_match_bx, .-n00114_scan_match_bx
                        .type            n00115_scan_tab_bx, @function
n00115_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_scan_tab_α:        mov              r11, 182
                        mov              rdi, qword ptr [rbp + 2736]
                        mov              rsi, qword ptr [rbp + 2744]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_554_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_554_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_405_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_405_af
                        mov              qword ptr [rbp + 2720], r14
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
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n00116_lit_integer_α
n00115_scan_tab_β:        mov              r11, 182
                        mov              r14, qword ptr [rbp + 2720];         jmp   .Ldisjunction_ω_405_af
                        .size            n00115_scan_tab_bx, .-n00115_scan_tab_bx
                        .type            n00116_lit_integer_bx, @function
n00116_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rbp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_555_0]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n00117_scan_pos_α
.Llit_integer_α_555_0:  .quad            0
                        .size            n00116_lit_integer_bx, .-n00116_lit_integer_bx
                        .type            n00117_scan_pos_bx, @function
n00117_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_scan_pos_α:        mov              r11, 184
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_557_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_557_0:     cmp              rax, 1;                              jl    n00118_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00118_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00118_var_α
                        mov              qword ptr [rbp + 2672], 3
                        mov              qword ptr [rbp + 2680], rax;         jmp   n00115_scan_tab_β
                        .size            n00117_scan_pos_bx, .-n00117_scan_pos_bx
                        .type            n00118_var_bx, @function
n00118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_var_α:             mov              r11, 185
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2664], 0;           jmp   n00119_conjunction_α
n00118_var_β:             mov              r11, 185;                            jmp   n00115_scan_tab_β
                        .size            n00118_var_bx, .-n00118_var_bx
                        .type            n00119_conjunction_bx, @function
n00119_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_conjunction_α:     mov              r11, 186
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n00120_disjunction_α
n00119_conjunction_β:     mov              r11, 186;                            jmp   .Ldisjunction_ω_405_af
                        .size            n00119_conjunction_bx, .-n00119_conjunction_bx
                        .type            n00120_disjunction_bx, @function
n00120_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_disjunction_α:     mov              r11, 187
                        mov              qword ptr [rbp + 2432], 0
                        mov              qword ptr [rbp + 2440], 0
                        mov              dword ptr [rbp + 2448], 0;           jmp   n00121_lit_string_α
.Ldisjunction_γ_420_as: mov              r11, 187
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_561_0
                                                                              jmp   n00122_lit_integer_α
.Ldisjunction_α_561_0:                                                        jmp   n00122_lit_integer_α
n00120_disjunction_β:     mov              r11, 187
                        mov              eax, dword ptr [rbp + 2448];         jmp   n00122_lit_integer_α
.Ldisjunction_γ_420_af: mov              r11, 187
.Ldisjunction_ω_420_af: mov              r11, 187
                        add              dword ptr [rbp + 2448], 1
                        mov              eax, dword ptr [rbp + 2448];         jmp   n00122_lit_integer_α
                        .size            n00120_disjunction_bx, .-n00120_disjunction_bx
                        .type            n00122_lit_integer_bx, @function
n00122_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_lit_integer_α:     mov              r11, 188
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_562_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00123_scan_move_α
.Llit_integer_α_562_0:  .quad            1
                        .size            n00122_lit_integer_bx, .-n00122_lit_integer_bx
                        .type            n00123_scan_move_bx, @function
n00123_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_scan_move_α:       mov              r11, 189
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00107_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00107_scan_α
                        mov              qword ptr [rbp + 512], r14
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
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00124_assign_α
n00123_scan_move_β:       mov              r11, 189
                        mov              r14, qword ptr [rbp + 512];          jmp   n00107_scan_α
                        .size            n00123_scan_move_bx, .-n00123_scan_move_bx
                        .type            n00124_assign_bx, @function
n00124_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_assign_α:          mov              r11, 190
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n00106_disjunction_α
                        .size            n00124_assign_bx, .-n00124_assign_bx
                        .type            n00106_disjunction_bx, @function
n00106_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_disjunction_α:     mov              r11, 191
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0;            jmp   n00125_var_ref_α
.Ldisjunction_γ_424_as: mov              r11, 191
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_567_0
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00122_lit_integer_α
.Ldisjunction_α_567_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_567_1
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00122_lit_integer_α
.Ldisjunction_α_567_1:                                                        jmp   n00122_lit_integer_α
n00106_disjunction_β:     mov              r11, 191
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              je    n00126_disjunction_β
                                                                              jmp   n00122_lit_integer_α
.Ldisjunction_γ_424_af: mov              r11, 191
.Ldisjunction_ω_424_af: mov              r11, 191
                        add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1;                              je    n00127_lit_string_α
                                                                              jmp   n00122_lit_integer_α
                        .size            n00106_disjunction_bx, .-n00106_disjunction_bx
                        .type            n00127_lit_string_bx, @function
n00127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_568_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n00128_var_ref_α
n00127_lit_string_β:      mov              r11, 192;                            jmp   n00122_lit_integer_α
.Llit_string_α_568_0:   .quad            .Llit_string_α_568_0_s
.Llit_string_α_568_0_s: .string          "Unrecognized option: -"
                        .size            n00127_lit_string_bx, .-n00127_lit_string_bx
                        .type            n00128_var_ref_bx, @function
n00128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n00129_deref_α
                        .size            n00128_var_ref_bx, .-n00128_var_ref_bx
                        .type            n00129_deref_bx, @function
n00129_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_deref_α:           mov              r11, 194
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00122_lit_integer_α
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n00130_call_icon_α
                        .size            n00129_deref_bx, .-n00129_deref_bx
                        .type            n00130_call_icon_bx, @function
n00130_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_call_icon_α:       mov              r11, 195
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lcall_icon_α_rkfn573:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn573]
                        lea              rsi, [rbp + 2320]
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
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              al, 104;                             je    n00122_lit_integer_α
                                                                              jmp   .Ldisjunction_γ_424_as
n00130_call_icon_β:       mov              r11, 195;                            jmp   n00122_lit_integer_α
                        .size            n00130_call_icon_bx, .-n00130_call_icon_bx
                        .type            n00125_var_ref_bx, @function
n00125_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n00131_var_ref_α
n00125_var_ref_β:         mov              r11, 196;                            jmp   .Ldisjunction_ω_424_af
                        .size            n00125_var_ref_bx, .-n00125_var_ref_bx
                        .type            n00131_var_ref_bx, @function
n00131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n00132_deref_α
                        .size            n00131_var_ref_bx, .-n00131_var_ref_bx
                        .type            n00132_deref_bx, @function
n00132_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_deref_α:           mov              r11, 198
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n00133_deref_α
                        .size            n00132_deref_bx, .-n00132_deref_bx
                        .type            n00133_deref_bx, @function
n00133_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_deref_α:           mov              r11, 199
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n00134_call_builtin_gen_α
                        .size            n00133_deref_bx, .-n00133_deref_bx
                        .type            n00134_call_builtin_gen_bx, @function
n00134_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_call_builtin_gen_α:
                        mov              r11, 200
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2184], rax
                        mov              qword ptr [rbp + 2208], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_580_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn200: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn200]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 2
                        lea              rcx, [rbp + 2208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                                                                              jmp   n00135_lit_integer_α
n00134_call_builtin_gen_β:
                        mov              r11, 200;                            jmp   .Lcall_builtin_gen_α_580_60
                        .size            n00134_call_builtin_gen_bx, .-n00134_call_builtin_gen_bx
                        .type            n00135_lit_integer_bx, @function
n00135_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_lit_integer_α:     mov              r11, 201
                        mov              qword ptr [rbp + 2288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_581_0]
                        mov              qword ptr [rbp + 2296], rax;         jmp   n00136_coerce_numeric_α
.Llit_integer_α_581_0:  .quad            1
                        .size            n00135_lit_integer_bx, .-n00135_lit_integer_bx
                        .type            n00136_coerce_numeric_bx, @function
n00136_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_coerce_numeric_α:  mov              r11, 202
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_583_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_583_0
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_583_0
.Lcoerce_numeric_α_583_1:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n00137_binop_α
.Lcoerce_numeric_α_583_0:
                        lea              rdi, [rbp + 2160]
                        lea              rsi, [rbp + 2288]
                        lea              rdx, [rbp + 2144]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2144]
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                                                                              jmp   n00137_binop_α
                        .size            n00136_coerce_numeric_bx, .-n00136_coerce_numeric_bx
                        .type            n00137_binop_bx, @function
n00137_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_binop_α:           mov              r11, 203
                        mov              eax, dword ptr [rbp + 2144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_584_2
                        mov              rax, qword ptr [rbp + 2152]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_584_0
                        mov              qword ptr [rbp + 2128], 3
                        mov              qword ptr [rbp + 2136], rax;         jmp   .Lbinop_α_584_7
.Lbinop_α_584_2:        and              edx, 1;                              jz    .Lbinop_α_584_0
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_584_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_584_4
.Lbinop_α_584_3:        movq             xmm0, rsi
.Lbinop_α_584_4:        cmp              cl, 5;                               je    .Lbinop_α_584_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_584_6
.Lbinop_α_584_5:        movq             xmm1, rdi
.Lbinop_α_584_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_584_0
                        mov              qword ptr [rbp + 2128], 5
                        mov              qword ptr [rbp + 2136], rax
.Lbinop_α_584_7:                                                              jmp   n00138_assign_α
.Lbinop_α_584_0:        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_424_af
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n00138_assign_α
                        .size            n00137_binop_bx, .-n00137_binop_bx
                        .type            n00138_assign_bx, @function
n00138_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n00139_var_ref_α
                        .size            n00138_assign_bx, .-n00138_assign_bx
                        .type            n00139_var_ref_bx, @function
n00139_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00140_var_α
                        .size            n00139_var_ref_bx, .-n00139_var_ref_bx
                        .type            n00140_var_bx, @function
n00140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_var_α:             mov              r11, 206
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00141_subscript_α
                        .size            n00140_var_bx, .-n00140_var_bx
                        .type            n00141_subscript_bx, @function
n00141_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_subscript_α:       mov              r11, 207
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00122_lit_integer_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00126_disjunction_α
                        .size            n00141_subscript_bx, .-n00141_subscript_bx
                        .type            n00126_disjunction_bx, @function
n00126_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_disjunction_α:     mov              r11, 208
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0;            jmp   n00142_lit_charset_α
.Ldisjunction_γ_441_as: mov              r11, 208
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_592_0
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00143_assign_var_α
.Ldisjunction_α_592_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_592_1
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00143_assign_var_α
.Ldisjunction_α_592_1:                                                        jmp   n00143_assign_var_α
n00126_disjunction_β:     mov              r11, 208
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              je    n00122_lit_integer_α
                                                                              jmp   n00122_lit_integer_α
.Ldisjunction_γ_441_af: mov              r11, 208
.Ldisjunction_ω_441_af: mov              r11, 208
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1;                              je    n00144_lit_integer_α
                                                                              jmp   n00122_lit_integer_α
                        .size            n00126_disjunction_bx, .-n00126_disjunction_bx
                        .type            n00143_assign_var_bx, @function
n00143_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_assign_var_α:      mov              r11, 209
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00122_lit_integer_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   .Ldisjunction_γ_424_as
n00143_assign_var_β:      mov              r11, 209;                            jmp   n00122_lit_integer_α
                        .size            n00143_assign_var_bx, .-n00143_assign_var_bx
                        .type            n00144_lit_integer_bx, @function
n00144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_lit_integer_α:     mov              r11, 210
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_594_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   .Ldisjunction_γ_441_as
n00144_lit_integer_β:     mov              r11, 210;                            jmp   n00122_lit_integer_α
.Llit_integer_α_594_0:  .quad            1
                        .size            n00144_lit_integer_bx, .-n00144_lit_integer_bx
                        .type            n00142_lit_charset_bx, @function
n00142_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_lit_charset_α:     mov              r11, 211
                        mov              qword ptr [rbp + 2000], 2            # result
                        mov              dword ptr [rbp + 2004], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_595_0]
                        mov              qword ptr [rbp + 2008], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_595_0]
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
                        pop              rax;                                 jmp   n00145_var_ref_α
n00142_lit_charset_β:     mov              r11, 211;                            jmp   .Ldisjunction_ω_441_af
.Llit_charset_α_595_0:  .quad            .Llit_charset_α_595_0_s
.Llit_charset_α_595_0_s:
                        .string          "+.:"
                        .size            n00142_lit_charset_bx, .-n00142_lit_charset_bx
                        .type            n00145_var_ref_bx, @function
n00145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n00146_var_α
                        .size            n00145_var_ref_bx, .-n00145_var_ref_bx
                        .type            n00146_var_bx, @function
n00146_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_α:             mov              r11, 213
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n00147_subscript_α
                        .size            n00146_var_bx, .-n00146_var_bx
                        .type            n00147_subscript_bx, @function
n00147_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_subscript_α:       mov              r11, 214
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2064]
                        mov              rcx, qword ptr [rbp + 2072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_441_af
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n00148_deref_α
                        .size            n00147_subscript_bx, .-n00147_subscript_bx
                        .type            n00148_deref_bx, @function
n00148_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_deref_α:           mov              r11, 215
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_441_af
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n00149_assign_α
                        .size            n00148_deref_bx, .-n00148_deref_bx
                        .type            n00149_assign_bx, @function
n00149_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_assign_α:          mov              r11, 216
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n00150_call_icon_α
                        .size            n00149_assign_bx, .-n00149_assign_bx
                        .type            n00150_call_icon_bx, @function
n00150_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_call_icon_α:       mov              r11, 217
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
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
.Lcall_icon_α_bynamefn217: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn217]
                        lea              rsi, [rbp + 1952]
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
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_441_af
                                                                              jmp   n00151_disjunction_α
n00150_call_icon_β:       mov              r11, 217;                            jmp   .Ldisjunction_ω_441_af
                        .size            n00150_call_icon_bx, .-n00150_call_icon_bx
                        .type            n00151_disjunction_bx, @function
n00151_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_disjunction_α:     mov              r11, 218
                        mov              qword ptr [rbp + 1600], 0
                        mov              qword ptr [rbp + 1608], 0
                        mov              dword ptr [rbp + 1616], 0;           jmp   n00152_lit_string_α
.Ldisjunction_γ_451_as: mov              r11, 218
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_605_0
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00153_assign_α
.Ldisjunction_α_605_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_605_1
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00153_assign_α
.Ldisjunction_α_605_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_605_2
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00153_assign_α
.Ldisjunction_α_605_2:                                                        jmp   n00153_assign_α
n00151_disjunction_β:     mov              r11, 218
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0;                              je    n00154_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_451_af
                                                                              jmp   .Ldisjunction_ω_451_af
.Ldisjunction_γ_451_af: mov              r11, 218
.Ldisjunction_ω_451_af: mov              r11, 218
                        add              dword ptr [rbp + 1616], 1
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 1;                              je    n00155_var_ref_α
                        cmp              eax, 2;                              je    n00156_lit_string_α
                                                                              jmp   n00157_var_α
                        .size            n00151_disjunction_bx, .-n00151_disjunction_bx
                        .type            n00153_assign_bx, @function
n00153_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_assign_α:          mov              r11, 219
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx;         jmp   n00157_var_α
                        .size            n00153_assign_bx, .-n00153_assign_bx
                        .type            n00157_var_bx, @function
n00157_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_var_α:             mov              r11, 220
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00158_lit_string_α
                        .size            n00157_var_bx, .-n00157_var_bx
                        .type            n00158_lit_string_bx, @function
n00158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_lit_string_α:      mov              r11, 221
                        mov              qword ptr [rbp + 1488], 2            # result
                        mov              dword ptr [rbp + 1492], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_609_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00159_call_builtin_α
.Llit_string_α_609_0:   .quad            .Llit_string_α_609_0_s
.Llit_string_α_609_0_s: .string          ":"
                        .size            n00158_lit_string_bx, .-n00158_lit_string_bx
                        .type            n00159_call_builtin_bx, @function
n00159_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_builtin_α:    mov              r11, 222
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn611: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn611]
                        lea              rsi, [rbp + 1552]
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
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n00160_lit_string_α
                                                                              jmp   n00161_var_α
n00159_call_builtin_β:    mov              r11, 222;                            jmp   n00160_lit_string_α
                        .size            n00159_call_builtin_bx, .-n00159_call_builtin_bx
                        .type            n00161_var_bx, @function
n00161_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_var_α:             mov              r11, 223
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n00162_assign_α
                        .size            n00161_var_bx, .-n00161_var_bx
                        .type            n00162_assign_bx, @function
n00162_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_assign_α:          mov              r11, 224
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n00163_var_α
                        .size            n00162_assign_bx, .-n00162_assign_bx
                        .type            n00160_lit_string_bx, @function
n00160_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n00164_call_builtin_α
.Llit_string_α_615_0:   .quad            .Llit_string_α_615_0_s
.Llit_string_α_615_0_s: .string          "+"
                        .size            n00160_lit_string_bx, .-n00160_lit_string_bx
                        .type            n00164_call_builtin_bx, @function
n00164_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_call_builtin_α:    mov              r11, 226
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn617: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn617]
                        lea              rsi, [rbp + 1440]
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
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              al, 104;                             je    n00165_lit_string_α
                                                                              jmp   n00166_disjunction_α
n00164_call_builtin_β:    mov              r11, 226;                            jmp   n00165_lit_string_α
                        .size            n00164_call_builtin_bx, .-n00164_call_builtin_bx
                        .type            n00166_disjunction_bx, @function
n00166_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_disjunction_α:     mov              r11, 227
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0;           jmp   n00167_var_ref_α
.Ldisjunction_γ_460_as: mov              r11, 227
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_619_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00168_assign_α
.Ldisjunction_α_619_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_619_1
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00168_assign_α
.Ldisjunction_α_619_1:                                                        jmp   n00168_assign_α
n00166_disjunction_β:     mov              r11, 227
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_460_af
                                                                              jmp   .Ldisjunction_ω_460_af
.Ldisjunction_γ_460_af: mov              r11, 227
.Ldisjunction_ω_460_af: mov              r11, 227
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 1;                              je    n00169_lit_string_α
                                                                              jmp   n00122_lit_integer_α
                        .size            n00166_disjunction_bx, .-n00166_disjunction_bx
                        .type            n00168_assign_bx, @function
n00168_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n00163_var_α
                        .size            n00168_assign_bx, .-n00168_assign_bx
                        .type            n00169_lit_string_bx, @function
n00169_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rbp + 1328], 2            # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_621_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n00170_var_ref_α
n00169_lit_string_β:      mov              r11, 229;                            jmp   .Ldisjunction_ω_460_af
.Llit_string_α_621_0:   .quad            .Llit_string_α_621_0_s
.Llit_string_α_621_0_s: .string          "-"
                        .size            n00169_lit_string_bx, .-n00169_lit_string_bx
                        .type            n00170_var_ref_bx, @function
n00170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n00171_lit_string_α
                        .size            n00170_var_ref_bx, .-n00170_var_ref_bx
                        .type            n00171_lit_string_bx, @function
n00171_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_lit_string_α:      mov              r11, 231
                        mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_624_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00172_deref_α
.Llit_string_α_624_0:   .quad            .Llit_string_α_624_0_s
.Llit_string_α_624_0_s: .string          " needs numeric parameter"
                        .size            n00171_lit_string_bx, .-n00171_lit_string_bx
                        .type            n00172_deref_bx, @function
n00172_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_deref_α:           mov              r11, 232
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_460_af
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00173_call_icon_α
                        .size            n00172_deref_bx, .-n00172_deref_bx
                        .type            n00173_call_icon_bx, @function
n00173_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_call_icon_α:       mov              r11, 233
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lcall_icon_α_rkfn627:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn627]
                        lea              rsi, [rbp + 1264]
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
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_460_af
                                                                              jmp   .Ldisjunction_γ_460_as
n00173_call_icon_β:       mov              r11, 233;                            jmp   .Ldisjunction_ω_460_af
                        .size            n00173_call_icon_bx, .-n00173_call_icon_bx
                        .type            n00167_var_ref_bx, @function
n00167_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n00174_deref_α
n00167_var_ref_β:         mov              r11, 234;                            jmp   .Ldisjunction_ω_460_af
                        .size            n00167_var_ref_bx, .-n00167_var_ref_bx
                        .type            n00174_deref_bx, @function
n00174_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_deref_α:           mov              r11, 235
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_460_af
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n00175_call_icon_α
                        .size            n00174_deref_bx, .-n00174_deref_bx
                        .type            n00175_call_icon_bx, @function
n00175_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_call_icon_α:       mov              r11, 236
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lcall_icon_α_rkfn632:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn632]
                        lea              rsi, [rbp + 1184]
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
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_460_af
                                                                              jmp   .Ldisjunction_γ_460_as
n00175_call_icon_β:       mov              r11, 236;                            jmp   .Ldisjunction_ω_460_af
                        .size            n00175_call_icon_bx, .-n00175_call_icon_bx
                        .type            n00165_lit_string_bx, @function
n00165_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rbp + 720], 2             # result
                        mov              dword ptr [rbp + 724], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_633_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00176_call_builtin_α
.Llit_string_α_633_0:   .quad            .Llit_string_α_633_0_s
.Llit_string_α_633_0_s: .string          "."
                        .size            n00165_lit_string_bx, .-n00165_lit_string_bx
                        .type            n00176_call_builtin_bx, @function
n00176_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_call_builtin_α:    mov              r11, 238
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1064], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn635: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn635]
                        lea              rsi, [rbp + 1056]
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
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              al, 104;                             je    n00122_lit_integer_α
                                                                              jmp   n00177_disjunction_α
n00176_call_builtin_β:    mov              r11, 238;                            jmp   n00122_lit_integer_α
                        .size            n00176_call_builtin_bx, .-n00176_call_builtin_bx
                        .type            n00177_disjunction_bx, @function
n00177_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_disjunction_α:     mov              r11, 239
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0;            jmp   n00178_var_ref_α
.Ldisjunction_γ_472_as: mov              r11, 239
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_637_0
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00179_assign_α
.Ldisjunction_α_637_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_637_1
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00179_assign_α
.Ldisjunction_α_637_1:                                                        jmp   n00179_assign_α
n00177_disjunction_β:     mov              r11, 239
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_472_af
                                                                              jmp   .Ldisjunction_ω_472_af
.Ldisjunction_γ_472_af: mov              r11, 239
.Ldisjunction_ω_472_af: mov              r11, 239
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 1;                              je    n00180_lit_string_α
                                                                              jmp   n00122_lit_integer_α
                        .size            n00177_disjunction_bx, .-n00177_disjunction_bx
                        .type            n00179_assign_bx, @function
n00179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_assign_α:          mov              r11, 240
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n00163_var_α
                        .size            n00179_assign_bx, .-n00179_assign_bx
                        .type            n00163_var_bx, @function
n00163_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_var_α:             mov              r11, 241
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00181_conjunction_α
                        .size            n00163_var_bx, .-n00163_var_bx
                        .type            n00181_conjunction_bx, @function
n00181_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_conjunction_α:     mov              r11, 242
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 680], rax;          jmp   .Ldisjunction_γ_441_as
n00181_conjunction_β:     mov              r11, 242;                            jmp   n00122_lit_integer_α
                        .size            n00181_conjunction_bx, .-n00181_conjunction_bx
                        .type            n00180_lit_string_bx, @function
n00180_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_string_α:      mov              r11, 243
                        mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_642_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00182_var_ref_α
n00180_lit_string_β:      mov              r11, 243;                            jmp   .Ldisjunction_ω_472_af
.Llit_string_α_642_0:   .quad            .Llit_string_α_642_0_s
.Llit_string_α_642_0_s: .string          "-"
                        .size            n00180_lit_string_bx, .-n00180_lit_string_bx
                        .type            n00182_var_ref_bx, @function
n00182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n00183_lit_string_α
                        .size            n00182_var_ref_bx, .-n00182_var_ref_bx
                        .type            n00183_lit_string_bx, @function
n00183_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_645_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00184_deref_α
.Llit_string_α_645_0:   .quad            .Llit_string_α_645_0_s
.Llit_string_α_645_0_s: .string          " needs numeric parameter"
                        .size            n00183_lit_string_bx, .-n00183_lit_string_bx
                        .type            n00184_deref_bx, @function
n00184_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_deref_α:           mov              r11, 246
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n00185_call_icon_α
                        .size            n00184_deref_bx, .-n00184_deref_bx
                        .type            n00185_call_icon_bx, @function
n00185_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_call_icon_α:       mov              r11, 247
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lcall_icon_α_rkfn648:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn648]
                        lea              rsi, [rbp + 880]
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
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                                                                              jmp   .Ldisjunction_γ_472_as
n00185_call_icon_β:       mov              r11, 247;                            jmp   .Ldisjunction_ω_472_af
                        .size            n00185_call_icon_bx, .-n00185_call_icon_bx
                        .type            n00178_var_ref_bx, @function
n00178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n00186_deref_α
n00178_var_ref_β:         mov              r11, 248;                            jmp   .Ldisjunction_ω_472_af
                        .size            n00178_var_ref_bx, .-n00178_var_ref_bx
                        .type            n00186_deref_bx, @function
n00186_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_deref_α:           mov              r11, 249
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00187_call_icon_α
                        .size            n00186_deref_bx, .-n00186_deref_bx
                        .type            n00187_call_icon_bx, @function
n00187_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_call_icon_α:       mov              r11, 250
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_icon_α_rkfn653:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn653]
                        lea              rsi, [rbp + 800]
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
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                                                                              jmp   .Ldisjunction_γ_472_as
n00187_call_icon_β:       mov              r11, 250;                            jmp   .Ldisjunction_ω_472_af
                        .size            n00187_call_icon_bx, .-n00187_call_icon_bx
                        .type            n00156_lit_string_bx, @function
n00156_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_654_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n00188_var_ref_α
n00156_lit_string_β:      mov              r11, 251;                            jmp   .Ldisjunction_ω_451_af
.Llit_string_α_654_0:   .quad            .Llit_string_α_654_0_s
.Llit_string_α_654_0_s: .string          "No parameter following -"
                        .size            n00156_lit_string_bx, .-n00156_lit_string_bx
                        .type            n00188_var_ref_bx, @function
n00188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n00189_deref_α
                        .size            n00188_var_ref_bx, .-n00188_var_ref_bx
                        .type            n00189_deref_bx, @function
n00189_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_deref_α:           mov              r11, 253
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_451_af
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n00190_call_icon_α
                        .size            n00189_deref_bx, .-n00189_deref_bx
                        .type            n00190_call_icon_bx, @function
n00190_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_call_icon_α:       mov              r11, 254
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lcall_icon_α_rkfn659:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn659]
                        lea              rsi, [rbp + 1824]
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
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_451_af
                                                                              jmp   .Ldisjunction_γ_451_as
n00190_call_icon_β:       mov              r11, 254;                            jmp   .Ldisjunction_ω_451_af
                        .size            n00190_call_icon_bx, .-n00190_call_icon_bx
                        .type            n00155_var_ref_bx, @function
n00155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n00191_deref_α
n00155_var_ref_β:         mov              r11, 255;                            jmp   .Ldisjunction_ω_451_af
                        .size            n00155_var_ref_bx, .-n00155_var_ref_bx
                        .type            n00191_deref_bx, @function
n00191_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_deref_α:           mov              r11, 256
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_451_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n00192_call_icon_α
                        .size            n00191_deref_bx, .-n00191_deref_bx
                        .type            n00192_call_icon_bx, @function
n00192_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_call_icon_α:       mov              r11, 257
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lcall_icon_α_rkfn664:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn664]
                        lea              rsi, [rbp + 1744]
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
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_451_af
                                                                              jmp   .Ldisjunction_γ_451_as
n00192_call_icon_β:       mov              r11, 257;                            jmp   .Ldisjunction_ω_451_af
                        .size            n00192_call_icon_bx, .-n00192_call_icon_bx
                        .type            n00152_lit_string_bx, @function
n00152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_string_α:      mov              r11, 258
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_665_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n00193_lit_integer_α
n00152_lit_string_β:      mov              r11, 258;                            jmp   .Ldisjunction_ω_451_af
.Llit_string_α_665_0:   .quad            .Llit_string_α_665_0_s
.Llit_string_α_665_0_s: .string          ""
                        .size            n00152_lit_string_bx, .-n00152_lit_string_bx
                        .type            n00193_lit_integer_bx, @function
n00193_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_lit_integer_α:     mov              r11, 259
                        mov              qword ptr [rbp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_666_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n00154_scan_tab_α
.Llit_integer_α_666_0:  .quad            0
                        .size            n00193_lit_integer_bx, .-n00193_lit_integer_bx
                        .type            n00154_scan_tab_bx, @function
n00154_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_scan_tab_α:        mov              r11, 260
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_668_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_668_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_451_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_451_af
                        mov              qword ptr [rbp + 1696], r14
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
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n00194_binop_test_α
n00154_scan_tab_β:        mov              r11, 260
                        mov              r14, qword ptr [rbp + 1696];         jmp   .Ldisjunction_ω_451_af
                        .size            n00154_scan_tab_bx, .-n00154_scan_tab_bx
                        .type            n00194_binop_test_bx, @function
n00194_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_binop_test_α:      mov              r11, 261
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00154_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_451_as
n00194_binop_test_β:      mov              r11, 261;                            jmp   n00154_scan_tab_β
                        .size            n00194_binop_test_bx, .-n00194_binop_test_bx
                        .type            n00107_scan_bx, @function
n00107_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_scan_α:            mov              r11, 262
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 368]
                        mov              r14, qword ptr [rbp + 376]
                        mov              r15, qword ptr [rbp + 384];          jmp   n00096_var_ref_α
n00107_scan_β:            mov              r11, 262;                            jmp   n00096_var_ref_α
                        .size            n00107_scan_bx, .-n00107_scan_bx
                        .type            n00121_lit_string_bx, @function
n00121_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_lit_string_α:      mov              r11, 263
                        mov              qword ptr [rbp + 2608], 2            # result
                        mov              dword ptr [rbp + 2612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_672_0]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n00195_scan_match_α
n00121_lit_string_β:      mov              r11, 263;                            jmp   .Ldisjunction_ω_420_af
.Llit_string_α_672_0:   .quad            .Llit_string_α_672_0_s
.Llit_string_α_672_0_s: .string          "-"
                        .size            n00121_lit_string_bx, .-n00121_lit_string_bx
                        .type            n00195_scan_match_bx, @function
n00195_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_scan_match_α:      mov              r11, 264
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_420_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_674_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_420_af
                        mov              qword ptr [rbp + 2576], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2584], rax;         jmp   n00196_scan_tab_α
.Lscan_match_α_674_0:   .quad            .Lscan_match_α_674_0_s
.Lscan_match_α_674_0_s: .string          "-"
                        .size            n00195_scan_match_bx, .-n00195_scan_match_bx
                        .type            n00196_scan_tab_bx, @function
n00196_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_scan_tab_α:        mov              r11, 265
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_676_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_676_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_420_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_420_af
                        mov              qword ptr [rbp + 2560], r14
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
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n00197_lit_integer_α
n00196_scan_tab_β:        mov              r11, 265
                        mov              r14, qword ptr [rbp + 2560];         jmp   .Ldisjunction_ω_420_af
                        .size            n00196_scan_tab_bx, .-n00196_scan_tab_bx
                        .type            n00197_lit_integer_bx, @function
n00197_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_lit_integer_α:     mov              r11, 266
                        mov              qword ptr [rbp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_677_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n00198_scan_pos_α
.Llit_integer_α_677_0:  .quad            0
                        .size            n00197_lit_integer_bx, .-n00197_lit_integer_bx
                        .type            n00198_scan_pos_bx, @function
n00198_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_scan_pos_α:        mov              r11, 267
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_679_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_679_0:     cmp              rax, 1;                              jl    n00196_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00196_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00196_scan_tab_β
                        mov              qword ptr [rbp + 2512], 3
                        mov              qword ptr [rbp + 2520], rax;         jmp   n00199_conjunction_α
                        .size            n00198_scan_pos_bx, .-n00198_scan_pos_bx
                        .type            n00199_conjunction_bx, @function
n00199_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_conjunction_α:     mov              r11, 268
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2504], rax;         jmp   n00200_scan_α
n00199_conjunction_β:     mov              r11, 268;                            jmp   .Ldisjunction_ω_420_af
                        .size            n00199_conjunction_bx, .-n00199_conjunction_bx
                        .type            n00200_scan_bx, @function
n00200_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_scan_α:            mov              r11, 269
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 368]
                        mov              r14, qword ptr [rbp + 376]
                        mov              r15, qword ptr [rbp + 384];          jmp   n00201_var_α
n00200_scan_β:            mov              r11, 269;                            jmp   n00201_var_α
                        .size            n00200_scan_bx, .-n00200_scan_bx
                        .type            n00201_var_bx, @function
n00201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_α:             mov              r11, 270
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0;           jmp   n00202_assign_α
n00201_var_β:             mov              r11, 270;                            jmp   n00203_var_α
                        .size            n00201_var_bx, .-n00201_var_bx
                        .type            n00202_assign_bx, @function
n00202_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_assign_α:          mov              r11, 271
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx;         jmp   n00203_var_α
                        .size            n00202_assign_bx, .-n00202_assign_bx
                        .type            n00203_var_bx, @function
n00203_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_var_α:             mov              r11, 272
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00098_var_ref_α
                        .size            n00203_var_bx, .-n00203_var_bx
                        .type            n00098_var_ref_bx, @function
n00098_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00204_var_ref_α
                        .size            n00098_var_ref_bx, .-n00098_var_ref_bx
                        .type            n00204_var_ref_bx, @function
n00204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00205_deref_α
                        .size            n00204_var_ref_bx, .-n00204_var_ref_bx
                        .type            n00205_deref_bx, @function
n00205_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_deref_α:           mov              r11, 275
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00206_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00207_call_icon_α
                        .size            n00205_deref_bx, .-n00205_deref_bx
                        .type            n00207_call_icon_bx, @function
n00207_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_call_icon_α:       mov              r11, 276
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn693:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn693]
                        lea              rsi, [rbp + 160]
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
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n00206_var_α
                                                                              jmp   n00208_deref_α
n00207_call_icon_β:       mov              r11, 276;                            jmp   n00206_var_α
                        .size            n00207_call_icon_bx, .-n00207_call_icon_bx
                        .type            n00208_deref_bx, @function
n00208_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_deref_α:           mov              r11, 277
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00206_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00209_call_icon_α
                        .size            n00208_deref_bx, .-n00208_deref_bx
                        .type            n00209_call_icon_bx, @function
n00209_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_call_icon_α:       mov              r11, 278
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn696:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn696]
                        lea              rsi, [rbp + 80]
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
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n00206_var_α
                                                                              jmp   n00098_var_ref_α
n00209_call_icon_β:       mov              r11, 278;                            jmp   n00206_var_α
                        .size            n00209_call_icon_bx, .-n00209_call_icon_bx
                        .type            n00206_var_bx, @function
n00206_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_var_α:             mov              r11, 279
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00210_return_α
                        .size            n00206_var_bx, .-n00206_var_bx
                        .type            n00210_return_bx, @function
n00210_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_return_α:          mov              r11, 280
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00210_return_bx, .-n00210_return_bx
#-----------------------------------------------------------------------------------------------------------------------
options_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
options_β:
                                                                              jmp   options_ω
#-----------------------------------------------------------------------------------------------------------------------
options_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_699_248
                        .section         .rodata
.Licn_trace_nm700:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm700]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_699_248:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 3472]
                        mov              rbp, qword ptr [rbp + 3464];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_699_249
                        .section         .rodata
.Licn_trace_nm701:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm701]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_699_249:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 3472]
                        mov              rbp, qword ptr [rbp + 3464];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_702_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_702_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_702_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_702_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Init__:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
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
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LInit___α_702_247
                        .section         .rodata
.Licn_trace_nm703:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm703]
                        mov              esi, 1
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_702_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Init___α_body:
                        .type            n00211_var_bx, @function
n00211_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_var_α:             mov              r11, 281
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00212_assign_α
                        .size            n00211_var_bx, .-n00211_var_bx
                        .type            n00212_assign_bx, @function
n00212_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [r9 + 96], rax             # Name__
                        mov              qword ptr [r9 + 104], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_726_0]
                        .section         .rodata
.Lassign_α_726_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_726_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00213_call_proc_staged_α
.Lassign_α_726_0:       .quad            .Lassign_α_726_0_s
.Lassign_α_726_0_s:     .string          "Name__"
                        .size            n00212_assign_bx, .-n00212_assign_bx
                        .type            n00213_call_proc_staged_bx, @function
n00213_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_call_proc_staged_α:
                        mov              r11, 283
                        call             Signature___dcα;                     jmp   .Lcall_proc_staged_α_728_2
.Lcall_proc_staged_α_728_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_728_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
.Lcall_proc_staged_α_728_29:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n00214_call_proc_staged_α
                                                                              jmp   n00214_call_proc_staged_α
n00213_call_proc_staged_β:
                        mov              r11, 283;                            jmp   n00214_call_proc_staged_α
.Lcall_proc_staged_β_728_0:
                        .quad            .Lcall_proc_staged_β_728_0_s
.Lcall_proc_staged_β_728_0_s:
                        .string          "Signature__"
                        .size            n00213_call_proc_staged_bx, .-n00213_call_proc_staged_bx
                        .type            n00214_call_proc_staged_bx, @function
n00214_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_call_proc_staged_α:
                        mov              r11, 284
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
.Lcall_proc_staged_α_730_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n00215_call_proc_staged_α
                                                                              jmp   n00215_call_proc_staged_α
n00214_call_proc_staged_β:
                        mov              r11, 284;                            jmp   n00215_call_proc_staged_α
.Lcall_proc_staged_β_730_0:
                        .quad            .Lcall_proc_staged_β_730_0_s
.Lcall_proc_staged_β_730_0_s:
                        .string          "Regions__"
                        .size            n00214_call_proc_staged_bx, .-n00214_call_proc_staged_bx
                        .type            n00215_call_proc_staged_bx, @function
n00215_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_call_proc_staged_α:
                        mov              r11, 285
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_732_2
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
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
.Lcall_proc_staged_α_732_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n00216_disjunction_α
                                                                              jmp   n00216_disjunction_α
n00215_call_proc_staged_β:
                        mov              r11, 285;                            jmp   n00216_disjunction_α
.Lcall_proc_staged_β_732_0:
                        .quad            .Lcall_proc_staged_β_732_0_s
.Lcall_proc_staged_β_732_0_s:
                        .string          "Time__"
                        .size            n00215_call_proc_staged_bx, .-n00215_call_proc_staged_bx
                        .type            n00216_disjunction_bx, @function
n00216_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_disjunction_α:     mov              r11, 286
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0;            jmp   n00217_lit_string_α
.Ldisjunction_γ_709_as: mov              r11, 286
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_734_0
                                                                              jmp   n00218_var_α
.Ldisjunction_α_734_0:                                                        jmp   n00218_var_α
n00216_disjunction_β:     mov              r11, 286
                        mov              eax, dword ptr [rbp + 128];          jmp   n00218_var_α
.Ldisjunction_γ_709_af: mov              r11, 286
.Ldisjunction_ω_709_af: mov              r11, 286
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128];          jmp   n00218_var_α
                        .size            n00216_disjunction_bx, .-n00216_disjunction_bx
                        .type            n00218_var_bx, @function
n00218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_α:             mov              r11, 287
                        mov              rdi, qword ptr [rip + .Lvar_α_735_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00219_var_α
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00220_assign_α
.Lvar_α_735_0:          .quad            .Lvar_α_735_0_s
.Lvar_α_735_0_s:        .string          "write"
                        .size            n00218_var_bx, .-n00218_var_bx
                        .type            n00220_assign_bx, @function
n00220_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_assign_α:          mov              r11, 288
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [r9 + 64], rax             # Save__
                        mov              qword ptr [r9 + 72], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_736_0]
                        .section         .rodata
.Lassign_α_736_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_736_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00219_var_α
.Lassign_α_736_0:       .quad            .Lassign_α_736_0_s
.Lassign_α_736_0_s:     .string          "Save__"
                        .size            n00220_assign_bx, .-n00220_assign_bx
                        .type            n00219_var_bx, @function
n00219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_var_α:             mov              r11, 289
                        mov              rdi, qword ptr [rip + .Lvar_α_737_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00221_lit_integer_α
                        mov              qword ptr [rbp + 80], rax            # result
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00222_assign_α
.Lvar_α_737_0:          .quad            .Lvar_α_737_0_s
.Lvar_α_737_0_s:        .string          "writes"
                        .size            n00219_var_bx, .-n00219_var_bx
                        .type            n00222_assign_bx, @function
n00222_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [r9 + 80], rax             # Saves__
                        mov              qword ptr [r9 + 88], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_738_0]
                        .section         .rodata
.Lassign_α_738_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_738_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00221_lit_integer_α
.Lassign_α_738_0:       .quad            .Lassign_α_738_0_s
.Lassign_α_738_0_s:     .string          "Saves__"
                        .size            n00222_assign_bx, .-n00222_assign_bx
                        .type            n00221_lit_integer_bx, @function
n00221_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_integer_α:     mov              r11, 291
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_739_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00223_assign_α
.Llit_integer_α_739_0:  .quad            1
                        .size            n00221_lit_integer_bx, .-n00221_lit_integer_bx
                        .type            n00223_assign_bx, @function
n00223_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_assign_α:          mov              r11, 292
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_740_0]
                        .section         .rodata
.Lassign_α_740_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_740_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_740_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00224_assign_α
.Lassign_α_740_0:       .quad            .Lassign_α_740_0_s
.Lassign_α_740_0_s:     .string          "writes"
                        .size            n00223_assign_bx, .-n00223_assign_bx
                        .type            n00224_assign_bx, @function
n00224_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_assign_α:          mov              r11, 293
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_741_0]
                        .section         .rodata
.Lassign_α_741_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_741_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_741_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00225_return_α
.Lassign_α_741_0:       .quad            .Lassign_α_741_0_s
.Lassign_α_741_0_s:     .string          "write"
                        .size            n00224_assign_bx, .-n00224_assign_bx
                        .type            n00225_return_bx, @function
n00225_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_return_α:          mov              r11, 294
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Init___γ
                        .size            n00225_return_bx, .-n00225_return_bx
                        .type            n00226_conjunction_bx, @function
n00226_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_conjunction_α:     mov              r11, 295;                            jmp   .Ldisjunction_γ_709_as
n00226_conjunction_β:     mov              r11, 295;                            jmp   n00218_var_α
                        .size            n00226_conjunction_bx, .-n00226_conjunction_bx
                        .type            n00217_lit_string_bx, @function
n00217_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_lit_string_α:      mov              r11, 296
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_744_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00227_call_icon_α
n00217_lit_string_β:      mov              r11, 296;                            jmp   .Ldisjunction_ω_709_af
.Llit_string_α_744_0:   .quad            .Llit_string_α_744_0_s
.Llit_string_α_744_0_s: .string          "OUTPUT"
                        .size            n00217_lit_string_bx, .-n00217_lit_string_bx
                        .type            n00227_call_icon_bx, @function
n00227_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_call_icon_α:       mov              r11, 297
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn746:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn746]
                        lea              rsi, [rbp + 256]
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
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_709_af
                                                                              jmp   n00228_lit_string_α
n00227_call_icon_β:       mov              r11, 297;                            jmp   .Ldisjunction_ω_709_af
                        .size            n00227_call_icon_bx, .-n00227_call_icon_bx
                        .type            n00228_lit_string_bx, @function
n00228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_747_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00229_call_icon_α
.Llit_string_α_747_0:   .quad            .Llit_string_α_747_0_s
.Llit_string_α_747_0_s: .string          "*** Benchmarking with output ***"
                        .size            n00228_lit_string_bx, .-n00228_lit_string_bx
                        .type            n00229_call_icon_bx, @function
n00229_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_call_icon_α:       mov              r11, 299
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn749:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn749]
                        lea              rsi, [rbp + 176]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00230_return_α
                                                                              jmp   n00230_return_α
n00229_call_icon_β:       mov              r11, 299;                            jmp   n00230_return_α
                        .size            n00229_call_icon_bx, .-n00229_call_icon_bx
                        .type            n00230_return_bx, @function
n00230_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_return_α:          mov              r11, 300
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Init___γ
                        .size            n00230_return_bx, .-n00230_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Init___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Init___β:
                                                                              jmp   Init___ω
#-----------------------------------------------------------------------------------------------------------------------
Init___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LInit___α_750_248
                        .section         .rodata
.Licn_trace_nm751:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm751]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_750_248:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 528]
                        mov              rbp, qword ptr [rbp + 520];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LInit___α_750_249
                        .section         .rodata
.Licn_trace_nm752:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_750_249:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 528]
                        mov              rbp, qword ptr [rbp + 520];          jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .LInit___α_753_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_753_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_753_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_753_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 576
                        mov              qword ptr [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 496
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
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_753_247
                        .section         .rodata
.Licn_trace_nm754:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm754]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_753_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Term___α_body:
                        .type            n00231_disjunction_bx, @function
n00231_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_disjunction_α:     mov              r11, 301
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0;            jmp   n00232_lit_string_α
.Ldisjunction_γ_755_as: mov              r11, 301
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_774_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00233_var_ref_α
.Ldisjunction_α_774_0:                                                        jmp   n00233_var_ref_α
n00231_disjunction_β:     mov              r11, 301
                        mov              eax, dword ptr [rbp + 304];          jmp   n00233_var_ref_α
.Ldisjunction_γ_755_af: mov              r11, 301
.Ldisjunction_ω_755_af: mov              r11, 301
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304];          jmp   n00233_var_ref_α
                        .size            n00231_disjunction_bx, .-n00231_disjunction_bx
                        .type            n00232_lit_string_bx, @function
n00232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:      mov              r11, 302
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_775_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00234_call_icon_α
n00232_lit_string_β:      mov              r11, 302;                            jmp   n00235_var_α
.Llit_string_α_775_0:   .quad            .Llit_string_α_775_0_s
.Llit_string_α_775_0_s: .string          "OUTPUT"
                        .size            n00232_lit_string_bx, .-n00232_lit_string_bx
                        .type            n00234_call_icon_bx, @function
n00234_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_call_icon_α:       mov              r11, 303
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lcall_icon_α_rkfn777:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn777]
                        lea              rsi, [rbp + 432]
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n00235_var_α
                                                                              jmp   .Ldisjunction_γ_755_af
n00234_call_icon_β:       mov              r11, 303;                            jmp   n00235_var_α
                        .size            n00234_call_icon_bx, .-n00234_call_icon_bx
                        .type            n00235_var_bx, @function
n00235_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_var_α:             mov              r11, 304
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0;            jmp   n00236_var_α
n00235_var_β:             mov              r11, 304;                            jmp   .Ldisjunction_ω_755_af
                        .size            n00235_var_bx, .-n00235_var_bx
                        .type            n00236_var_bx, @function
n00236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_var_α:             mov              r11, 305
                        mov              rax, qword ptr [r9 + 64]             # Save__
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 384], rax           # result
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00237_assign_α
                        .size            n00236_var_bx, .-n00236_var_bx
                        .type            n00237_assign_bx, @function
n00237_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_assign_α:          mov              r11, 306
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_780_0]
                        .section         .rodata
.Lassign_α_780_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_780_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_780_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00238_var_α
.Lassign_α_780_0:       .quad            .Lassign_α_780_0_s
.Lassign_α_780_0_s:     .string          "write"
                        .size            n00237_assign_bx, .-n00237_assign_bx
                        .type            n00238_var_bx, @function
n00238_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_var_α:             mov              r11, 307
                        mov              rax, qword ptr [r9 + 80]             # Saves__
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rbp + 352], rax           # result
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00239_assign_α
                        .size            n00238_var_bx, .-n00238_var_bx
                        .type            n00239_assign_bx, @function
n00239_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_assign_α:          mov              r11, 308
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_782_0]
                        .section         .rodata
.Lassign_α_782_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_782_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_782_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00240_conjunction_α
.Lassign_α_782_0:       .quad            .Lassign_α_782_0_s
.Lassign_α_782_0_s:     .string          "writes"
                        .size            n00239_assign_bx, .-n00239_assign_bx
                        .type            n00240_conjunction_bx, @function
n00240_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_conjunction_α:     mov              r11, 309
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax;          jmp   .Ldisjunction_γ_755_as
n00240_conjunction_β:     mov              r11, 309;                            jmp   n00233_var_ref_α
                        .size            n00240_conjunction_bx, .-n00240_conjunction_bx
                        .type            n00233_var_ref_bx, @function
n00233_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_var_ref_α:         mov              r11, 310
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # Name__
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00241_lit_string_α
                        .size            n00233_var_ref_bx, .-n00233_var_ref_bx
                        .type            n00241_lit_string_bx, @function
n00241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_string_α:      mov              r11, 311
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_786_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00242_call_proc_staged_α
.Llit_string_α_786_0:   .quad            .Llit_string_α_786_0_s
.Llit_string_α_786_0_s: .string          " elapsed time = "
                        .size            n00241_lit_string_bx, .-n00241_lit_string_bx
                        .type            n00242_call_proc_staged_bx, @function
n00242_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_call_proc_staged_α:
                        mov              r11, 312
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_788_2
.Lcall_proc_staged_α_788_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_788_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
.Lcall_proc_staged_α_788_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n00243_call_proc_staged_α
                                                                              jmp   n00244_deref_α
n00242_call_proc_staged_β:
                        mov              r11, 312;                            jmp   n00243_call_proc_staged_α
.Lcall_proc_staged_β_788_0:
                        .quad            .Lcall_proc_staged_β_788_0_s
.Lcall_proc_staged_β_788_0_s:
                        .string          "Time__"
                        .size            n00242_call_proc_staged_bx, .-n00242_call_proc_staged_bx
                        .type            n00244_deref_bx, @function
n00244_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_deref_α:           mov              r11, 313
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00243_call_proc_staged_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00245_call_icon_α
                        .size            n00244_deref_bx, .-n00244_deref_bx
                        .type            n00245_call_icon_bx, @function
n00245_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_call_icon_α:       mov              r11, 314
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn791:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn791]
                        lea              rsi, [rbp + 128]
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
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n00243_call_proc_staged_α
                                                                              jmp   n00243_call_proc_staged_α
n00245_call_icon_β:       mov              r11, 314;                            jmp   n00243_call_proc_staged_α
                        .size            n00245_call_icon_bx, .-n00245_call_icon_bx
                        .type            n00243_call_proc_staged_bx, @function
n00243_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_call_proc_staged_α:
                        mov              r11, 315
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_793_2
.Lcall_proc_staged_α_793_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_793_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_793_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n00246_call_proc_staged_α
                                                                              jmp   n00246_call_proc_staged_α
n00243_call_proc_staged_β:
                        mov              r11, 315;                            jmp   n00246_call_proc_staged_α
.Lcall_proc_staged_β_793_0:
                        .quad            .Lcall_proc_staged_β_793_0_s
.Lcall_proc_staged_β_793_0_s:
                        .string          "Regions__"
                        .size            n00243_call_proc_staged_bx, .-n00243_call_proc_staged_bx
                        .type            n00246_call_proc_staged_bx, @function
n00246_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_call_proc_staged_α:
                        mov              r11, 316
                        call             Storage___dcα;                       jmp   .Lcall_proc_staged_α_795_2
.Lcall_proc_staged_α_795_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_795_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
.Lcall_proc_staged_α_795_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n00247_call_proc_staged_α
                                                                              jmp   n00247_call_proc_staged_α
n00246_call_proc_staged_β:
                        mov              r11, 316;                            jmp   n00247_call_proc_staged_α
.Lcall_proc_staged_β_795_0:
                        .quad            .Lcall_proc_staged_β_795_0_s
.Lcall_proc_staged_β_795_0_s:
                        .string          "Storage__"
                        .size            n00246_call_proc_staged_bx, .-n00246_call_proc_staged_bx
                        .type            n00247_call_proc_staged_bx, @function
n00247_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_call_proc_staged_α:
                        mov              r11, 317
                        call             Collections___dcα;                   jmp   .Lcall_proc_staged_α_797_2
.Lcall_proc_staged_α_797_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_797_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
.Lcall_proc_staged_α_797_29:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    n00248_return_α
                                                                              jmp   n00248_return_α
n00247_call_proc_staged_β:
                        mov              r11, 317;                            jmp   n00248_return_α
.Lcall_proc_staged_β_797_0:
                        .quad            .Lcall_proc_staged_β_797_0_s
.Lcall_proc_staged_β_797_0_s:
                        .string          "Collections__"
                        .size            n00247_call_proc_staged_bx, .-n00247_call_proc_staged_bx
                        .type            n00248_return_bx, @function
n00248_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_return_α:          mov              r11, 318
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Term___γ
                        .size            n00248_return_bx, .-n00248_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Term___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Term___β:
                                                                              jmp   Term___ω
#-----------------------------------------------------------------------------------------------------------------------
Term___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_798_248
                        .section         .rodata
.Licn_trace_nm799:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm799]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_798_248:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 576]
                        mov              rbp, qword ptr [rbp + 568];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_798_249
                        .section         .rodata
.Licn_trace_nm800:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_798_249:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 576]
                        mov              rbp, qword ptr [rbp + 568];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTerm___α_801_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_801_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_801_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_801_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1096], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 976
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
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_801_247
                        .section         .rodata
.Licn_trace_nm802:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm802]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_801_247:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Collections___α_body:
                        .type            n00249_disjunction_bx, @function
n00249_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_disjunction_α:     mov              r11, 319
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0;            jmp   n00250_var_ref_α
.Ldisjunction_γ_803_as: mov              r11, 319
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_842_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00251_make_list_α
.Ldisjunction_α_842_0:                                                        jmp   n00251_make_list_α
n00249_disjunction_β:     mov              r11, 319
                        mov              eax, dword ptr [rbp + 672];          jmp   n00251_make_list_α
.Ldisjunction_γ_803_af: mov              r11, 319
.Ldisjunction_ω_803_af: mov              r11, 319
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672];          jmp   n00251_make_list_α
                        .size            n00249_disjunction_bx, .-n00249_disjunction_bx
                        .type            n00251_make_list_bx, @function
n00251_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_make_list_α:       mov              r11, 320
                        lea              rdi, [rbp + 656]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00252_assign_α
                        .size            n00251_make_list_bx, .-n00251_make_list_bx
                        .type            n00252_assign_bx, @function
n00252_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_assign_α:          mov              r11, 321
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n00253_var_ref_α
                        .size            n00252_assign_bx, .-n00252_assign_bx
                        .type            n00253_var_ref_bx, @function
n00253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00254_kw_icon_gen_α
                        .size            n00253_var_ref_bx, .-n00253_var_ref_bx
                        .type            n00254_kw_icon_gen_bx, @function
n00254_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_kw_icon_gen_α:     mov              r11, 323
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_848_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_848_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00255_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00256_deref_α
n00254_kw_icon_gen_β:     mov              r11, 323;                            jmp   .Lkw_icon_gen_α_848_1
.Lkw_icon_gen_α_848_0:  .quad            .Lkw_icon_gen_α_848_0_s
.Lkw_icon_gen_α_848_0_s:
                        .string          "&collections"
                        .size            n00254_kw_icon_gen_bx, .-n00254_kw_icon_gen_bx
                        .type            n00256_deref_bx, @function
n00256_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_deref_α:           mov              r11, 324
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00254_kw_icon_gen_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00257_call_icon_α
                        .size            n00256_deref_bx, .-n00256_deref_bx
                        .type            n00257_call_icon_bx, @function
n00257_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_call_icon_α:       mov              r11, 325
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn851:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn851]
                        lea              rsi, [rbp + 528]
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n00254_kw_icon_gen_β
                                                                              jmp   n00254_kw_icon_gen_β
n00257_call_icon_β:       mov              r11, 325;                            jmp   n00254_kw_icon_gen_β
                        .size            n00257_call_icon_bx, .-n00257_call_icon_bx
                        .type            n00250_var_ref_bx, @function
n00250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        mov              rdx, 1879052416                      # Collections____INITFLAG__0
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n00258_nulltest_var_α
n00250_var_ref_β:         mov              r11, 326;                            jmp   .Ldisjunction_ω_803_af
                        .size            n00250_var_ref_bx, .-n00250_var_ref_bx
                        .type            n00258_nulltest_var_bx, @function
n00258_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_nulltest_var_α:    mov              r11, 327
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 104;                             je    .Ldisjunction_ω_803_af
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
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
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00259_lit_integer_α
                        .size            n00258_nulltest_var_bx, .-n00258_nulltest_var_bx
                        .type            n00259_lit_integer_bx, @function
n00259_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_lit_integer_α:     mov              r11, 328
                        mov              qword ptr [rbp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_855_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00260_assign_var_α
.Llit_integer_α_855_0:  .quad            1
                        .size            n00259_lit_integer_bx, .-n00259_lit_integer_bx
                        .type            n00260_assign_var_bx, @function
n00260_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_assign_var_α:      mov              r11, 329
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_803_af
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00261_lit_string_α
                        .size            n00260_assign_var_bx, .-n00260_assign_var_bx
                        .type            n00261_lit_string_bx, @function
n00261_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_857_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00262_lit_string_α
.Llit_string_α_857_0:   .quad            .Llit_string_α_857_0_s
.Llit_string_α_857_0_s: .string          "total"
                        .size            n00261_lit_string_bx, .-n00261_lit_string_bx
                        .type            n00262_lit_string_bx, @function
n00262_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_858_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00263_lit_string_α
.Llit_string_α_858_0:   .quad            .Llit_string_α_858_0_s
.Llit_string_α_858_0_s: .string          "static"
                        .size            n00262_lit_string_bx, .-n00262_lit_string_bx
                        .type            n00263_lit_string_bx, @function
n00263_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_lit_string_α:      mov              r11, 332
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_859_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00264_lit_string_α
.Llit_string_α_859_0:   .quad            .Llit_string_α_859_0_s
.Llit_string_α_859_0_s: .string          "string"
                        .size            n00263_lit_string_bx, .-n00263_lit_string_bx
                        .type            n00264_lit_string_bx, @function
n00264_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_lit_string_α:      mov              r11, 333
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_860_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00265_make_list_α
.Llit_string_α_860_0:   .quad            .Llit_string_α_860_0_s
.Llit_string_α_860_0_s: .string          "block"
                        .size            n00264_lit_string_bx, .-n00264_lit_string_bx
                        .type            n00265_make_list_bx, @function
n00265_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_make_list_α:       mov              r11, 334
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00266_assign_α
                        .size            n00265_make_list_bx, .-n00265_make_list_bx
                        .type            n00266_assign_bx, @function
n00266_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_assign_α:          mov              r11, 335
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [r9 + 112], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 120], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_863_0]
                        .section         .rodata
.Lassign_α_863_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_863_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_803_as
n00266_assign_β:          mov              r11, 335;                            jmp   n00251_make_list_α
.Lassign_α_863_0:       .quad            .Lassign_α_863_0_s
.Lassign_α_863_0_s:     .string          "Collections____STATIC__labels"
                        .size            n00266_assign_bx, .-n00266_assign_bx
                        .type            n00255_lit_string_bx, @function
n00255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_864_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00267_call_icon_α
.Llit_string_α_864_0:   .quad            .Llit_string_α_864_0_s
.Llit_string_α_864_0_s: .string          "collections"
                        .size            n00255_lit_string_bx, .-n00255_lit_string_bx
                        .type            n00267_call_icon_bx, @function
n00267_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_call_icon_α:       mov              r11, 337
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn866:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn866]
                        lea              rsi, [rbp + 448]
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00268_lit_integer_α
                                                                              jmp   n00268_lit_integer_α
n00267_call_icon_β:       mov              r11, 337;                            jmp   n00268_lit_integer_α
                        .size            n00267_call_icon_bx, .-n00267_call_icon_bx
                        .type            n00268_lit_integer_bx, @function
n00268_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_lit_integer_α:     mov              r11, 338
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_867_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00269_var_α
.Llit_integer_α_867_0:  .quad            1
                        .size            n00268_lit_integer_bx, .-n00268_lit_integer_bx
                        .type            n00269_var_bx, @function
n00269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_var_α:             mov              r11, 339
                        mov              rax, qword ptr [r9 + 112]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00270_unop_α
                        .size            n00269_var_bx, .-n00269_var_bx
                        .type            n00270_unop_bx, @function
n00270_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_unop_α:            mov              r11, 340
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00271_to_α
                        .size            n00270_unop_bx, .-n00270_unop_bx
                        .type            n00271_to_bx, @function
n00271_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_to_α:              mov              r11, 341
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_871_0:           mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00272_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00273_assign_α
n00271_to_β:              mov              r11, 341
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_871_0
                        .size            n00271_to_bx, .-n00271_to_bx
                        .type            n00273_assign_bx, @function
n00273_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_assign_α:          mov              r11, 342
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n00274_bound_α
                        .size            n00273_assign_bx, .-n00273_assign_bx
                        .type            n00274_bound_bx, @function
n00274_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_bound_α:           mov              r11, 343
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00275_var_ref_α
                        .size            n00274_bound_bx, .-n00274_bound_bx
                        .type            n00275_var_ref_bx, @function
n00275_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_var_ref_α:         mov              r11, 344
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # Collections____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00276_var_α
                        .size            n00275_var_ref_bx, .-n00275_var_ref_bx
                        .type            n00276_var_bx, @function
n00276_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_var_α:             mov              r11, 345
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00277_subscript_α
                        .size            n00276_var_bx, .-n00276_var_bx
                        .type            n00277_subscript_bx, @function
n00277_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_subscript_α:       mov              r11, 346
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00278_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00279_var_ref_α
                        .size            n00277_subscript_bx, .-n00277_subscript_bx
                        .type            n00279_var_ref_bx, @function
n00279_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00280_var_α
                        .size            n00279_var_ref_bx, .-n00279_var_ref_bx
                        .type            n00280_var_bx, @function
n00280_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_var_α:             mov              r11, 348
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 360], rax;          jmp   n00281_subscript_α
                        .size            n00280_var_bx, .-n00280_var_bx
                        .type            n00281_subscript_bx, @function
n00281_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_subscript_α:       mov              r11, 349
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00278_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00282_lit_integer_α
                        .size            n00281_subscript_bx, .-n00281_subscript_bx
                        .type            n00282_lit_integer_bx, @function
n00282_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_lit_integer_α:     mov              r11, 350
                        mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_885_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00283_deref_α
.Llit_integer_α_885_0:  .quad            8
                        .size            n00282_lit_integer_bx, .-n00282_lit_integer_bx
                        .type            n00283_deref_bx, @function
n00283_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_deref_α:           mov              r11, 351
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00278_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00284_call_icon_α
                        .size            n00283_deref_bx, .-n00283_deref_bx
                        .type            n00284_call_icon_bx, @function
n00284_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_call_icon_α:       mov              r11, 352
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn888:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn888]
                        lea              rsi, [rbp + 288]
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n00278_unmark_α
                                                                              jmp   n00285_deref_α
n00284_call_icon_β:       mov              r11, 352;                            jmp   n00278_unmark_α
                        .size            n00284_call_icon_bx, .-n00284_call_icon_bx
                        .type            n00285_deref_bx, @function
n00285_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_deref_α:           mov              r11, 353
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00278_unmark_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00286_call_icon_α
                        .size            n00285_deref_bx, .-n00285_deref_bx
                        .type            n00286_call_icon_bx, @function
n00286_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_call_icon_α:       mov              r11, 354
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn891:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn891]
                        lea              rsi, [rbp + 176]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00278_unmark_α
                                                                              jmp   n00278_unmark_α
n00286_call_icon_β:       mov              r11, 354;                            jmp   n00278_unmark_α
                        .size            n00286_call_icon_bx, .-n00286_call_icon_bx
                        .type            n00278_unmark_bx, @function
n00278_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_unmark_α:          mov              r11, 355
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00271_to_β
                        .size            n00278_unmark_bx, .-n00278_unmark_bx
                        .type            n00272_return_bx, @function
n00272_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_return_α:          mov              r11, 356
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Collections___γ
                        .size            n00272_return_bx, .-n00272_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Collections___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Collections___β:
                                                                              jmp   Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
Collections___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_894_248
                        .section         .rodata
.Licn_trace_nm895:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm895]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_894_248:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1104]
                        mov              rbp, qword ptr [rbp + 1096];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_894_249
                        .section         .rodata
.Licn_trace_nm896:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_894_249:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1104]
                        mov              rbp, qword ptr [rbp + 1096];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LCollections___α_897_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_897_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_897_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_897_3:
                        add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 928
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
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_897_247
                        .section         .rodata
.Licn_trace_nm898:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm898]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_897_247:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Regions___α_body:
                        .type            n00287_disjunction_bx, @function
n00287_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_disjunction_α:     mov              r11, 357
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0;            jmp   n00288_var_ref_α
.Ldisjunction_γ_899_as: mov              r11, 357
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_937_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00289_make_list_α
.Ldisjunction_α_937_0:                                                        jmp   n00289_make_list_α
n00287_disjunction_β:     mov              r11, 357
                        mov              eax, dword ptr [rbp + 672];          jmp   n00289_make_list_α
.Ldisjunction_γ_899_af: mov              r11, 357
.Ldisjunction_ω_899_af: mov              r11, 357
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672];          jmp   n00289_make_list_α
                        .size            n00287_disjunction_bx, .-n00287_disjunction_bx
                        .type            n00289_make_list_bx, @function
n00289_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_make_list_α:       mov              r11, 358
                        lea              rdi, [rbp + 656]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00290_assign_α
                        .size            n00289_make_list_bx, .-n00289_make_list_bx
                        .type            n00290_assign_bx, @function
n00290_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_assign_α:          mov              r11, 359
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00291_var_ref_α
                        .size            n00290_assign_bx, .-n00290_assign_bx
                        .type            n00291_var_ref_bx, @function
n00291_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_var_ref_α:         mov              r11, 360
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00292_kw_icon_gen_α
                        .size            n00291_var_ref_bx, .-n00291_var_ref_bx
                        .type            n00292_kw_icon_gen_bx, @function
n00292_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_kw_icon_gen_α:     mov              r11, 361
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_943_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_943_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00293_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00294_deref_α
n00292_kw_icon_gen_β:     mov              r11, 361;                            jmp   .Lkw_icon_gen_α_943_1
.Lkw_icon_gen_α_943_0:  .quad            .Lkw_icon_gen_α_943_0_s
.Lkw_icon_gen_α_943_0_s:
                        .string          "&regions"
                        .size            n00292_kw_icon_gen_bx, .-n00292_kw_icon_gen_bx
                        .type            n00294_deref_bx, @function
n00294_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_deref_α:           mov              r11, 362
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00292_kw_icon_gen_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00295_call_icon_α
                        .size            n00294_deref_bx, .-n00294_deref_bx
                        .type            n00295_call_icon_bx, @function
n00295_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_call_icon_α:       mov              r11, 363
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn946:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn946]
                        lea              rsi, [rbp + 528]
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n00292_kw_icon_gen_β
                                                                              jmp   n00292_kw_icon_gen_β
n00295_call_icon_β:       mov              r11, 363;                            jmp   n00292_kw_icon_gen_β
                        .size            n00295_call_icon_bx, .-n00295_call_icon_bx
                        .type            n00288_var_ref_bx, @function
n00288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_var_ref_α:         mov              r11, 364
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                      # Regions____INITFLAG__0
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00296_nulltest_var_α
n00288_var_ref_β:         mov              r11, 364;                            jmp   .Ldisjunction_ω_899_af
                        .size            n00288_var_ref_bx, .-n00288_var_ref_bx
                        .type            n00296_nulltest_var_bx, @function
n00296_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_nulltest_var_α:    mov              r11, 365
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 104;                             je    .Ldisjunction_ω_899_af
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_899_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_899_af
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00297_lit_integer_α
                        .size            n00296_nulltest_var_bx, .-n00296_nulltest_var_bx
                        .type            n00297_lit_integer_bx, @function
n00297_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_lit_integer_α:     mov              r11, 366
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_950_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00298_assign_var_α
.Llit_integer_α_950_0:  .quad            1
                        .size            n00297_lit_integer_bx, .-n00297_lit_integer_bx
                        .type            n00298_assign_var_bx, @function
n00298_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_assign_var_α:      mov              r11, 367
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_899_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00299_lit_string_α
                        .size            n00298_assign_var_bx, .-n00298_assign_var_bx
                        .type            n00299_lit_string_bx, @function
n00299_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_lit_string_α:      mov              r11, 368
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_952_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00300_lit_string_α
.Llit_string_α_952_0:   .quad            .Llit_string_α_952_0_s
.Llit_string_α_952_0_s: .string          "static"
                        .size            n00299_lit_string_bx, .-n00299_lit_string_bx
                        .type            n00300_lit_string_bx, @function
n00300_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_lit_string_α:      mov              r11, 369
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_953_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00301_lit_string_α
.Llit_string_α_953_0:   .quad            .Llit_string_α_953_0_s
.Llit_string_α_953_0_s: .string          "string"
                        .size            n00300_lit_string_bx, .-n00300_lit_string_bx
                        .type            n00301_lit_string_bx, @function
n00301_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_lit_string_α:      mov              r11, 370
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_954_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00302_make_list_α
.Llit_string_α_954_0:   .quad            .Llit_string_α_954_0_s
.Llit_string_α_954_0_s: .string          "block"
                        .size            n00301_lit_string_bx, .-n00301_lit_string_bx
                        .type            n00302_make_list_bx, @function
n00302_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_make_list_α:       mov              r11, 371
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00303_assign_α
                        .size            n00302_make_list_bx, .-n00302_make_list_bx
                        .type            n00303_assign_bx, @function
n00303_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_assign_α:          mov              r11, 372
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [r9 + 144], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 152], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_957_0]
                        .section         .rodata
.Lassign_α_957_1_s:     .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_957_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_899_as
n00303_assign_β:          mov              r11, 372;                            jmp   n00289_make_list_α
.Lassign_α_957_0:       .quad            .Lassign_α_957_0_s
.Lassign_α_957_0_s:     .string          "Regions____STATIC__labels"
                        .size            n00303_assign_bx, .-n00303_assign_bx
                        .type            n00293_lit_string_bx, @function
n00293_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_lit_string_α:      mov              r11, 373
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_958_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00304_call_icon_α
.Llit_string_α_958_0:   .quad            .Llit_string_α_958_0_s
.Llit_string_α_958_0_s: .string          "regions"
                        .size            n00293_lit_string_bx, .-n00293_lit_string_bx
                        .type            n00304_call_icon_bx, @function
n00304_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_call_icon_α:       mov              r11, 374
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn960:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn960]
                        lea              rsi, [rbp + 448]
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00305_lit_integer_α
                                                                              jmp   n00305_lit_integer_α
n00304_call_icon_β:       mov              r11, 374;                            jmp   n00305_lit_integer_α
                        .size            n00304_call_icon_bx, .-n00304_call_icon_bx
                        .type            n00305_lit_integer_bx, @function
n00305_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_lit_integer_α:     mov              r11, 375
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_961_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00306_var_α
.Llit_integer_α_961_0:  .quad            1
                        .size            n00305_lit_integer_bx, .-n00305_lit_integer_bx
                        .type            n00306_var_bx, @function
n00306_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_var_α:             mov              r11, 376
                        mov              rax, qword ptr [r9 + 144]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00307_unop_α
                        .size            n00306_var_bx, .-n00306_var_bx
                        .type            n00307_unop_bx, @function
n00307_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_unop_α:            mov              r11, 377
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00308_to_α
                        .size            n00307_unop_bx, .-n00307_unop_bx
                        .type            n00308_to_bx, @function
n00308_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_to_α:              mov              r11, 378
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_965_0:           mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00309_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00310_assign_α
n00308_to_β:              mov              r11, 378
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_965_0
                        .size            n00308_to_bx, .-n00308_to_bx
                        .type            n00310_assign_bx, @function
n00310_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00311_bound_α
                        .size            n00310_assign_bx, .-n00310_assign_bx
                        .type            n00311_bound_bx, @function
n00311_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_bound_α:           mov              r11, 380
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00312_var_ref_α
                        .size            n00311_bound_bx, .-n00311_bound_bx
                        .type            n00312_var_ref_bx, @function
n00312_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_var_ref_α:         mov              r11, 381
                        mov              rax, 4294967336
                        mov              rdx, 1879052432                      # Regions____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00313_var_α
                        .size            n00312_var_ref_bx, .-n00312_var_ref_bx
                        .type            n00313_var_bx, @function
n00313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_var_α:             mov              r11, 382
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00314_subscript_α
                        .size            n00313_var_bx, .-n00313_var_bx
                        .type            n00314_subscript_bx, @function
n00314_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_subscript_α:       mov              r11, 383
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00315_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00316_var_ref_α
                        .size            n00314_subscript_bx, .-n00314_subscript_bx
                        .type            n00316_var_ref_bx, @function
n00316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_ref_α:         mov              r11, 384
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00317_var_α
                        .size            n00316_var_ref_bx, .-n00316_var_ref_bx
                        .type            n00317_var_bx, @function
n00317_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_var_α:             mov              r11, 385
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 360], rax;          jmp   n00318_subscript_α
                        .size            n00317_var_bx, .-n00317_var_bx
                        .type            n00318_subscript_bx, @function
n00318_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_subscript_α:       mov              r11, 386
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00315_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00319_lit_integer_α
                        .size            n00318_subscript_bx, .-n00318_subscript_bx
                        .type            n00319_lit_integer_bx, @function
n00319_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_integer_α:     mov              r11, 387
                        mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_979_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00320_deref_α
.Llit_integer_α_979_0:  .quad            8
                        .size            n00319_lit_integer_bx, .-n00319_lit_integer_bx
                        .type            n00320_deref_bx, @function
n00320_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_deref_α:           mov              r11, 388
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00315_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00321_call_icon_α
                        .size            n00320_deref_bx, .-n00320_deref_bx
                        .type            n00321_call_icon_bx, @function
n00321_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_icon_α:       mov              r11, 389
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn982:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn982]
                        lea              rsi, [rbp + 288]
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n00315_unmark_α
                                                                              jmp   n00322_deref_α
n00321_call_icon_β:       mov              r11, 389;                            jmp   n00315_unmark_α
                        .size            n00321_call_icon_bx, .-n00321_call_icon_bx
                        .type            n00322_deref_bx, @function
n00322_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_deref_α:           mov              r11, 390
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00315_unmark_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00323_call_icon_α
                        .size            n00322_deref_bx, .-n00322_deref_bx
                        .type            n00323_call_icon_bx, @function
n00323_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_call_icon_α:       mov              r11, 391
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn985:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn985]
                        lea              rsi, [rbp + 176]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00315_unmark_α
                                                                              jmp   n00315_unmark_α
n00323_call_icon_β:       mov              r11, 391;                            jmp   n00315_unmark_α
                        .size            n00323_call_icon_bx, .-n00323_call_icon_bx
                        .type            n00315_unmark_bx, @function
n00315_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_unmark_α:          mov              r11, 392
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00308_to_β
                        .size            n00315_unmark_bx, .-n00315_unmark_bx
                        .type            n00309_return_bx, @function
n00309_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_return_α:          mov              r11, 393
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Regions___γ
                        .size            n00309_return_bx, .-n00309_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Regions___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Regions___β:
                                                                              jmp   Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
Regions___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_988_248
                        .section         .rodata
.Licn_trace_nm989:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm989]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_988_248:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_988_249
                        .section         .rodata
.Licn_trace_nm990:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm990]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_988_249:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LRegions___α_991_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_991_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_991_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_991_3:    add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Signature__:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
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
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LSignature___α_991_247
                        .section         .rodata
.Licn_trace_nm992:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm992]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_991_247:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Signature___α_body:
                        .type            n00324_kw_icon_bx, @function
n00324_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_kw_icon_α:         mov              r11, 394
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1000_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00325_kw_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00326_call_icon_α
n00324_kw_icon_β:         mov              r11, 394;                            jmp   n00325_kw_icon_α
.Lkw_icon_α_1000_0:     .quad            .Lkw_icon_α_1000_0_s
.Lkw_icon_α_1000_0_s:   .string          "&version"
                        .size            n00324_kw_icon_bx, .-n00324_kw_icon_bx
                        .type            n00326_call_icon_bx, @function
n00326_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_call_icon_α:       mov              r11, 395
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1002: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1002]
                        lea              rsi, [rbp + 192]
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
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00325_kw_icon_α
                                                                              jmp   n00325_kw_icon_α
n00326_call_icon_β:       mov              r11, 395;                            jmp   n00325_kw_icon_α
                        .size            n00326_call_icon_bx, .-n00326_call_icon_bx
                        .type            n00325_kw_icon_bx, @function
n00325_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_kw_icon_α:         mov              r11, 396
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1003_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00327_kw_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00328_call_icon_α
n00325_kw_icon_β:         mov              r11, 396;                            jmp   n00327_kw_icon_gen_α
.Lkw_icon_α_1003_0:     .quad            .Lkw_icon_α_1003_0_s
.Lkw_icon_α_1003_0_s:   .string          "&host"
                        .size            n00325_kw_icon_bx, .-n00325_kw_icon_bx
                        .type            n00328_call_icon_bx, @function
n00328_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_call_icon_α:       mov              r11, 397
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1005: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1005]
                        lea              rsi, [rbp + 112]
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
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n00327_kw_icon_gen_α
                                                                              jmp   n00327_kw_icon_gen_α
n00328_call_icon_β:       mov              r11, 397;                            jmp   n00327_kw_icon_gen_α
                        .size            n00328_call_icon_bx, .-n00328_call_icon_bx
                        .type            n00327_kw_icon_gen_bx, @function
n00327_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_kw_icon_gen_α:     mov              r11, 398
                        mov              qword ptr [rbp + 80], 0
.Lkw_icon_gen_α_1006_1: mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_1006_0]
                        mov              rsi, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00329_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax;           jmp   n00330_call_icon_α
n00327_kw_icon_gen_β:     mov              r11, 398;                            jmp   .Lkw_icon_gen_α_1006_1
.Lkw_icon_gen_α_1006_0: .quad            .Lkw_icon_gen_α_1006_0_s
.Lkw_icon_gen_α_1006_0_s:
                        .string          "&features"
                        .size            n00327_kw_icon_gen_bx, .-n00327_kw_icon_gen_bx
                        .type            n00330_call_icon_bx, @function
n00330_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_call_icon_α:       mov              r11, 399
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1008: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1008]
                        lea              rsi, [rbp + 32]
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
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    n00327_kw_icon_gen_β
                                                                              jmp   n00327_kw_icon_gen_β
n00330_call_icon_β:       mov              r11, 399;                            jmp   n00327_kw_icon_gen_β
                        .size            n00330_call_icon_bx, .-n00330_call_icon_bx
                        .type            n00329_return_bx, @function
n00329_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_return_α:          mov              r11, 400
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Signature___γ
                        .size            n00329_return_bx, .-n00329_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Signature___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Signature___β:
                                                                              jmp   Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
Signature___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LSignature___α_1009_248
                        .section         .rodata
.Licn_trace_nm1010:     .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1010]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_1009_248:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Signature___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LSignature___α_1009_249
                        .section         .rodata
.Licn_trace_nm1011:     .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1011]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_1009_249:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Signature___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LSignature___α_1012_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_1012_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_1012_2: add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_1012_3: add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 928
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
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_1012_247
                        .section         .rodata
.Licn_trace_nm1013:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1013]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_1012_247: mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Storage___α_body:
                        .type            n00331_disjunction_bx, @function
n00331_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_disjunction_α:    mov              r11, 401
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0;            jmp   n00332_var_ref_α
.Ldisjunction_γ_1014_as:
                        mov              r11, 401
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1052_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00333_make_list_α
.Ldisjunction_α_1052_0:                                                       jmp   n00333_make_list_α
n00331_disjunction_β:    mov              r11, 401
                        mov              eax, dword ptr [rbp + 672];          jmp   n00333_make_list_α
.Ldisjunction_γ_1014_af:
                        mov              r11, 401
.Ldisjunction_ω_1014_af:
                        mov              r11, 401
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672];          jmp   n00333_make_list_α
                        .size            n00331_disjunction_bx, .-n00331_disjunction_bx
                        .type            n00333_make_list_bx, @function
n00333_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_make_list_α:      mov              r11, 402
                        lea              rdi, [rbp + 656]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00334_assign_α
                        .size            n00333_make_list_bx, .-n00333_make_list_bx
                        .type            n00334_assign_bx, @function
n00334_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_assign_α:         mov              r11, 403
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n00335_var_ref_α
                        .size            n00334_assign_bx, .-n00334_assign_bx
                        .type            n00335_var_ref_bx, @function
n00335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_var_ref_α:        mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00336_kw_icon_gen_α
                        .size            n00335_var_ref_bx, .-n00335_var_ref_bx
                        .type            n00336_kw_icon_gen_bx, @function
n00336_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_kw_icon_gen_α:    mov              r11, 405
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_1058_1: mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_1058_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00337_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00338_deref_α
n00336_kw_icon_gen_β:    mov              r11, 405;                            jmp   .Lkw_icon_gen_α_1058_1
.Lkw_icon_gen_α_1058_0: .quad            .Lkw_icon_gen_α_1058_0_s
.Lkw_icon_gen_α_1058_0_s:
                        .string          "&storage"
                        .size            n00336_kw_icon_gen_bx, .-n00336_kw_icon_gen_bx
                        .type            n00338_deref_bx, @function
n00338_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_deref_α:          mov              r11, 406
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00336_kw_icon_gen_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00339_call_icon_α
                        .size            n00338_deref_bx, .-n00338_deref_bx
                        .type            n00339_call_icon_bx, @function
n00339_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_call_icon_α:      mov              r11, 407
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1061: .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1061]
                        lea              rsi, [rbp + 528]
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n00336_kw_icon_gen_β
                                                                              jmp   n00336_kw_icon_gen_β
n00339_call_icon_β:      mov              r11, 407;                            jmp   n00336_kw_icon_gen_β
                        .size            n00339_call_icon_bx, .-n00339_call_icon_bx
                        .type            n00332_var_ref_bx, @function
n00332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_var_ref_α:        mov              r11, 408
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # Storage____INITFLAG__0
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00340_nulltest_var_α
n00332_var_ref_β:        mov              r11, 408;                            jmp   .Ldisjunction_ω_1014_af
                        .size            n00332_var_ref_bx, .-n00332_var_ref_bx
                        .type            n00340_nulltest_var_bx, @function
n00340_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_nulltest_var_α:   mov              r11, 409
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1014_af
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1014_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1014_af
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00341_lit_integer_α
                        .size            n00340_nulltest_var_bx, .-n00340_nulltest_var_bx
                        .type            n00341_lit_integer_bx, @function
n00341_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_lit_integer_α:    mov              r11, 410
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1065_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00342_assign_var_α
.Llit_integer_α_1065_0: .quad            1
                        .size            n00341_lit_integer_bx, .-n00341_lit_integer_bx
                        .type            n00342_assign_var_bx, @function
n00342_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_var_α:     mov              r11, 411
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1014_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00343_lit_string_α
                        .size            n00342_assign_var_bx, .-n00342_assign_var_bx
                        .type            n00343_lit_string_bx, @function
n00343_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_lit_string_α:     mov              r11, 412
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1067_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00344_lit_string_α
.Llit_string_α_1067_0:  .quad            .Llit_string_α_1067_0_s
.Llit_string_α_1067_0_s:
                        .string          "static"
                        .size            n00343_lit_string_bx, .-n00343_lit_string_bx
                        .type            n00344_lit_string_bx, @function
n00344_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_lit_string_α:     mov              r11, 413
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1068_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00345_lit_string_α
.Llit_string_α_1068_0:  .quad            .Llit_string_α_1068_0_s
.Llit_string_α_1068_0_s:
                        .string          "string"
                        .size            n00344_lit_string_bx, .-n00344_lit_string_bx
                        .type            n00345_lit_string_bx, @function
n00345_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_lit_string_α:     mov              r11, 414
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1069_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00346_make_list_α
.Llit_string_α_1069_0:  .quad            .Llit_string_α_1069_0_s
.Llit_string_α_1069_0_s:
                        .string          "block"
                        .size            n00345_lit_string_bx, .-n00345_lit_string_bx
                        .type            n00346_make_list_bx, @function
n00346_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_make_list_α:      mov              r11, 415
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00347_assign_α
                        .size            n00346_make_list_bx, .-n00346_make_list_bx
                        .type            n00347_assign_bx, @function
n00347_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_assign_α:         mov              r11, 416
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [r9 + 176], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1072_0]
                        .section         .rodata
.Lassign_α_1072_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1072_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_1014_as
n00347_assign_β:         mov              r11, 416;                            jmp   n00333_make_list_α
.Lassign_α_1072_0:      .quad            .Lassign_α_1072_0_s
.Lassign_α_1072_0_s:    .string          "Storage____STATIC__labels"
                        .size            n00347_assign_bx, .-n00347_assign_bx
                        .type            n00337_lit_string_bx, @function
n00337_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_lit_string_α:     mov              r11, 417
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_1073_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00348_call_icon_α
.Llit_string_α_1073_0:  .quad            .Llit_string_α_1073_0_s
.Llit_string_α_1073_0_s:
                        .string          "storage"
                        .size            n00337_lit_string_bx, .-n00337_lit_string_bx
                        .type            n00348_call_icon_bx, @function
n00348_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_call_icon_α:      mov              r11, 418
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1075: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1075]
                        lea              rsi, [rbp + 448]
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00349_lit_integer_α
                                                                              jmp   n00349_lit_integer_α
n00348_call_icon_β:      mov              r11, 418;                            jmp   n00349_lit_integer_α
                        .size            n00348_call_icon_bx, .-n00348_call_icon_bx
                        .type            n00349_lit_integer_bx, @function
n00349_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_lit_integer_α:    mov              r11, 419
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1076_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00350_var_α
.Llit_integer_α_1076_0: .quad            1
                        .size            n00349_lit_integer_bx, .-n00349_lit_integer_bx
                        .type            n00350_var_bx, @function
n00350_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_var_α:            mov              r11, 420
                        mov              rax, qword ptr [r9 + 176]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00351_unop_α
                        .size            n00350_var_bx, .-n00350_var_bx
                        .type            n00351_unop_bx, @function
n00351_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_unop_α:           mov              r11, 421
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00352_to_α
                        .size            n00351_unop_bx, .-n00351_unop_bx
                        .type            n00352_to_bx, @function
n00352_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_to_α:             mov              r11, 422
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_1080_0:          mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00353_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00354_assign_α
n00352_to_β:             mov              r11, 422
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_1080_0
                        .size            n00352_to_bx, .-n00352_to_bx
                        .type            n00354_assign_bx, @function
n00354_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_assign_α:         mov              r11, 423
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00355_bound_α
                        .size            n00354_assign_bx, .-n00354_assign_bx
                        .type            n00355_bound_bx, @function
n00355_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_bound_α:          mov              r11, 424
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00356_var_ref_α
                        .size            n00355_bound_bx, .-n00355_bound_bx
                        .type            n00356_var_ref_bx, @function
n00356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_var_ref_α:        mov              r11, 425
                        mov              rax, 4294967336
                        mov              rdx, 1879052464                      # Storage____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00357_var_α
                        .size            n00356_var_ref_bx, .-n00356_var_ref_bx
                        .type            n00357_var_bx, @function
n00357_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_var_α:            mov              r11, 426
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00358_subscript_α
                        .size            n00357_var_bx, .-n00357_var_bx
                        .type            n00358_subscript_bx, @function
n00358_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_subscript_α:      mov              r11, 427
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00359_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00360_var_ref_α
                        .size            n00358_subscript_bx, .-n00358_subscript_bx
                        .type            n00360_var_ref_bx, @function
n00360_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_var_ref_α:        mov              r11, 428
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00361_var_α
                        .size            n00360_var_ref_bx, .-n00360_var_ref_bx
                        .type            n00361_var_bx, @function
n00361_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_var_α:            mov              r11, 429
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 360], rax;          jmp   n00362_subscript_α
                        .size            n00361_var_bx, .-n00361_var_bx
                        .type            n00362_subscript_bx, @function
n00362_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_subscript_α:      mov              r11, 430
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00359_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00363_lit_integer_α
                        .size            n00362_subscript_bx, .-n00362_subscript_bx
                        .type            n00363_lit_integer_bx, @function
n00363_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_lit_integer_α:    mov              r11, 431
                        mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1094_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00364_deref_α
.Llit_integer_α_1094_0: .quad            8
                        .size            n00363_lit_integer_bx, .-n00363_lit_integer_bx
                        .type            n00364_deref_bx, @function
n00364_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_deref_α:          mov              r11, 432
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00359_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00365_call_icon_α
                        .size            n00364_deref_bx, .-n00364_deref_bx
                        .type            n00365_call_icon_bx, @function
n00365_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_call_icon_α:      mov              r11, 433
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1097: .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1097]
                        lea              rsi, [rbp + 288]
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n00359_unmark_α
                                                                              jmp   n00366_deref_α
n00365_call_icon_β:      mov              r11, 433;                            jmp   n00359_unmark_α
                        .size            n00365_call_icon_bx, .-n00365_call_icon_bx
                        .type            n00366_deref_bx, @function
n00366_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_deref_α:          mov              r11, 434
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00359_unmark_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00367_call_icon_α
                        .size            n00366_deref_bx, .-n00366_deref_bx
                        .type            n00367_call_icon_bx, @function
n00367_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_call_icon_α:      mov              r11, 435
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1100: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1100]
                        lea              rsi, [rbp + 176]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00359_unmark_α
                                                                              jmp   n00359_unmark_α
n00367_call_icon_β:      mov              r11, 435;                            jmp   n00359_unmark_α
                        .size            n00367_call_icon_bx, .-n00367_call_icon_bx
                        .type            n00359_unmark_bx, @function
n00359_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_unmark_α:         mov              r11, 436
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00352_to_β
                        .size            n00359_unmark_bx, .-n00359_unmark_bx
                        .type            n00353_return_bx, @function
n00353_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_return_α:         mov              r11, 437
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Storage___γ
                        .size            n00353_return_bx, .-n00353_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Storage___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Storage___β:
                                                                              jmp   Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
Storage___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_1103_248
                        .section         .rodata
.Licn_trace_nm1104:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1104]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_1103_248: mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_1103_249
                        .section         .rodata
.Licn_trace_nm1105:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1105]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_1103_249: mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LStorage___α_1106_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_1106_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_1106_2:   add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_1106_3:   add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Time__:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
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
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTime___α_1106_247
                        .section         .rodata
.Licn_trace_nm1107:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1107]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1106_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Time___α_body:
                        .type            n00368_disjunction_bx, @function
n00368_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_disjunction_α:    mov              r11, 438
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0;            jmp   n00369_var_ref_α
.Ldisjunction_γ_1108_as:
                        mov              r11, 438
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1122_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00370_kw_icon_α
.Ldisjunction_α_1122_0:                                                       jmp   n00370_kw_icon_α
n00368_disjunction_β:    mov              r11, 438
                        mov              eax, dword ptr [rbp + 128];          jmp   n00370_kw_icon_α
.Ldisjunction_γ_1108_af:
                        mov              r11, 438
.Ldisjunction_ω_1108_af:
                        mov              r11, 438
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128];          jmp   n00370_kw_icon_α
                        .size            n00368_disjunction_bx, .-n00368_disjunction_bx
                        .type            n00370_kw_icon_bx, @function
n00370_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_kw_icon_α:        mov              r11, 439
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1123_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00371_var_α
n00370_kw_icon_β:        mov              r11, 439;                            jmp   Time___ω
.Lkw_icon_α_1123_0:     .quad            .Lkw_icon_α_1123_0_s
.Lkw_icon_α_1123_0_s:   .string          "&time"
                        .size            n00370_kw_icon_bx, .-n00370_kw_icon_bx
                        .type            n00371_var_bx, @function
n00371_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_var_α:            mov              r11, 440
                        mov              rax, qword ptr [r9 + 208]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00372_coerce_numeric_α
                        .size            n00371_var_bx, .-n00371_var_bx
                        .type            n00372_coerce_numeric_bx, @function
n00372_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00372_coerce_numeric_α: mov              r11, 441
                        mov              eax, dword ptr [rbp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1126_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1126_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1126_0
.Lcoerce_numeric_α_1126_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00373_coerce_numeric_α
.Lcoerce_numeric_α_1126_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 48]
                        cmp              al, 104;                             je    Time___ω
                                                                              jmp   n00373_coerce_numeric_α
                        .size            n00372_coerce_numeric_bx, .-n00372_coerce_numeric_bx
                        .type            n00373_coerce_numeric_bx, @function
n00373_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00373_coerce_numeric_α: mov              r11, 442
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1128_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1128_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1128_0
.Lcoerce_numeric_α_1128_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00374_binop_α
.Lcoerce_numeric_α_1128_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 32]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 32]
                        cmp              al, 104;                             je    Time___ω
                                                                              jmp   n00374_binop_α
                        .size            n00373_coerce_numeric_bx, .-n00373_coerce_numeric_bx
                        .type            n00374_binop_bx, @function
n00374_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00374_binop_α:          mov              r11, 443
                        mov              eax, dword ptr [rbp + 48]
                        mov              ecx, dword ptr [rbp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1129_2
                        mov              rax, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 40]
                        sub              rax, rdx;                            jo    .Lbinop_α_1129_0
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax;           jmp   .Lbinop_α_1129_7
.Lbinop_α_1129_2:       and              edx, 1;                              jz    .Lbinop_α_1129_0
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rbp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1129_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1129_4
.Lbinop_α_1129_3:       movq             xmm0, rsi
.Lbinop_α_1129_4:       cmp              cl, 5;                               je    .Lbinop_α_1129_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1129_6
.Lbinop_α_1129_5:       movq             xmm1, rdi
.Lbinop_α_1129_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1129_0
                        mov              qword ptr [rbp + 16], 5
                        mov              qword ptr [rbp + 24], rax
.Lbinop_α_1129_7:                                                             jmp   n00375_return_α
.Lbinop_α_1129_0:       mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx;           jmp   n00375_return_α
                        .size            n00374_binop_bx, .-n00374_binop_bx
                        .type            n00375_return_bx, @function
n00375_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00375_return_α:         mov              r11, 444
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   Time___γ
                        .size            n00375_return_bx, .-n00375_return_bx
                        .type            n00369_var_ref_bx, @function
n00369_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_var_ref_α:        mov              r11, 445
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                      # Time____INITFLAG__0
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00376_nulltest_var_α
n00369_var_ref_β:        mov              r11, 445;                            jmp   .Ldisjunction_ω_1108_af
                        .size            n00369_var_ref_bx, .-n00369_var_ref_bx
                        .type            n00376_nulltest_var_bx, @function
n00376_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00376_nulltest_var_α:   mov              r11, 446
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1108_af
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1108_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1108_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00377_lit_integer_α
                        .size            n00376_nulltest_var_bx, .-n00376_nulltest_var_bx
                        .type            n00377_lit_integer_bx, @function
n00377_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00377_lit_integer_α:    mov              r11, 447
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1134_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00378_assign_var_α
.Llit_integer_α_1134_0: .quad            1
                        .size            n00377_lit_integer_bx, .-n00377_lit_integer_bx
                        .type            n00378_assign_var_bx, @function
n00378_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00378_assign_var_α:     mov              r11, 448
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1108_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00379_kw_icon_α
                        .size            n00378_assign_var_bx, .-n00378_assign_var_bx
                        .type            n00379_kw_icon_bx, @function
n00379_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00379_kw_icon_α:        mov              r11, 449
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1136_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00370_kw_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00380_assign_α
n00379_kw_icon_β:        mov              r11, 449;                            jmp   n00370_kw_icon_α
.Lkw_icon_α_1136_0:     .quad            .Lkw_icon_α_1136_0_s
.Lkw_icon_α_1136_0_s:   .string          "&time"
                        .size            n00379_kw_icon_bx, .-n00379_kw_icon_bx
                        .type            n00380_assign_bx, @function
n00380_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00380_assign_α:         mov              r11, 450
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [r9 + 208], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1137_0]
                        .section         .rodata
.Lassign_α_1137_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1137_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_1108_as
n00380_assign_β:         mov              r11, 450;                            jmp   n00370_kw_icon_α
.Lassign_α_1137_0:      .quad            .Lassign_α_1137_0_s
.Lassign_α_1137_0_s:    .string          "Time____STATIC__lasttime"
                        .size            n00380_assign_bx, .-n00380_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
Time___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Time___β:
                                                                              jmp   Time___ω
#-----------------------------------------------------------------------------------------------------------------------
Time___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTime___α_1137_248
                        .section         .rodata
.Licn_trace_nm1138:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1138]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1137_248:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Time___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTime___α_1137_249
                        .section         .rodata
.Licn_trace_nm1139:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1139]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1137_249:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Time___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTime___α_1140_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1140_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1140_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1140_3:      add              rsp, 24
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
                        call             rt_main_args_bind@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
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
                        sub              rsp, 1456
                        mov              qword ptr [rsp + 1448], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 1280
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n00381_lit_string_bx, @function
n00381_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00381_lit_string_α:     mov              r11, 451
                        mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_1193_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n00382_call_proc_staged_α
.Llit_string_α_1193_0:  .quad            .Llit_string_α_1193_0_s
.Llit_string_α_1193_0_s:
                        .string          "concord"
                        .size            n00381_lit_string_bx, .-n00381_lit_string_bx
                        .type            n00382_call_proc_staged_bx, @function
n00382_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00382_call_proc_staged_α:
                        mov              r11, 452
                        lea              rsi, [rbp + 1248]
                        call             Init___dcα;                          jmp   .Lcall_proc_staged_α_1195_2
.Lcall_proc_staged_α_1195_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1195_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
.Lcall_proc_staged_α_1195_29:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    n00383_var_ref_α
                                                                              jmp   n00383_var_ref_α
n00382_call_proc_staged_β:
                        mov              r11, 452;                            jmp   n00383_var_ref_α
.Lcall_proc_staged_β_1195_0:
                        .quad            .Lcall_proc_staged_β_1195_0_s
.Lcall_proc_staged_β_1195_0_s:
                        .string          "Init__"
                        .size            n00382_call_proc_staged_bx, .-n00382_call_proc_staged_bx
                        .type            n00383_var_ref_bx, @function
n00383_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00383_var_ref_α:        mov              r11, 453
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n00384_lit_string_α
                        .size            n00383_var_ref_bx, .-n00383_var_ref_bx
                        .type            n00384_lit_string_bx, @function
n00384_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00384_lit_string_α:     mov              r11, 454
                        mov              qword ptr [rbp + 1152], 2            # result
                        mov              dword ptr [rbp + 1156], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1198_0]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n00385_deref_α
.Llit_string_α_1198_0:  .quad            .Llit_string_α_1198_0_s
.Llit_string_α_1198_0_s:
                        .string          "l+w+"
                        .size            n00384_lit_string_bx, .-n00384_lit_string_bx
                        .type            n00385_deref_bx, @function
n00385_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00385_deref_α:          mov              r11, 455
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00386_disjunction_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n00387_call_proc_staged_α
                        .size            n00385_deref_bx, .-n00385_deref_bx
                        .type            n00387_call_proc_staged_bx, @function
n00387_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00387_call_proc_staged_α:
                        mov              r11, 456
                        lea              rsi, [rbp + 1184]
                        lea              rdx, [rbp + 1152]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1201_2
.Lcall_proc_staged_α_1201_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1201_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
.Lcall_proc_staged_α_1201_29:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    n00386_disjunction_α
                                                                              jmp   n00388_assign_α
n00387_call_proc_staged_β:
                        mov              r11, 456;                            jmp   n00386_disjunction_α
.Lcall_proc_staged_β_1201_0:
                        .quad            .Lcall_proc_staged_β_1201_0_s
.Lcall_proc_staged_β_1201_0_s:
                        .string          "options"
                        .size            n00387_call_proc_staged_bx, .-n00387_call_proc_staged_bx
                        .type            n00388_assign_bx, @function
n00388_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00388_assign_α:         mov              r11, 457
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n00386_disjunction_α
                        .size            n00388_assign_bx, .-n00388_assign_bx
                        .type            n00386_disjunction_bx, @function
n00386_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00386_disjunction_α:    mov              r11, 458
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0;            jmp   n00389_var_ref_α
.Ldisjunction_γ_1148_as:
                        mov              r11, 458
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1204_0
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00390_assign_α
.Ldisjunction_α_1204_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1204_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00390_assign_α
.Ldisjunction_α_1204_1:                                                       jmp   n00390_assign_α
n00386_disjunction_β:    mov              r11, 458
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1148_af
                                                                              jmp   .Ldisjunction_ω_1148_af
.Ldisjunction_γ_1148_af:
                        mov              r11, 458
.Ldisjunction_ω_1148_af:
                        mov              r11, 458
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1;                              je    n00391_lit_integer_α
                                                                              jmp   n00392_disjunction_α
                        .size            n00386_disjunction_bx, .-n00386_disjunction_bx
                        .type            n00390_assign_bx, @function
n00390_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00390_assign_α:         mov              r11, 459
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [r9 + 16], rax             # colmax
                        mov              qword ptr [r9 + 24], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1205_0]
                        .section         .rodata
.Lassign_α_1205_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1205_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00392_disjunction_α
.Lassign_α_1205_0:      .quad            .Lassign_α_1205_0_s
.Lassign_α_1205_0_s:    .string          "colmax"
                        .size            n00390_assign_bx, .-n00390_assign_bx
                        .type            n00392_disjunction_bx, @function
n00392_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00392_disjunction_α:    mov              r11, 460
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              dword ptr [rbp + 800], 0;            jmp   n00393_var_ref_α
.Ldisjunction_γ_1150_as:
                        mov              r11, 460
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1207_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00394_assign_α
.Ldisjunction_α_1207_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1207_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00394_assign_α
.Ldisjunction_α_1207_1:                                                       jmp   n00394_assign_α
n00392_disjunction_β:    mov              r11, 460
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1150_af
                                                                              jmp   .Ldisjunction_ω_1150_af
.Ldisjunction_γ_1150_af:
                        mov              r11, 460
.Ldisjunction_ω_1150_af:
                        mov              r11, 460
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 1;                              je    n00395_lit_integer_α
                                                                              jmp   n00396_lit_string_α
                        .size            n00392_disjunction_bx, .-n00392_disjunction_bx
                        .type            n00394_assign_bx, @function
n00394_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00394_assign_α:         mov              r11, 461
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [r9 + 32], rax             # namewidth
                        mov              qword ptr [r9 + 40], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1208_0]
                        .section         .rodata
.Lassign_α_1208_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1208_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00396_lit_string_α
.Lassign_α_1208_0:      .quad            .Lassign_α_1208_0_s
.Lassign_α_1208_0_s:    .string          "namewidth"
                        .size            n00394_assign_bx, .-n00394_assign_bx
                        .type            n00396_lit_string_bx, @function
n00396_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00396_lit_string_α:     mov              r11, 462
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1209_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00397_call_icon_α
.Llit_string_α_1209_0:  .quad            .Llit_string_α_1209_0_s
.Llit_string_α_1209_0_s:
                        .string          ""
                        .size            n00396_lit_string_bx, .-n00396_lit_string_bx
                        .type            n00397_call_icon_bx, @function
n00397_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00397_call_icon_α:      mov              r11, 463
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1211: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1211]
                        lea              rsi, [rbp + 720]
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
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    n00398_lit_integer_α
                                                                              jmp   n00399_assign_α
n00397_call_icon_β:      mov              r11, 463;                            jmp   n00398_lit_integer_α
                        .size            n00397_call_icon_bx, .-n00397_call_icon_bx
                        .type            n00399_assign_bx, @function
n00399_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00399_assign_α:         mov              r11, 464
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [r9 + 0], rax              # uses
                        mov              qword ptr [r9 + 8], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1212_0]
                        .section         .rodata
.Lassign_α_1212_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1212_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00398_lit_integer_α
.Lassign_α_1212_0:      .quad            .Lassign_α_1212_0_s
.Lassign_α_1212_0_s:    .string          "uses"
                        .size            n00399_assign_bx, .-n00399_assign_bx
                        .type            n00398_lit_integer_bx, @function
n00398_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00398_lit_integer_α:    mov              r11, 465
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1213_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00400_assign_α
.Llit_integer_α_1213_0: .quad            0
                        .size            n00398_lit_integer_bx, .-n00398_lit_integer_bx
                        .type            n00400_assign_bx, @function
n00400_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00400_assign_α:         mov              r11, 466
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1214_0]
                        .section         .rodata
.Lassign_α_1214_1_s:    .string          "/home/claude_R/corpus/benchmarks/icon/concord.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1214_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00401_proc_gen_α
.Lassign_α_1214_0:      .quad            .Lassign_α_1214_0_s
.Lassign_α_1214_0_s:    .string          "lineno"
                        .size            n00400_assign_bx, .-n00400_assign_bx
                        .type            n00401_proc_gen_bx, @function
n00401_proc_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00401_proc_gen_α:       mov              r11, 467
                        mov              qword ptr [rbp + 624], 0
                        sub              rsp, 8
                        sub              rsp, 8                               # N-2 ABI WORD (row icon-generator-call-path-enters-every-runtime-helper-8-bytes-off-the-sysv-abi, hq_I root-caused, hq_B authored): the REGION HAND-OFF push below is a LONE 8B word and therefore PARITY-FLIPPING, so the armed call site pushed 40 bytes (pad+L7+region+wire pair) where the unarmed one pushes 32. The callee body then ran at rsp0-40 = 8 mod 16 and EVERY call it made entered a helper at 0 mod 16 -- latent until some callee reached an aligned SSE store, which is why it read as a record bug (suspend a list, nothing; suspend a RECORD and dat_construct -> rt_fire_buildplan_tweak -> snprintf -> movaps -> dead). This word is pushed FIRST, above the pad, ON PURPOSE: every documented entry offset ([rsp+0]=gamma [rsp+8]=omega [rsp+16]=REGION [rsp+24]=L7 [rsp+32]=pad) is UNCHANGED, and only the caller pre-pad rsp0 moves from [rsp+40] to [rsp+48] -- one constant in the alpha's ANCHOR lea and one in the beta re-creation. Placing it between L7 and the region instead would keep the region at +16 and silently move the pad, which is the slot the selfrec depth is read from at [entry rsp+32].
                        lea              rax, [rip + .Lproc_gen_α_1216_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lproc_gen_α_1216_1
                        sub              rsp, 8
                        lea              rcx, [rip + .Lproc_gen_α_1216_4]
                        push             rcx
                        lea              rcx, [rip + .Lproc_gen_α_1216_3]
                        push             rcx
                        lea              rdx, [rip + .Lproc_gen_α_1216_4];    jmp   rax
.Lproc_gen_α_1216_3:    cmp              al, 104;                             je    .Lproc_gen_α_1216_8
                        mov              rdi, qword ptr [rdx + -1072]
                        mov              rsi, qword ptr [rdx + -1064]
                        mov              qword ptr [rbp + 632], rdx;          jmp   .Lproc_gen_α_1216_9
.Lproc_gen_α_1216_8:    mov              edi, 104
                        mov              esi, 0
                        mov              qword ptr [rbp + 632], rsp
.Lproc_gen_α_1216_9:    mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            jne   .Lproc_gen_α_1216_5
                        mov              qword ptr [rbp + 624], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1216_2
.Lproc_gen_α_1216_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lproc_gen_α_1216_2
.Lproc_gen_α_1216_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            jne   .Lproc_gen_α_1216_6
                        mov              qword ptr [rbp + 624], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lproc_gen_α_1216_2
.Lproc_gen_α_1216_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lproc_gen_α_1216_2
.Lproc_gen_α_1216_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lproc_gen_α_1216_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lproc_gen_α_1216_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
.Lproc_gen_α_1216_29:   mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n00402_var_ref_α
                                                                              jmp   n00403_var_ref_α
n00401_proc_gen_β:       mov              r11, 467
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rax, qword ptr [rbp + 632]
                        mov              rsp, qword ptr [rax + 40];           jmp   qword ptr [rax + 32]
.Lproc_gen_α_1216_7:    add              rsp, 8
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n00402_var_ref_α
                                                                              jmp   n00403_var_ref_α
.Lproc_gen_β_1216_0:    .quad            .Lproc_gen_β_1216_0_s
.Lproc_gen_β_1216_0_s:  .string          "item"
                        .size            n00401_proc_gen_bx, .-n00401_proc_gen_bx
                        .type            n00403_var_ref_bx, @function
n00403_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00403_var_ref_α:        mov              r11, 468
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # lineno
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n00404_deref_α
                        .size            n00403_var_ref_bx, .-n00403_var_ref_bx
                        .type            n00404_deref_bx, @function
n00404_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00404_deref_α:          mov              r11, 469
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00401_proc_gen_β
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n00405_call_proc_staged_α
                        .size            n00404_deref_bx, .-n00404_deref_bx
                        .type            n00405_call_proc_staged_bx, @function
n00405_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00405_call_proc_staged_α:
                        mov              r11, 470
                        lea              rsi, [rbp + 608]
                        lea              rdx, [rbp + 672]
                        call             tabulate_dcα;                        jmp   .Lcall_proc_staged_α_1221_2
.Lcall_proc_staged_α_1221_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1221_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
.Lcall_proc_staged_α_1221_29:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    n00401_proc_gen_β
                                                                              jmp   n00401_proc_gen_β
n00405_call_proc_staged_β:
                        mov              r11, 470;                            jmp   n00401_proc_gen_β
.Lcall_proc_staged_β_1221_0:
                        .quad            .Lcall_proc_staged_β_1221_0_s
.Lcall_proc_staged_β_1221_0_s:
                        .string          "tabulate"
                        .size            n00405_call_proc_staged_bx, .-n00405_call_proc_staged_bx
                        .type            n00402_var_ref_bx, @function
n00402_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00402_var_ref_α:        mov              r11, 471
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00406_lit_integer_α
                        .size            n00402_var_ref_bx, .-n00402_var_ref_bx
                        .type            n00406_lit_integer_bx, @function
n00406_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00406_lit_integer_α:    mov              r11, 472
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1224_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00407_deref_α
.Llit_integer_α_1224_0: .quad            3
                        .size            n00406_lit_integer_bx, .-n00406_lit_integer_bx
                        .type            n00407_deref_bx, @function
n00407_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00407_deref_α:          mov              r11, 473
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00408_var_ref_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00409_call_icon_α
                        .size            n00407_deref_bx, .-n00407_deref_bx
                        .type            n00409_call_icon_bx, @function
n00409_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00409_call_icon_α:      mov              r11, 474
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1227: .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1227]
                        lea              rsi, [rbp + 448]
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00408_var_ref_α
                                                                              jmp   n00410_assign_α
n00409_call_icon_β:      mov              r11, 474;                            jmp   n00408_var_ref_α
                        .size            n00409_call_icon_bx, .-n00409_call_icon_bx
                        .type            n00410_assign_bx, @function
n00410_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00410_assign_α:         mov              r11, 475
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n00408_var_ref_α
                        .size            n00410_assign_bx, .-n00410_assign_bx
                        .type            n00408_var_ref_bx, @function
n00408_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00408_var_ref_α:        mov              r11, 476
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00411_deref_α
                        .size            n00408_var_ref_bx, .-n00408_var_ref_bx
                        .type            n00411_deref_bx, @function
n00411_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00411_deref_α:          mov              r11, 477
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00412_call_proc_staged_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00413_call_icon_α
                        .size            n00411_deref_bx, .-n00411_deref_bx
                        .type            n00413_call_icon_bx, @function
n00413_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00413_call_icon_α:      mov              r11, 478
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1233: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1233]
                        lea              rsi, [rbp + 96]
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n00412_call_proc_staged_α
                                                                              jmp   n00414_assign_α
n00413_call_icon_β:      mov              r11, 478;                            jmp   n00412_call_proc_staged_α
                        .size            n00413_call_icon_bx, .-n00413_call_icon_bx
                        .type            n00414_assign_bx, @function
n00414_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00414_assign_α:         mov              r11, 479
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n00415_var_ref_α
                        .size            n00414_assign_bx, .-n00414_assign_bx
                        .type            n00415_var_ref_bx, @function
n00415_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00415_var_ref_α:        mov              r11, 480
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00416_var_ref_α
                        .size            n00415_var_ref_bx, .-n00415_var_ref_bx
                        .type            n00416_var_ref_bx, @function
n00416_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00416_var_ref_α:        mov              r11, 481
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # namewidth
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00417_deref_α
                        .size            n00416_var_ref_bx, .-n00416_var_ref_bx
                        .type            n00417_deref_bx, @function
n00417_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00417_deref_α:          mov              r11, 482
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00408_var_ref_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00418_deref_α
                        .size            n00417_deref_bx, .-n00417_deref_bx
                        .type            n00418_deref_bx, @function
n00418_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00418_deref_α:          mov              r11, 483
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00408_var_ref_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00419_call_icon_α
                        .size            n00418_deref_bx, .-n00418_deref_bx
                        .type            n00419_call_icon_bx, @function
n00419_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00419_call_icon_α:      mov              r11, 484
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1242: .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1242]
                        lea              rsi, [rbp + 240]
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
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n00408_var_ref_α
                                                                              jmp   n00420_var_ref_α
n00419_call_icon_β:      mov              r11, 484;                            jmp   n00408_var_ref_α
                        .size            n00419_call_icon_bx, .-n00419_call_icon_bx
                        .type            n00420_var_ref_bx, @function
n00420_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00420_var_ref_α:        mov              r11, 485
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00421_deref_α
                        .size            n00420_var_ref_bx, .-n00420_var_ref_bx
                        .type            n00421_deref_bx, @function
n00421_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00421_deref_α:          mov              r11, 486
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00408_var_ref_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00422_call_icon_α
                        .size            n00421_deref_bx, .-n00421_deref_bx
                        .type            n00422_call_icon_bx, @function
n00422_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00422_call_icon_α:      mov              r11, 487
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1247: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1247]
                        lea              rsi, [rbp + 368]
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n00408_var_ref_α
                                                                              jmp   n00423_binop_α
n00422_call_icon_β:      mov              r11, 487;                            jmp   n00408_var_ref_α
                        .size            n00422_call_icon_bx, .-n00422_call_icon_bx
                        .type            n00423_binop_bx, @function
n00423_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00423_binop_α:          mov              r11, 488
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00424_call_proc_staged_α
                        .size            n00423_binop_bx, .-n00423_binop_bx
                        .type            n00424_call_proc_staged_bx, @function
n00424_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00424_call_proc_staged_α:
                        mov              r11, 489
                        lea              rsi, [rbp + 208]
                        call             format_dcα;                          jmp   .Lcall_proc_staged_α_1250_2
.Lcall_proc_staged_α_1250_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1250_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
.Lcall_proc_staged_α_1250_29:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00408_var_ref_α
                                                                              jmp   n00408_var_ref_α
n00424_call_proc_staged_β:
                        mov              r11, 489;                            jmp   n00408_var_ref_α
.Lcall_proc_staged_β_1250_0:
                        .quad            .Lcall_proc_staged_β_1250_0_s
.Lcall_proc_staged_β_1250_0_s:
                        .string          "format"
                        .size            n00424_call_proc_staged_bx, .-n00424_call_proc_staged_bx
                        .type            n00412_call_proc_staged_bx, @function
n00412_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00412_call_proc_staged_α:
                        mov              r11, 490
                        call             Term___dcα;                          jmp   .Lcall_proc_staged_α_1252_2
.Lcall_proc_staged_α_1252_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1252_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
.Lcall_proc_staged_α_1252_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00412_call_proc_staged_β:
                        mov              r11, 490;                            jmp   main_ω
.Lcall_proc_staged_β_1252_0:
                        .quad            .Lcall_proc_staged_β_1252_0_s
.Lcall_proc_staged_β_1252_0_s:
                        .string          "Term__"
                        .size            n00412_call_proc_staged_bx, .-n00412_call_proc_staged_bx
                        .type            n00395_lit_integer_bx, @function
n00395_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00395_lit_integer_α:    mov              r11, 491
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1253_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   .Ldisjunction_γ_1150_as
n00395_lit_integer_β:    mov              r11, 491;                            jmp   .Ldisjunction_ω_1150_af
.Llit_integer_α_1253_0: .quad            15
                        .size            n00395_lit_integer_bx, .-n00395_lit_integer_bx
                        .type            n00393_var_ref_bx, @function
n00393_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00393_var_ref_α:        mov              r11, 492
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n00425_lit_string_α
n00393_var_ref_β:        mov              r11, 492;                            jmp   .Ldisjunction_ω_1150_af
                        .size            n00393_var_ref_bx, .-n00393_var_ref_bx
                        .type            n00425_lit_string_bx, @function
n00425_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00425_lit_string_α:     mov              r11, 493
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1256_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00426_subscript_α
.Llit_string_α_1256_0:  .quad            .Llit_string_α_1256_0_s
.Llit_string_α_1256_0_s:
                        .string          "w"
                        .size            n00425_lit_string_bx, .-n00425_lit_string_bx
                        .type            n00426_subscript_bx, @function
n00426_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00426_subscript_α:      mov              r11, 494
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1150_af
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00427_deref_α
                        .size            n00426_subscript_bx, .-n00426_subscript_bx
                        .type            n00427_deref_bx, @function
n00427_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00427_deref_α:          mov              r11, 495
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1150_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00428_unop_test_α
                        .size            n00427_deref_bx, .-n00427_deref_bx
                        .type            n00428_unop_test_bx, @function
n00428_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00428_unop_test_α:      mov              r11, 496
                        mov              eax, dword ptr [rbp + 896]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1150_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1150_af
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 824], rax;          jmp   .Ldisjunction_γ_1150_as
n00428_unop_test_β:      mov              r11, 496;                            jmp   .Ldisjunction_ω_1150_af
                        .size            n00428_unop_test_bx, .-n00428_unop_test_bx
                        .type            n00391_lit_integer_bx, @function
n00391_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00391_lit_integer_α:    mov              r11, 497
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1260_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   .Ldisjunction_γ_1148_as
n00391_lit_integer_β:    mov              r11, 497;                            jmp   .Ldisjunction_ω_1148_af
.Llit_integer_α_1260_0: .quad            72
                        .size            n00391_lit_integer_bx, .-n00391_lit_integer_bx
                        .type            n00389_var_ref_bx, @function
n00389_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00389_var_ref_α:        mov              r11, 498
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n00429_lit_string_α
n00389_var_ref_β:        mov              r11, 498;                            jmp   .Ldisjunction_ω_1148_af
                        .size            n00389_var_ref_bx, .-n00389_var_ref_bx
                        .type            n00429_lit_string_bx, @function
n00429_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00429_lit_string_α:     mov              r11, 499
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1263_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00430_subscript_α
.Llit_string_α_1263_0:  .quad            .Llit_string_α_1263_0_s
.Llit_string_α_1263_0_s:
                        .string          "l"
                        .size            n00429_lit_string_bx, .-n00429_lit_string_bx
                        .type            n00430_subscript_bx, @function
n00430_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00430_subscript_α:      mov              r11, 500
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1148_af
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n00431_deref_α
                        .size            n00430_subscript_bx, .-n00430_subscript_bx
                        .type            n00431_deref_bx, @function
n00431_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00431_deref_α:          mov              r11, 501
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1148_af
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00432_unop_test_α
                        .size            n00431_deref_bx, .-n00431_deref_bx
                        .type            n00432_unop_test_bx, @function
n00432_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00432_unop_test_α:      mov              r11, 502
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1148_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1148_af
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 968], rax;          jmp   .Ldisjunction_γ_1148_as
n00432_unop_test_β:      mov              r11, 502;                            jmp   .Ldisjunction_ω_1148_af
                        .size            n00432_unop_test_bx, .-n00432_unop_test_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_1266_248
                        .section         .rodata
.Licn_trace_nm1267:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1267]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1266_248:      mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_1266_249
                        .section         .rodata
.Licn_trace_nm1268:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1268]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1266_249:      mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        .long            1520
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
                        .long            928
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
                        .long            960
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1072
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
                        .long            3264
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
                        .long            528
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
                        .long            1008
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
                        .long            960
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
                        .long            960
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
